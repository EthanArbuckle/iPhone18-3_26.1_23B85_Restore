dispatch_data_t dispatch_data_create_map(dispatch_data_t data, const void **buffer_ptr, size_t *size_ptr)
{
  v6 = 0;
  buffer = 0;
  size = *(data + 8);
  if (size)
  {
    v12 = data;
    v11 = 0;
    if (*(data + 9) == 1)
    {
      v11 = *(data + 11);
      v12 = *(data + 10);
    }

    if (*(v12 + 9))
    {
      v10 = *(v12 + 6);
      if (v10)
      {
        v10 += v11;
      }
    }

    else
    {
      v10 = (*(v12 + 6) + v11);
    }

    buffer = v10;
    if (v10)
    {
      dispatch_retain(data);
      v6 = data;
    }

    else
    {
      buffer = _dispatch_data_flatten(data);
      if (buffer)
      {
        v6 = dispatch_data_create(buffer, size, 0, &__block_literal_global);
      }

      else
      {
        size = 0;
      }
    }
  }

  else
  {
    v6 = &_dispatch_data_empty;
  }

  if (buffer_ptr)
  {
    *buffer_ptr = buffer;
  }

  if (size_ptr)
  {
    *size_ptr = size;
  }

  return v6;
}

uint64_t _dispatch_data_flatten(uint64_t a1)
{
  v10 = a1;
  v1 = *(a1 + 64);
  v9 = malloc_type_malloc();
  if (v9)
  {
    applier = _NSConcreteStackBlock;
    v4 = 0x40000000;
    v5 = 0;
    v6 = ___dispatch_data_flatten_block_invoke;
    v7 = &__block_descriptor_tmp_11;
    v8 = v9;
    dispatch_data_apply(v10, &applier);
  }

  return v9;
}

char *dispatch_data_get_flattened_bytes_4libxpc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  v14 = 0;
  v13 = 0;
  if (!*(a1 + 64))
  {
    return 0;
  }

  v24 = v15;
  v23 = 0;
  v22 = &v15;
  v21 = &v13;
  v20 = 0;
  v29 = *(v15 + 64);
  v28 = 131;
  if (!v29)
  {
    _dispatch_abort(v28, 0, a3, a4, a5, a6, a7, a8);
  }

  v26 = v24;
  if (v24[9])
  {
    v27 = v24;
    v10 = v24[9] ? v24[9] : 1;
    if (v10 == 1)
    {
      v23 += v24[11];
      v24 = v24[10];
    }
  }

  v25 = v24;
  if (v24[9])
  {
    v18 = v24[6];
    v19 = v18;
    v17 = v18;
    v20 = v18;
    if (v18)
    {
      v20 += v23;
    }
  }

  else
  {
    v20 = (v24[6] + v23);
  }

  if (v22)
  {
    *v22 = v24;
  }

  if (v21)
  {
    *v21 = v23;
  }

  v14 = v20;
  if (v20)
  {
    return v14;
  }

  v12 = _dispatch_data_flatten(v15);
  if (!v12)
  {
    return 0;
  }

  v11 = 0;
  v8 = 0;
  atomic_compare_exchange_strong_explicit((v15 + 48), &v8, v12, memory_order_release, memory_order_relaxed);
  if (v8)
  {
    v11 = v8;
  }

  v14 = v11;
  if (v8)
  {
    free(v12);
  }

  else
  {
    v14 = v12;
  }

  return &v14[v13];
}

uint64_t dispatch_data_apply_f(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1[8])
  {
    v9 = _dispatch_data_apply(a1, 0, 0, a1[8], a2, a3, a7, a8) & 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t _dispatch_data_apply(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v15 = a2;
  v12 = 1;
  v20 = a1;
  v19 = 0;
  if (!a1[8])
  {
    _dispatch_abort(131, 0, a3, a4, a5, a6, a7, a8);
  }

  if (a1[9] == 1)
  {
    v19 = a1[11];
    v20 = a1[10];
  }

  if (v20[9])
  {
    v18 = v20[6];
    if (v18)
    {
      v18 += v19;
    }
  }

  else
  {
    v18 = v20[6] + v19;
  }

  if (v18)
  {
    v17 = _dispatch_data_apply_client_callout(a5, a1, a2, v18 + a3, a4, a6) & 1;
  }

  else
  {
    for (i = 0; ; ++i)
    {
      v10 = a1[9] ? a1[9] : 1;
      v9 = 0;
      if (i < v10)
      {
        v9 = v12;
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      v12 = _dispatch_data_apply(a1[3 * i + 10], v15, a1[3 * i + 11], a1[3 * i + 12], a5, a6);
      v15 += a1[3 * i + 12];
    }

    v17 = v12 & 1;
  }

  return v17 & 1;
}

BOOL dispatch_data_apply(dispatch_data_t data, dispatch_data_applier_t applier)
{
  if (!*(data + 8))
  {
    return 1;
  }

  v6 = *(data + 8);
  v7 = _Block_get_invoke_fn(applier);
  v8 = 0;
  if (v7)
  {
    v8 = v7;
  }

  v5 = 0;
  if (v8)
  {
    v5 = v8;
  }

  return _dispatch_data_apply(data, 0, 0, v6, applier, v5, v2, v3) & 1;
}

dispatch_data_t dispatch_data_copy_region(dispatch_data_t data, size_t location, size_t *offset_ptr)
{
  if (location < *(data + 8))
  {
    *offset_ptr = 0;
    return _dispatch_data_copy_region(data, 0, *(data + 8), location, offset_ptr, v3, v4, v5);
  }

  else
  {
    *offset_ptr = *(data + 8);
    return &_dispatch_data_empty;
  }
}

dispatch_object_s *_dispatch_data_copy_region(dispatch_object_s *a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a1;
  v25 = a2;
  v23 = 0;
  v22 = 0;
  if (!a2 && a3 == *(v26 + 8))
  {
    v23 = v26;
  }

  v50 = v26;
  v49 = v25;
  v48 = &v26;
  v47 = &v25;
  v46 = 0;
  v55 = *(v26 + 8);
  v54 = 131;
  if (!v55)
  {
    _dispatch_abort(v54, 0, a3, a4, a5, a6, a7, a8);
  }

  v52 = v50;
  if (*(v50 + 9))
  {
    v53 = v50;
    v17 = *(v50 + 9) ? *(v50 + 9) : 1;
    if (v17 == 1)
    {
      v49 += *(v50 + 11);
      v50 = *(v50 + 10);
    }
  }

  v51 = v50;
  if (*(v50 + 9))
  {
    v44 = *(v50 + 6);
    v45 = v44;
    v43 = v44;
    v46 = v44;
    if (v44)
    {
      v46 += v49;
    }
  }

  else
  {
    v46 = *(v50 + 6) + v49;
  }

  if (v48)
  {
    *v48 = v50;
  }

  if (v47)
  {
    *v47 = v49;
  }

  if (!v46)
  {
    for (i = 0; ; ++i)
    {
      v38 = v26;
      if (*(v26 + 9))
      {
        v16 = *(v26 + 9);
      }

      else
      {
        v16 = 1;
      }

      if (i >= v16)
      {
        v14 = *a5 + v22;
        qword_E4290 = "BUG IN LIBDISPATCH: dispatch_data_copy_region out of bounds";
        qword_E42C0 = v14;
        __break(1u);
        JUMPOUT(0xAC288);
      }

      v18 = *(v26 + 3 * i + 12);
      if (v25 < v18)
      {
        v19 = v18 - v25;
        if (a4 < v22 + v19)
        {
          v25 += *(v26 + 3 * i + 11);
          v26 = *(v26 + 3 * i + 10);
          *a5 += v22;
          return _dispatch_data_copy_region(v26, v25, v19, a4 - v22, a5);
        }

        v22 += v19;
        v25 = 0;
      }

      else
      {
        v25 -= v18;
      }
    }
  }

  if (v23)
  {
    dispatch_retain(v23);
    return v23;
  }

  else
  {
    dispatch_retain(v26);
    if (v25 || a3 != *(v26 + 8))
    {
      v36 = 1;
      v35 = 0;
      v34 = 0;
      v32 = 80;
      v42 = 0;
      v31 = 24;
      v41 = !is_mul_ok(1uLL, 0x18uLL);
      v30 = v41;
      v33 = 104;
      v40 = 0;
      v29 = 0;
      v28 = v41;
      v39 = v41;
      if (v41)
      {
        v37 = 0;
      }

      else
      {
        v34 = _dispatch_object_alloc(_OS_dispatch_data_vtable, v33, v8, v9, v10, v11, v12, v13);
        v34[9] = v36;
        v34[3] = &off_E0600;
        v34[2] = -1985229329;
        v37 = v34;
      }

      v21 = v37;
      v37[8] = a3;
      v21[11] = v25;
      v21[12] = a3;
      v21[10] = v26;
      return v21;
    }

    else
    {
      return v26;
    }
  }
}

uint64_t dispatch_data_make_memory_entry(uint64_t a1)
{
  v42 = a1;
  object_handle = 0;
  v40 = 0;
  size = *(a1 + 64);
  address = 0;
  permission = 0;
  memory_entry_64 = 0;
  for (i = *(a1 + 56) != &__block_literal_global_4158; ; i = 1)
  {
    if (i)
    {
      address = vm_page_size;
      memory_entry_64 = mach_vm_allocate(mach_task_self_, &address, size, 1);
      if (memory_entry_64)
      {
        if (memory_entry_64 != 3)
        {
          v34 = memory_entry_64;
          v51 = memory_entry_64;
          v50 = 704;
          if (memory_entry_64)
          {
            _dispatch_bug(v50, v51, v1, v2, v3, v4, v5, v6);
          }

          v33 = v34;
        }

        return object_handle;
      }

      applier = _NSConcreteStackBlock;
      v28 = 0x40000000;
      v29 = 0;
      v30 = __dispatch_data_make_memory_entry_block_invoke;
      v31 = &__block_descriptor_tmp_9;
      v32 = address;
      dispatch_data_apply(v42, &applier);
    }

    else
    {
      address = *(v42 + 6);
    }

    permission = 2097219;
    v40 = size;
    memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &v40, address, 2097219, &object_handle, 0);
    if (memory_entry_64 == 18)
    {
      permission &= ~0x200000u;
      memory_entry_64 = mach_make_memory_entry_64(mach_task_self_, &v40, address, permission, &object_handle, 0);
    }

    v26 = memory_entry_64;
    v49 = memory_entry_64;
    v48 = 726;
    if (memory_entry_64)
    {
      _dispatch_bug(v48, v49, v7, v8, v9, v10, v11, v12);
    }

    if (v26)
    {
      object_handle = 0;
      goto LABEL_23;
    }

    if (v40 >= size)
    {
      goto LABEL_23;
    }

    memory_entry_64 = mach_port_deallocate(mach_task_self_, object_handle);
    v47 = memory_entry_64;
    v46 = 731;
    if (memory_entry_64)
    {
      _dispatch_bug(v46, v47, v13, v14, v15, v16, v17, v18);
    }

    if (i)
    {
      break;
    }
  }

  object_handle = 0;
LABEL_23:
  if (i)
  {
    memory_entry_64 = mach_vm_deallocate(mach_task_self_, address, size);
    v45 = memory_entry_64;
    v44 = 740;
    if (memory_entry_64)
    {
      _dispatch_bug(v44, v45, v19, v20, v21, v22, v23, v24);
    }
  }

  return object_handle;
}

uint64_t __dispatch_data_make_memory_entry_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  __memcpy_chk();
  return 1;
}

uint64_t ___dispatch_data_flatten_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  __memcpy_chk();
  return 1;
}

dispatch_data_s *dispatch_data_create_with_transform(dispatch_data_s *a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if (*a2 == 16)
  {
    v7 = _dispatch_transform_detect_utf(a1);
    if (!v7)
    {
      return 0;
    }
  }

  if ((*v7 & ~*(a3 + 8)) != 0)
  {
    return 0;
  }

  if ((*a3 & ~v7[2]) != 0)
  {
    return 0;
  }

  if (!dispatch_data_get_size(a1))
  {
    return a1;
  }

  if (v7[3])
  {
    v5 = (v7[3])(a1);
  }

  else
  {
    dispatch_retain(a1);
    v5 = a1;
  }

  if (!v5)
  {
    return 0;
  }

  if (*(a3 + 32))
  {
    v4 = (*(a3 + 32))(v5);
  }

  else
  {
    dispatch_retain(v5);
    v4 = v5;
  }

  dispatch_release(v5);
  return v4;
}

void *_dispatch_transform_detect_utf(dispatch_data_s *a1)
{
  v4[1] = a1;
  v4[0] = 0;
  v3 = _dispatch_data_subrange_map(a1, v4, 0, 2uLL);
  if (!v3)
  {
    return 0;
  }

  v2 = &_dispatch_data_format_type_utf8;
  if (*v4[0] == 65279)
  {
    v2 = &_dispatch_data_format_type_utf16le;
  }

  else if (*v4[0] == 65534)
  {
    v2 = &_dispatch_data_format_type_utf16be;
  }

  dispatch_release(v3);
  return v2;
}

uint64_t _dispatch_transform_from_base64(dispatch_data_s *a1)
{
  v29 = a1;
  v25[0] = 0;
  v25[1] = v25;
  v26 = 0;
  v27 = 32;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v22 = 0;
  v23 = 32;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v18 = 0;
  v19 = 32;
  v20 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0;
  v15 = 32;
  v16 = &_dispatch_data_empty;
  applier = _NSConcreteStackBlock;
  v3 = 1107296256;
  v4 = 0;
  v5 = ___dispatch_transform_from_base64_block_invoke;
  v6 = &__block_descriptor_tmp_4_0;
  v7 = v21;
  v8 = v17;
  v9 = v25;
  v10 = &v12;
  if (dispatch_data_apply(a1, &applier))
  {
    v30 = v13[3];
  }

  else
  {
    dispatch_release(v13[3]);
    v30 = 0;
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v17, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v25, 8);
  return v30;
}

dispatch_data_t _dispatch_transform_to_base64(dispatch_data_s *a1)
{
  v26 = a1;
  size = dispatch_data_get_size(a1);
  v24 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v21 = 0;
  v22 = 32;
  v23 = 0;
  if (size % 3)
  {
    v3 = size / 3 + 1;
  }

  else
  {
    v3 = size / 3;
  }

  v24 = v3;
  if (v3 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v27 = 0;
    v19 = 1;
  }

  else
  {
    v24 *= 4;
    v1 = malloc_type_malloc();
    v18 = v1;
    if (v1)
    {
      v14[0] = 0;
      v14[1] = v14;
      v15 = 0;
      v16 = 32;
      v17 = v18;
      applier = _NSConcreteStackBlock;
      v5 = 1107296256;
      v6 = 0;
      v7 = ___dispatch_transform_to_base64_block_invoke;
      v8 = &__block_descriptor_tmp_7;
      v9 = v20;
      v11 = v26;
      v10 = v14;
      v12 = size;
      if (dispatch_data_apply(v26, &applier))
      {
        v27 = dispatch_data_create(v18, v24, 0, &__block_literal_global);
      }

      else
      {
        free(v18);
        v27 = 0;
      }

      v19 = 1;
      _Block_object_dispose(v14, 8);
    }

    else
    {
      v27 = 0;
      v19 = 1;
    }
  }

  _Block_object_dispose(v20, 8);
  return v27;
}

dispatch_data_t _dispatch_transform_to_utf8_without_bom(dispatch_data_s *a1)
{
  v7 = a1;
  v6 = 0;
  v5 = _dispatch_data_subrange_map(a1, &v6, 0, 3uLL);
  v4 = 0;
  if (v5)
  {
    v4 = memcmp(v6, &_dispatch_transform_to_utf8_without_bom_utf8_bom, 3uLL) == 0;
    dispatch_release(v5);
  }

  if (v4)
  {
    data = v7;
    size = dispatch_data_get_size(v7);
    return dispatch_data_create_subrange(data, 3uLL, size - 3);
  }

  else
  {
    dispatch_retain(v7);
    return v7;
  }
}

dispatch_data_t _dispatch_data_subrange_map(dispatch_data_s *a1, const void **a2, size_t a3, size_t a4)
{
  map = 0;
  data = dispatch_data_create_subrange(a1, a3, a4);
  if (dispatch_data_get_size(data) == a4)
  {
    map = dispatch_data_create_map(data, a2, 0);
  }

  dispatch_release(data);
  return map;
}

uint64_t _dispatch_transform_from_base32_with_table(dispatch_data_s *a1, uint64_t a2, uint64_t a3)
{
  v35 = a1;
  v34 = a2;
  v33 = a3;
  v29[0] = 0;
  v29[1] = v29;
  v30 = 0;
  v31 = 32;
  v32 = 0;
  v25[0] = 0;
  v25[1] = v25;
  v26 = 0;
  v27 = 32;
  v28 = 0;
  v21[0] = 0;
  v21[1] = v21;
  v22 = 0;
  v23 = 32;
  v24 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0;
  v19 = 32;
  v20 = &_dispatch_data_empty;
  applier = _NSConcreteStackBlock;
  v5 = 1107296256;
  v6 = 0;
  v7 = ___dispatch_transform_from_base32_with_table_block_invoke;
  v8 = &__block_descriptor_tmp_3;
  v13 = a3;
  v14 = a2;
  v9 = v25;
  v10 = v21;
  v11 = v29;
  v12 = &v16;
  if (dispatch_data_apply(a1, &applier))
  {
    v36 = v17[3];
  }

  else
  {
    dispatch_release(v17[3]);
    v36 = 0;
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v25, 8);
  _Block_object_dispose(v29, 8);
  return v36;
}

uint64_t ___dispatch_transform_from_base32_with_table_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = malloc_type_malloc();
  v14 = v15;
  if (v15)
  {
    for (i = 0; i < a5; ++i)
    {
      if (*(a4 + i) != 10 && *(a4 + i) != 9 && *(a4 + i) != 32)
      {
        v13 = *(a4 + i);
        if (v13 >= a1[8] || *(a1[9] + v13) == -1)
        {
          free(v15);
          v19 = 0;
          return v19 & 1;
        }

        ++*(*(a1[4] + 8) + 24);
        v12 = *(a1[9] + v13);
        if (v12 == -2)
        {
          v12 = 0;
          ++*(*(a1[5] + 8) + 24);
        }

        *(*(a1[6] + 8) + 24) *= 32;
        *(*(a1[6] + 8) + 24) += v12;
        if ((*(*(a1[4] + 8) + 24) & 7) == 0)
        {
          *v14 = BYTE4(*(*(a1[6] + 8) + 24));
          v14[1] = BYTE3(*(*(a1[6] + 8) + 24));
          v14[2] = BYTE2(*(*(a1[6] + 8) + 24));
          v14[3] = BYTE1(*(*(a1[6] + 8) + 24));
          v5 = v14 + 4;
          v14 += 5;
          *v5 = *(*(a1[6] + 8) + 24);
        }
      }
    }

    size = v14 - v15;
    v7 = *(*(a1[5] + 8) + 24);
    switch(v7)
    {
      case 1:
        --size;
        break;
      case 3:
        size -= 2;
        break;
      case 4:
        size -= 3;
        break;
      case 6:
        size -= 4;
        break;
    }

    data2 = dispatch_data_create(v15, size, 0, &__block_literal_global);
    concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), data2);
    dispatch_release(data2);
    dispatch_release(*(*(a1[7] + 8) + 24));
    *(*(a1[7] + 8) + 24) = concat;
    v19 = 1;
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

void __copy_helper_block_8_32r40r48r56r(uint64_t a1, const void **a2)
{
  _Block_object_assign((a1 + 32), a2[4], 8);
  _Block_object_assign((a1 + 40), a2[5], 8);
  _Block_object_assign((a1 + 48), a2[6], 8);
  _Block_object_assign((a1 + 56), a2[7], 8);
}

void __destroy_helper_block_8_32r40r48r56r(const void **a1)
{
  _Block_object_dispose(a1[7], 8);
  _Block_object_dispose(a1[6], 8);
  _Block_object_dispose(a1[5], 8);
  _Block_object_dispose(a1[4], 8);
}

dispatch_data_t _dispatch_transform_to_base32_with_table(dispatch_data_s *a1, uint64_t a2)
{
  v29 = a1;
  v28 = a2;
  size = dispatch_data_get_size(a1);
  v26 = 0;
  v22[0] = 0;
  v22[1] = v22;
  v23 = 0;
  v24 = 32;
  v25 = 0;
  if (size % 5)
  {
    v4 = size / 5 + 1;
  }

  else
  {
    v4 = size / 5;
  }

  v26 = v4;
  if (v4 > 0x1FFFFFFFFFFFFFFFLL)
  {
    v30 = 0;
    v21 = 1;
  }

  else
  {
    v26 *= 8;
    v2 = malloc_type_malloc();
    v20 = v2;
    if (v2)
    {
      v16[0] = 0;
      v16[1] = v16;
      v17 = 0;
      v18 = 32;
      v19 = v20;
      applier = _NSConcreteStackBlock;
      v6 = 1107296256;
      v7 = 0;
      v8 = ___dispatch_transform_to_base32_with_table_block_invoke;
      v9 = &__block_descriptor_tmp_1;
      v10 = v22;
      v12 = v29;
      v11 = v16;
      v13 = v28;
      v14 = size;
      if (dispatch_data_apply(v29, &applier))
      {
        v30 = dispatch_data_create(v20, v26, 0, &__block_literal_global);
      }

      else
      {
        free(v20);
        v30 = 0;
      }

      v21 = 1;
      _Block_object_dispose(v16, 8);
    }

    else
    {
      v30 = 0;
      v21 = 1;
    }
  }

  _Block_object_dispose(v22, 8);
  return v30;
}

uint64_t ___dispatch_transform_to_base32_with_table_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v69 = a1;
  v68 = a2;
  v67 = a3;
  v66 = a4;
  v65 = a5;
  v64 = a1;
  v63 = a4;
  v62 = 0;
  while (v62 < v65)
  {
    v61 = *(v63 + v62);
    v60 = 0;
    if (*(*(*(a1 + 32) + 8) + 24) % 5uLL)
    {
      if (v62)
      {
        v60 = *(v63 + v62 - 1);
      }

      else
      {
        v59 = 0;
        v58 = _dispatch_data_subrange_map(*(a1 + 48), &v59, v67 - 1, 1uLL);
        if (!v58)
        {
          v70 = 0;
          return v70 & 1;
        }

        v60 = *v59;
        dispatch_release(v58);
      }
    }

    v56 = *(*(*(a1 + 32) + 8) + 24) % 5uLL;
    if (v56)
    {
      switch(v56)
      {
        case 1uLL:
          v8 = *(*(a1 + 56) + (((v61 >> 6) | (4 * v60)) & 0x1F));
          v9 = *(*(a1 + 40) + 8);
          v10 = *(v9 + 24);
          *(v9 + 24) = v10 + 1;
          *v10 = v8;
          v11 = *(*(a1 + 56) + ((v61 >> 1) & 0x1F));
          v12 = *(*(a1 + 40) + 8);
          v13 = *(v12 + 24);
          *(v12 + 24) = v13 + 1;
          *v13 = v11;
          break;
        case 2uLL:
          v14 = *(*(a1 + 56) + (((v61 >> 4) | (16 * v60)) & 0x1F));
          v15 = *(*(a1 + 40) + 8);
          v16 = *(v15 + 24);
          *(v15 + 24) = v16 + 1;
          *v16 = v14;
          break;
        case 3uLL:
          v17 = *(*(a1 + 56) + (((v61 >> 7) | (2 * v60)) & 0x1F));
          v18 = *(*(a1 + 40) + 8);
          v19 = *(v18 + 24);
          *(v18 + 24) = v19 + 1;
          *v19 = v17;
          v20 = *(*(a1 + 56) + ((v61 >> 2) & 0x1F));
          v21 = *(*(a1 + 40) + 8);
          v22 = *(v21 + 24);
          *(v21 + 24) = v22 + 1;
          *v22 = v20;
          break;
        case 4uLL:
          v23 = *(*(a1 + 56) + (((v61 >> 5) | (8 * v60)) & 0x1F));
          v24 = *(*(a1 + 40) + 8);
          v25 = *(v24 + 24);
          *(v24 + 24) = v25 + 1;
          *v25 = v23;
          v26 = *(*(a1 + 56) + (v61 & 0x1F));
          v27 = *(*(a1 + 40) + 8);
          v28 = *(v27 + 24);
          *(v27 + 24) = v28 + 1;
          *v28 = v26;
          break;
      }
    }

    else
    {
      v5 = *(*(a1 + 56) + ((v61 >> 3) & 0x1F));
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 24);
      *(v6 + 24) = v7 + 1;
      *v7 = v5;
    }

    ++v62;
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  if (v67 + v65 == *(a1 + 64))
  {
    v55 = *(*(*(a1 + 32) + 8) + 24) % 5uLL;
    if (v55)
    {
      switch(v55)
      {
        case 1uLL:
          v29 = *(*(a1 + 56) + ((4 * *(v63 + v65 - 1)) & 0x1C));
          v30 = *(*(a1 + 40) + 8);
          v31 = *(v30 + 24);
          *(v30 + 24) = v31 + 1;
          *v31 = v29;
          break;
        case 2uLL:
          v32 = *(*(a1 + 56) + ((16 * *(v63 + v65 - 1)) & 0x10));
          v33 = *(*(a1 + 40) + 8);
          v34 = *(v33 + 24);
          *(v33 + 24) = v34 + 1;
          *v34 = v32;
          break;
        case 3uLL:
          v35 = *(*(a1 + 56) + ((2 * *(v63 + v65 - 1)) & 0x1E));
          v36 = *(*(a1 + 40) + 8);
          v37 = *(v36 + 24);
          *(v36 + 24) = v37 + 1;
          *v37 = v35;
          break;
        case 4uLL:
          v38 = *(*(a1 + 56) + ((8 * *(v63 + v65 - 1)) & 0x18));
          v39 = *(*(a1 + 40) + 8);
          v40 = *(v39 + 24);
          *(v39 + 24) = v40 + 1;
          *v40 = v38;
          break;
      }
    }

    v54 = *(*(*(a1 + 32) + 8) + 24) % 5uLL;
    if (v54)
    {
      switch(v54)
      {
        case 1uLL:
          v41 = *(*(a1 + 40) + 8);
          v42 = *(v41 + 24);
          *(v41 + 24) = v42 + 1;
          *v42 = 61;
          v43 = *(*(a1 + 40) + 8);
          v44 = *(v43 + 24);
          *(v43 + 24) = v44 + 1;
          *v44 = 61;
          break;
        case 2uLL:
          break;
        case 3uLL:
LABEL_42:
          v47 = *(*(a1 + 40) + 8);
          v48 = *(v47 + 24);
          *(v47 + 24) = v48 + 1;
          *v48 = 61;
          v49 = *(*(a1 + 40) + 8);
          v50 = *(v49 + 24);
          *(v49 + 24) = v50 + 1;
          *v50 = 61;
LABEL_43:
          v51 = *(*(a1 + 40) + 8);
          v52 = *(v51 + 24);
          *(v51 + 24) = v52 + 1;
          *v52 = 61;
          goto LABEL_44;
        case 4uLL:
          goto LABEL_43;
        default:
          goto LABEL_44;
      }

      v45 = *(*(a1 + 40) + 8);
      v46 = *(v45 + 24);
      *(v45 + 24) = v46 + 1;
      *v46 = 61;
      goto LABEL_42;
    }
  }

LABEL_44:
  v70 = 1;
  return v70 & 1;
}

uint64_t ___dispatch_transform_from_base64_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v14 = malloc_type_malloc();
  v13 = v14;
  if (v14)
  {
    for (i = 0; i < a5; ++i)
    {
      if (*(a4 + i) != 10 && *(a4 + i) != 9 && *(a4 + i) != 32)
      {
        v12 = *(a4 + i);
        if (v12 >= 0x7B || base64_decode_table[v12] == -1)
        {
          free(v14);
          v18 = 0;
          return v18 & 1;
        }

        ++*(*(a1[4] + 8) + 24);
        v11 = base64_decode_table[v12];
        if (v11 == -2)
        {
          v11 = 0;
          ++*(*(a1[5] + 8) + 24);
        }

        *(*(a1[6] + 8) + 24) <<= 6;
        *(*(a1[6] + 8) + 24) += v11;
        if ((*(*(a1[4] + 8) + 24) & 3) == 0)
        {
          *v13 = BYTE2(*(*(a1[6] + 8) + 24));
          v13[1] = BYTE1(*(*(a1[6] + 8) + 24));
          v5 = v13 + 2;
          v13 += 3;
          *v5 = *(*(a1[6] + 8) + 24);
        }
      }
    }

    size = v13 - v14;
    if (*(*(a1[5] + 8) + 24))
    {
      size -= *(*(a1[5] + 8) + 24);
    }

    data2 = dispatch_data_create(v14, size, 0, &__block_literal_global);
    concat = dispatch_data_create_concat(*(*(a1[7] + 8) + 24), data2);
    dispatch_release(data2);
    dispatch_release(*(*(a1[7] + 8) + 24));
    *(*(a1[7] + 8) + 24) = concat;
    v18 = 1;
  }

  else
  {
    v18 = 0;
  }

  return v18 & 1;
}

uint64_t ___dispatch_transform_to_base64_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v44 = a1;
  v43 = a2;
  v42 = a3;
  v41 = a4;
  v40 = a5;
  v39 = a1;
  v38 = a4;
  v37 = 0;
  while (v37 < v40)
  {
    v36 = *(v38 + v37);
    v35 = 0;
    if (*(*(*(a1 + 32) + 8) + 24) % 3uLL)
    {
      if (v37)
      {
        v35 = *(v38 + v37 - 1);
      }

      else
      {
        v34 = 0;
        v33 = _dispatch_data_subrange_map(*(a1 + 48), &v34, v42 - 1, 1uLL);
        if (!v33)
        {
          v45 = 0;
          return v45 & 1;
        }

        v35 = *v34;
        dispatch_release(v33);
      }
    }

    v31 = *(*(*(a1 + 32) + 8) + 24) % 3uLL;
    if (v31)
    {
      if (v31 == 1)
      {
        v8 = base64_encode_table[((v36 >> 4) | (16 * v35)) & 0x3F];
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 24);
        *(v9 + 24) = v10 + 1;
        *v10 = v8;
      }

      else if (v31 == 2)
      {
        v11 = base64_encode_table[((v36 >> 6) | (4 * v35)) & 0x3F];
        v12 = *(*(a1 + 40) + 8);
        v13 = *(v12 + 24);
        *(v12 + 24) = v13 + 1;
        *v13 = v11;
        v14 = base64_encode_table[v36 & 0x3F];
        v15 = *(*(a1 + 40) + 8);
        v16 = *(v15 + 24);
        *(v15 + 24) = v16 + 1;
        *v16 = v14;
      }
    }

    else
    {
      v5 = base64_encode_table[(v36 >> 2) & 0x3F];
      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 24);
      *(v6 + 24) = v7 + 1;
      *v7 = v5;
    }

    ++v37;
    ++*(*(*(a1 + 32) + 8) + 24);
  }

  if (v42 + v40 == *(a1 + 56))
  {
    v30 = *(*(*(a1 + 32) + 8) + 24) % 3uLL;
    if (v30)
    {
      if (v30 == 1)
      {
        v17 = base64_encode_table[(16 * *(v38 + v40 - 1)) & 0x30];
        v18 = *(*(a1 + 40) + 8);
        v19 = *(v18 + 24);
        *(v18 + 24) = v19 + 1;
        *v19 = v17;
        v20 = *(*(a1 + 40) + 8);
        v21 = *(v20 + 24);
        *(v20 + 24) = v21 + 1;
        *v21 = 61;
        v22 = *(*(a1 + 40) + 8);
        v23 = *(v22 + 24);
        *(v22 + 24) = v23 + 1;
        *v23 = 61;
      }

      else if (v30 == 2)
      {
        v24 = base64_encode_table[(4 * *(v38 + v40 - 1)) & 0x3C];
        v25 = *(*(a1 + 40) + 8);
        v26 = *(v25 + 24);
        *(v25 + 24) = v26 + 1;
        *v26 = v24;
        v27 = *(*(a1 + 40) + 8);
        v28 = *(v27 + 24);
        *(v27 + 24) = v28 + 1;
        *v28 = 61;
      }
    }
  }

  v45 = 1;
  return v45 & 1;
}

uint64_t _dispatch_transform_from_utf16(dispatch_data_s *a1, int a2)
{
  v24 = a1;
  v23 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v20 = 0;
  v21 = 32;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0;
  v16 = 56;
  v17 = off_C8720;
  v18 = xmmword_C8730;
  applier = _NSConcreteStackBlock;
  v4 = 1107296256;
  v5 = 0;
  v6 = ___dispatch_transform_from_utf16_block_invoke;
  v7 = &__block_descriptor_tmp_10;
  v8 = &v13;
  v9 = v19;
  v10 = a1;
  v11 = a2;
  if (dispatch_data_apply(a1, &applier))
  {
    v25 = v14[3];
  }

  else
  {
    _dispatch_transform_buffer_new((v14 + 3), 0, 0);
    dispatch_release(v14[3]);
    v25 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);
  return v25;
}

uint64_t ___dispatch_transform_from_utf16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v51 = a1;
  v50 = a2;
  v49 = a3;
  v48 = a4;
  v47 = a5;
  v46 = a1;
  v45 = a4;
  if (a3 || (v47 % 3 ? (v33 = v47 / 3 + 1) : (v33 = v47 / 3), v44 = 2 * v33, (_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2 * v33, 0) & 1) != 0))
  {
    i = 0;
    v42 = v47 / 2;
    if (*(*(*(a1 + 40) + 8) + 24) < v47)
    {
      if (*(*(*(a1 + 40) + 8) + 24))
      {
        v45 += *(*(*(a1 + 40) + 8) + 24);
        v47 -= *(*(*(a1 + 40) + 8) + 24);
        v42 = v47 / 2;
        *(*(*(a1 + 40) + 8) + 24) = 0;
      }

      if (v47 % 2)
      {
        ++v42;
      }

      for (i = 0; i < v42; ++i)
      {
        v41 = 0;
        v40 = 0;
        v39 = 0;
        if (i == v42 - 1 && v42 > v47 / 2)
        {
          v38 = 0;
          v37 = _dispatch_data_subrange_map(*(a1 + 48), &v38, v49 + 2 * i, 2uLL);
          if (!v37)
          {
            v52 = 0;
            return v52 & 1;
          }

          v40 = _dispatch_transform_swap_to_host(*v38, *(a1 + 56));
          v36[1] = v37;
          dispatch_release(v37);
          ++*(*(*(a1 + 40) + 8) + 24);
        }

        else
        {
          v40 = _dispatch_transform_swap_to_host(*(v45 + 2 * i), *(a1 + 56));
        }

        if (v40 == 65534 && !v49 && !i)
        {
          v52 = 0;
          return v52 & 1;
        }

        if (v40 != 65279 || v49 || i)
        {
          if (v40 < 0xD800u || v40 > 0xDBFFu)
          {
            if (v40 >= 0xDC00u && v40 < 0xE000u)
            {
              v52 = 0;
              return v52 & 1;
            }

            v41 = v40;
          }

          else
          {
            v41 = (v40 - 55296) << 10;
            if (++i >= v42)
            {
              v36[0] = 0;
              v35 = _dispatch_data_subrange_map(*(a1 + 48), v36, v49 + 2 * i, 2uLL);
              if (!v35)
              {
                v52 = 0;
                return v52 & 1;
              }

              v40 = _dispatch_transform_swap_to_host(*v36[0], *(a1 + 56));
              dispatch_release(v35);
              *(*(*(a1 + 40) + 8) + 24) += 2;
            }

            else
            {
              v40 = _dispatch_transform_swap_to_host(*(v45 + 2 * i), *(a1 + 56));
            }

            if (v40 < 0xDC00u || v40 >= 0xE000u)
            {
              v52 = 0;
              return v52 & 1;
            }

            v41 |= v40 & 0x3FF;
            v41 += 0x10000;
          }

          v39 = 2 * (v42 - i);
          v53 = (2 * (v42 - i)) >> 64 != 0;
          if (!is_mul_ok(2uLL, v42 - i))
          {
            v52 = 0;
            return v52 & 1;
          }

          if (v41 >= 0x80)
          {
            if (v41 >= 0x800)
            {
              if (v41 >= 0x10000)
              {
                if (v41 < 0x200000)
                {
                  if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 4uLL, v39) & 1) == 0)
                  {
                    v52 = 0;
                    return v52 & 1;
                  }

                  v22 = (v41 >> 18) | 0xF0;
                  v23 = *(*(a1 + 32) + 8);
                  v24 = *(v23 + 40);
                  *(v23 + 40) = v24 + 1;
                  *v24 = v22;
                  LOBYTE(v24) = (v41 >> 12) & 0x3F | 0x80;
                  v25 = *(*(a1 + 32) + 8);
                  v26 = *(v25 + 40);
                  *(v25 + 40) = v26 + 1;
                  *v26 = v24;
                  LOBYTE(v24) = (v41 >> 6) & 0x3F | 0x80;
                  v27 = *(*(a1 + 32) + 8);
                  v28 = *(v27 + 40);
                  *(v27 + 40) = v28 + 1;
                  *v28 = v24;
                  v29 = v41 & 0x3F | 0x80;
                  v30 = *(*(a1 + 32) + 8);
                  v31 = *(v30 + 40);
                  *(v30 + 40) = v31 + 1;
                  *v31 = v29;
                }
              }

              else
              {
                if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 3uLL, v39) & 1) == 0)
                {
                  v52 = 0;
                  return v52 & 1;
                }

                v14 = (v41 >> 12) | 0xE0;
                v15 = *(*(a1 + 32) + 8);
                v16 = *(v15 + 40);
                *(v15 + 40) = v16 + 1;
                *v16 = v14;
                LOBYTE(v16) = (v41 >> 6) & 0x3F | 0x80;
                v17 = *(*(a1 + 32) + 8);
                v18 = *(v17 + 40);
                *(v17 + 40) = v18 + 1;
                *v18 = v16;
                v19 = v41 & 0x3F | 0x80;
                v20 = *(*(a1 + 32) + 8);
                v21 = *(v20 + 40);
                *(v20 + 40) = v21 + 1;
                *v21 = v19;
              }
            }

            else
            {
              if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2uLL, v39) & 1) == 0)
              {
                v52 = 0;
                return v52 & 1;
              }

              v8 = (v41 >> 6) | 0xC0;
              v9 = *(*(a1 + 32) + 8);
              v10 = *(v9 + 40);
              *(v9 + 40) = v10 + 1;
              *v10 = v8;
              v11 = v41 & 0x3F | 0x80;
              v12 = *(*(a1 + 32) + 8);
              v13 = *(v12 + 40);
              *(v12 + 40) = v13 + 1;
              *v13 = v11;
            }
          }

          else
          {
            if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 1uLL, v39) & 1) == 0)
            {
              v52 = 0;
              return v52 & 1;
            }

            v5 = v41;
            v6 = *(*(a1 + 32) + 8);
            v7 = *(v6 + 40);
            *(v6 + 40) = v7 + 1;
            *v7 = v5;
          }
        }
      }

      _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 0, 0);
      v52 = 1;
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) -= v47;
      v52 = 1;
    }
  }

  else
  {
    v52 = 0;
  }

  return v52 & 1;
}

uint64_t _dispatch_transform_buffer_new(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 && *(a1 + 24) - (*(a1 + 16) - *(a1 + 8)) >= a2)
  {
    goto LABEL_14;
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 16) > *(a1 + 8))
    {
      data2 = dispatch_data_create(*(a1 + 8), *(a1 + 16) - *(a1 + 8), 0, &__block_literal_global);
      concat = dispatch_data_create_concat(*a1, data2);
      dispatch_release(data2);
      dispatch_release(*a1);
      *a1 = concat;
    }

    else
    {
      free(*(a1 + 8));
    }
  }

  *(a1 + 24) = a2 + a3;
  *(a1 + 8) = 0;
  if (!*(a1 + 24))
  {
LABEL_13:
    *(a1 + 16) = *(a1 + 8);
LABEL_14:
    v10 = 1;
    return v10 & 1;
  }

  if (*(a1 + 24) <= 0x6400000uLL)
  {
    v3 = *(a1 + 24);
    *(a1 + 8) = malloc_type_malloc();
    if (!*(a1 + 8))
    {
      v10 = 0;
      return v10 & 1;
    }

    goto LABEL_13;
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t _dispatch_transform_swap_to_host(unsigned __int16 a1, int a2)
{
  if (a2 == 1)
  {
    return a1;
  }

  else
  {
    return _OSSwapInt16(a1);
  }
}

uint64_t _dispatch_transform_to_utf16(dispatch_data_s *a1, int a2)
{
  v24 = a1;
  v23 = a2;
  v19[0] = 0;
  v19[1] = v19;
  v20 = 0;
  v21 = 32;
  v22 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0;
  v16 = 56;
  v17 = off_C8740;
  v18 = xmmword_C8750;
  applier = _NSConcreteStackBlock;
  v4 = 1107296256;
  v5 = 0;
  v6 = ___dispatch_transform_to_utf16_block_invoke;
  v7 = &__block_descriptor_tmp_13_0;
  v8 = &v13;
  v11 = a2;
  v9 = v19;
  v10 = a1;
  if (dispatch_data_apply(a1, &applier))
  {
    v25 = v14[3];
  }

  else
  {
    _dispatch_transform_buffer_new((v14 + 3), 0, 0);
    dispatch_release(v14[3]);
    v25 = 0;
  }

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);
  return v25;
}

uint64_t ___dispatch_transform_to_utf16_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unint64_t a5)
{
  v36 = a1;
  v35 = a2;
  v34 = a3;
  v33 = a4;
  v32 = a5;
  v31 = a1;
  v30 = a4;
  v29 = 0;
  v28 = 0;
  if (!a3)
  {
    v27 = 2 * v32;
    v41 = (v32 * 2uLL) >> 64 != 0;
    v26 = v41;
    v28 = 2 * v32 + 2;
    v40 = 2 * v32 >= 0xFFFFFFFFFFFFFFFELL;
    v25 = v40;
    v24 = v41 || v40;
    v39 = v24 != 0;
    if (v24)
    {
      v37 = 0;
      return v37 & 1;
    }

    if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, v28, 0) & 1) == 0)
    {
      v37 = 0;
      return v37 & 1;
    }

    v5 = _dispatch_transform_swap_to_host(0xFEFFu, *(a1 + 56));
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v7 + 1;
    *v7 = v5;
  }

  if (*(*(*(a1 + 40) + 8) + 24) < v32)
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v30 += *(*(*(a1 + 40) + 8) + 24);
      v32 -= *(*(*(a1 + 40) + 8) + 24);
      *(*(*(a1 + 40) + 8) + 24) = 0;
    }

    v29 = 0;
    while (v29 < v32)
    {
      utf8_sequence = 0;
      v22 = _dispatch_transform_utf8_length(*v30);
      v21 = 0;
      if (!v22)
      {
        v37 = 0;
        return v37 & 1;
      }

      if (v22 + v29 > v32)
      {
        v20 = 0;
        v19 = _dispatch_data_subrange_map(*(a1 + 48), &v20, v34 + v29, v22);
        if (!v19)
        {
          v37 = 0;
          return v37 & 1;
        }

        utf8_sequence = _dispatch_transform_read_utf8_sequence(v20);
        *(*(*(a1 + 40) + 8) + 24) += v22 - (v32 - v29);
        v30 += v22;
        v29 = v32;
        dispatch_release(v19);
      }

      else
      {
        utf8_sequence = _dispatch_transform_read_utf8_sequence(v30);
        v30 += v22;
        v29 += v22;
      }

      v21 = 2 * (v32 - v29);
      v38 = ((v32 - v29) * 2uLL) >> 64 != 0;
      if (!is_mul_ok(v32 - v29, 2uLL))
      {
        v37 = 0;
        return v37 & 1;
      }

      if (utf8_sequence != 65279 || v34 + v29 != 3)
      {
        if (utf8_sequence >= 0xD800 && utf8_sequence < 0xDFFF)
        {
          v37 = 0;
          return v37 & 1;
        }

        if (utf8_sequence < 0x10000)
        {
          if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 2uLL, v21) & 1) == 0)
          {
            v37 = 0;
            return v37 & 1;
          }

          v14 = _dispatch_transform_swap_to_host(utf8_sequence, *(a1 + 56));
          v15 = *(*(a1 + 32) + 8);
          v16 = *(v15 + 40);
          *(v15 + 40) = v16 + 1;
          *v16 = v14;
        }

        else
        {
          if ((_dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 4uLL, v21) & 1) == 0)
          {
            v37 = 0;
            return v37 & 1;
          }

          utf8_sequence -= 0x10000;
          v8 = _dispatch_transform_swap_to_host(((utf8_sequence >> 10) & 0x3FF) - 10240, *(a1 + 56));
          v9 = *(*(a1 + 32) + 8);
          v10 = *(v9 + 40);
          *(v9 + 40) = v10 + 1;
          *v10 = v8;
          v11 = _dispatch_transform_swap_to_host((utf8_sequence & 0x3FF) - 9216, *(a1 + 56));
          v12 = *(*(a1 + 32) + 8);
          v13 = *(v12 + 40);
          *(v12 + 40) = v13 + 1;
          *v13 = v11;
        }
      }
    }

    _dispatch_transform_buffer_new(*(*(a1 + 32) + 8) + 24, 0, 0);
    v37 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) -= v32;
    v37 = 1;
  }

  return v37 & 1;
}

uint64_t _dispatch_transform_utf8_length(char a1)
{
  if (a1 < 0)
  {
    if ((a1 & 0xE0) == 0xC0)
    {
      return 2;
    }

    else if ((a1 & 0xF0) == 0xE0)
    {
      return 3;
    }

    else if ((a1 & 0xF8) == 0xF0)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 1;
  }
}

uint64_t _dispatch_transform_read_utf8_sequence(char *a1)
{
  v2[4] = 0;
  *v2 = _dispatch_transform_utf8_length(*a1);
  switch(v2[0])
  {
    case 1:
      *&v2[1] = *a1 & 0x7F;
      break;
    case 2:
      *&v2[1] = (*&v2[1] | *a1 & 0x1F) << 6;
      break;
    case 3:
      *&v2[1] = (*&v2[1] | *a1 & 0xF) << 6;
      break;
    case 4:
      *&v2[1] = (*&v2[1] | *a1 & 7) << 6;
      break;
  }

  v4 = a1 + 1;
  --v2[0];
  while (v2[0])
  {
    *&v2[1] |= *v4++ & 0x3F;
    if (--v2[0])
    {
      *&v2[1] <<= 6;
    }
  }

  return *&v2[1];
}

void _dispatch_time_init()
{
  info = 0;
  v8 = mach_timebase_info(&info);
  v11 = v8;
  v10 = 86;
  if (v8)
  {
    _dispatch_bug(v10, v11, v0, v1, v2, v3, v4, v5);
  }

  v7 = 0;
  if (info.numer == 125)
  {
    v7 = info.denom == 3;
  }

  if (!v7)
  {
    _dispatch_host_time_init(&info, v6);
  }
}

_DWORD *_dispatch_host_time_init(_DWORD *result, double a2)
{
  LODWORD(a2) = *result;
  *&v2 = *&a2;
  _dispatch_host_time_data = v2;
  LODWORD(v2) = result[1];
  *&_dispatch_host_time_data = *&_dispatch_host_time_data / v2;
  byte_E4D38 = *result == result[1];
  _dispatch_host_time_mach2nano = _dispatch_mach_host_time_mach2nano;
  _dispatch_host_time_nano2mach = _dispatch_mach_host_time_nano2mach;
  return result;
}

dispatch_time_t dispatch_time(dispatch_time_t when, int64_t delta)
{
  v8 = when;
  v7 = delta;
  v6 = 0;
  if (when == -1)
  {
    return -1;
  }

  v5 = 0;
  v4 = 0;
  v14 = v8;
  v13 = 1;
  v12 = &v5;
  v11 = &v4;
  v10 = 0;
  if (v8 == 0x8000000000000000)
  {
    *v12 = 1;
    *v11 = _dispatch_monotonic_time();
  }

  else if (v8 == -2)
  {
    *v12 = 2;
    *v11 = _dispatch_get_nanoseconds();
  }

  else if (v8)
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      if ((v14 & 0x4000000000000000) != 0)
      {
        *v12 = 2;
        v10 = -v14;
      }

      else
      {
        *v12 = 1;
        v10 = v14 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *v12 = 0;
      v10 = v14;
    }

    if (v10 <= 0x3FFFFFFFFFFFFFFFLL)
    {
      v3 = v10;
    }

    else
    {
      v3 = -1;
    }

    *v11 = v3;
  }

  else
  {
    *v12 = 0;
    *v11 = _dispatch_uptime();
  }

  if (v4 == -1)
  {
    return -1;
  }

  if (v5 == 2)
  {
    v6 = v7;
    if (v7 < 0)
    {
      v4 += v6;
      if (v4 < 1)
      {
        v4 = 2;
      }
    }

    else
    {
      v4 += v6;
      if (v4 <= 0)
      {
        return -1;
      }
    }

    v25 = 2;
    v24 = v4;
    if (v4 < 0x3FFFFFFFFFFFFFFFLL)
    {
      return -v24;
    }

    else
    {
      return -1;
    }
  }

  else if (v7 < 0)
  {
    v27 = -v7;
    if (_dispatch_host_time_nano2mach)
    {
      v28 = _dispatch_host_time_nano2mach(v27);
    }

    else if (v27)
    {
      if (v27 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v27 >= 0x5555555555555555)
        {
          v28 = 3 * (v27 / 0x7D);
        }

        else
        {
          v28 = 3 * v27 / 0x7D;
        }
      }

      else
      {
        v28 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v28 = 0;
    }

    v6 = v28;
    v4 -= v28;
    if (v4 >= 1)
    {
      v16 = v5;
      v15 = v4;
      if (v4 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        return -1;
      }

      if (!v16)
      {
        return v15;
      }

      if (v16 == 1)
      {
        return v15 | 0x8000000000000000;
      }

      return -v15;
    }

    else
    {
      v19 = v5;
      v18 = 1;
      if (!v5)
      {
        return v18;
      }

      if (v5 == 1)
      {
        return v18 | 0x8000000000000000;
      }

      return -v18;
    }
  }

  else
  {
    v29 = v7;
    if (_dispatch_host_time_nano2mach)
    {
      v30 = _dispatch_host_time_nano2mach(v29);
    }

    else if (v29)
    {
      if (v29 < 0x7FFFFFFFFFFFFFFFLL)
      {
        if (v29 >= 0x5555555555555555)
        {
          v30 = 3 * (v29 / 0x7D);
        }

        else
        {
          v30 = 3 * v29 / 0x7D;
        }
      }

      else
      {
        v30 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v30 = 0;
    }

    v6 = v30;
    v4 += v30;
    if (v4 > 0)
    {
      v22 = v5;
      v21 = v4;
      if (v4 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        return -1;
      }

      if (!v22)
      {
        return v21;
      }

      if (v22 == 1)
      {
        return v21 | 0x8000000000000000;
      }

      return -v21;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t dispatch_time_to_nsecs(unint64_t a1, void *a2, unint64_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  if (a1 == -1)
  {
    goto LABEL_41;
  }

  v15 = v9;
  v14 = 1;
  v13 = &v6;
  v12 = &v5;
  v11 = 0;
  if (v9 == 0x8000000000000000)
  {
    *v13 = 1;
    *v12 = _dispatch_monotonic_time();
  }

  else if (v9 == -2)
  {
    *v13 = 2;
    *v12 = _dispatch_get_nanoseconds();
  }

  else if (v9)
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      if ((v15 & 0x4000000000000000) != 0)
      {
        *v13 = 2;
        v11 = -v15;
      }

      else
      {
        *v13 = 1;
        v11 = v15 & 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      *v13 = 0;
      v11 = v15;
    }

    if (v11 > 0x3FFFFFFFFFFFFFFFLL)
    {
      v4 = -1;
    }

    else
    {
      v4 = v11;
    }

    *v12 = v4;
  }

  else
  {
    *v13 = 0;
    *v12 = _dispatch_uptime();
  }

  if (v6)
  {
    if (v6 != 1)
    {
      if (v6 == 2)
      {
        *v8 = 3;
        *v7 = v5;
        v10 = 1;
        return v10 & 1;
      }

LABEL_41:
      *v8 = 0;
      *v7 = -1;
      v10 = 0;
      return v10 & 1;
    }

    *v8 = 2;
    v16 = v5;
    if (_dispatch_host_time_mach2nano)
    {
      v17 = _dispatch_host_time_mach2nano(v16);
    }

    else if (v16)
    {
      if (v16 < 0x3126E978D4FDF3ALL)
      {
        if (v16 >= 0x20C49BA5E353F7CLL)
        {
          v17 = 125 * (v16 / 3);
        }

        else
        {
          v17 = 125 * v16 / 3;
        }
      }

      else
      {
        v17 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v17 = 0;
    }

    *v7 = v17;
    v10 = 1;
  }

  else
  {
    *v8 = 1;
    v18 = v5;
    if (_dispatch_host_time_mach2nano)
    {
      v19 = _dispatch_host_time_mach2nano(v18);
    }

    else if (v18)
    {
      if (v18 < 0x3126E978D4FDF3ALL)
      {
        if (v18 >= 0x20C49BA5E353F7CLL)
        {
          v19 = 125 * (v18 / 3);
        }

        else
        {
          v19 = 125 * v18 / 3;
        }
      }

      else
      {
        v19 = 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v19 = 0;
    }

    *v7 = v19;
    v10 = 1;
  }

  return v10 & 1;
}

unint64_t dispatch_time_from_nsec(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  if (a2 < 2)
  {
    v3 = 2;
  }

  if (_dispatch_host_time_nano2mach)
  {
    v9 = _dispatch_host_time_nano2mach(v3);
  }

  else if (v3)
  {
    if (v3 < 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v3 >= 0x5555555555555555)
      {
        v9 = 3 * (v3 / 0x7D);
      }

      else
      {
        v9 = 3 * v3 / 0x7D;
      }
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v9 = 0;
  }

  switch(a1)
  {
    case 1:
      if (v9 < 0x3FFFFFFFFFFFFFFFLL)
      {
        return v9;
      }

      else
      {
        return -1;
      }

    case 2:
      if (v9 < 0x3FFFFFFFFFFFFFFFLL)
      {
        return v9 | 0x8000000000000000;
      }

      else
      {
        return -1;
      }

    case 3:
      if (v3 < 0x3FFFFFFFFFFFFFFFLL)
      {
        return -v3;
      }

      else
      {
        return -1;
      }
  }

  return v5;
}

dispatch_time_t dispatch_walltime(const timespec *when, int64_t delta)
{
  if (when)
  {
    nanoseconds = 1000000000 * when->tv_sec + when->tv_nsec;
  }

  else
  {
    nanoseconds = _dispatch_get_nanoseconds();
  }

  v5 = nanoseconds + delta;
  if (v5 > 1)
  {
    return -v5;
  }

  v2 = -2;
  if (delta >= 0)
  {
    return -1;
  }

  return v2;
}

unint64_t _dispatch_timeout(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = a1;
  nanoseconds = 0;
  switch(a1)
  {
    case 0x8000000000000000:
    case 0xFFFFFFFFFFFFFFFELL:
      return 0;
    case 0xFFFFFFFFFFFFFFFFLL:
      return -1;
    case 0uLL:
      return 0;
  }

  v13 = 0;
  v12 = 0;
  v21 = v15;
  v20 = 0;
  v19 = &v13;
  v18 = &v12;
  v17 = 0;
  if ((v21 & 0x8000000000000000) != 0)
  {
    if ((v21 & 0x4000000000000000) != 0)
    {
      *v19 = 2;
      v17 = -v21;
    }

    else
    {
      *v19 = 1;
      v17 = v21 & 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    *v19 = 0;
    v17 = v21;
  }

  if (v17 > 0x3FFFFFFFFFFFFFFFLL)
  {
    v11 = -1;
  }

  else
  {
    v11 = v17;
  }

  *v18 = v11;
  if (v13 == 2)
  {
    nanoseconds = _dispatch_get_nanoseconds();
    if (nanoseconds < v12)
    {
      return v12 - nanoseconds;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v13)
    {
      v25 = v13 == 1;
      v24 = 241;
      if (v13 != 1)
      {
        _dispatch_abort(v24, v25, a3, a4, a5, a6, a7, a8);
      }

      nanoseconds = _dispatch_monotonic_time();
    }

    else
    {
      nanoseconds = _dispatch_uptime();
    }

    if (nanoseconds >= v12)
    {
      return 0;
    }

    v22 = v12 - nanoseconds;
    if (_dispatch_host_time_mach2nano)
    {
      return _dispatch_host_time_mach2nano(v22);
    }

    if (!v22)
    {
      return 0;
    }

    if (v22 >= 0x3126E978D4FDF3ALL)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    if (v22 >= 0x20C49BA5E353F7CLL)
    {
      return 125 * (v22 / 3);
    }

    return 125 * v22 / 3;
  }
}

unint64_t _dispatch_mach_host_time_mach2nano(unint64_t a1)
{
  v2 = 1;
  if (a1)
  {
    v2 = byte_E4D38;
  }

  if (v2)
  {
    return a1;
  }

  if (a1 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a1 * *&_dispatch_host_time_data + 0.5 < 9.22337204e18)
  {
    return (a1 * *&_dispatch_host_time_data + 0.5);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

unint64_t _dispatch_mach_host_time_nano2mach(unint64_t a1)
{
  v2 = 1;
  if (a1)
  {
    v2 = byte_E4D38;
  }

  if (v2)
  {
    return a1;
  }

  if (a1 >= 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (a1 / *&_dispatch_host_time_data + 0.5 < 9.22337204e18)
  {
    return (a1 / *&_dispatch_host_time_data + 0.5);
  }

  return 0x7FFFFFFFFFFFFFFFLL;
}

unint64_t _dispatch_continuation_alloc_from_heap()
{
  _dispatch_continuation_alloc_once();
  if (_dispatch_use_dispatch_alloc)
  {
    return _dispatch_alloc_continuation_alloc();
  }

  else
  {
    return _dispatch_malloc_continuation_alloc();
  }
}

void _dispatch_continuation_alloc_once()
{
  if (_dispatch_continuation_alloc_init_pred != -1)
  {
    dispatch_once_f(&_dispatch_continuation_alloc_init_pred, 0, _dispatch_continuation_alloc_init);
  }
}

unint64_t _dispatch_alloc_continuation_alloc()
{
  v12 = 0;
  if (!_dispatch_main_heap)
  {
    return _dispatch_alloc_continuation_from_heap_slow();
  }

  v17 = _dispatch_main_heap;
  v16 = 82;
  v14 = _dispatch_cpu_number();
  v11 = *(_dispatch_main_heap + (v14 << 20) + 8);
  if (v11)
  {
    for (i = 0; i < 4; ++i)
    {
      v9 = (v11 + 8 * i);
      v15 = v9;
      unset_bit_upto_index = bitmap_set_first_unset_bit_upto_index(v9, 0xFFFFFFFF);
      if (unset_bit_upto_index != -1)
      {
        v7 = 0;
        v6 = 0;
        get_cont_and_indices_for_bitmap_and_index(v9, unset_bit_upto_index, &v12, &v7, &v6);
        mark_bitmap_as_full_if_still_full(v7, v6, v9, v0, v1, v2, v3, v4);
        return v12;
      }
    }
  }

  v12 = _dispatch_alloc_continuation_from_heap(_dispatch_main_heap);
  if (v12)
  {
    return v12;
  }

  else
  {
    return _dispatch_alloc_continuation_from_heap_slow();
  }
}

uint64_t _dispatch_malloc_continuation_alloc()
{
  while (1)
  {
    v1 = malloc_type_calloc();
    if (v1)
    {
      break;
    }

    _dispatch_temporary_resource_shortage();
  }

  return v1;
}

void _dispatch_continuation_free_to_heap(void *a1)
{
  if (_dispatch_use_dispatch_alloc)
  {
    _dispatch_alloc_continuation_free(a1);
  }

  else
  {
    _dispatch_malloc_continuation_free(a1);
  }
}

void _dispatch_alloc_continuation_free(void *a1)
{
  v17 = a1;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  *a1 = 0;
  get_maps_and_indices_for_continuation(v17, &v15, &v14, &v16, &v13);
  v12 = bitmap_clear_bit(v16, v13, 1, v1, v2, v3, v4, v5);
  if (v15)
  {
    bitmap_clear_bit(v15, v14, 0, v6, v7, v8, v9, v10);
  }

  v11 = 0;
  if (v12)
  {
    v11 = v15 != 0;
  }

  if (v11)
  {
    _dispatch_alloc_maybe_madvise_page(v17);
  }
}

uint64_t _dispatch_continuation_alloc_init()
{
  v2 = malloc_engaged_nano() == 0;
  v1 = getenv("LIBDISPATCH_CONTINUATION_ALLOCATOR");
  if (v1)
  {
    v2 = atoi(v1) != 0;
  }

  result = sub_B9BC4();
  if (result)
  {
    v2 = 0;
  }

  _dispatch_use_dispatch_alloc = v2;
  if (v2)
  {
    return _os_object_atfork_prepare(result);
  }

  return result;
}

uint64_t get_cont_and_indices_for_bitmap_and_index(uint64_t a1, unsigned int a2, uint64_t *a3, uint64_t *a4, unsigned int *a5)
{
  result = magazine_for_continuation(a1);
  v15 = result;
  v14 = (a1 - (result + 64)) / 8;
  v13 = v14 % 0x40;
  v12 = v14 / 0x40;
  if (result + 64 + ((v14 / 0x40) << 9) + 8 * (v14 % 0x40) != a1)
  {
    _dispatch_abort(137, result + 64 + ((v14 / 0x40) << 9) + 8 * (v14 % 0x40) == a1, v6, v7, v8, v9, v10, v11);
  }

  if (a3)
  {
    result = continuation_address(result, v12, v13, a2, v8, v9, v10, v11);
    *a3 = result;
  }

  if (a4)
  {
    result = supermap_address(v15, v12);
    *a4 = result;
  }

  if (a5)
  {
    *a5 = v13;
  }

  return result;
}

BOOL mark_bitmap_as_full_if_still_full(atomic_ullong *a1, unsigned int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0x40)
  {
    _dispatch_abort(297, a2 < 0x40, a3, a4, a5, a6, a7, a8);
  }

  v12 = 1 << a2;
  v11 = *a1;
  do
  {
    result = bitmap_is_full(*a3);
    if (!result)
    {
      break;
    }

    v9 = v11;
    v10 = v11;
    atomic_compare_exchange_strong_explicit(a1, &v10, v11 | v12, memory_order_relaxed, memory_order_relaxed);
    if (v10 != v9)
    {
      v11 = v10;
    }
  }

  while (v10 != v9);
  return result;
}

unint64_t _dispatch_alloc_continuation_from_heap(uint64_t a1)
{
  v8 = _dispatch_cpu_number();
  if (v8 >= MEMORY[0xFFFFFC036])
  {
    _dispatch_abort(463, v8 < MEMORY[0xFFFFFC036], v1, v2, v3, v4, v5, v6);
  }

  page = alloc_continuation_from_first_page(a1 + (v8 << 20));
  if (page)
  {
    return page;
  }

  else
  {
    return alloc_continuation_from_magazine(a1 + (v8 << 20));
  }
}

unint64_t _dispatch_alloc_continuation_from_heap_slow()
{
  for (i = &_dispatch_main_heap; ; i = *i)
  {
    if (!*i)
    {
      _dispatch_alloc_try_create_heap(i);
    }

    v1 = _dispatch_alloc_continuation_from_heap(*i);
    if (v1)
    {
      break;
    }
  }

  return v1;
}

uint64_t bitmap_set_first_unset_bit_upto_index(atomic_ullong *a1, unsigned int a2)
{
  v7 = *a1;
  do
  {
    v2 = __clz(__rbit64(~v7));
    v3 = 0;
    if (v7 != -1)
    {
      v3 = v2 + 1;
    }

    if (!v3)
    {
      return -1;
    }

    v8 = v3 - 1;
    if (v3 - 1 > a2)
    {
      return -1;
    }

    v4 = v7;
    v5 = v7;
    atomic_compare_exchange_strong_explicit(a1, &v5, v7 | (1 << v8), memory_order_relaxed, memory_order_relaxed);
    if (v5 != v7)
    {
      v7 = v5;
    }
  }

  while (v5 != v4);
  return v8;
}

unint64_t continuation_address(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 3)
  {
    _dispatch_abort(111, a2 < 3, a3, a4, a5, a6, a7, a8);
  }

  if (a3 >= 0x40)
  {
    _dispatch_abort(112, a3 < 0x40, a3, a4, a5, a6, a7, a8);
  }

  if (a4 >= 0x40)
  {
    _dispatch_abort(113, a4 < 0x40, a3, a4, a5, a6, a7, a8);
  }

  return a1 + 0x4000 + (a2 << 18) + (a3 << 12) + (a4 << 6);
}

unint64_t alloc_continuation_from_first_page(uint64_t a1)
{
  for (i = 0; i < 3; ++i)
  {
    unset_bit_upto_index = bitmap_set_first_unset_bit_upto_index((a1 + 1600 + 8 * i), 0xFFFFFFFF);
    if (unset_bit_upto_index != -1)
    {
      return a1 + 1664 + ((unset_bit_upto_index + (i << 6)) << 6);
    }
  }

  unset_bit_upto_index = bitmap_set_first_unset_bit_upto_index((a1 + 1600 + 8 * i), 0x25u);
  if (unset_bit_upto_index == -1)
  {
    return 0;
  }

  return a1 + 1664 + ((unset_bit_upto_index + (i << 6)) << 6);
}

unint64_t alloc_continuation_from_magazine(uint64_t a1)
{
  for (i = 0; i < 3; ++i)
  {
    v18 = supermap_address(a1, i);
    if (!bitmap_is_full(*v18))
    {
      for (j = 0; j < 0x40; ++j)
      {
        v17 = bitmap_address(a1, i, j);
        unset_bit_upto_index = bitmap_set_first_unset_bit_upto_index(v17, 0xFFFFFFFF);
        if (unset_bit_upto_index != -1)
        {
          bitmap_in_same_page = first_bitmap_in_same_page(v17);
          if (!_dispatch_main_heap)
          {
            _dispatch_abort(73, 0, v1, v2, v3, v4, v5, v6);
          }

          *(_dispatch_main_heap + (_dispatch_cpu_number() << 20) + 8) = bitmap_in_same_page;
          mark_bitmap_as_full_if_still_full(v18, j, v17, v7, v8, v9, v10, v11);
          return continuation_address(a1, i, j, unset_bit_upto_index, v12, v13, v14, v15);
        }
      }
    }
  }

  return 0;
}

unint64_t first_bitmap_in_same_page(unint64_t a1)
{
  v8 = magazine_for_continuation(a1);
  if (a1 < v8 + 64)
  {
    _dispatch_abort(224, a1 >= v8 + 64, v1, v2, v3, v4, v5, v6);
  }

  if (a1 >= v8 + 2112)
  {
    _dispatch_abort(226, a1 < v8 + 2112, v1, v2, v3, v4, v5, v6);
  }

  return a1 & 0xFFFFFFFFFFFFFFE0;
}

void _dispatch_alloc_try_create_heap(atomic_ullong *a1)
{
  v14 = a1;
  v13 = 0;
  v18 = 0;
  v17 = 0xFFFFFC036;
  v12 = MEMORY[0xFFFFFC036] << 20;
  v11 = 0xFFFFFLL;
  for (address = vm_page_size; ; address = vm_page_size)
  {
    v13 = mach_vm_map(mach_task_self_, &address, v12, v11, 1241513985, 0, 0, 0, 3, 7, 1u);
    if (!v13)
    {
      break;
    }

    if (v13 != 3)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Could not allocate heap";
      qword_E42C0 = v13;
      __break(1u);
      JUMPOUT(0xB22DCLL);
    }

    _dispatch_temporary_resource_shortage();
  }

  v9 = address;
  v1 = 0;
  atomic_compare_exchange_strong_explicit(v14, &v1, address, memory_order_relaxed, memory_order_relaxed);
  if (v1)
  {
    v16 = 0;
    v15 = 0xFFFFFC036;
    v8 = mprotect(v9, MEMORY[0xFFFFFC036] << 20, 0);
    v20 = v8;
    v19 = 447;
    if (v8)
    {
      _dispatch_bug(v19, v20, v2, v3, v4, v5, v6, v7);
    }
  }
}

BOOL get_maps_and_indices_for_continuation(uint64_t a1, void *a2, unsigned int *a3, void *a4, unsigned int *a5)
{
  v6 = magazine_for_continuation(a1);
  result = continuation_is_in_first_page(a1);
  if (result)
  {
    v8 = ((a1 - (v6 + 1664)) / 64) / 0x40;
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = v8;
    }

    if (a4)
    {
      *a4 = v6 + 1600 + 8 * v8;
    }

    if (a5)
    {
      *a5 = ((a1 - (v6 + 1664)) / 64) % 0x40;
    }
  }

  else
  {
    v10 = ((a1 - (v6 + 0x4000)) / 64) / 0x1000;
    v9 = ((a1 - (v6 + 0x4000)) / 64) / 0x40 % 0x40;
    if (a2)
    {
      *a2 = v6 + 16 + 8 * v10;
    }

    if (a3)
    {
      *a3 = v9;
    }

    if (a4)
    {
      *a4 = v6 + 64 + (v10 << 9) + 8 * v9;
    }

    if (a5)
    {
      *a5 = ((a1 - (v6 + 0x4000)) / 64) % 0x40;
    }
  }

  return result;
}

BOOL bitmap_clear_bit(atomic_ullong *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 >= 0x40)
  {
    _dispatch_abort(274, a2 < 0x40, a3, a4, a5, a6, a7, a8);
  }

  v10 = 1 << a2;
  if ((a3 & 1) != 0 && (*a1 & v10) == 0)
  {
    v8 = *a1;
    qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: Corruption: failed to clear bit exclusively";
    qword_E42C0 = v8;
    __break(1u);
    JUMPOUT(0xB278CLL);
  }

  return (atomic_fetch_and_explicit(a1, ~v10, memory_order_release) & ~v10) == 0;
}

void _dispatch_alloc_maybe_madvise_page(uint64_t a1)
{
  v13 = a1;
  v12 = madvisable_page_base_for_continuation(a1);
  if (v12)
  {
    v11 = 0;
    get_maps_and_indices_for_continuation(v12, 0, 0, &v11, 0);
    for (i = 0; i < 4; ++i)
    {
      if (v11[i])
      {
        return;
      }
    }

    v9 = 0;
    while (1)
    {
      v1 = 0;
      atomic_compare_exchange_strong_explicit(&v11[v9], &v1, 0xFFFFFFFFFFFFFFFFLL, memory_order_relaxed, memory_order_relaxed);
      if (v1)
      {
        break;
      }

      if (++v9 >= 4)
      {
        __memset_chk();
        v8 = madvise(v12, 0x4000uLL, 5);
        v15 = v8;
        v14 = 586;
        if (v8)
        {
          _dispatch_bug(v14, v15, v2, v3, v4, v5, v6, v7);
        }

        break;
      }
    }

    while (v9 > 1)
    {
      v11[--v9] = 0;
    }

    if (v9)
    {
      *v11 = 0;
    }
  }
}

unint64_t madvisable_page_base_for_continuation(uint64_t a1)
{
  if (continuation_is_in_first_page(a1))
  {
    return 0;
  }

  v2 = magazine_for_continuation(a1);
  if ((a1 & 0xFFFFFFFFFFFFC000) < v2 + 0x4000)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: madvisable continuation too low";
    qword_E42C0 = a1 & 0xFFFFFFFFFFFFC000;
    __break(1u);
    JUMPOUT(0xB2AFCLL);
  }

  if ((a1 & 0xFFFFFFFFFFFFC000) > v2 + 802752)
  {
    qword_E4290 = "BUG IN LIBDISPATCH: madvisable continuation too high";
    qword_E42C0 = a1 & 0xFFFFFFFFFFFFC000;
    __break(1u);
    JUMPOUT(0xB2B58);
  }

  return a1 & 0xFFFFFFFFFFFFC000;
}

uint64_t dispatch_benchmark(unint64_t a1, uint64_t a2)
{
  v5 = _Block_get_invoke_fn(a2);
  v6 = 0;
  if (v5)
  {
    v6 = v5;
  }

  return dispatch_benchmark_f(a1, a2, v6);
}

uint64_t dispatch_benchmark_f(unint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = 0;
  if (dispatch_benchmark_f_pred != -1)
  {
    dispatch_once_f(&dispatch_benchmark_f_pred, &dispatch_benchmark_f_bdata, _dispatch_benchmark_init);
  }

  if (!a1)
  {
    return 0;
  }

  _dispatch_uptime();
  do
  {
    ++v4;
    a3(a2);
  }

  while (v4 < a1);
  _dispatch_uptime();
  return __udivti3() - qword_E0AE0;
}

uint64_t _dispatch_benchmark_init(unsigned int *a1)
{
  v15 = *(a1 + 2);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v12 = 0;
  v9 = mach_timebase_info(a1);
  if (v9)
  {
    _dispatch_abort(53, v9, v1, v2, v3, v4, v5, v6);
  }

  v11 = _dispatch_uptime();
  do
  {
    ++v12;
    v15(v14);
  }

  while (v12 < v13);
  v10 = (_dispatch_uptime() - v11) * *a1;
  v7 = a1[1];
  __udivti3();
  result = __udivti3();
  *(a1 + 1) = result;
  return result;
}

uint64_t _dispatch_send_wakeup_runloop_thread(unsigned int a1, mach_msg_timeout_t a2)
{
  v6 = a1;
  v5 = a2;
  *&v4.msgh_bits = 19;
  *&v4.msgh_voucher_port = 0x4E00000000;
  *&v4.msgh_remote_port = a1;
  v3 = mach_msg(&v4, 17, 0x18u, 0, 0, a2, 0);
  if (v3 == 268435460)
  {
    if ((v4.msgh_bits & 0x1F00) >> 8 == 17)
    {
      mach_port_deallocate(mach_task_self_, v4.msgh_local_port);
    }

    mach_msg_destroy(&v4);
  }

  return v3;
}

uint64_t _dispatch_send_consume_send_once_right(unsigned int a1)
{
  v3 = a1;
  *&v2.msgh_bits = 18;
  *&v2.msgh_voucher_port = 0x4F00000000;
  *&v2.msgh_remote_port = a1;
  return mach_msg(&v2, 1, 0x18u, 0, 0, 0, 0);
}

uint64_t libdispatch_internal_protocol_server_routine(uint64_t a1)
{
  v2 = *(a1 + 20) - 64;
  if (v2 > 15 || v2 < 0)
  {
    return 0;
  }

  else
  {
    return qword_DDCB0[5 * v2 + 1];
  }
}

uint64_t _Xmach_notify_port_deleted(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_port_deleted_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_port_deleted(a1[3], a1[8], v3, v4, v5, v6, v7, v8);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xmach_notify_send_possible(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_port_deleted_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_send_possible(a1[3], a1[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xmach_notify_port_destroyed(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_port_destroyed_t(a1);
  if (!result)
  {
    _dispatch_mach_notify_port_destroyed(a1[3], a1[7]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xmach_notify_no_senders(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_port_deleted_t(a1);
  if (!result)
  {
    _dispatch_mach_notify_no_senders(a1[3], a1[8]);
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xmach_notify_send_once(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_send_once_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_send_once(a1[3], v3, v4, v5, v6, v7, v8, v9);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xmach_notify_dead_name(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_port_deleted_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = _dispatch_mach_notify_dead_name(a1[3], a1[8]);
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xwakeup_runloop_thread(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_send_once_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t _Xconsume_send_once_right(_DWORD *a1, uint64_t a2)
{
  result = __MIG_check__Request__mach_notify_send_once_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    v3 = a1[3];
    result = _dispatch_wakeup_runloop_thread();
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t libdispatch_internal_protocol_server(_DWORD *a1, uint64_t a2)
{
  *a2 = *a1 & 0x1F;
  *(a2 + 8) = a1[2];
  *(a2 + 4) = 36;
  *(a2 + 12) = 0;
  *(a2 + 20) = a1[5] + 100;
  *(a2 + 16) = 0;
  if (a1[5] <= 79 && a1[5] >= 64 && (v3 = qword_DDCB0[5 * a1[5] - 319]) != 0)
  {
    v3(a1, a2);
    return 1;
  }

  else
  {
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
    return 0;
  }
}

uint64_t __MIG_check__Request__mach_notify_port_deleted_t(_DWORD *a1)
{
  if ((*a1 & 0x80000000) == 0 && a1[1] == 36)
  {
    return 0;
  }

  else
  {
    return -304;
  }
}

uint64_t __MIG_check__Request__mach_notify_port_destroyed_t(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0 && a1[6] == 1 && a1[1] == 40)
  {
    if (!HIBYTE(a1[9]) && BYTE2(a1[9]) == 16)
    {
      return 0;
    }

    else
    {
      return -300;
    }
  }

  else
  {
    return -304;
  }
}

uint64_t __MIG_check__Request__mach_notify_send_once_t(_DWORD *a1)
{
  if ((*a1 & 0x80000000) == 0 && a1[1] == 24)
  {
    return 0;
  }

  else
  {
    return -304;
  }
}

uint64_t firehose_send_register(int a1, int a2, uint64_t a3, int a4, int a5, int a6, int a7, uint64_t a8)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  v10 = a8;
  memset(__b, 0, sizeof(__b));
  *&__b[24] = 5;
  *&__b[28] = v16;
  *&__b[36] = *&__b[36] & 0xFF00FFFF | 0x110000;
  *&__b[36] &= 0xFFFFFFu;
  *&__b[40] = v14;
  *&__b[48] = *&__b[48] & 0xFF00FFFF | 0x100000;
  *&__b[48] &= 0xFFFFFFu;
  *&__b[52] = v13;
  *&__b[60] = *&__b[60] & 0xFF00FFFF | 0x100000;
  *&__b[60] &= 0xFFFFFFu;
  *&__b[64] = v12;
  *&__b[72] = *&__b[72] & 0xFF00FFFF | 0x140000;
  *&__b[72] &= 0xFFFFFFu;
  *&__b[76] = v11;
  *&__b[84] = *&__b[84] & 0xFF00FFFF | 0x110000;
  *&__b[84] &= 0xFFFFFFu;
  *&__b[88] = NDR_record;
  *&__b[96] = v15;
  *&__b[104] = v10;
  *&__b[12] = 0;
  *__b = -2147483629;
  *&__b[8] = v17;
  *&__b[20] = 11600;
  *&__b[16] = 0;
  return mach_msg(__b, 1, 0x70u, 0, 0, 0, 0);
}

uint64_t firehose_send_push_and_wait(int a1, _OWORD *a2, _DWORD *a3)
{
  memset(__b, 0, sizeof(__b));
  *&__b[12] = mig_get_special_reply_port();
  *__b = 5395;
  *&__b[8] = a1;
  *&__b[20] = 11601;
  *&__b[16] = 0;
  v5 = mach_msg(__b, 3162115, 0x18u, 0x40u, *&__b[12], 0, 0);
  if (v5 && v5 != 268435459 && v5 != 268435458 && v5 != 268435472)
  {
    mig_dealloc_special_reply_port();
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    v4 = __MIG_check__Reply__push_and_wait_t(__b);
    if (v4)
    {
      mach_msg_destroy(__b);
      return v4;
    }

    else
    {
      *a2 = *&__b[36];
      *a3 = *&__b[52];
      return 0;
    }
  }
}

uint64_t __MIG_check__Reply__push_and_wait_t(_DWORD *a1)
{
  if (a1[5] == 11701)
  {
    v2 = a1[1];
    if ((*a1 & 0x80000000) == 0 && (v2 == 56 || v2 == 36 && a1[8]))
    {
      if (a1[2])
      {
        return -300;
      }

      else if (a1[8])
      {
        return a1[8];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -300;
    }
  }

  else if (a1[5] == 71)
  {
    return -308;
  }

  else
  {
    return -301;
  }
}

uint64_t firehose_send_push_async(int a1, int a2, mach_msg_timeout_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  memset(__b, 0, sizeof(__b));
  *&__b[24] = NDR_record;
  *&__b[32] = v7;
  *&__b[12] = 0;
  *__b = 19;
  *&__b[8] = v8;
  *&__b[20] = 11602;
  *&__b[16] = 0;
  v4 = mach_msg(__b, 17, 0x24u, 0, 0, v6, 0);
  if (v4 == 268435460)
  {
    if ((*__b & 0x1F00) >> 8 == 17)
    {
      mach_port_deallocate(mach_task_self_, *&__b[12]);
    }

    mach_msg_destroy(__b);
  }

  return v4;
}

uint64_t firehose_send_get_logging_prefs(int a1, _DWORD *a2, void *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  memset(__b, 0, sizeof(__b));
  *&__b[12] = mig_get_special_reply_port();
  *__b = 5395;
  *&__b[8] = v9;
  *&__b[20] = 11603;
  *&__b[16] = 0;
  v5 = mach_msg(__b, 3162115, 0x18u, 0x40u, *&__b[12], 0, 0);
  if (v5 && v5 != 268435459 && v5 != 268435458 && v5 != 268435472)
  {
    mig_dealloc_special_reply_port();
  }

  if (v5)
  {
    return v5;
  }

  else
  {
    v4 = __MIG_check__Reply__get_logging_prefs_t(__b);
    if (v4)
    {
      mach_msg_destroy(__b);
      return v4;
    }

    else
    {
      *v8 = *&__b[28];
      *v7 = *&__b[48];
      return 0;
    }
  }
}

uint64_t __MIG_check__Reply__get_logging_prefs_t(int *a1)
{
  if (a1[5] == 11703)
  {
    v2 = a1[1];
    if (*a1 < 0 && a1[6] == 1 && v2 == 56 || *a1 >= 0 && v2 == 36 && a1[8])
    {
      if (a1[2])
      {
        return -300;
      }

      else if (*a1 < 0)
      {
        if (!HIBYTE(a1[9]) && BYTE2(a1[9]) == 17)
        {
          return 0;
        }

        else
        {
          return -300;
        }
      }

      else
      {
        return a1[8];
      }
    }

    else
    {
      return -300;
    }
  }

  else if (a1[5] == 71)
  {
    return -308;
  }

  else
  {
    return -301;
  }
}

uint64_t firehose_send_should_send_strings(mach_port_t a1, mach_port_t *a2)
{
  v7 = a1;
  v6 = a2;
  memset(__b, 0, sizeof(__b));
  __b[0].msgh_local_port = mig_get_special_reply_port();
  __b[0].msgh_bits = 5395;
  __b[0].msgh_remote_port = v7;
  __b[0].msgh_id = 11604;
  __b[0].msgh_voucher_port = 0;
  v4 = mach_msg(__b, 3162115, 0x18u, 0x30u, __b[0].msgh_local_port, 0, 0);
  if (v4 && v4 != 268435459 && v4 != 268435458 && v4 != 268435472)
  {
    mig_dealloc_special_reply_port();
  }

  if (v4)
  {
    return v4;
  }

  else
  {
    v3 = __MIG_check__Reply__should_send_strings_t(__b);
    if (v3)
    {
      mach_msg_destroy(__b);
      return v3;
    }

    else
    {
      *v6 = __b[1].msgh_local_port;
      return 0;
    }
  }
}

uint64_t __MIG_check__Reply__should_send_strings_t(_DWORD *a1)
{
  if (a1[5] == 11704)
  {
    v2 = a1[1];
    if ((*a1 & 0x80000000) == 0 && (v2 == 40 || v2 == 36 && a1[8]))
    {
      if (a1[2])
      {
        return -300;
      }

      else if (a1[8])
      {
        return a1[8];
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return -300;
    }
  }

  else if (a1[5] == 71)
  {
    return -308;
  }

  else
  {
    return -301;
  }
}

uint64_t firehoseReply_server_routine(uint64_t a1)
{
  v2 = *(a1 + 20) - 11700;
  if (v2 > 4 || v2 < 0)
  {
    return 0;
  }

  else
  {
    return qword_DDF50[5 * v2 + 1];
  }
}

uint64_t _Xpush_reply(uint64_t a1, uint64_t a2)
{
  result = __MIG_check__Request__push_reply_t(a1);
  if (!result)
  {
    v3 = *(a1 + 52);
    v4 = *(a1 + 36);
    v5 = *(a1 + 44);
    firehose_client_push_reply(*(a1 + 12), *(a1 + 32));
  }

  *(a2 + 32) = result;
  *(a2 + 24) = NDR_record;
  return result;
}

uint64_t _Xpush_notify_async(uint64_t a1, uint64_t a2)
{
  result = __MIG_check__Request__push_notify_async_t(a1);
  if (result)
  {
    *(a2 + 32) = result;
    *(a2 + 24) = NDR_record;
  }

  else
  {
    result = firehose_client_push_notify_async(*(a1 + 12), *(a1 + 32), *(a1 + 40), *(a1 + 48));
    *(a2 + 32) = result;
  }

  return result;
}

uint64_t firehoseReply_server(_DWORD *a1, uint64_t a2)
{
  *a2 = *a1 & 0x1F;
  *(a2 + 8) = a1[2];
  *(a2 + 4) = 36;
  *(a2 + 12) = 0;
  *(a2 + 20) = a1[5] + 100;
  *(a2 + 16) = 0;
  if (a1[5] <= 11704 && a1[5] >= 11700 && (v3 = qword_DDF50[5 * a1[5] - 58499]) != 0)
  {
    v3(a1, a2);
    return 1;
  }

  else
  {
    *(a2 + 24) = NDR_record;
    *(a2 + 32) = -303;
    return 0;
  }
}

uint64_t __MIG_check__Request__push_reply_t(_DWORD *a1)
{
  if ((*a1 & 0x80000000) == 0 && a1[1] == 56)
  {
    return 0;
  }

  else
  {
    return -304;
  }
}

uint64_t __MIG_check__Request__push_notify_async_t(_DWORD *a1)
{
  if ((*a1 & 0x80000000) == 0 && a1[1] == 52)
  {
    return 0;
  }

  else
  {
    return -304;
  }
}

void _dispatch_bug(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (_dispatch_build_pred != -1)
  {
    dispatch_once_f(&_dispatch_build_pred, 0, _dispatch_build_init);
  }

  v9 = _dispatch_bug_db_last_seen;
  _dispatch_bug_db_last_seen = v8;
  if (v8 != v9)
  {
    _dispatch_log("BUG in libdispatch: %s - %lu - 0x%lx", a2, a3, a4, a5, a6, a7, a8, &_dispatch_build);
  }
}

void _dispatch_log(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[1] = a1;
  v9[0] = &a9;
  v12 = a1;
  v11 = 0;
  v10 = v9;
  v15 = &_dispatch_logv_pred;
  v14 = 0;
  v13 = _dispatch_logv_init;
  if (_dispatch_logv_pred != -1)
  {
    dispatch_once_f(v15, v14, v13);
  }

  if ((dispatch_log_disabled & 1) == 0)
  {
    if (dispatch_logfile == -1)
    {
      if (v10)
      {
        _dispatch_vsyslog(v12, *v10);
      }

      else
      {
        _dispatch_syslog();
      }
    }

    else if (v10)
    {
      _dispatch_logv_file(v12, *v10);
    }

    else
    {
      _dispatch_log_file(v12, v11);
    }
  }
}

void _dispatch_bug_mach_client(uint64_t a1, mach_error_t a2)
{
  v10 = _dispatch_bug_mach_client_dbmc_last_seen;
  _dispatch_bug_mach_client_dbmc_last_seen = v2;
  if (v2 != v10)
  {
    mach_error_string(a2);
    _dispatch_log("BUG in libdispatch client: %s %s - 0x%x", v3, v4, v5, v6, v7, v8, v9, a1);
    if (_dispatch_mode)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_mach_client";
      __break(1u);
      JUMPOUT(0xB4ACCLL);
    }
  }
}

void _dispatch_bug_kevent_client(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v63 = a7;
  v62 = a1;
  v61 = a2;
  v60 = a3;
  v59 = a4;
  v58 = a5;
  v57 = a6;
  v56 = 0;
  v55 = 0;
  function_symbol = 0;
  if (a7)
  {
    v55 = ~*(v63 + 8);
    v45 = *v55;
    v46 = v55 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v47 = 0;
    if (v45)
    {
      v47 = v45;
    }

    v44 = *(v47 + 16);
    if (v44 == 275)
    {
      v56 = *(v63 + 40);
      if (v56)
      {
        function_symbol = _dispatch_continuation_get_function_symbol(v56);
      }
    }

    else if (v44 == 787)
    {
      v41 = *(v63 + 40);
      v42 = (v63 + 40) & 0xFFFFFFFFFFFFLL | 0xAFCE000000000000;
      v43 = 0;
      if (v41)
      {
        v43 = v41;
      }

      v39 = v43;
      v40 = 0;
      if (v43)
      {
        v40 = v39;
      }

      function_symbol = v40;
    }

    a2 = *v63;
    v36 = a2;
    v37 = v63 & 0xFFFFFFFFFFFFLL | 0x6AE1000000000000;
    v38 = 0;
    if (a2)
    {
      v38 = v36;
    }

    v61 = *v38;
  }

  if (v60 && v59)
  {
    v53 = _dispatch_bug_kevent_client_dbkc_last_seen_1;
    _dispatch_bug_kevent_client_dbkc_last_seen_1 = v48;
    v52 = v48 == v53;
    if (v48 != v53)
    {
      v34 = v62;
      v33 = v60;
      v35 = &v22;
      v30 = function_symbol;
      v29 = v58;
      v28 = v58;
      v27 = v61;
      v26 = v57;
      v25 = v59;
      v24 = strerror(v59);
      v23 = v60;
      _dispatch_log("BUG in libdispatch client: %s %s: %s - 0x%x { 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", v8, v9, v10, v11, v12, v13, v14, v62);
      if (_dispatch_mode)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
        __break(1u);
        JUMPOUT(0xB4DE8);
      }
    }
  }

  else if (v60)
  {
    v51 = _dispatch_bug_kevent_client_dbkc_last_seen_2;
    _dispatch_bug_kevent_client_dbkc_last_seen_2 = v48;
    if (v48 != v51)
    {
      v28 = function_symbol;
      v27 = v58;
      v26 = v58;
      v25 = v61;
      v24 = v57;
      v23 = v60;
      _dispatch_log("BUG in libdispatch client: %s %s{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", a2, a3, a4, a5, a6, a7, a8, v62);
      if (_dispatch_mode)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
        __break(1u);
        JUMPOUT(0xB4EB4);
      }
    }
  }

  else
  {
    v50 = _dispatch_bug_kevent_client_dbkc_last_seen_3;
    _dispatch_bug_kevent_client_dbkc_last_seen_3 = v48;
    v49 = v48 == v50;
    if (v48 != v50)
    {
      v31 = v62;
      v32 = &v22;
      v29 = function_symbol;
      v28 = v58;
      v27 = v58;
      v26 = v61;
      v25 = v57;
      v24 = v59;
      v23 = strerror(v59);
      _dispatch_log("BUG in libdispatch: %s: %s - 0x%x{ 0x%llx[%s], ident: %lld / 0x%llx, handler: %p }", v15, v16, v17, v18, v19, v20, v21, v62);
      if (_dispatch_mode)
      {
        qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_client";
        __break(1u);
        JUMPOUT(0xB4F90);
      }
    }
  }
}

void _dispatch_bug_kevent_vanished(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = ~*(a1 + 8);
  v14 = 0;
  if (*v16)
  {
    v14 = *v16;
  }

  v12 = *(v14 + 16);
  if (v12 == 275)
  {
    if (*(a1 + 40))
    {
      _dispatch_continuation_get_function_symbol(*(a1 + 40));
    }
  }

  else if (v12 == 787 && *(a1 + 40))
  {
    v11 = *(a1 + 40);
  }

  v15 = _dispatch_bug_kevent_vanished_dbkv_last_seen;
  _dispatch_bug_kevent_vanished_dbkv_last_seen = v13;
  if (v13 != v15)
  {
    v10 = 0;
    if (*a1)
    {
      v10 = *a1;
    }

    if (v16[9])
    {
      v9 = v16[9];
    }

    v8 = *(a1 + 24);
    _dispatch_log("BUG in libdispatch client: %s, monitored resource vanished before the source cancel handler was invoked { %p[%s], ident: %d / 0x%x, handler: %p }", *a1, a3, a4, a5, a6, a7, a8, *v10);
    if (_dispatch_mode)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_kevent_vanished";
      __break(1u);
      JUMPOUT(0xB527CLL);
    }
  }
}

void _dispatch_bug_deprecated(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = _dispatch_bug_deprecated_dbd_last_seen;
  _dispatch_bug_deprecated_dbd_last_seen = v8;
  if (v8 != v9)
  {
    _dispatch_log("DEPRECATED USE in libdispatch client: %s; set a breakpoint on _dispatch_bug_deprecated to debug", a2, a3, a4, a5, a6, a7, a8, a1);
    if (_dispatch_mode)
    {
      qword_E4290 = "BUG IN CLIENT OF LIBDISPATCH: LIBDISPATCH_STRICT: _dispatch_bug_deprecated";
      __break(1u);
      JUMPOUT(0xB532CLL);
    }
  }
}

size_t _dispatch_object_debug_attr(uint64_t a1, char *a2, size_t a3)
{
  v6 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "xref = %d, ref = %d, ", *(a1 + 12), *(a1 + 8));
  if (v6 < 0)
  {
    return 0;
  }

  if (v6 > a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

size_t _dispatch_semaphore_debug(void *a1, char *a2, size_t a3)
{
  v10 = 0;
  if (*a1)
  {
    v10 = *a1;
  }

  v13 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v10 + 24), a1);
  if (v13 < 0)
  {
    v9 = 0;
  }

  else
  {
    if (v13 > a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v13;
    }

    v9 = v8;
  }

  v15 = v9 + _dispatch_object_debug_attr(a1, &a2[v9], a3 - v9);
  v12 = __snprintf_chk(&a2[v15], a3 - v15, 0, 0xFFFFFFFFFFFFFFFFLL, "port = 0x%x, ", *(a1 + 16));
  if (v12 < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v12 > a3 - v15)
    {
      v6 = a3 - v15;
    }

    else
    {
      v6 = v12;
    }

    v7 = v6;
  }

  v16 = v15 + v7;
  v11 = __snprintf_chk(&a2[v16], a3 - v16, 0, 0xFFFFFFFFFFFFFFFFLL, "value = %ld, orig = %ld }", a1[6], a1[7]);
  if (v11 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v11 <= a3 - v16)
    {
      v4 = v11;
    }

    else
    {
      v4 = a3 - v16;
    }

    v5 = v4;
  }

  return v16 + v5;
}

size_t _dispatch_group_debug(uint64_t *a1, char *a2, size_t a3)
{
  v13 = a1[6];
  v8 = 0;
  if (*a1)
  {
    v8 = *a1;
  }

  v10 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v8 + 24), a1);
  if (v10 < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v10 > a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v10;
    }

    v7 = v6;
  }

  v12 = v7 + _dispatch_object_debug_attr(a1, &a2[v7], a3 - v7);
  v9 = __snprintf_chk(&a2[v12], a3 - v12, 0, 0xFFFFFFFFFFFFFFFFLL, "count = %u, gen = %d, waiters = %d, notifs = %d }", -(v13 & 0xFFFFFFFC) >> 2, HIDWORD(v13), (v13 & 1) != 0, (v13 & 2) != 0);
  if (v9 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v9 <= a3 - v12)
    {
      v4 = v9;
    }

    else
    {
      v4 = a3 - v12;
    }

    v5 = v4;
  }

  return v12 + v5;
}

size_t _dispatch_queue_debug_attr(uint64_t a1, char *a2, size_t a3)
{
  v49 = *(a1 + 24);
  if (v49 && v49[9])
  {
    v33 = v49[9];
  }

  else
  {
    v33 = &unk_BBE5B;
  }

  v48 = *(a1 + 56);
  v46 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "sref = %d, target = %s[%p], width = 0x%x, state = 0x%016llx", *(a1 + 96) + 1, v33, v49, *(a1 + 80), v48);
  if (v46 < 0)
  {
    v32 = 0;
  }

  else
  {
    if (v46 <= a3)
    {
      v31 = v46;
    }

    else
    {
      v31 = a3;
    }

    v32 = v31;
  }

  v50 = v32;
  if ((v48 & 0xFF80000000000000) != 0)
  {
    v45 = __snprintf_chk(&a2[v32], a3 - v32, 0, 0xFFFFFFFFFFFFFFFFLL, ", suspended = %d", v48 / 0x400000000000000);
    if (v45 < 0)
    {
      v30 = 0;
    }

    else
    {
      if (v45 <= a3 - v32)
      {
        v29 = v45;
      }

      else
      {
        v29 = a3 - v32;
      }

      v30 = v29;
    }

    v50 = v32 + v30;
  }

  switch(v48 & 0x180000000000000)
  {
    case 0x180000000000000uLL:
      v44 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", inactive");
      if (v44 < 0)
      {
        v28 = 0;
      }

      else
      {
        if (v44 <= a3 - v50)
        {
          v27 = v44;
        }

        else
        {
          v27 = a3 - v50;
        }

        v28 = v27;
      }

      v50 += v28;
      break;
    case 0x100000000000000uLL:
      v43 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", activated");
      if (v43 < 0)
      {
        v26 = 0;
      }

      else
      {
        if (v43 <= a3 - v50)
        {
          v25 = v43;
        }

        else
        {
          v25 = a3 - v50;
        }

        v26 = v25;
      }

      v50 += v26;
      break;
    case 0x80000000000000uLL:
      v42 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", activating");
      if (v42 < 0)
      {
        v24 = 0;
      }

      else
      {
        if (v42 <= a3 - v50)
        {
          v23 = v42;
        }

        else
        {
          v23 = a3 - v50;
        }

        v24 = v23;
      }

      v50 += v24;
      break;
  }

  if ((v48 & 0x4000000001) != 0)
  {
    v41 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", enqueued");
    if (v41 < 0)
    {
      v22 = 0;
    }

    else
    {
      if (v41 <= a3 - v50)
      {
        v21 = v41;
      }

      else
      {
        v21 = a3 - v50;
      }

      v22 = v21;
    }

    v50 += v22;
  }

  if ((v48 & 0x8000000000) != 0)
  {
    v40 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", dirty");
    if (v40 < 0)
    {
      v20 = 0;
    }

    else
    {
      if (v40 <= a3 - v50)
      {
        v19 = v40;
      }

      else
      {
        v19 = a3 - v50;
      }

      v20 = v19;
    }

    v50 += v20;
  }

  v39 = (v48 & 0x700000000) >> 32;
  if (v39)
  {
    v38 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", max qos %d", v39);
    if (v38 < 0)
    {
      v18 = 0;
    }

    else
    {
      if (v38 <= a3 - v50)
      {
        v17 = v38;
      }

      else
      {
        v17 = a3 - v50;
      }

      v18 = v17;
    }

    v50 += v18;
  }

  if ((v48 & 0xFFFFFFFC) != 0)
  {
    v55 = v48 | 3;
  }

  else
  {
    v55 = 0;
  }

  if (v55 && ((*(a1 + 80) & 0x40000) == 0 || (*(a1 + 80) & 0x1000000) != 0))
  {
    v37 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", draining on 0x%x", v55);
    if (v37 < 0)
    {
      v16 = 0;
    }

    else
    {
      if (v37 <= a3 - v50)
      {
        v15 = v37;
      }

      else
      {
        v15 = a3 - v50;
      }

      v16 = v15;
    }

    v50 += v16;
  }

  if ((v48 & 0x40000000000000) != 0)
  {
    v36 = __snprintf_chk(&a2[v50], a3 - v50, 0, 0xFFFFFFFFFFFFFFFFLL, ", in-barrier");
    if (v36 < 0)
    {
      v14 = 0;
    }

    else
    {
      if (v36 <= a3 - v50)
      {
        v13 = v36;
      }

      else
      {
        v13 = a3 - v50;
      }

      v14 = v13;
    }

    v51 = v50 + v14;
  }

  else
  {
    v11 = &a2[v50];
    v12 = a3 - v50;
    v57 = *(a1 + 80);
    v56 = (v48 & 0x3FFE0000000000) >> 41;
    if ((v48 & 0x10000000000) != 0)
    {
      v3 = __snprintf_chk(v11, v12, 0, 0xFFFFFFFFFFFFFFFFLL, ", in-flight = %d", v56 - (4096 - v57) - (v57 - 1));
    }

    else
    {
      v3 = __snprintf_chk(v11, v12, 0, 0xFFFFFFFFFFFFFFFFLL, ", in-flight = %d", v56 - (4096 - v57));
    }

    if (v3 < 0)
    {
      v10 = 0;
    }

    else
    {
      if (v3 <= a3 - v50)
      {
        v9 = v3;
      }

      else
      {
        v9 = a3 - v50;
      }

      v10 = v9;
    }

    v51 = v50 + v10;
  }

  if ((v48 & 0x10000000000) != 0)
  {
    v35 = __snprintf_chk(&a2[v51], a3 - v51, 0, 0xFFFFFFFFFFFFFFFFLL, ", pending-barrier");
    if (v35 < 0)
    {
      v8 = 0;
    }

    else
    {
      if (v35 <= a3 - v51)
      {
        v7 = v35;
      }

      else
      {
        v7 = a3 - v51;
      }

      v8 = v7;
    }

    v51 += v8;
  }

  if ((*(a1 + 80) & 0x40000) != 0 && (*(a1 + 80) & 0x1000000) == 0)
  {
    v34 = __snprintf_chk(&a2[v51], a3 - v51, 0, 0xFFFFFFFFFFFFFFFFLL, ", thread = 0x%x ", v55);
    if (v34 < 0)
    {
      v6 = 0;
    }

    else
    {
      if (v34 <= a3 - v51)
      {
        v5 = v34;
      }

      else
      {
        v5 = a3 - v51;
      }

      v6 = v5;
    }

    v51 += v6;
  }

  return v51;
}

size_t _dispatch_queue_debug(const char **a1, char *a2, size_t a3)
{
  if (a1[9])
  {
    v3 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", a1[9], a1);
  }

  else
  {
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    v3 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v9 + 3), a1);
  }

  if (v3 < 0)
  {
    v8 = 0;
  }

  else
  {
    if (v3 > a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;
  }

  v12 = v8 + _dispatch_object_debug_attr(a1, &a2[v8], a3 - v8);
  v13 = v12 + _dispatch_queue_debug_attr(a1, &a2[v12], a3 - v12);
  v10 = __snprintf_chk(&a2[v13], a3 - v13, 0, 0xFFFFFFFFFFFFFFFFLL, "}");
  if (v10 < 0)
  {
    v6 = 0;
  }

  else
  {
    if (v10 > a3 - v13)
    {
      v5 = a3 - v13;
    }

    else
    {
      v5 = v10;
    }

    v6 = v5;
  }

  return v13 + v6;
}

size_t _dispatch_channel_debug(_DWORD *a1, char *a2, size_t a3)
{
  v17 = a1[20];
  v11 = 0;
  if (*a1)
  {
    v11 = *a1;
  }

  v13 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v11 + 24), a1);
  if (v13 < 0)
  {
    v10 = 0;
  }

  else
  {
    if (v13 > a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v13;
    }

    v10 = v9;
  }

  v15 = v10 + _dispatch_object_debug_attr(a1, &a2[v10], a3 - v10);
  v16 = v15 + _dispatch_queue_debug_attr(a1, &a2[v15], a3 - v15);
  if ((v17 & 0x10000000) != 0)
  {
    v3 = "cancelled, ";
  }

  else
  {
    v3 = &unk_BBE5B;
  }

  if ((v17 & 0x40000000) != 0)
  {
    v4 = "needs-event, ";
  }

  else
  {
    v4 = &unk_BBE5B;
  }

  v5 = "deleted, ";
  if (v17 >= 0)
  {
    v5 = &unk_BBE5B;
  }

  v12 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s%s%s", v3, v4, v5);
  if (v12 < 0)
  {
    v8 = 0;
  }

  else
  {
    if (v12 <= a3)
    {
      v7 = v12;
    }

    else
    {
      v7 = a3;
    }

    v8 = v7;
  }

  return v16 + v8;
}

size_t _dispatch_source_debug(uint64_t *a1, char *a2, size_t a3)
{
  v16 = a1[11];
  v10 = 0;
  if (*a1)
  {
    v10 = *a1;
  }

  v12 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v10 + 24), a1);
  if (v12 < 0)
  {
    v9 = 0;
  }

  else
  {
    if (v12 > a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = v12;
    }

    v9 = v8;
  }

  v14 = v9 + _dispatch_object_debug_attr(a1, &a2[v9], a3 - v9);
  v15 = v14 + _dispatch_source_debug_attr(a1, &a2[v14], a3 - v14);
  if ((v16[29] & 2) != 0)
  {
    v15 += _dispatch_timer_debug_attr(a1, &a2[v15], a3 - v15);
  }

  v3 = " (direct)";
  if ((v16[29] & 1) == 0)
  {
    v3 = &unk_BBE5B;
  }

  v7 = 0;
  if (*v16)
  {
    v7 = *v16;
  }

  v11 = __snprintf_chk(&a2[v15], a3 - v15, 0, 0xFFFFFFFFFFFFFFFFLL, "kevent = %p%s, filter = %s }", v16, v3, *v7);
  if (v11 < 0)
  {
    v6 = 0;
  }

  else
  {
    if (v11 > a3 - v15)
    {
      v5 = a3 - v15;
    }

    else
    {
      v5 = v11;
    }

    v6 = v5;
  }

  return v15 + v6;
}

unint64_t _dispatch_source_debug_attr(uint64_t a1, char *a2, size_t a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v24 = *(a1 + 24);
  v23 = *(a1 + 88);
  v21 = a1;
  v31 = a1;
  v29 = *(a1 + 80);
  v30 = v29;
  v28 = v29;
  v22 = v29;
  v19 = v23;
  v35 = v23;
  v33 = *(v23 + 16);
  v34 = v33;
  v32 = v33;
  v20 = v33;
  v18 = a3;
  v15 = a2;
  v16 = a3;
  if (v24 && v24[9])
  {
    v14 = v24[9];
  }

  else
  {
    v14 = &unk_BBE5B;
  }

  v3 = *(v23 + 24);
  v4 = *(v23 + 32);
  v5 = *(v23 + 72);
  v37 = v20;
  v36 = v20;
  if ((v22 & 0x10000000) != 0)
  {
    v6 = "cancelled, ";
  }

  else
  {
    v6 = &unk_BBE5B;
  }

  if ((v22 & 0x40000000) != 0)
  {
    v7 = "needs-event, ";
  }

  else
  {
    v7 = &unk_BBE5B;
  }

  v8 = "deleted, ";
  if (v22 >= 0)
  {
    v8 = &unk_BBE5B;
  }

  v13 = &v10;
  v17 = __snprintf_chk(v15, v16, 0, 0xFFFFFFFFFFFFFFFFLL, "target = %s[%p], ident = 0x%x, mask = 0x%x, pending_data = 0x%llx, registered = %d, armed = %d, %s%s%s", v14, v24, v3, v4, v5, v20 != 0, (v20 & 1) != 0, v6, v7, v8);
  if (v17 < 0)
  {
    return 0;
  }

  if (v17 <= v18)
  {
    return v17;
  }

  else
  {
    return v18;
  }
}

size_t _dispatch_timer_debug_attr(uint64_t a1, char *a2, size_t a3)
{
  v6 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "timer = { target = 0x%llx, deadline = 0x%llx, interval = 0x%llx, flags = 0x%x }, ", *(*(a1 + 88) + 80), *(*(a1 + 88) + 88), *(*(a1 + 88) + 96), *(*(a1 + 88) + 30));
  if (v6 < 0)
  {
    return 0;
  }

  if (v6 > a3)
  {
    return a3;
  }

  else
  {
    return v6;
  }
}

uint64_t _dispatch_mach_msg_debug(_DWORD *a1, char *a2, size_t a3)
{
  v28 = 0;
  if (*a1)
  {
    v28 = *a1;
  }

  v41 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v28 + 24), a1);
  if (v41 < 0)
  {
    v27 = 0;
  }

  else
  {
    if (v41 > a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = v41;
    }

    v27 = v26;
  }

  v43 = v27 + _dispatch_object_debug_attr(a1, &a2[v27], a3 - v27);
  v40 = __snprintf_chk(&a2[v43], a3 - v43, 0, 0xFFFFFFFFFFFFFFFFLL, "opts/err = 0x%x, msgh[%p] = { ", a1[12], a1 + 22);
  if (v40 < 0)
  {
    v25 = 0;
  }

  else
  {
    if (v40 > a3 - v43)
    {
      v24 = a3 - v43;
    }

    else
    {
      v24 = v40;
    }

    v25 = v24;
  }

  v44 = v43 + v25;
  msg = _dispatch_mach_msg_get_msg(a1);
  if (msg[5])
  {
    v38 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "id 0x%x, ", msg[5]);
    if (v38 < 0)
    {
      v23 = 0;
    }

    else
    {
      if (v38 > a3 - v44)
      {
        v22 = a3 - v44;
      }

      else
      {
        v22 = v38;
      }

      v23 = v22;
    }

    v44 += v23;
  }

  if (msg[1])
  {
    v37 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "size %u, ", msg[1]);
    if (v37 < 0)
    {
      v21 = 0;
    }

    else
    {
      if (v37 > a3 - v44)
      {
        v20 = a3 - v44;
      }

      else
      {
        v20 = v37;
      }

      v21 = v20;
    }

    v44 += v21;
  }

  if (*msg)
  {
    v36 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "bits <l %u, r %u", (*msg & 0x1F00u) >> 8, *msg & 0x1F);
    if (v36 < 0)
    {
      v19 = 0;
    }

    else
    {
      if (v36 > a3 - v44)
      {
        v18 = a3 - v44;
      }

      else
      {
        v18 = v36;
      }

      v19 = v18;
    }

    v45 = v44 + v19;
    if ((*msg & 0xFFE0E0E0) != 0)
    {
      v35 = __snprintf_chk(&a2[v45], a3 - v45, 0, 0xFFFFFFFFFFFFFFFFLL, ", o 0x%x", *msg & 0xFFE0E0E0);
      if (v35 < 0)
      {
        v17 = 0;
      }

      else
      {
        if (v35 > a3 - v45)
        {
          v16 = a3 - v45;
        }

        else
        {
          v16 = v35;
        }

        v17 = v16;
      }

      v45 += v17;
    }

    v34 = __snprintf_chk(&a2[v45], a3 - v45, 0, 0xFFFFFFFFFFFFFFFFLL, ">, ");
    if (v34 < 0)
    {
      v15 = 0;
    }

    else
    {
      if (v34 > a3 - v45)
      {
        v14 = a3 - v45;
      }

      else
      {
        v14 = v34;
      }

      v15 = v14;
    }

    v44 = v45 + v15;
  }

  if (msg[3] && msg[2])
  {
    v33 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "local 0x%x, remote 0x%x", msg[3], msg[2]);
    if (v33 < 0)
    {
      v13 = 0;
    }

    else
    {
      if (v33 <= a3 - v44)
      {
        v12 = v33;
      }

      else
      {
        v12 = a3 - v44;
      }

      v13 = v12;
    }

    v46 = v44 + v13;
  }

  else if (msg[3])
  {
    v32 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "local 0x%x", msg[3]);
    if (v32 < 0)
    {
      v11 = 0;
    }

    else
    {
      if (v32 <= a3 - v44)
      {
        v10 = v32;
      }

      else
      {
        v10 = a3 - v44;
      }

      v11 = v10;
    }

    v46 = v44 + v11;
  }

  else if (msg[2])
  {
    v31 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "remote 0x%x", msg[2]);
    if (v31 < 0)
    {
      v9 = 0;
    }

    else
    {
      if (v31 <= a3 - v44)
      {
        v8 = v31;
      }

      else
      {
        v8 = a3 - v44;
      }

      v9 = v8;
    }

    v46 = v44 + v9;
  }

  else
  {
    v30 = __snprintf_chk(&a2[v44], a3 - v44, 0, 0xFFFFFFFFFFFFFFFFLL, "no ports");
    if (v30 < 0)
    {
      v7 = 0;
    }

    else
    {
      if (v30 <= a3 - v44)
      {
        v6 = v30;
      }

      else
      {
        v6 = a3 - v44;
      }

      v7 = v6;
    }

    v46 = v44 + v7;
  }

  v29 = __snprintf_chk(&a2[v46], a3 - v46, 0, 0xFFFFFFFFFFFFFFFFLL, " } }");
  if (v29 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v29 <= a3 - v46)
    {
      v4 = v29;
    }

    else
    {
      v4 = a3 - v46;
    }

    v5 = v4;
  }

  return v46 + v5;
}

size_t _dispatch_mach_debug(void *a1, char *a2, size_t a3)
{
  if (!a1[9] || (*(a1 + 58) & 8) != 0)
  {
    v9 = 0;
    if (*a1)
    {
      v9 = *a1;
    }

    v3 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v9 + 24), a1);
  }

  else
  {
    v3 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", a1[9], a1);
  }

  if (v3 < 0)
  {
    v8 = 0;
  }

  else
  {
    if (v3 > a3)
    {
      v7 = a3;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7;
  }

  v12 = v8 + _dispatch_object_debug_attr(a1, &a2[v8], a3 - v8);
  v13 = v12 + _dispatch_mach_debug_attr(a1, &a2[v12], a3 - v12);
  v10 = __snprintf_chk(&a2[v13], a3 - v13, 0, 0xFFFFFFFFFFFFFFFFLL, "}");
  if (v10 < 0)
  {
    v6 = 0;
  }

  else
  {
    if (v10 > a3 - v13)
    {
      v5 = a3 - v13;
    }

    else
    {
      v5 = v10;
    }

    v6 = v5;
  }

  return v13 + v6;
}

unint64_t _dispatch_mach_debug_attr(void *a1, char *a2, size_t a3)
{
  v30 = a1;
  v29 = a2;
  v28 = a3;
  v27 = a1[3];
  v26 = a1[15];
  v25 = a1[11];
  v24 = a3;
  v18 = a2;
  v19 = a3;
  if (v27 && v27[9])
  {
    v17 = v27[9];
  }

  else
  {
    v17 = &unk_BBE5B;
  }

  v3 = *(v25 + 24);
  v4 = *(v26 + 92);
  v5 = *(v26 + 24);
  v21 = *(v26 + 30);
  v22 = v21 & 1;
  v20 = v21 & 1;
  if (v21)
  {
    v6 = " (armed)";
  }

  else
  {
    v6 = &unk_BBE5B;
  }

  v7 = *(v26 + 96);
  if (*(v26 + 48))
  {
    v8 = " (pending)";
  }

  else
  {
    v8 = &unk_BBE5B;
  }

  v9 = *(v26 + 64);
  v10 = *(v26 + 88);
  v11 = (v30[10] & 0x10000000) != 0;
  v16 = &v13;
  v23 = __snprintf_chk(v18, v19, 0, 0xFFFFFFFFFFFFFFFFLL, "target = %s[%p], receive = 0x%x, send = 0x%x, send-possible = 0x%x%s, checkin = 0x%x%s, send state = %016llx, disconnected = %d, canceled = %d ", v17, v27, v3, v4, v5, v6, v7, v8, v9, v10, v11);
  if (v23 < 0)
  {
    return 0;
  }

  if (v23 > v24)
  {
    return v24;
  }

  else
  {
    return v23;
  }
}

unint64_t voucher_kvoucher_debug(ipc_space_read_t a1, mach_port_name_t a2, uint64_t a3, unint64_t a4, unint64_t a5, const char *a6, unint64_t a7)
{
  task = a1;
  name = a2;
  v53 = a3;
  v52 = a4;
  v51 = a5;
  v50 = a6;
  v49 = a7;
  bzero(recipes, 0x2000uLL);
  *recipesCnt = 0x2000;
  object_addr = 0;
  object_type = 0;
  if (mach_port_kernel_object(task, name, &object_type, &object_addr) || object_type != 37)
  {
    if (v50)
    {
      if (v52 <= v51)
      {
        v14 = 0;
      }

      else
      {
        v14 = v52 - v51;
      }

      v36 = __snprintf_chk((v53 + v51), v14, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", v50);
      if (v36 < 0)
      {
        v13 = 0;
      }

      else
      {
        if (v36 <= v14)
        {
          v12 = v36;
        }

        else
        {
          v12 = v14;
        }

        v13 = v12;
      }

      v51 += v13;
    }

    if (v52 <= v51)
    {
      v11 = 0;
    }

    else
    {
      v11 = v52 - v51;
    }

    v35 = __snprintf_chk((v53 + v51), v11, 0, 0xFFFFFFFFFFFFFFFFLL, "Invalid voucher: 0x%x\n", name);
    if (v35 < 0)
    {
      v10 = 0;
    }

    else
    {
      if (v35 <= v11)
      {
        v9 = v35;
      }

      else
      {
        v9 = v11;
      }

      v10 = v9;
    }

    v51 += v10;
  }

  else
  {
    error_value = mach_voucher_debug_info(task, name, recipes, recipesCnt);
    if (!error_value || error_value == 46)
    {
      if (*recipesCnt)
      {
        if (v50)
        {
          if (v52 <= v51)
          {
            v20 = 0;
          }

          else
          {
            v20 = v52 - v51;
          }

          v40 = __snprintf_chk((v53 + v51), v20, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", v50);
          if (v40 < 0)
          {
            v19 = 0;
          }

          else
          {
            if (v40 <= v20)
            {
              v18 = v40;
            }

            else
            {
              v18 = v20;
            }

            v19 = v18;
          }

          v51 += v19;
        }

        if (v52 <= v51)
        {
          v17 = 0;
        }

        else
        {
          v17 = v52 - v51;
        }

        v39 = __snprintf_chk((v53 + v51), v17, 0, 0xFFFFFFFFFFFFFFFFLL, "Voucher: 0x%x\n", object_addr);
        if (v39 < 0)
        {
          v16 = 0;
        }

        else
        {
          if (v39 <= v17)
          {
            v15 = v39;
          }

          else
          {
            v15 = v17;
          }

          v16 = v15;
        }

        v51 += v16;
        for (i = 0; *recipesCnt > i; i += *(v37 + 3) + 16)
        {
          v37 = &recipes[i];
          if (*v37)
          {
            v51 = format_recipe_detail(v37, v53, v52, v51, v50, v49);
          }
        }
      }

      else
      {
        if (v50)
        {
          if (v52 <= v51)
          {
            v26 = 0;
          }

          else
          {
            v26 = v52 - v51;
          }

          v42 = __snprintf_chk((v53 + v51), v26, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", v50);
          if (v42 < 0)
          {
            v25 = 0;
          }

          else
          {
            if (v42 <= v26)
            {
              v24 = v42;
            }

            else
            {
              v24 = v26;
            }

            v25 = v24;
          }

          v51 += v25;
        }

        if (v52 <= v51)
        {
          v23 = 0;
        }

        else
        {
          v23 = v52 - v51;
        }

        v41 = __snprintf_chk((v53 + v51), v23, 0, 0xFFFFFFFFFFFFFFFFLL, "Voucher: 0x%x has no contents\n", object_addr);
        if (v41 < 0)
        {
          v22 = 0;
        }

        else
        {
          if (v41 <= v23)
          {
            v21 = v41;
          }

          else
          {
            v21 = v23;
          }

          v22 = v21;
        }

        v51 += v22;
      }
    }

    else
    {
      if (v50)
      {
        if (v52 <= v51)
        {
          v34 = 0;
        }

        else
        {
          v34 = v52 - v51;
        }

        v44 = __snprintf_chk((v53 + v51), v34, 0, 0xFFFFFFFFFFFFFFFFLL, "%s", v50);
        if (v44 < 0)
        {
          v33 = 0;
        }

        else
        {
          if (v44 <= v34)
          {
            v32 = v44;
          }

          else
          {
            v32 = v34;
          }

          v33 = v32;
        }

        v51 += v33;
      }

      if (v52 <= v51)
      {
        v31 = 0;
      }

      else
      {
        v31 = v52 - v51;
      }

      v30 = (v53 + v51);
      v29 = object_addr;
      v7 = mach_error_string(error_value);
      v43 = __snprintf_chk(v30, v31, 0, 0xFFFFFFFFFFFFFFFFLL, "Voucher: 0x%x Failed to get contents %s\n", v29, v7);
      if (v43 < 0)
      {
        v28 = 0;
      }

      else
      {
        if (v43 <= v31)
        {
          v27 = v43;
        }

        else
        {
          v27 = v31;
        }

        v28 = v27;
      }

      v51 += v28;
    }
  }

  return v51;
}

size_t _dispatch_io_debug(uint64_t *a1, char *a2, size_t a3)
{
  v8 = 0;
  if (*a1)
  {
    v8 = *a1;
  }

  v10 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v8 + 24), a1);
  if (v10 < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v10 > a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v10;
    }

    v7 = v6;
  }

  v12 = v7 + _dispatch_object_debug_attr(a1, &a2[v7], a3 - v7);
  v13 = v12 + _dispatch_io_debug_attr(a1, &a2[v12], a3 - v12);
  v9 = __snprintf_chk(&a2[v13], a3 - v13, 0, 0xFFFFFFFFFFFFFFFFLL, "}");
  if (v9 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v9 > a3 - v13)
    {
      v4 = a3 - v13;
    }

    else
    {
      v4 = v9;
    }

    v5 = v4;
  }

  return v13 + v5;
}

unint64_t _dispatch_io_debug_attr(uint64_t a1, char *a2, size_t a3)
{
  v31 = a1;
  v30 = a2;
  v29 = a3;
  v28 = *(a1 + 24);
  v27 = a3;
  v22 = a2;
  v23 = a3;
  v3 = "stream";
  if (*(a1 + 72))
  {
    v3 = "random";
  }

  v24 = v3;
  v25 = *(v31 + 128);
  if ((*(v31 + 120) & 2) != 0)
  {
    v21 = "stopped, ";
  }

  else
  {
    v4 = "closed, ";
    if ((*(v31 + 120) & 1) == 0)
    {
      v4 = &unk_BBE5B;
    }

    v21 = v4;
  }

  v18 = v21;
  v19 = *(v31 + 112);
  v20 = *(v31 + 48);
  if (v28 && v28[9])
  {
    v17 = v28[9];
  }

  else
  {
    v17 = &unk_BBE5B;
  }

  v5 = *(v31 + 56);
  v6 = *(v31 + 64);
  v7 = *(v31 + 144);
  v8 = *(v31 + 80);
  v9 = *(v31 + 88);
  if (*(v31 + 104))
  {
    v10 = "(strict)";
  }

  else
  {
    v10 = &unk_BBE5B;
  }

  v11 = *(v31 + 96);
  v16 = &v13;
  v26 = __snprintf_chk(v22, v23, 0, 0xFFFFFFFFFFFFFFFFLL, "type = %s, fd = 0x%lx, %sfd_entry = %p, queue = %p, target = %s[%p], barrier_queue = %p, barrier_group = %p, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ", v24, v25, v18, v19, v20, v17, v28, v5, v6, v7, v8, v9, v10, v11);
  if (v26 < 0)
  {
    return 0;
  }

  if (v26 > v27)
  {
    return v27;
  }

  else
  {
    return v26;
  }
}

size_t _dispatch_operation_debug(uint64_t *a1, char *a2, size_t a3)
{
  v8 = 0;
  if (*a1)
  {
    v8 = *a1;
  }

  v10 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "%s[%p] = { ", *(v8 + 24), a1);
  if (v10 < 0)
  {
    v7 = 0;
  }

  else
  {
    if (v10 > a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v10;
    }

    v7 = v6;
  }

  v12 = v7 + _dispatch_object_debug_attr(a1, &a2[v7], a3 - v7);
  v13 = v12 + _dispatch_operation_debug_attr(a1, &a2[v12], a3 - v12);
  v9 = __snprintf_chk(&a2[v13], a3 - v13, 0, 0xFFFFFFFFFFFFFFFFLL, "}");
  if (v9 < 0)
  {
    v5 = 0;
  }

  else
  {
    if (v9 > a3 - v13)
    {
      v4 = a3 - v13;
    }

    else
    {
      v4 = v9;
    }

    v5 = v4;
  }

  return v13 + v5;
}

unint64_t _dispatch_operation_debug_attr(uint64_t a1, char *a2, size_t a3)
{
  v40 = a1;
  v39 = a2;
  v38 = a3;
  v37 = *(a1 + 24);
  if (*(a1 + 48))
  {
    v33 = *(*(v40 + 48) + 24);
  }

  else
  {
    v33 = 0;
  }

  v36 = v33;
  v35 = v38;
  v29 = v39;
  v30 = v38;
  v3 = "stream";
  if (*(v40 + 64))
  {
    v3 = "random";
  }

  v31 = v3;
  v4 = "read";
  if (*(v40 + 56))
  {
    v4 = "write";
  }

  v32 = v4;
  if (*(v40 + 144))
  {
    v28 = **(v40 + 144);
  }

  else
  {
    v28 = -1;
  }

  v24 = v28;
  v25 = *(v40 + 144);
  v26 = *(v40 + 136);
  v27 = *(v40 + 48);
  if (v36 && v36[9])
  {
    v23 = v36[9];
  }

  else
  {
    v23 = &unk_BBE5B;
  }

  v21 = v23;
  v22 = v36;
  if (v37 && v37[9])
  {
    v20 = v37[9];
  }

  else
  {
    v20 = &unk_BBE5B;
  }

  v5 = *(v40 + 104);
  v6 = *(v40 + 112);
  v7 = *(v40 + 216);
  v8 = *(v40 + 208) + *(v40 + 200);
  v9 = *(v40 + 184);
  v10 = *(v40 + 120);
  v11 = *(v40 + 72);
  v12 = *(v40 + 80);
  if (*(v40 + 96))
  {
    v13 = "(strict)";
  }

  else
  {
    v13 = &unk_BBE5B;
  }

  v14 = *(v40 + 88);
  v19 = &v16;
  v34 = __snprintf_chk(v29, v30, 0, 0xFFFFFFFFFFFFFFFFLL, "type = %s %s, fd = 0x%lx, fd_entry = %p, channel = %p, queue = %p -> %s[%p], target = %s[%p], offset = %lld, length = %zu, done = %zu, undelivered = %zu, flags = %u, err = 0x%x, low = 0x%zx, high = 0x%zx, interval%s = %llu ", v31, v32, v24, v25, v26, v27, v21, v22, v20, v37, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
  if (v34 < 0)
  {
    return 0;
  }

  if (v34 > v35)
  {
    return v35;
  }

  else
  {
    return v34;
  }
}

size_t _dispatch_data_debug(uint64_t a1, char *a2, size_t a3)
{
  v27 = __snprintf_chk(a2, a3, 0, 0xFFFFFFFFFFFFFFFFLL, "data[%p] = { ", a1);
  if (v27 < 0)
  {
    v21 = 0;
  }

  else
  {
    if (v27 > a3)
    {
      v20 = a3;
    }

    else
    {
      v20 = v27;
    }

    v21 = v20;
  }

  if (*(a1 + 72))
  {
    v14 = &a2[v21];
    v15 = a3 - v21;
    v16 = *(a1 + 64);
    v17 = *(a1 + 72);
    if (v17)
    {
      v3 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "composite, size = %zd, num_records = %zd ", v16, v17);
    }

    else
    {
      v3 = __snprintf_chk(v14, v15, 0, 0xFFFFFFFFFFFFFFFFLL, "composite, size = %zd, num_records = %zd ", v16, 1uLL);
    }

    if (v3 < 0)
    {
      v13 = 0;
    }

    else
    {
      if (v3 > a3 - v21)
      {
        v12 = a3 - v21;
      }

      else
      {
        v12 = v3;
      }

      v13 = v12;
    }

    v29 = v21 + v13;
    if (*(a1 + 48))
    {
      v25 = __snprintf_chk(&a2[v29], a3 - v29, 0, 0xFFFFFFFFFFFFFFFFLL, ", flatbuf = %p ", *(a1 + 48));
      if (v25 < 0)
      {
        v11 = 0;
      }

      else
      {
        if (v25 > a3 - v29)
        {
          v10 = a3 - v29;
        }

        else
        {
          v10 = v25;
        }

        v11 = v10;
      }

      v29 += v11;
    }

    for (i = 0; ; ++i)
    {
      v9 = *(a1 + 72) ? *(a1 + 72) : 1;
      if (i >= v9)
      {
        break;
      }

      v23 = __snprintf_chk(&a2[v29], a3 - v29, 0, 0xFFFFFFFFFFFFFFFFLL, "record[%zd] = { from = %zd, length = %zd, data_object = %p }, ", i, *(a1 + 80 + 24 * i + 8), *(a1 + 80 + 24 * i + 16), *(a1 + 80 + 24 * i));
      if (v23 < 0)
      {
        v8 = 0;
      }

      else
      {
        if (v23 > a3 - v29)
        {
          v7 = a3 - v29;
        }

        else
        {
          v7 = v23;
        }

        v8 = v7;
      }

      v29 += v8;
    }
  }

  else
  {
    v26 = __snprintf_chk(&a2[v21], a3 - v21, 0, 0xFFFFFFFFFFFFFFFFLL, "leaf, size = %zd, buf = %p ", *(a1 + 64), *(a1 + 48));
    if (v26 < 0)
    {
      v19 = 0;
    }

    else
    {
      if (v26 > a3 - v21)
      {
        v18 = a3 - v21;
      }

      else
      {
        v18 = v26;
      }

      v19 = v18;
    }

    v29 = v21 + v19;
  }

  v22 = __snprintf_chk(&a2[v29], a3 - v29, 0, 0xFFFFFFFFFFFFFFFFLL, "}");
  if (v22 < 0)
  {
    v6 = 0;
  }

  else
  {
    if (v22 <= a3 - v29)
    {
      v5 = v22;
    }

    else
    {
      v5 = a3 - v29;
    }

    v6 = v5;
  }

  return v29 + v6;
}