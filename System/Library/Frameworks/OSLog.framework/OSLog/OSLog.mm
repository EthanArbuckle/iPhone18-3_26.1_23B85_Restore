uint64_t _catalog_uuid_add(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2[3];
  }

  return _os_trace_uuid_map_insert(v2, a2);
}

uint64_t _catalog_for_each_uuid(uint64_t result, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(result + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v6 = ___catalog_for_each_uuid_block_invoke;
  v7 = &unk_278B46050;
  v8 = a2;
  for (i = *(v2 + 16); i; i = *i)
  {
    result = (v6)(v5, i + 2, i[4]);
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

unsigned int *_catalog_procinfo_for_each_uuidinfo(uint64_t a1, uint64_t a2)
{
  v5[5] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 56);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___catalog_procinfo_for_each_uuidinfo_block_invoke;
  v5[3] = &unk_278B46078;
  v5[4] = a2;
  result = hashtable_iterate(v2, v5);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL _catalog_procinfo_uuidinfo_add(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6[3];
  }

  _os_trace_uuid_map_insert(v6, (a3 + 14));
  v13[0] = *(a3 + 2) | (*(a3 + 6) << 32);
  v8 = hashtable_lookup(*(a2 + 56), v13);
  if (!v8)
  {
    v9 = _os_trace_calloc_typed();
    v10 = *a3;
    *v9 = *(a3 + 2) | (*(a3 + 6) << 32);
    *(v9 + 8) = v10;
    *(v9 + 16) = *(a3 + 14);
    if ((hashtable_insert(*(a2 + 56), v9, v9) & 1) == 0)
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    ++*(a1 + 48);
  }

  result = v8 != 0;
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_procinfo_uuidinfo_remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = a3;
  v3 = *(a2 + 56);
  if (*(v3 + 16))
  {
    v5 = (*(v3 + 16) + 8 * ((hash_fn_array)[*(v3 + 8)](v11) % *v3));
    v6 = hashkey_compare_array[*(v3 + 8)];
    while (1)
    {
      v7 = v5;
      v5 = *v5;
      if (!v5)
      {
        break;
      }

      if (v6(v5[1], v11))
      {
        *v7 = *v5;
        v8 = v5[2];
        free(v5);
        --*(v3 + 4);
        if (!v8)
        {
          break;
        }

        --*(a1 + 48);
        free(v8);
        result = 1;
        goto LABEL_8;
      }
    }
  }

  result = 0;
LABEL_8:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_procinfo_lookup_pc(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = 0;
  v7[1] = v7;
  v7[2] = 0x2000000000;
  v7[3] = -1;
  v2 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 0x40000000;
  v6[2] = ___catalog_procinfo_lookup_pc_block_invoke;
  v6[3] = &unk_278B460A0;
  v6[5] = &v8;
  v6[6] = a2;
  v6[4] = v7;
  hashtable_iterate(v2, v6);
  v3 = v9[3];
  _Block_object_dispose(v7, 8);
  _Block_object_dispose(&v8, 8);
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

void *___catalog_procinfo_lookup_pc_block_invoke(void *result, uint64_t a2, void *a3)
{
  v3 = result[6];
  if (v3 >= *a3)
  {
    v4 = a3[1];
    if (v3 < v4 + *a3)
    {
      v5 = *(result[4] + 8);
      if (v4 < *(v5 + 24))
      {
        *(v5 + 24) = v4;
        *(*(result[5] + 8) + 24) = a3;
      }
    }
  }

  return result;
}

uint64_t _catalog_procinfo_lookup_subsystem(uint64_t a1, __int16 a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v4 = a2;
  result = hashtable_lookup(*(a1 + 64), &v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _catalog_lookup_procinfo_by_procid(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = (v2 + 16);
    while (1)
    {
      v3 = *v3;
      if (!v3)
      {
        break;
      }

      if (v3[2] == a2)
      {
        return v3[4];
      }
    }
  }

  return 0;
}

uint64_t _catalog_procinfo_create(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 40);
  v5 = _os_procinfo_map_lookup(*(a1 + 40), *(a2 + 8), *(a2 + 16));
  if (v5)
  {
    return v5;
  }

  v6 = _os_trace_calloc_typed();
  v5 = v6;
  *v6 = *a2;
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v9 = *(a2 + 48);
  *(v6 + 64) = *(a2 + 64);
  *(v6 + 32) = v8;
  *(v6 + 48) = v9;
  *(v6 + 16) = v7;
  v10 = *v4;
  if (*v4)
  {
    LOWORD(v10) = *(v10 + 12);
  }

  *v6 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = v11[3];
  }

  _os_trace_uuid_map_insert(v11, v5 + 3);
  if (!uuid_is_null(v5 + 40))
  {
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = v13[3];
    }

    _os_trace_uuid_map_insert(v13, v5 + 5);
  }

  v5[7] = hashtable_create(2);
  v5[8] = hashtable_create(1);
  if (_os_procinfo_map_insert(v4, v5[1], *(v5 + 4)))
  {
    return v5;
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

void *_catalog_subchunk_entry_alloc(uint64_t a1)
{
  v2 = _os_trace_calloc_typed();
  v2[2] = -1;
  v2[6] = hashtable_create(1);
  v2[5] = hashtable_create(1);
  v3 = *(a1 + 72);
  v4 = *(a1 + 80);
  *v2 = 0;
  v2[1] = v3;
  *v3 = v2;
  *(a1 + 72) = v2;
  *(a1 + 80) = v4 + 1;
  return v2;
}

uint64_t _catalog_subchunk_procinfo_add(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80))
  {
    v4 = **(*(a1 + 72) + 8);
  }

  else
  {
    v4 = _catalog_subchunk_entry_alloc(a1);
  }

  if (_os_procinfo_map_lookup(*(a1 + 40), *(a2 + 8), *(a2 + 16)))
  {
    v5 = v4[6];

    return hashtable_insert(v5, a2, 0);
  }

  else
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  return result;
}

BOOL catalog_chunk_parse_entries(unint64_t *a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (a4)
  {
    v10 = 0;
    for (i = 0; i != a4; v10 = i >= a4)
    {
      v12 = *a1;
      if (a2)
      {
        if (a2 < v12 || a2 - v12 < a3)
        {
          break;
        }
      }

      *a1 = v12 + a3;
      if (!v12)
      {
        break;
      }

      if (((*(a5 + 16))(a5, i, v12, a1) & 1) == 0)
      {
        break;
      }

      ++i;
    }
  }

  else
  {
    return 1;
  }

  return v10;
}

BOOL catalog_chunk_parse_section(unint64_t *a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if ((!a2 || (a2 >= v4 ? (v5 = a2 - v4 >= 8) : (v5 = 0), v5)) && (*a1 = (v4 + 1), v4))
  {
    return catalog_chunk_parse_entries(a1, a2, a3, *v4, a4);
  }

  else
  {
    return 0;
  }
}

void _catalog_create()
{
  v0 = _os_trace_calloc_typed();
  v0[8] = 0;
  v0[9] = v0 + 8;
  v0[1] = -1;
  operator new();
}

void _catalog_procinfo_free(unsigned int **a1)
{
  v2 = MEMORY[0x277D86138];
  hashtable_destroy(a1[7], MEMORY[0x277D86138]);
  hashtable_destroy(a1[8], v2);

  free(a1);
}

void _catalog_destroy(uint64_t a1)
{
  _os_trace_uuid_map_clear(*(a1 + 16));
  _os_trace_str_map_clear(*(a1 + 24));
  *(a1 + 32) = 0;
  _os_procinfo_map_clear(*(a1 + 40), _catalog_procinfo_free);
  v2 = *(a1 + 64);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  if (v2)
  {
    do
    {
      v3 = *v2;
      hashtable_destroy(v2[6], 0);
      hashtable_destroy(v2[5], 0);
      free(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  *(a1 + 8) = -1;
  _os_trace_uuid_map_destroy(*(a1 + 16));
  v4 = *(a1 + 24);
  _os_trace_str_map_clear(v4);
  if (v4)
  {
    std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(*(v4 + 16));
    v5 = *v4;
    *v4 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    MEMORY[0x23EE81AE0](v4, 0x10A0C408EF24B1CLL);
  }

  v6 = *(a1 + 40);
  _os_procinfo_map_clear(v6, 0);
  if (v6)
  {
    v7 = v6[2];
    if (v7)
    {
      do
      {
        v8 = *v7;
        operator delete(v7);
        v7 = v8;
      }

      while (v8);
    }

    v9 = *v6;
    *v6 = 0;
    if (v9)
    {
      operator delete(v9);
    }

    MEMORY[0x23EE81AE0](v6, 0x10A0C408EF24B1CLL);
  }

  free(a1);
}

uint64_t _catalog_update_earliest_fhbuf_ts(uint64_t result, unint64_t a2)
{
  if (*(result + 8) > a2)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t _catalog_create_with_chunk(_DWORD *a1, int a2)
{
  v5 = *MEMORY[0x277D85DE8];
  if (*a1 == 24587)
  {
    v2 = _os_trace_calloc_typed();
    v2[8] = 0;
    v2[9] = v2 + 8;
    v2[1] = -1;
    operator new();
  }

  if (a2)
  {
    puts("Error: Incorrect catalog chunk preamble tag");
  }

  v3 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t __catalog_chunk_parse_uuid_v2_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  _os_trace_uuid_map_insert(*(*(a1 + 32) + 16), a3);
  if (*(a1 + 40) == 1)
  {
    _chunk_print_uuid(a2, a3);
  }

  return 1;
}

uint64_t __catalog_chunk_parse_uuid_legacy_block_invoke(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  _os_trace_uuid_map_insert(*(*(a1 + 32) + 16), a3);
  if (*(a1 + 40) == 1)
  {
    _chunk_print_uuid(a2, a3);
  }

  return 1;
}

uint64_t __catalog_chunk_parse_procinfo_v2_block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t a3, uint64_t **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  if (_os_procinfo_map_lookup(*(*(a1 + 32) + 40), *(a3 + 8), *(a3 + 16)))
  {
    goto LABEL_2;
  }

  v9 = *(a1 + 40);
  v10 = *(v9 + 4) == 17;
  v11 = 32;
  if (*(v9 + 4) == 17)
  {
    v11 = 40;
  }

  v12 = v9 + v11;
  v13 = v9 + *(v9 + 16);
  v14 = v13 + 40;
  v15 = v13 + 32;
  if (v10)
  {
    v16 = v14;
  }

  else
  {
    v16 = v15;
  }

  v17 = _os_trace_calloc_typed();
  v18 = v17;
  *v17 = *a3;
  v19 = *(a3 + 16);
  *(v17 + 4) = *(a3 + 20);
  *(v17 + 8) = *(a3 + 8);
  v20 = *(a3 + 24);
  *(v17 + 16) = v19;
  *(v17 + 20) = v20;
  v21 = *(a3 + 4);
  v22 = v16 - v12;
  if (v22 >= 16 * v21 && v22 - 16 * v21 > 0xF)
  {
    *(v17 + 24) = *(v12 + 16 * v21);
  }

  else
  {
    _os_assumes_log();
  }

  v24 = *(a3 + 6);
  if (v24 != 0xFFFF)
  {
    if (v22 >= 16 * v24 && v22 - 16 * v24 > 0xF)
    {
      *(v18 + 20) = *(v12 + 16 * v24);
    }

    else
    {
      _os_assumes_log();
    }
  }

  *(v18 + 7) = hashtable_create(2);
  *(v18 + 8) = hashtable_create(1);
  if (*(a1 + 56) != 1)
  {
    goto LABEL_29;
  }

  printf("[%03u]\n\t%10s : %llu@%u\n\t%10s : %d\n\t%10s : %u\n\t%10s : %u\n\t%10s : %x\n", a2, "proc id", *(v18 + 1), *(v18 + 4), "pid", *(v18 + 1), "euid", *(v18 + 5), "index", *v18, "flags", v18[1]);
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_29;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v26;
  *&out[16] = v26;
  uuid_unparse(v18 + 24, out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "main uuid", out);
  }

  out[0] = 0;
  if (!uuid_is_null(v18 + 40))
  {
    uuid_unparse(v18 + 40, out);
  }

  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "dsc uuid", out);
    v27 = *(a1 + 56);
  }

  else
  {
LABEL_29:
    v27 = 0;
  }

  if (!catalog_chunk_parse_procinfo_uuidinfo(a4, *(a1 + 48), *(a1 + 32), v18, v27 & 1, *(a1 + 40)) || !catalog_chunk_parse_procinfo_subsystem(a4, *(a1 + 48), *(a1 + 32), v18, *(a1 + 56), *(a1 + 40)))
  {
LABEL_34:
    _catalog_procinfo_free(v18);
    result = 0;
    goto LABEL_35;
  }

  if ((_os_procinfo_map_insert((*(a1 + 32) + 40), *(v18 + 1), *(v18 + 4)) & 1) == 0)
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
    goto LABEL_34;
  }

LABEL_2:
  result = 1;
LABEL_35:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __catalog_chunk_parse_procinfo_legacy_block_invoke(uint64_t a1, unint64_t a2, unsigned __int16 *a3, uint64_t **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = *(*(a1 + 32) + 40);
  if (v8)
  {
    v9 = (v8 + 16);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      if (v9[2] == *(a3 + 1))
      {
        if (v9[4])
        {
          goto LABEL_36;
        }

        break;
      }
    }
  }

  v10 = *(a1 + 40);
  v11 = *(v10 + 4) == 17;
  v12 = 32;
  if (*(v10 + 4) == 17)
  {
    v12 = 40;
  }

  v13 = v10 + v12;
  v14 = v10 + *(v10 + 16);
  v15 = v14 + 40;
  v16 = v14 + 32;
  if (v11)
  {
    v17 = v15;
  }

  else
  {
    v17 = v16;
  }

  v18 = _os_trace_calloc_typed();
  v19 = v18;
  v20 = *a3;
  v21 = v17 - v13;
  if (v21 >= 16 * v20 && v21 - 16 * v20 > 0xF)
  {
    *(v18 + 24) = *(v13 + 16 * v20);
  }

  else
  {
    _os_assumes_log();
  }

  v23 = a3[1];
  if (v21 >= 16 * v23 && v21 - 16 * v23 > 0xF)
  {
    *(v19 + 40) = *(v13 + 16 * v23);
  }

  else
  {
    _os_assumes_log();
  }

  *(v19 + 4) = *(a3 + 1);
  *(v19 + 8) = *(a3 + 1);
  if (a2 >= 0x10000)
  {
    _os_assumes_log();
  }

  *v19 = a2;
  *(v19 + 2) = 0x8000;
  *(v19 + 56) = hashtable_create(2);
  *(v19 + 64) = hashtable_create(1);
  if (*(a1 + 56) != 1)
  {
    goto LABEL_31;
  }

  printf("[%03u]\n\t%10s : %llu\n\t%10s : %u\n", a2, "proc id", *(v19 + 8), "pid", *(v19 + 4));
  if ((*(a1 + 56) & 1) == 0)
  {
    goto LABEL_31;
  }

  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v25;
  *&out[16] = v25;
  uuid_unparse((v19 + 24), out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "main uuid", out);
  }

  uuid_unparse((v19 + 40), out);
  if (*(a1 + 56) == 1)
  {
    printf("\t%10s : %s\n", "dsc uuid", out);
    v26 = *(a1 + 56);
  }

  else
  {
LABEL_31:
    v26 = 0;
  }

  if (catalog_chunk_parse_procinfo_uuidinfo(a4, *(a1 + 48), *(a1 + 32), v19, v26 & 1, *(a1 + 40)) & 1) != 0 && (catalog_chunk_parse_procinfo_subsystem(a4, *(a1 + 48), *(a1 + 32), v19, *(a1 + 56), *(a1 + 40)))
  {
    if ((_os_procinfo_map_insert((*(a1 + 32) + 40), *(v19 + 8), *(v19 + 16)) & 1) == 0)
    {
      _os_assumes_log();
    }

LABEL_36:
    result = 1;
  }

  else
  {
    _catalog_procinfo_free(v19);
    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL catalog_chunk_parse_subchunk(unint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v5 = a3;
  v19 = *MEMORY[0x277D85DE8];
  v8 = a4 + *(a4 + 8) + 16;
  if (a3)
  {
    printf("\n----- %-30s -----\n", "Catalog Subchunk Section");
  }

  if (*(a4 + 4) != 17)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 0x40000000;
    v14 = __catalog_chunk_parse_subchunk_legacy_block_invoke;
    v15 = &__block_descriptor_tmp_75;
    v18 = v5;
    v16 = a2;
    v17 = v8;
    result = catalog_chunk_parse_section(a1, v8, 0x20uLL, &v12);
    if (!result)
    {
      goto LABEL_8;
    }

LABEL_7:
    result = *a1 <= v8;
    goto LABEL_8;
  }

  v9 = *(a4 + 24);
  v12 = MEMORY[0x277D85DD0];
  v13 = 0x40000000;
  v14 = __catalog_chunk_parse_subchunk_v2_block_invoke;
  v15 = &__block_descriptor_tmp_72;
  v18 = v5;
  v16 = a2;
  v17 = v8;
  if (catalog_chunk_parse_entries(a1, v8, 0x18uLL, v9, &v12))
  {
    goto LABEL_7;
  }

  result = 0;
LABEL_8:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __catalog_chunk_parse_subchunk_v2_block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t *a3, unint64_t *a4)
{
  v8 = _catalog_subchunk_entry_alloc(*(a1 + 32));
  v9 = *a3;
  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  v11 = *(a3 + 4);
  v12 = *(a3 + 5);
  *(v8 + 8) = v11;
  *(v8 + 9) = v12;
  v13 = (a3 + 3);
  *a4 = (a3 + 3);
  if (*(a1 + 48) == 1)
  {
    printf("[%03u]\n\t%10s : %llu\n\t%10s : %llu\n\t%10s : %u\n\t%10s : %u\n", a2, "startts", v9, "endts", v10, "uncomp sz", v11, "comp algo", v12);
    v14 = *(a1 + 48);
    v13 = *a4;
  }

  else
  {
    v14 = 0;
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    result = 0;
    if (v15 < v13 || v15 - v13 < 4)
    {
      return result;
    }
  }

  *a4 = (v13 + 2);
  if (!v13)
  {
    return 0;
  }

  if (v14)
  {
    printf("\t\t%10s : %u\n\t\t%10s : ", "procinfos", *v13, "indexes");
  }

  if (*v13)
  {
    v17 = 0;
    do
    {
      v18 = *a4;
      if (v15)
      {
        if (v15 < v18 || v15 - v18 < 2)
        {
          return 0;
        }
      }

      *a4 = (v18 + 1);
      if (!v18)
      {
        return 0;
      }

      if (v8)
      {
        hashtable_insert(v8[6], v18, 0);
      }

      if (v14)
      {
        printf("%u,", *v18);
      }
    }

    while (++v17 < *v13);
  }

  if (v14)
  {
    putchar(10);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  v22 = *a4;
  if (v20)
  {
    result = 0;
    if (v20 < v22 || v20 - v22 < 4)
    {
      return result;
    }
  }

  *a4 = (v22 + 2);
  if (!v22)
  {
    return 0;
  }

  if (v21)
  {
    printf("\t\t%10s : %u\n\t\t%10s : ", "subcats", *v22, "offsets");
  }

  if (*v22)
  {
    v23 = 0;
    do
    {
      v24 = *a4;
      if (v20)
      {
        if (v20 < v24 || v20 - v24 < 2)
        {
          return 0;
        }
      }

      *a4 = (v24 + 1);
      if (!v24)
      {
        return 0;
      }

      if (v8)
      {
        hashtable_insert(v8[5], v24, 0);
      }

      if (v21)
      {
        printf("%u,", *v24);
      }
    }

    while (++v23 < *v22);
  }

  if (v21)
  {
    putchar(10);
  }

  v26 = *a4;
  if ((*a4 & 7) != 0)
  {
    v26 = (*a4 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a4 = v26;
  return 1;
}

uint64_t __catalog_chunk_parse_subchunk_legacy_block_invoke(uint64_t a1, unsigned __int16 a2, uint64_t *a3, unint64_t *a4)
{
  v8 = _catalog_subchunk_entry_alloc(*(a1 + 32));
  v9 = *a3;
  v10 = a3[1];
  v8[2] = *a3;
  v8[3] = v10;
  if (*(a1 + 48) == 1)
  {
    printf("[%03u]\n\t%10s : %llu\n\t%10s : %llu\n\t%10s : %u\n\t%10s : %u\n", a2, "startts", v9, "endts", v10, "log cnt", *(a3 + 4), "others cnt", *(a3 + 5));
  }

  v11 = a3 + 26;
  *a4 = a3 + 26;
  v12 = *(a1 + 40);
  v13 = *(a3 + 12);
  if (v12)
  {
    v15 = v12 >= v11;
    v14 = v12 - v11;
    v15 = v15 && v14 >= v13;
    if (!v15)
    {
      return 0;
    }
  }

  v17 = v11 + v13;
  if ((v17 & 7) != 0)
  {
    v17 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a4 = v17;
  return 1;
}

uint64_t catalog_chunk_parse_procinfo_uuidinfo(uint64_t **a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v34 = *MEMORY[0x277D85DE8];
  v12 = *a1;
  if (!a2 || (a2 >= v12 ? (v13 = a2 - v12 >= 8) : (v13 = 0), v13))
  {
    *a1 = v12 + 1;
    if (v12)
    {
      if (*(a6 + 4) == 17)
      {
        v14 = 40;
      }

      else
      {
        v14 = 32;
      }

      v15 = a6 + *(a6 + 16);
      v16 = v15 + 40;
      v17 = v15 + 32;
      if (*(a6 + 4) == 17)
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      if (a5)
      {
        printf("\t%10s : %llu\n", "uuidinfos", *v12);
      }

      if (!*v12)
      {
LABEL_37:
        result = 1;
        goto LABEL_38;
      }

      v19 = 0;
      v20 = a6 + v14;
      v31 = v18 - v20;
      while (1)
      {
        v21 = *a1;
        if (a2)
        {
          if (a2 < v21 || a2 - v21 < 0x10)
          {
            break;
          }
        }

        *a1 = v21 + 2;
        if (!v21)
        {
          break;
        }

        v32 = v21[1] >> 16;
        if (!hashtable_lookup(*(a4 + 56), &v32))
        {
          v23 = _os_trace_calloc_typed();
          v24 = v23;
          v25 = *v21;
          *v23 = v21[1] >> 16;
          *(v23 + 8) = v25;
          v26 = 16 * v21[1];
          if (v31 >= v26 && v31 - v26 > 0xF)
          {
            *(v23 + 16) = *(v20 + 16 * v21[1]);
          }

          else
          {
            _os_assumes_log();
          }

          hashtable_insert(*(a4 + 56), v24, v24);
          ++*(a3 + 48);
          if (a5)
          {
            *&out[29] = 0xAAAAAAAAAAAAAAAALL;
            *&v28 = 0xAAAAAAAAAAAAAAAALL;
            *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *out = v28;
            *&out[16] = v28;
            uuid_unparse(v24 + 16, out);
            printf("\t\t<%10s : 0x%llx, %10s : %10llu, %10s : %s>\n", "load addr", *v24, "size", *(v24 + 1), "uuid", out);
          }
        }

        if (++v19 >= *v12)
        {
          goto LABEL_37;
        }
      }
    }
  }

  result = 0;
LABEL_38:
  v30 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t catalog_chunk_parse_procinfo_subsystem(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *a1;
  if (*(a6 + 4) != 17)
  {
    if (!a2 || (a2 >= v12 ? (v21 = a2 - v12 >= 8) : (v21 = 0), v21))
    {
      *a1 = (v12 + 4);
      if (v12)
      {
        v22 = *(a6 + 16);
        v23 = *(a6 + 18);
        if (a5)
        {
          printf("\t%10s : %llu\n", "subsystems", *v12);
        }

        if (*v12)
        {
          v24 = 0;
          v25 = a6 + 24 + v22 + 8;
          v26 = v23 - (v22 + 8);
          v36 = v26;
          v38 = v25;
          while (1)
          {
            v27 = *a1;
            if (a2)
            {
              if (a2 < v27 || a2 - v27 < 4)
              {
                return 0;
              }
            }

            *a1 = (v27 + 2);
            if (!v27)
            {
              return 0;
            }

            if (a5)
            {
              printf("\t\t<%10s : %3u, %10s : %5hu>\n", "id", *v27, "offset", v27[1]);
            }

            v29 = v27[1];
            if (v26 < v29)
            {
LABEL_59:
              _os_assumes_log();
              return 0;
            }

            if (!hashtable_lookup(*(a4 + 64), v27))
            {
              v30 = (v38 + v29);
              v31 = _os_trace_calloc_typed();
              *v31 = *v27;
              v31[1] = _os_trace_str_map_entry(*(a3 + 24), v30 + 2);
              v32 = _os_trace_str_map_entry(*(a3 + 24), &v30[*v30 + 2]);
              v31[2] = v32;
              if (!v32 || !v31[1])
              {
                _os_assumes_log();
              }

              hashtable_insert(*(a4 + 64), v31, v31);
              ++*(a3 + 56);
              v26 = v36;
            }

            if (++v24 >= *v12)
            {
              goto LABEL_56;
            }
          }
        }

        goto LABEL_56;
      }
    }

    return 0;
  }

  if (a2)
  {
    if (a2 < v12 || a2 - v12 < 8)
    {
      return 0;
    }
  }

  *a1 = (v12 + 4);
  if (!v12)
  {
    return 0;
  }

  v14 = *(a6 + 16);
  v15 = *(a6 + 18);
  if (a5)
  {
    printf("\t%10s : %llu\n", "subsystems", *v12);
  }

  if (*v12)
  {
    v16 = 0;
    v37 = a6 + v14 + 40;
    v17 = v15 - v14;
    v35 = a4;
    do
    {
      v18 = *a1;
      if (a2)
      {
        if (a2 < v18 || a2 - v18 < 6)
        {
          return 0;
        }
      }

      *a1 = (v18 + 3);
      if (!v18)
      {
        return 0;
      }

      if (a5)
      {
        printf("\t\t<%10s : %3u, %10s : %5hu, %10s : %5hu>\n", "id", *v18, "subsystem", v18[1], "category", v18[2]);
      }

      if (v17 < v18[1] || v17 < v18[2])
      {
        goto LABEL_59;
      }

      if (!hashtable_lookup(*(a4 + 64), v18))
      {
        v20 = _os_trace_calloc_typed();
        *v20 = *v18;
        v20[1] = _os_trace_str_map_entry(*(a3 + 24), (v37 + v18[1]));
        a4 = v35;
        v20[2] = _os_trace_str_map_entry(*(a3 + 24), (v37 + v18[2]));
        hashtable_insert(*(v35 + 64), v20, v20);
        ++*(a3 + 56);
      }
    }

    while (++v16 < *v12);
  }

LABEL_56:
  v33 = *a1;
  if ((*a1 & 7) != 0)
  {
    v33 = (*a1 & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  *a1 = v33;
  return 1;
}

uint64_t _chunk_print_uuid(uint64_t a1, unsigned __int8 *uu)
{
  v7 = *MEMORY[0x277D85DE8];
  *&out[29] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *out = v3;
  *&out[16] = v3;
  uuid_unparse(uu, out);
  result = printf("[%03llu] %s\n", a1, out);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_trace_uuid_map_insert(void *a1, void *a2)
{
  v2 = a2[1];
  v3 = __ROR8__(v2 + 16, 16);
  v4 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_22;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (*a2 ^ v3)) >> 47) ^ (0x9DDFEA08EB382D69 * (*a2 ^ v3)))) >> 47))) ^ v2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_22;
    }

LABEL_21:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_22;
    }
  }

  if (v9[2] != *a2 || v9[3] != v2)
  {
    goto LABEL_21;
  }

  return 0;
}

void *_os_trace_uuid_map_clear(void *result)
{
  if (result)
  {
    v1 = result;
    if (result[3])
    {
      result = result[2];
      if (result)
      {
        do
        {
          v2 = *result;
          operator delete(result);
          result = v2;
        }

        while (v2);
      }

      v1[2] = 0;
      v3 = v1[1];
      if (v3)
      {
        for (i = 0; i != v3; ++i)
        {
          *(*v1 + 8 * i) = 0;
        }
      }

      v1[3] = 0;
    }
  }

  return result;
}

void *_os_trace_uuid_map_destroy(void **a1)
{
  result = _os_trace_uuid_map_clear(a1);
  if (a1)
  {
    v3 = a1[2];
    if (v3)
    {
      do
      {
        v4 = *v3;
        operator delete(v3);
        v3 = v4;
      }

      while (v4);
    }

    v5 = *a1;
    *a1 = 0;
    if (v5)
    {
      operator delete(v5);
    }

    JUMPOUT(0x23EE81AE0);
  }

  return result;
}

uint64_t _os_procinfo_map_insert(void **a1, uint64_t a2, unsigned int a3)
{
  v3 = *a1;
  if (!*a1)
  {
    operator new();
  }

  v4 = 0x9DDFEA08EB382D69 * (a2 ^ __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12));
  v5 = __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12) ^ (v4 >> 47);
  v6 = 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ v4)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ v4)) >> 47));
  v7 = v6 ^ __PAIR64__(a3, HIDWORD(a2));
  v8 = v3[1];
  if (!*&v8)
  {
    goto LABEL_24;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6 ^ __PAIR64__(a3, HIDWORD(a2));
    if (v7 >= *&v8)
    {
      v10 = v7 % *&v8;
    }
  }

  else
  {
    v10 = v7 & (*&v8 - 1);
  }

  v11 = *(*v3 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v13 = v12[1];
    if (v13 == v7)
    {
      break;
    }

    if (v9.u32[0] > 1uLL)
    {
      if (v13 >= *&v8)
      {
        v13 %= *&v8;
      }
    }

    else
    {
      v13 &= *&v8 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_24;
    }

LABEL_23:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_24;
    }
  }

  if (*(v12 + 6) != a3 || v12[2] != a2)
  {
    goto LABEL_23;
  }

  return 0;
}

void *_os_procinfo_map_lookup(void *result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    v3 = result[1];
    if (v3)
    {
      v4 = __ROR8__(__PAIR64__(a3, HIDWORD(a2)) + 12, 12);
      v5 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) >> 47))) ^ __PAIR64__(a3, HIDWORD(a2));
      v6 = vcnt_s8(v3);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (a2 ^ v4)) >> 47) ^ (0x9DDFEA08EB382D69 * (a2 ^ v4)))) >> 47))) ^ __PAIR64__(a3, HIDWORD(a2));
        if (v5 >= *&v3)
        {
          v7 = v5 % *&v3;
        }
      }

      else
      {
        v7 = v5 & (*&v3 - 1);
      }

      v8 = *(*result + 8 * v7);
      if (v8)
      {
        for (i = *v8; i; i = *i)
        {
          v10 = i[1];
          if (v5 == v10)
          {
            if (*(i + 6) == a3 && i[2] == a2)
            {
              return i[4];
            }
          }

          else
          {
            if (v6.u32[0] > 1uLL)
            {
              if (v10 >= *&v3)
              {
                v10 %= *&v3;
              }
            }

            else
            {
              v10 &= *&v3 - 1;
            }

            if (v10 != v7)
            {
              return 0;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

void *_os_procinfo_map_clear(void *result, uint64_t (*a2)(void))
{
  if (result)
  {
    v3 = result;
    if (a2)
    {
      for (i = result[2]; i; i = *i)
      {
        result = a2(i[4]);
      }
    }

    if (v3[3])
    {
      result = v3[2];
      if (result)
      {
        do
        {
          v5 = *result;
          operator delete(result);
          result = v5;
        }

        while (v5);
      }

      v3[2] = 0;
      v6 = v3[1];
      if (v6)
      {
        for (j = 0; j != v6; ++j)
        {
          *(*v3 + 8 * j) = 0;
        }
      }

      v3[3] = 0;
    }
  }

  return result;
}

uint64_t _os_trace_str_map_insert(void **a1, char *__s)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  if (!*a1)
  {
    operator new();
  }

  std::string::basic_string[abi:nn200100]<0>(__p, __s);
  v3 = v18;
  if ((v18 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v5 = v18;
  }

  else
  {
    v5 = __p[1];
  }

  v6 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v4, v5);
  v7 = v6;
  v8 = v2[1];
  if (!*&v8)
  {
    goto LABEL_26;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*v2 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_26:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_26;
    }

LABEL_25:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_26;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:nn200100](v13 + 2, __p))
  {
    goto LABEL_25;
  }

  if ((v3 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
  return 0;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v41 + v35 + v32;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v33 + v41 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v47 + v34 + v36;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v68 + v59 + v57 + v58;
      v50 = __ROR8__(v68 + v59 + v57, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * (v29 ^ (v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (!a2)
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

BOOL std::equal_to<std::string>::operator()[abi:nn200100](void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

void *_os_trace_str_map_entry(void *result, char *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!result)
  {
    goto LABEL_32;
  }

  v2 = result;
  std::string::basic_string[abi:nn200100]<0>(v17, a2);
  v3 = v18;
  v4 = v17[0];
  if ((v18 & 0x80u) == 0)
  {
    v5 = v17;
  }

  else
  {
    v5 = v17[0];
  }

  if ((v18 & 0x80u) == 0)
  {
    v6 = v18;
  }

  else
  {
    v6 = v17[1];
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v2[1];
  if (!*&v8)
  {
    goto LABEL_25;
  }

  v9 = v7;
  v10 = vcnt_s8(v8);
  v10.i16[0] = vaddlv_u8(v10);
  v11 = v10.u32[0];
  if (v10.u32[0] > 1uLL)
  {
    v12 = v7;
    if (v7 >= *&v8)
    {
      v12 = v7 % *&v8;
    }
  }

  else
  {
    v12 = (*&v8 - 1) & v7;
  }

  v13 = *(*v2 + 8 * v12);
  if (v13)
  {
    for (i = *v13; i; i = *i)
    {
      v15 = i[1];
      if (v9 == v15)
      {
        if (std::equal_to<std::string>::operator()[abi:nn200100](i + 2, v17))
        {
          break;
        }
      }

      else
      {
        if (v11 > 1)
        {
          if (v15 >= *&v8)
          {
            v15 %= *&v8;
          }
        }

        else
        {
          v15 &= *&v8 - 1;
        }

        if (v15 != v12)
        {
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
LABEL_25:
    i = 0;
  }

  if ((v3 & 0x80000000) == 0)
  {
    if (i)
    {
      goto LABEL_28;
    }

LABEL_31:
    result = 0;
    goto LABEL_32;
  }

  operator delete(v4);
  if (!i)
  {
    goto LABEL_31;
  }

LABEL_28:
  result = i + 2;
  if (*(i + 39) < 0)
  {
    result = *result;
  }

LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void _os_trace_str_map_clear(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(*(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<std::string,void *>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,void *>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,void *>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,void *>>>::__deallocate_node(void **__p)
{
  if (__p)
  {
    v1 = __p;
    do
    {
      v2 = *v1;
      if (*(v1 + 39) < 0)
      {
        operator delete(v1[2]);
      }

      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

uint64_t hashtable_create(char a1)
{
  v2 = _os_trace_calloc_typed();
  *v2 = 16;
  *(v2 + 8) = a1;
  *(v2 + 16) = _os_trace_calloc_typed();
  return v2;
}

void hashtable_destroy(unsigned int *a1, void (*a2)(void))
{
  if (*(a1 + 2))
  {
    v3 = *a1;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(a1 + 2) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = *v6;
            if (a2)
            {
              a2(v6[2]);
            }

            free(v6);
            --a1[1];
            v6 = v7;
          }

          while (v7);
          v3 = *a1;
        }
      }
    }

    if (a1[1])
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
      return;
    }

    free(*(a1 + 2));
  }

  free(a1);
}

uint64_t hashtable_lookup(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v4 = (*(a1 + 16) + 8 * (hash_fn_array[*(a1 + 8)](a2) % *a1));
  v5 = hashkey_compare_array[*(a1 + 8)];
  while (1)
  {
    v4 = *v4;
    if (!v4)
    {
      break;
    }

    if (v5(v4[1], a2))
    {
      return v4[2];
    }
  }

  return 0;
}

uint64_t hash_uint64(void *a1)
{
  v1 = *a1 + ~(*a1 << 32);
  v2 = 9 * (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) ^ (((v1 ^ (v1 >> 22)) + ~((v1 ^ (v1 >> 22)) << 13)) >> 8));
  v3 = (v2 ^ (v2 >> 15)) + ~((v2 ^ (v2 >> 15)) << 27);
  return (v3 >> 31) ^ v3;
}

uint64_t hashtable_insert(unsigned int *a1, void *a2, uint64_t a3)
{
  v6 = (hash_fn_array)[*(a1 + 8)](a2);
  v7 = *a1;
  if (!*(a1 + 2))
  {
    v11 = *a1;
LABEL_9:
    *(a1 + 2) = _os_trace_calloc_typed();
    goto LABEL_10;
  }

  v8 = (*(a1 + 2) + 8 * ((hash_fn_array)[*(a1 + 8)](a2) % *a1));
  v9 = hashkey_compare_array[*(a1 + 8)];
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (v9(v8[1], a2))
    {
      return 0;
    }
  }

  if (!*(a1 + 2))
  {
    v12 = *a1;
    goto LABEL_9;
  }

LABEL_10:
  v13 = v6 % v7;
  v14 = *(a1 + 8);
  v15 = _os_trace_calloc_typed();
  *v15 = 0;
  v15[2] = a3;
  if (v14 == 2)
  {
    v15[1] = *a2;
  }

  else if (v14 == 1)
  {
    *(v15 + 4) = *a2;
  }

  else
  {
    free(v15);
    v15 = 0;
  }

  v16 = *(a1 + 2);
  *v15 = *(v16 + 8 * v13);
  *(v16 + 8 * v13) = v15;
  ++a1[1];
  return 1;
}

unsigned int *hashtable_iterate(unsigned int *result, uint64_t a2)
{
  if (*(result + 2))
  {
    v2 = result;
    v3 = *result;
    if (v3)
    {
      for (i = 0; i < v3; ++i)
      {
        v6 = *(*(v2 + 2) + 8 * i);
        if (v6)
        {
          do
          {
            v7 = *(v2 + 8);
            if (v7 == 1)
            {
              v8 = v6 + 1;
            }

            else
            {
              v8 = 0;
            }

            if (v7 == 2)
            {
              v9 = v6 + 1;
            }

            else
            {
              v9 = v8;
            }

            result = (*(a2 + 16))(a2, v9, v6[2]);
            v6 = *v6;
          }

          while (v6);
          v3 = *v2;
        }
      }
    }
  }

  return result;
}

uint64_t _os_trace_persistdir_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_persist_path;
}

void ___os_trace_shared_paths_init_block_invoke()
{
  _os_trace_persist_path = "/private/var/db/diagnostics";
  _os_trace_timesync_path = "/private/var/db/diagnostics/timesync";
  _os_trace_uuidtext_path = "/private/var/db/uuidtext";
}

uint64_t _os_trace_timesyncdir_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_timesync_path;
}

uint64_t _os_trace_uuiddb_path()
{
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  return _os_trace_uuidtext_path;
}

uint64_t _os_trace_get_path(int a1)
{
  result = 0;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      return _os_trace_uuidtext_path;
    }

    else if (a1 == 3)
    {

      return MEMORY[0x2822050E0](0);
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      return _os_trace_timesync_path;
    }
  }

  else
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    return _os_trace_persist_path;
  }

  return result;
}

uint64_t ___timesync_tidy_and_count_files_block_invoke(void *a1, char *__str)
{
  ++*(*(a1[4] + 8) + 24);
  v3 = strtoull(__str, 0, 16);
  v4 = *(a1[5] + 8);
  if (v3 < *(v4 + 24))
  {
    *(v4 + 24) = v3;
  }

  v5 = *(a1[6] + 8);
  if (v3 > *(v5 + 24))
  {
    *(v5 + 24) = v3;
  }

  return 1;
}

uint64_t _timesync_validate(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = _os_trace_mmap_at();
  if (!v6)
  {
    v7 = 0xFFFFFFFFLL;
    if (!*__error())
    {
      goto LABEL_26;
    }

LABEL_28:
    _os_assumes_log();
    goto LABEL_26;
  }

  for (i = 0; i <= 0xAAAAAAAAAAAAAAAALL; i = v9 + v12)
  {
    if (i >= 0xAAAAAAAAAAAAAAAALL)
    {
      v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
      v14 = 1;
      v7 = 1;
      goto LABEL_25;
    }

    v9 = i;
    v10 = &v6[i];
    v11 = *&v6[i];
    if (v11 > 48047)
    {
      if (v11 == 48048)
      {
        if (*(v10 + 1) != 48)
        {
          break;
        }

        v12 = 48;
      }

      else
      {
        if (v11 != 57005)
        {
          break;
        }

        v12 = *(v10 + 1);
      }

      continue;
    }

    if (v11 == 27986)
    {
      if (*(v10 + 1) != 88)
      {
        break;
      }

      v12 = 88;
      continue;
    }

    if (v11 != 29524 || *(v10 + 1) != 32)
    {
      break;
    }

    v12 = 32;
  }

  if (a3)
  {
    *a3 = v9;
  }

  if (a4)
  {
    *a4 = *v10;
  }

  v13 = munmap(v6, 0xAAAAAAAAAAAAAAAALL);
  v14 = 0;
  v7 = 0;
LABEL_25:
  if (v13 == -1)
  {
    v17 = *__error();
    v7 = v14;
    goto LABEL_28;
  }

LABEL_26:
  v15 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t _timesync_for_each_boot(uint64_t result, uint64_t a2)
{
  if (*(result + 48))
  {
    v3 = result;
    do
    {
      (*(a2 + 16))(a2, v3 + 7);
      result = _timesync_advance_boot(v3);
    }

    while (v3[6]);
  }

  return result;
}

uint64_t _timesync_advance_boot(void *a1)
{
  v1 = a1[6];
  if (!v1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = a1[8];
  v4 = a1[9];
  while (*v1 != 48048 || *(v1 + 1) == v3 && *(v1 + 2) == v4)
  {
    _timesync_advance(a1);
    v1 = a1[6];
    if (!v1)
    {
      return 0xFFFFFFFFLL;
    }
  }

  _timesync_advance(a1);
  return 0;
}

uint64_t _timesync_advance(uint64_t result)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = *(result + 48);
  if (!v1)
  {
    goto LABEL_18;
  }

  v2 = result;
  if (*v1 == 48048)
  {
    _timesync_process_boot_entry(result);
    v3 = v2[6];
  }

  else
  {
    v4 = *v1;
    *(result + 120) = *(v1 + 1);
    *(result + 104) = v4;
    v3 = v1;
  }

  v9[0] = v2[4] - v3 + v2[5];
  while (1)
  {
    result = _timesync_next_entry(v1, v9);
    v1 = result;
    if (!result)
    {
      break;
    }

LABEL_10:
    v7 = *v1;
    if (v7 == 48048)
    {
      if (*(v1 + 1) != v2[8] || *(v1 + 2) != v2[9])
      {
        goto LABEL_17;
      }
    }

    else if (v7 == 29524)
    {
      goto LABEL_17;
    }
  }

  result = _timesync_munmap_file(v2);
  v5 = v2[2];
  v6 = v2[3] + 1;
  v2[3] = v6;
  if (v6 <= v5)
  {
    result = _timesync_mmap_file(v2);
    if ((result & 0x80000000) == 0)
    {
      v1 = v2[6];
      v9[0] = v2[4];
      if (!v1)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  v1 = 0;
LABEL_17:
  v2[6] = v1;
LABEL_18:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _timesync_process_boot_entry(uint64_t result)
{
  v1 = *(result + 48);
  if (*(v1 + 6))
  {
    if (*(v1 + 7))
    {
      v2 = *v1;
      v3 = v1[1];
      *(result + 88) = v1[2];
      *(result + 72) = v3;
      *(result + 56) = v2;
      *(result + 112) = 0;
      *(result + 120) = *(result + 88);
      return result;
    }
  }

  else
  {
    _os_assert_log();
    _os_crash();
    __break(1u);
  }

  _os_assert_log();
  result = _os_crash();
  __break(1u);
  return result;
}

char *_timesync_next_entry(unsigned __int16 *a1, void *a2)
{
  v2 = *a1;
  if (v2 > 0xBBAF)
  {
    if (v2 == 48048)
    {
      if (a1[1] != 48)
      {
        goto LABEL_16;
      }

      v3 = 48;
    }

    else
    {
      if (v2 != 57005)
      {
        goto LABEL_16;
      }

      v3 = a1[1];
    }
  }

  else
  {
    if (v2 != 27986)
    {
      if (v2 == 29524 && a1[1] == 32)
      {
        v3 = 32;
        goto LABEL_13;
      }

LABEL_16:
      _os_assumes_log();
      return 0;
    }

    if (a1[1] != 88)
    {
      goto LABEL_16;
    }

    v3 = 88;
  }

LABEL_13:
  v4 = *a2 - v3;
  *a2 = v4;
  v5 = a1 + v3;
  if (v4 >= 1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _timesync_munmap_file(uint64_t a1)
{
  v3 = (a1 + 40);
  result = *(a1 + 40);
  if ((result + 1) >= 2)
  {
    result = munmap(result, *(a1 + 32));
    if (result == -1)
    {
      v4 = *__error();
      result = _os_assumes_log();
    }

    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t _timesync_mmap_file(void *a1)
{
  v9[3] = *MEMORY[0x277D85DE8];
  memset(v9, 170, 18);
  v7 = a1[3];
  *__str = 0xAAAAAAAAAAAAAAAALL;
  snprintf(__str, 0x1AuLL, "%016llx.timesync", v7);
  v2 = *a1;
  v3 = _os_trace_mmap_at();
  a1[5] = v3;
  if (!v3)
  {
    if (*__error())
    {
      _os_assumes_log();
    }

    goto LABEL_11;
  }

  if (a1[4] < 80 || *v3 != 48048 || v3[1] != 48 || v3[24] != 29524 || v3[25] != 32)
  {
    _timesync_munmap_file(a1);
    a1[5] = 0;
LABEL_11:
    v4 = 0xFFFFFFFFLL;
    goto LABEL_12;
  }

  v4 = 0;
  a1[6] = v3;
LABEL_12:
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t _timesync_repair(int a1, const char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = openat(a1, a2, 16777478);
  if (v4 == -1)
  {
    v20 = *__error();
    _os_assumes_log();
    goto LABEL_7;
  }

  v5 = v4;
  v6 = _os_trace_mmap_at();
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = &v7[v9];
      v11 = *&v7[v9];
      if (v11 > 0xBBAF)
      {
        if (v11 == 48048)
        {
          if (*(v10 + 1) != 48)
          {
            goto LABEL_22;
          }

          v12 = 48;
        }

        else
        {
          if (v11 != 57005)
          {
            goto LABEL_22;
          }

          v12 = *(v10 + 1);
        }
      }

      else if (v11 == 27986)
      {
        if (*(v10 + 1) != 88)
        {
          goto LABEL_22;
        }

        v12 = 88;
      }

      else
      {
        if (v11 != 29524 || *(v10 + 1) != 32)
        {
LABEL_22:
          v14 = *&v7[v9];
          v15 = &v7[v9];
          v16 = 0xAAAAAAAAAAAAAAAALL - v9;
          while (1)
          {
            if (v14 == 27986)
            {
              if (*(v15 + 1) == 88)
              {
                goto LABEL_34;
              }
            }

            else if (v14 == 29524)
            {
              if (*(v15 + 1) == 32)
              {
                goto LABEL_34;
              }
            }

            else if (v14 == 48048 && *(v15 + 1) == 48)
            {
LABEL_34:
              v13 = v15 - v10;
LABEL_35:
              if (v13 >= 0xFFFF)
              {
                LOWORD(v12) = -8;
              }

              else
              {
LABEL_36:
                LOWORD(v12) = v13;
                if (!v13)
                {
                  LOWORD(v12) = *(v10 + 1);
                  goto LABEL_43;
                }
              }

              v18 = *(v10 + 1);
              (*(a3 + 16))(a3, v9);
              if (lseek(v5, v9, 0) == -1 || (v19 = _os_trace_write(), v19 == -1))
              {
                v23 = *__error();
                _os_assumes_log();
              }

              else if ((v19 & 0x8000000000000000) == 0)
              {
                v8 = (v8 + 1);
                goto LABEL_43;
              }

              v8 = 0xFFFFFFFFLL;
LABEL_50:
              if (munmap(v7, 0xAAAAAAAAAAAAAAAALL) == -1)
              {
                v25 = *__error();
                _os_assumes_log();
              }

              if (close(v5) != -1)
              {
LABEL_53:
                v24 = *MEMORY[0x277D85DE8];
                return v8;
              }

              v26 = *__error();
              result = *__error();
              if (v26 != 9)
              {
LABEL_55:
                _os_assumes_log();
                v27 = *__error();
                _os_assumes_log();
                goto LABEL_53;
              }

              qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
              qword_27DF92038 = result;
              __break(1u);
              goto LABEL_57;
            }

            if (v16 <= 7)
            {
              v13 = (-21846 - v9);
              goto LABEL_35;
            }

            v16 -= 8;
            v17 = *(v15 + 4);
            v15 += 8;
            v14 = v17;
          }
        }

        v12 = 32;
      }

      if (v9 + v12 > 0xAAAAAAAAAAAAAAAALL)
      {
        LOWORD(v13) = -21846 - v9;
        goto LABEL_36;
      }

LABEL_43:
      v9 += v12;
      if (v9 >= 0xAAAAAAAAAAAAAAAALL)
      {
        goto LABEL_50;
      }
    }
  }

  if (*__error())
  {
    _os_assumes_log();
  }

  if (close(v5) != -1)
  {
LABEL_7:
    v8 = 0xFFFFFFFFLL;
    goto LABEL_53;
  }

  v21 = *__error();
  result = *__error();
  if (v21 != 9)
  {
    v8 = 0xFFFFFFFFLL;
    goto LABEL_55;
  }

LABEL_57:
  qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DF92038 = result;
  __break(1u);
  return result;
}

uint64_t _timesync_db_openat(int a1, const char *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = _os_trace_zalloc_typed();
  v5 = openat(a1, a2, 0);
  *v4 = v5;
  if (v5 != -1)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x2000000000;
    v42 = 0;
    v35 = 0;
    v36 = &v35;
    v37 = 0x2000000000;
    v38 = -1;
    v31 = 0;
    v32 = &v31;
    v33 = 0x2000000000;
    v34 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 0x40000000;
    v26 = ___timesync_tidy_and_count_files_block_invoke;
    v27 = &unk_278B461C8;
    v28 = &v39;
    v29 = &v35;
    v30 = &v31;
    v6 = dup(v5);
    if (v6 == -1)
    {
      goto LABEL_16;
    }

    v7 = v6;
    if (lseek(v6, 0, 0) == -1)
    {
      v22 = *__error();
      _os_assumes_log();
    }

    v8 = fdopendir(v7);
    if (!v8)
    {
      v16 = *__error();
      if (close(v7) == -1)
      {
        v24 = *__error();
        result = *__error();
        if (v24 == 9)
        {
          goto LABEL_34;
        }

        _os_assumes_log();
      }

      *__error() = v16;
      goto LABEL_19;
    }

    v9 = v8;
    v10 = MEMORY[0x277D85DE0];
LABEL_7:
    while (1)
    {
      v11 = readdir(v9);
      if (!v11)
      {
        break;
      }

      if ((v11->d_type | 8) == 8)
      {
        v12 = 0;
        d_name = v11->d_name;
        while (1)
        {
          v14 = d_name[v12];
          if (v14 < 0 || (*(v10 + 4 * v14 + 60) & 0x10000) == 0)
          {
            break;
          }

          if (++v12 == 16)
          {
            if (strcmp(&v11->d_name[16], ".timesync") || (v26(v25, d_name) & 1) != 0)
            {
              goto LABEL_7;
            }

            goto LABEL_15;
          }
        }
      }
    }

LABEL_15:
    if (closedir(v9) == -1)
    {
LABEL_16:
      v15 = *__error();
      _os_assumes_log();
    }

LABEL_19:
    v17 = *(v40 + 6);
    if (v17 >= 1)
    {
      *(v4 + 8) = v36[3];
      *(v4 + 16) = v32[3];
    }

    _Block_object_dispose(&v31, 8);
    _Block_object_dispose(&v35, 8);
    _Block_object_dispose(&v39, 8);
    if (v17 >= 1 && (_timesync_reset(v4) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v18 = *__error();
  _os_assumes_log();
LABEL_25:
  v19 = *__error();
  if ((*v4 & 0x80000000) != 0 || close(*v4) != -1)
  {
    goto LABEL_27;
  }

  v23 = *__error();
  result = *__error();
  if (v23 != 9)
  {
    _os_assumes_log();
LABEL_27:
    free(v4);
    v4 = 0;
    *__error() = v19;
LABEL_28:
    v20 = *MEMORY[0x277D85DE8];
    return v4;
  }

  qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DF92038 = result;
  __break(1u);
LABEL_34:
  qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DF92038 = result;
  __break(1u);
  return result;
}

uint64_t _timesync_reset(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  _timesync_munmap_file(a1);
  *(a1 + 24) = *(a1 + 8);
  while ((_timesync_mmap_file(a1) & 0x80000000) != 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24) + 1;
    *(a1 + 24) = v3;
    if (v3 > v2)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_6;
    }
  }

  _timesync_process_boot_entry(a1);
  v7[0] = *(a1 + 32);
  entry = _timesync_next_entry(*(a1 + 48), v7);
  result = 0;
  *(a1 + 48) = entry;
LABEL_6:
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t _timesync_continuous_to_wall_time(uint64_t a1, void *a2, unint64_t a3, void *a4)
{
  if (*a2 != *(a1 + 64) || a2[1] != *(a1 + 72))
  {
    goto LABEL_8;
  }

  v8 = *(a1 + 112);
  v9 = *(a1 + 48);
  if (v9 && *v9 == 29524)
  {
    if (v8 > a3 || *(v9 + 8) <= a3)
    {
LABEL_7:
      if (v8 <= a3)
      {
LABEL_13:

        return _timesync_advance_and_calculate(a1, a3, a4);
      }

LABEL_8:
      _timesync_reset(a1);
      while (*a2 != *(a1 + 64) || a2[1] != *(a1 + 72))
      {
        if (_timesync_advance_boot(a1))
        {
          return -1;
        }
      }

      goto LABEL_13;
    }
  }

  else if (v8 > a3)
  {
    goto LABEL_7;
  }

  if (a4)
  {
    *a4 = *(a1 + 128);
    v8 = *(a1 + 112);
  }

  return (a3 - v8) * *(a1 + 80) / *(a1 + 84) + *(a1 + 120);
}

unint64_t _timesync_advance_and_calculate(uint64_t a1, unint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 112);
    v7 = *(a1 + 48);
    if (v7)
    {
      if (*v7 == 29524)
      {
        break;
      }
    }

    if (v6 <= a2)
    {
      goto LABEL_8;
    }

LABEL_7:
    _timesync_advance(a1);
  }

  if (v6 > a2 || *(v7 + 8) <= a2)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (a3)
  {
    *a3 = *(a1 + 128);
    v6 = *(a1 + 112);
  }

  return (a2 - v6) * *(a1 + 80) / *(a1 + 84) + *(a1 + 120);
}

unint64_t _timesync_wall_time_to_continuous(uint64_t a1, unint64_t a2, unint64_t a3, _OWORD *a4)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  *a4 = *_timesync_range_find_startboot(a1, a2, a3, v6);
  result = v6[0];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _timesync_range_find_startboot(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  _timesync_reset(a1);
  for (i = *(a1 + 48); i; i = *(a1 + 48))
  {
    v9 = *(a1 + 120);
    if (a2 - 1 >= a3 || v9 <= a3)
    {
      if (v9 > a2)
      {
        break;
      }

      v10 = *i == 48048 ? *(i + 4) : (*(i + 1) - *(a1 + 112)) * *(a1 + 80) / *(a1 + 84) + v9;
      if (v10 > a2)
      {
        break;
      }
    }

    _timesync_advance(a1);
  }

  v11 = *(a1 + 120);
  v12 = a2 >= v11;
  v13 = a2 - v11;
  if (v12)
  {
    v14 = *(a1 + 112) + v13 * *(a1 + 84) / *(a1 + 80);
  }

  else
  {
    v14 = *(a1 + 112);
  }

  *a4 = v14;
  return a1 + 64;
}

void _timesync_range_create_impl()
{
  v1 = *MEMORY[0x277D85DE8];
  v0 = _os_trace_zalloc_typed();
  *v0 = 0;
  *(v0 + 8) = xmmword_23A00EAE0;
  operator new();
}

__n128 ___timesync_range_create_impl_block_invoke_2(uint64_t a1, __n128 *a2, uint64_t a3)
{
  result = *a2;
  *(*(a1 + 32) + 16 * a3 + 8) = *a2;
  return result;
}

uint64_t _timesync_range_count(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 24);
  }

  else
  {
    return 0;
  }
}

void _timesync_range_destroy(void ***a1)
{
  _os_trace_uuid_map_destroy(*a1);

  free(a1);
}

uint64_t _os_trace_device_formatted_for_content_protection()
{
  if (_os_trace_device_formatted_for_content_protection_once != -1)
  {
    dispatch_once(&_os_trace_device_formatted_for_content_protection_once, &__block_literal_global_80);
  }

  return _os_trace_device_formatted_for_content_protection_formatted;
}

uint64_t ___os_trace_device_formatted_for_content_protection_block_invoke()
{
  result = MKBDeviceFormattedForContentProtection();
  _os_trace_device_formatted_for_content_protection_formatted = result == 1;
  return result;
}

BOOL _os_trace_device_unlocked_since_boot()
{
  if (_os_trace_device_unlocked_since_boot_unlocked)
  {
    return 1;
  }

  if (_os_trace_device_formatted_for_content_protection_once != -1)
  {
    dispatch_once(&_os_trace_device_formatted_for_content_protection_once, &__block_literal_global_80);
  }

  result = _os_trace_device_formatted_for_content_protection_formatted != 1 || MKBDeviceUnlockedSinceBoot() == 1;
  _os_trace_device_unlocked_since_boot_unlocked = result;
  return result;
}

char *_os_trace_development_getenv(const char *a1)
{
  if (!os_variant_allows_internal_security_policies())
  {
    return 0;
  }

  return getenv(a1);
}

uint64_t _os_trace_is_kernel_64_bit()
{
  if (_os_trace_is_kernel_64_bit_k64_once != -1)
  {
    dispatch_once(&_os_trace_is_kernel_64_bit_k64_once, &__block_literal_global_4);
  }

  return _os_trace_is_kernel_64_bit_k64;
}

uint64_t ___os_trace_is_kernel_64_bit_block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  *v5 = xmmword_23A00EAF0;
  memset(__b, 170, sizeof(__b));
  v3 = 648;
  result = sysctl(v5, 4u, __b, &v3, 0, 0);
  if (result == -1)
  {
    v2 = *__error();
    result = _os_assumes_log();
  }

  _os_trace_is_kernel_64_bit_k64 = (__b[32] & 4) != 0;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _os_trace_uuiddb_get_pathsuffix(uint64_t result, int a2, char *__str, size_t __size)
{
  v6 = result;
  if (a2 <= 16)
  {
    if ((a2 - 1) < 2)
    {
      v7 = 1;
LABEL_5:
      v8 = *result;
      result = snprintf(__str, __size, "%02X");
      goto LABEL_10;
    }

    if (a2 == 3)
    {
      v7 = 0;
      goto LABEL_9;
    }

LABEL_17:
    qword_27DF92008 = "BUG IN LIBTRACE: Invalid type";
    qword_27DF92038 = a2;
    __break(1u);
    return result;
  }

  v7 = -1;
  if ((a2 - 17) < 2)
  {
    goto LABEL_5;
  }

  if (a2 != 19)
  {
    goto LABEL_17;
  }

LABEL_9:
  result = snprintf(__str, __size, "dsc");
LABEL_10:
  if (v7 == -1)
  {
    return result;
  }

  v9 = result + 1;
  if (v9 + 2 * (16 - v7) >= __size)
  {
    qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: Path buffer is too small";
    qword_27DF92038 = __size;
    __break(1u);
    goto LABEL_17;
  }

  __str[result] = 47;
  v10 = &__str[v9];
  do
  {
    *v10 = a0123456789abcd[*(v6 + v7) >> 4];
    v10[1] = a0123456789abcd[*(v6 + v7) & 0xF];
    v10 += 2;
    ++v7;
  }

  while (v7 != 16);
  *v10 = 0;
  return result;
}

uint64_t ___os_trace_uuiddb_path_sandbox_can_read_data_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x277D861D8];
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  result = sandbox_check();
  _os_trace_uuiddb_path_sandbox_can_read_data_can_read = result == 0;
  return result;
}

BOOL _os_trace_uuiddb_path_exists(const char *a1, uint64_t a2, int a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    memset(__b, 170, sizeof(__b));
    v6 = snprintf(__b, 0x400uLL, "%s/", a1);
  }

  else
  {
    if (_os_trace_uuiddb_path_sandbox_can_read_data_once != -1)
    {
      dispatch_once(&_os_trace_uuiddb_path_sandbox_can_read_data_once, &__block_literal_global_94);
    }

    if (_os_trace_uuiddb_path_sandbox_can_read_data_can_read != 1)
    {
      result = 0;
      goto LABEL_10;
    }

    memset(__b, 170, sizeof(__b));
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v6 = snprintf(__b, 0x400uLL, "%s/", _os_trace_uuidtext_path);
  }

  _os_trace_uuiddb_get_pathsuffix(a2, a3, &__b[v6], 1024 - v6);
  result = access(__b, 0) == 0;
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

FTS *_os_trace_uuiddb_foreach(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43[2] = *MEMORY[0x277D85DE8];
  v43[0] = a1;
  v43[1] = 0;
  result = fts_open(v43, 84, 0);
  if (result)
  {
    v10 = result;
    (*(a2 + 16))(a2);
    v42[0] = 0xAAAAAAAAAAAAAAAALL;
    v42[1] = 0xAAAAAAAAAAAAAAAALL;
    v11 = fts_read(v10);
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      while (1)
      {
        fts_info = v12->fts_info;
        if (v12->fts_info > 6u)
        {
          break;
        }

        if (v12->fts_info > 2u)
        {
          if (fts_info != 3 && fts_info != 4)
          {
            if (fts_info != 6)
            {
              goto LABEL_79;
            }

            v13 &= v12->fts_level != 1;
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (fts_info != 1)
        {
          if (fts_info != 2)
          {
            goto LABEL_79;
          }

          v12->fts_errno = 62;
          goto LABEL_19;
        }

        if (v12->fts_level == 1)
        {
          if (!strcmp(v12->fts_name, "dsc"))
          {
            v13 = 1;
          }

          else
          {
            if (v12->fts_namelen != 2)
            {
              goto LABEL_74;
            }

            v30 = v12->fts_name[0];
            v31 = -1;
            v32 = v30 - 48;
            if ((v30 - 48) <= 0x36)
            {
              v33 = v30 - 48;
              v34 = v30 - 55;
              v35 = v30 - 87;
              if (((1 << v32) & 0x7E000000000000) != 0)
              {
                v31 = v35;
              }

              else
              {
                v31 = -1;
              }

              if (((1 << v32) & 0x7E0000) != 0)
              {
                v31 = v34;
              }

              if (((1 << v32) & 0x3FF) != 0)
              {
                v31 = v33;
              }
            }

            v36 = v12->fts_name[1];
            v37 = -1;
            v38 = v36 - 48;
            if ((v36 - 48) <= 0x36)
            {
              if (((1 << v38) & 0x3FF) != 0)
              {
                v37 = v36 - 48;
              }

              else if (((1 << v38) & 0x7E0000) != 0)
              {
                v37 = v36 - 55;
              }

              else if (((1 << v38) & 0x7E000000000000) != 0)
              {
                v37 = v36 - 87;
              }
            }

            v39 = v37 | (16 * v31);
            if (v39 < 0)
            {
LABEL_74:
              (*(a3 + 16))(a3, v12);
              fts_set(v10, v12, 4);
              goto LABEL_20;
            }

            LOBYTE(v42[0]) = v39;
          }
        }

        else if (v12->fts_level)
        {
          goto LABEL_74;
        }

LABEL_20:
        v12 = fts_read(v10);
        if (!v12)
        {
          goto LABEL_75;
        }
      }

      if (v12->fts_info > 0xBu)
      {
        if ((fts_info - 12) >= 2)
        {
LABEL_79:
          qword_27DF92008 = "BUG IN LIBTRACE: unexpected fts entry";
          qword_27DF92038 = fts_info;
          __break(1u);
        }

        goto LABEL_19;
      }

      if (fts_info != 7)
      {
        if (fts_info != 8)
        {
          if (fts_info != 10)
          {
            goto LABEL_79;
          }

          goto LABEL_19;
        }

        fts_level = v12->fts_level;
        if (fts_level != 2)
        {
LABEL_66:
          if (fts_level == 1 && !strcmp(v12->fts_name, ".migrated"))
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

        if (v13)
        {
          v16 = 32;
        }

        else
        {
          v16 = 30;
        }

        if (v16 == v12->fts_namelen)
        {
          v17 = 0;
          v18 = (v13 & 1) == 0;
          while (1)
          {
            v19 = v12->fts_name[v17];
            v20 = v19;
            v21 = v19 - 48;
            v22 = v20 - 48;
            v23 = v20 - 55;
            v24 = v20 - 87;
            if (((1 << v21) & 0x7E000000000000) == 0)
            {
              v24 = -1;
            }

            if (((1 << v21) & 0x7E0000) != 0)
            {
              v24 = v23;
            }

            if (((1 << v21) & 0x3FF) != 0)
            {
              v24 = v22;
            }

            if (v21 <= 0x36)
            {
              v25 = v24;
            }

            else
            {
              v25 = -1;
            }

            v26 = v12->fts_name[v17 + 1];
            v27 = -1;
            v28 = v26 - 48;
            if ((v26 - 48) <= 0x36)
            {
              if (((1 << v28) & 0x3FF) != 0)
              {
                v27 = v26 - 48;
              }

              else if (((1 << v28) & 0x7E0000) != 0)
              {
                v27 = v26 - 55;
              }

              else if (((1 << v28) & 0x7E000000000000) != 0)
              {
                v27 = v26 - 87;
              }
            }

            v29 = v27 | (16 * v25);
            if (v29 < 0)
            {
              break;
            }

            *(v42 + v18++) = v29;
            v17 += 2;
            if (v17 >= v16)
            {
              (*(a4 + 16))(a4, v12, v42, v13 & 1);
              goto LABEL_20;
            }
          }

          fts_level = v12->fts_level;
          goto LABEL_66;
        }
      }

LABEL_19:
      (*(a3 + 16))(a3, v12);
      goto LABEL_20;
    }

LABEL_75:
    if (fts_close(v10) == -1)
    {
      v41 = *__error();
      _os_assumes_log();
    }

    result = (*(a5 + 16))(a5);
  }

  v40 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 _os_trace_uuiddb_dsc_validate_hdr(uint64_t a1, unint64_t a2, __n128 *a3)
{
  if (a2 - 0x80000000 < 0xFFFFFFFF80000010 || *a1 != 1685283688)
  {
    return result;
  }

  v5 = a2;
  v6 = *(a1 + 4);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      return result;
    }

    v7 = *(a1 + 8);
    v8 = (16 * v7);
    if (16 * v7 != v8 || v8 == 4294967280)
    {
      return result;
    }

    v10 = 16 * v7 + 16;
    v11 = *(a1 + 12);
    v12 = __CFADD__(v10, 28 * v11);
    v13 = (v10 + 28 * v11);
    v14 = v12;
    if (v11 > 0x9249249 || v14)
    {
      return result;
    }

    if (v13 <= a2)
    {
      if (v7)
      {
        v15 = (a1 + 28);
        v16 = *(a1 + 8);
        while (1)
        {
          v17 = *(v15 - 1);
          v12 = a2 >= v17;
          v18 = a2 - v17;
          if (!v12 || v18 < *v15 || *(v15 - 3) >= v11)
          {
            return result;
          }

          v15 += 4;
          if (!--v16)
          {
            goto LABEL_44;
          }
        }
      }

      if (v11)
      {
LABEL_44:
        v30 = (a1 + 16 * v7 + 40);
        do
        {
          v31 = *v30;
          v30 += 7;
          if (v31 >= a2)
          {
            return result;
          }
        }

        while (--v11);
      }

      if (*(a2 + a1 - 1))
      {
        return result;
      }

      v32 = *(a1 + 8);
      v33 = _os_trace_calloc_typed();
      v34 = v33;
      v35 = *(a1 + 8);
      if (v35)
      {
        v36 = (v33 + 16);
        v37 = (a1 + 24);
        do
        {
          *(v36 - 2) = *(v37 - 1);
          *(v36 - 1) = *v37;
          *v36 = *(v37 - 2);
          v36 += 6;
          v37 += 2;
          --v35;
        }

        while (v35);
      }

      v38 = *(a1 + 12);
      v39 = _os_trace_calloc_typed();
      v40 = v39;
      if (*(a1 + 12))
      {
        v41 = 0;
        v42 = a1 + 16 * v7 + 20;
        v43 = v39;
        do
        {
          *v43 = *(v42 - 4);
          *(v43 + 8) = *v42;
          *(v43 + 12) = *(v42 + 4);
          *(v43 + 28) = *(v42 + 20);
          ++v41;
          v43 += 32;
          v42 += 28;
        }

        while (v41 < *(a1 + 12));
      }

      v44 = _os_trace_calloc_typed();
      *(v44 + 8) = a1;
      *(v44 + 16) = v34;
      *(v44 + 24) = v40;
LABEL_61:
      result = *a3;
      *(v44 + 32) = *a3;
      *(v44 + 48) = v5;
      return result;
    }

LABEL_62:
    _os_assumes_log();
    return result;
  }

  v19 = *(a1 + 8);
  v20 = (24 * v19);
  if (24 * v19 != v20 || v20 > 0xFFFFFFEF)
  {
    return result;
  }

  v22 = 24 * v19 + 16;
  v23 = *(a1 + 12);
  v12 = __CFADD__(v22, 32 * v23);
  v24 = (v22 + 32 * v23);
  v25 = v12;
  if (v23 >> 27 || v25)
  {
    return result;
  }

  if (v24 > a2)
  {
    goto LABEL_62;
  }

  if (v19)
  {
    v26 = (a1 + 32);
    v27 = *(a1 + 8);
    while (1)
    {
      v28 = *(v26 - 2);
      v12 = a2 >= v28;
      v29 = a2 - v28;
      if (!v12 || v29 < *(v26 - 1) || *v26 >= v23)
      {
        break;
      }

      v26 += 6;
      if (!--v27)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (!v23)
    {
LABEL_59:
      if (*(a2 + a1 - 1))
      {
        return result;
      }

      v47 = a1 + 16 + 24 * v19;
      v44 = _os_trace_calloc_typed();
      *(v44 + 8) = a1;
      *(v44 + 16) = a1 + 16;
      *(v44 + 24) = v47;
      goto LABEL_61;
    }

LABEL_56:
    v45 = (a1 + 24 * v19 + 44);
    while (1)
    {
      v46 = *v45;
      v45 += 8;
      if (v46 >= a2)
      {
        break;
      }

      if (!--v23)
      {
        goto LABEL_59;
      }
    }
  }

  return result;
}

uint64_t *_os_trace_uuiddb_get_dsc_map_impl(uint64_t a1, char *a2, __n128 *a3, int a4)
{
  v8 = 0;
  while (1)
  {
    v9 = _os_trace_uuiddb_get_dsc_map_impl__dsc_map_head;
    if (_os_trace_uuiddb_get_dsc_map_impl__dsc_map_head)
    {
      v10 = _os_trace_uuiddb_get_dsc_map_impl__dsc_map_head;
      while (v10[4] != a3->n128_u64[0] || v10[5] != a3->n128_u64[1])
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      if (v8)
      {
        _os_trace_uuiddb_dsc_map_destroy(v8);
      }

      return v10;
    }

LABEL_7:
    if (!a4)
    {
      return 0;
    }

    if (!v8)
    {
      break;
    }

LABEL_18:
    *v8 = v9;
    v12 = v9;
    atomic_compare_exchange_strong_explicit(&_os_trace_uuiddb_get_dsc_map_impl__dsc_map_head, &v12, v8, memory_order_release, memory_order_relaxed);
    if (v12 == v9)
    {
      return v8;
    }
  }

  if (a1 == -1)
  {
    if (!a2)
    {
      if (_os_trace_shared_paths_init_once != -1)
      {
        dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
      }

      a2 = _os_trace_uuidtext_path;
    }

    a1 = open(a2, 0);
    if (a1 == -1)
    {
      v15 = *__error();
      _os_assumes_log();
      return 0;
    }
  }

  _os_trace_uuiddb_dsc_map_create(a1, a3);
  v8 = v11;
  if (!a2 || close(a1) != -1)
  {
    if (!v8)
    {
      return v8;
    }

    goto LABEL_18;
  }

  v13 = *__error();
  result = *__error();
  if (v13 != 9)
  {
    _os_assumes_log();
    if (!v8)
    {
      return v8;
    }

    goto LABEL_18;
  }

  qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
  qword_27DF92038 = result;
  __break(1u);
  return result;
}

void _os_trace_uuiddb_dsc_map_destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2[2] == 1)
  {
    free(*(a1 + 16));
    free(*(a1 + 24));
    v2 = *(a1 + 8);
  }

  if (munmap(v2, *(a1 + 48)) == -1)
  {
    v3 = *__error();
    _os_assumes_log();
  }

  free(a1);
}

void _os_trace_uuiddb_dsc_map_create(uint64_t a1, __n128 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  _os_trace_uuiddb_get_pathsuffix(a2, 3, __b, 0x400uLL);
  v3 = _os_trace_mmap_at();
  if (v3)
  {
    v4 = v3;
    _os_trace_uuiddb_dsc_validate_hdr(v3, 0xAAAAAAAAuLL, a2);
    if (!v5 && munmap(v4, 0xAAAAAAAAAAAAAAAALL) == -1)
    {
      v7 = *__error();
      _os_assumes_log();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void _os_trace_uuiddb_dsc_run_block_on_map(char *a1, __n128 *a2, uint64_t a3)
{
  v5 = a1;
  if (!a1)
  {
    if (_os_trace_shared_paths_init_once != -1)
    {
      dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
    }

    v5 = _os_trace_uuidtext_path;
  }

  v6 = open(v5, 0);
  if (v6 == -1)
  {
    v12 = *__error();
    _os_assumes_log();
    return;
  }

  v7 = v6;
  dsc_map_impl = _os_trace_uuiddb_get_dsc_map_impl(0xFFFFFFFFLL, v5, a2, 0);
  v9 = dsc_map_impl != 0;
  if (dsc_map_impl)
  {
    v10 = dsc_map_impl;
  }

  else
  {
    _os_trace_uuiddb_dsc_map_create(v7, a2);
    v10 = v11;
    if (!v11)
    {
      v9 = 1;
      if (!v7)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  (*(a3 + 16))(a3, v10);
  if (!v7)
  {
    goto LABEL_11;
  }

LABEL_10:
  if (close(v7) == -1)
  {
    v13 = *__error();
    v14 = *__error();
    if (v13 == 9)
    {
      qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
      qword_27DF92038 = v14;
      __break(1u);
      return;
    }

    _os_assumes_log();
  }

LABEL_11:
  if (!v9)
  {

    _os_trace_uuiddb_dsc_map_destroy(v10);
  }
}

uint64_t _os_trace_uuiddb_dsc_map_resolve_entry(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5)
{
  v5 = *(*(a1 + 8) + 12);
  if (!v5)
  {
    return 0;
  }

  v6 = 0;
  v7 = *(a1 + 24);
  v8 = *(*(a1 + 8) + 12);
  do
  {
    v9 = (v6 + v8) >> 1;
    v10 = v7 + 32 * v9;
    if (a2 >= *v10)
    {
      if (a2 - *v10 < *(v10 + 8))
      {
        goto LABEL_10;
      }

      v6 = v9 + 1;
    }

    else
    {
      v8 = (v6 + v8) >> 1;
    }
  }

  while (v6 < v8);
  if (*(v7 + 8))
  {
    return 0;
  }

  LODWORD(v9) = 0;
LABEL_10:
  if (v9 >= v5)
  {
    return 0;
  }

  v11 = v7 + 32 * v9;
  if (a3)
  {
    *a3 = v11 + 12;
  }

  if (a4)
  {
    *a4 = *(a1 + 8) + *(v11 + 28);
  }

  if (a5)
  {
    *a5 = *v11;
  }

  return 1;
}

const char *_os_trace_uuiddb_dsc_map_resolve_string(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    return "%s";
  }

  v2 = *(a1 + 8);
  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = (v3 + v4) >> 1;
    v6 = *(a1 + 16) + 24 * v5;
    v7 = a2 - *v6;
    if (a2 >= *v6)
    {
      break;
    }

LABEL_7:
    v3 = v5;
    if (v4 >= v5)
    {
      return 0;
    }
  }

  if (v7 >= *(v6 + 12))
  {
    v4 = v5 + 1;
    v5 = v3;
    goto LABEL_7;
  }

  return (v2 + *(v6 + 8) + v7);
}

uint64_t _os_trace_uuiddb_dsc_foreach_range_with_uuid(uint64_t result, void *a2, uint64_t a3)
{
  v3 = *(result + 8);
  if (*(v3 + 8))
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = v6[2];
      v10 = v6[3] + 32 * *(v9 + v7 + 16);
      v12 = *(v10 + 12);
      v11 = v10 + 12;
      if (v12 == *a2 && *(v11 + 8) == a2[1])
      {
        result = (*(a3 + 16))(a3, v3 + *(v9 + v7 + 8), *(v9 + v7 + 12));
        if (!result)
        {
          return result;
        }

        v3 = v6[1];
      }

      ++v8;
      v7 += 24;
    }

    while (v8 < *(v3 + 8));
  }

  return result;
}

uint64_t _os_trace_uuiddb_dsc_foreach_uuid(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (*(v2 + 12))
  {
    v4 = result;
    v5 = 0;
    v6 = 28;
    do
    {
      result = (*(a2 + 16))(a2, *(v4 + 24) + v6 - 16, v2 + *(*(v4 + 24) + v6));
      if ((result & 1) == 0)
      {
        break;
      }

      ++v5;
      v2 = *(v4 + 8);
      v6 += 32;
    }

    while (v5 < *(v2 + 12));
  }

  return result;
}

uint64_t _os_trace_kic_mode()
{
  if (_os_trace_kic_mode_o != -1)
  {
    dispatch_once(&_os_trace_kic_mode_o, &__block_literal_global_12);
  }

  return _os_trace_kic_mode_kic;
}

char *___os_trace_kic_mode_block_invoke()
{
  v4 = *MEMORY[0x277D85DE8];
  memset(__b, 170, sizeof(__b));
  v2 = 1024;
  _os_trace_kic_mode_kic = sysctlbyname("kern.filesetuuid", __b, &v2, 0, 0) != 0;
  result = sysctlbyname("kern.bootargs", __b, &v2, 0, 0);
  if (!result)
  {
    if (strstr(__b, "libtrace_kic=0"))
    {
      _os_trace_kic_mode_kic = 0;
    }

    result = strstr(__b, "libtrace_kic=1");
    if (result)
    {
      _os_trace_kic_mode_kic = 1;
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void _os_trace_uuiddb_make_kernel_cache_uuid(unsigned __int8 *a1, const unsigned __int8 *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v8[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *in = v4;
  *v8 = v4;
  v6 = 37;
  if (sysctlbyname("kern.kernelcacheuuid", in, &v6, 0, 0))
  {
    uuid_copy(a1, a2);
    a1[15] = ~a1[15];
  }

  else
  {
    uuid_parse(in, a1);
  }

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t _internal_log_assumes(uint64_t a1)
{
  v4[5] = *MEMORY[0x277D85DE8];
  if (_internal_log_once != -1)
  {
    dispatch_once_f(&_internal_log_once, 0, _internal_log_queue_init);
  }

  if (!dispatch_get_specific(_internal_log_q_key))
  {
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 0x40000000;
    v4[2] = ___internal_log_block_invoke;
    v4[3] = &__block_descriptor_tmp_108;
    v4[4] = a1;
    dispatch_sync(_internal_log_q, v4);
  }

  v2 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t ___internal_log_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(_internal_log_q);
  memset(__b, 170, sizeof(__b));
  memset(v10, 170, 18);
  v8.tm_zone = 0xAAAAAAAAAAAAAAAALL;
  *v9 = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v8.tm_mon = v2;
  *&v8.tm_isdst = v2;
  *&v8.tm_sec = v2;
  v7 = time(0);
  localtime_r(&v7, &v8);
  strftime(v9, 0x1AuLL, "%F %T%z", &v8);
  v3 = getprogname();
  v4 = getpid();
  result = snprintf(__b, 0x400uLL, "%s %s[%d]: %s\n", v9, v3, v4, v1);
  if (result >= 1)
  {
    if (result >= 0x400)
    {
      __b[1022] = 10;
    }

    dispatch_assert_queue_V2(_internal_log_q);
    dispatch_assert_queue_V2(_internal_log_q);
    if ((_internal_log_fd & 0x80000000) == 0 || (result = _internal_log_open(), (_internal_log_fd & 0x80000000) == 0) && (_internal_log_rotate_if_needed(), result = _internal_log_fd, (_internal_log_fd & 0x80000000) == 0))
    {
      _os_trace_write();
      result = _internal_log_rotate_if_needed();
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t _internal_log_rotate_if_needed()
{
  dispatch_assert_queue_V2(_internal_log_q);
  v0 = lseek(_internal_log_fd, 0, 2);
  result = fsync(_internal_log_fd);
  if (v0 >= 0x100000)
  {
    if (close(_internal_log_fd) == -1)
    {
      v3 = *__error();
      result = *__error();
      if (v3 == 9)
      {
        qword_27DF92008 = "BUG IN CLIENT OF LIBTRACE: don't close random fds";
        qword_27DF92038 = result;
        __break(1u);
        return result;
      }

      _os_assumes_log();
    }

    rename(_internal_log_file_0, _internal_log_file_1, v2);

    return _internal_log_open();
  }

  return result;
}

uint64_t _internal_log_open()
{
  result = open(_internal_log_file_0, 778, 420);
  _internal_log_fd = result;
  if ((result & 0x80000000) == 0)
  {

    return fchown(result, 0x110u, 0x110u);
  }

  return result;
}

int *_internal_log_queue_init()
{
  asprintf(&_internal_queue_target, "com.apple.%s.log", "logd");
  if (!_internal_queue_target)
  {
    v1 = *__error();
    qword_27DF92008 = "BUG IN LIBTRACE: failed to create queue target from subsystem";
    qword_27DF92038 = v1;
    __break(1u);
LABEL_10:
    result = __error();
    v2 = *result;
    qword_27DF92008 = "BUG IN LIBTRACE: failed to create log file path";
    qword_27DF92038 = v2;
    __break(1u);
    return result;
  }

  _internal_log_q = dispatch_queue_create_with_target_V2(_internal_queue_target, 0, 0);
  dispatch_queue_set_specific(_internal_log_q, _internal_log_q_key, _internal_log_q, 0);
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  asprintf(&_internal_log_file_0, "%s/%s.0.log", _os_trace_persist_path, "logd");
  if (_os_trace_shared_paths_init_once != -1)
  {
    dispatch_once(&_os_trace_shared_paths_init_once, &__block_literal_global_55);
  }

  result = asprintf(&_internal_log_file_1, "%s/%s.1.log", _os_trace_persist_path, "logd");
  if (!_internal_log_file_0 || !_internal_log_file_1)
  {
    goto LABEL_10;
  }

  return result;
}

id makeComponents(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [v1 decomposedMessage];
  if ([v3 state])
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEA60]);
  }

  else
  {
    v5 = [v3 placeholderCount];
    if (v5 != -1)
    {
      v6 = 0;
      v7 = v5 + 1;
      do
      {
        v8 = [[OSLogMessageComponent alloc] initWithDecomposedMessage:v3 atIndex:v6];
        [v2 addObject:v8];

        ++v6;
      }

      while (v7 != v6);
    }

    v4 = v2;
  }

  v9 = v4;

  return v9;
}

id convertEventProxyToEntry(void *a1)
{
  v1 = a1;
  v2 = [v1 type];
  v3 = 0;
  if (v2 <= 1023)
  {
    if ((v2 - 513) >= 3)
    {
      goto LABEL_14;
    }

    v4 = off_278B45F60;
  }

  else if (v2 > 1535)
  {
    if (v2 == 1536)
    {
      v4 = off_278B45F78;
    }

    else
    {
      if (v2 != 2560)
      {
        goto LABEL_14;
      }

      v4 = off_278B45F58;
    }
  }

  else if (v2 == 1024)
  {
    v4 = off_278B45F70;
  }

  else
  {
    if (v2 != 1280)
    {
      goto LABEL_14;
    }

    v4 = off_278B45F68;
  }

  v3 = [objc_alloc(*v4) initWithEventProxy:v1];
LABEL_14:

  return v3;
}

void sub_23A00D5D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_23A00D820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_23A00DB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}