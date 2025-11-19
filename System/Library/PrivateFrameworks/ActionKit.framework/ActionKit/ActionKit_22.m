void ERR_remove_state(unint64_t pid)
{
  memset(v1, 0, 512);
  CRYPTO_THREADID_current(v1);
  err_fns_check();
  (*(err_fns + 72))(v1);
}

void ERR_STATE_free(char *a1)
{
  for (i = 0; i != 16; ++i)
  {
    v3 = &a1[8 * i];
    v4 = *(v3 + 26);
    v5 = &a1[4 * i];
    if (v4 && (v5[336] & 1) != 0)
    {
      free(v4);
      *(v3 + 26) = 0;
    }

    *(v5 + 84) = 0;
  }

  free(a1);
}

int ERR_get_next_error_library(void)
{
  err_fns_check();
  v0 = *(err_fns + 80);

  return v0();
}

void ERR_set_error_data(char *data, int flags)
{
  state = ERR_get_state();
  v5 = state;
  pid = state[1].pid;
  if (!pid)
  {
    pid = 15;
  }

  v7 = &state->err_data[1];
  v8 = pid;
  v9 = state->err_data[pid + 1];
  v10 = v5 + 4 * pid;
  if (v9 && (*(v10 + 84) & 1) != 0)
  {
    free(v9);
  }

  v7[v8] = data;
  *(v10 + 84) = flags;
}

void ERR_asprintf_error_data(char *a1, ...)
{
  va_start(va, a1);
  v3 = 0;
  if (vasprintf(&v3, a1, va) == -1)
  {
    v1 = "malloc failed";
    v2 = 2;
  }

  else
  {
    v1 = v3;
    v2 = 3;
  }

  ERR_set_error_data(v1, v2);
}

void ERR_add_error_vdata(int a1, va_list a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v8[0] = 0;
  if (a1 >= 1)
  {
    v3 = a1;
    while (__strlcat_chk() < 0x81)
    {
      if (!--v3)
      {
        goto LABEL_5;
      }
    }

    v4 = "too many errors";
    goto LABEL_9;
  }

LABEL_5:
  if (vasprintf(&v7, v8, a2) == -1)
  {
    v4 = "malloc failed";
LABEL_9:
    v5 = 2;
    goto LABEL_10;
  }

  v4 = v7;
  v5 = 3;
LABEL_10:
  ERR_set_error_data(v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

int ERR_set_mark(void)
{
  state = ERR_get_state();
  pid_low = SLODWORD(state[1].pid);
  if (HIDWORD(state[1].pid) == pid_low)
  {
    return 0;
  }

  state->err_flags[pid_low + 2] |= 1u;
  return 1;
}

int ERR_pop_to_mark(void)
{
  state = ERR_get_state();
  pid = state[1].pid;
  if (HIDWORD(state[1].pid) == pid)
  {
    return 0;
  }

  v2 = state;
  v3 = &state->err_flags[2];
  v4 = &state->err_buffer[1];
  v5 = &state->err_data[1];
  v6 = &state->err_data_flags[2];
  v7 = &state->err_file[1];
  v8 = &state->err_line[2];
  while (1)
  {
    v9 = v3[pid];
    if (v9)
    {
      break;
    }

    v3[pid] = 0;
    pid_low = SLODWORD(v2[1].pid);
    v4[pid_low] = 0;
    v11 = v5[pid_low];
    if (v11 && (v6[pid_low] & 1) != 0)
    {
      free(v11);
      pid_low = SLODWORD(v2[1].pid);
      v5[pid_low] = 0;
    }

    v6[pid_low] = 0;
    v12 = SLODWORD(v2[1].pid);
    v7[v12] = 0;
    v8[v12] = -1;
    v13 = v2[1].pid;
    if (v13)
    {
      pid = v13 - 1;
    }

    else
    {
      pid = 15;
    }

    LODWORD(v2[1].pid) = pid;
    if (HIDWORD(v2[1].pid) == pid)
    {
      return 0;
    }
  }

  v3[pid] = v9 & 0xFFFFFFFE;
  return 1;
}

ERR_STATE *err_clear_last_constant_time(int a1)
{
  result = ERR_get_state();
  if (result)
  {
    pid_low = SLODWORD(result[1].pid);
    v4 = result + 4 * pid_low;
    *(v4 + 4) &= a1 - 1;
    v5 = a1 - 1;
    v6 = &result->pid + pid_low;
    v6[10] &= v5;
    v6[50] &= v5;
    *(v4 + 132) |= -a1;
    v7 = pid_low - a1 + 16;
    v8 = v7 & 0xF;
    v10 = -v7;
    v9 = v10 < 0;
    v11 = v10 & 0xF;
    if (v9)
    {
      v12 = v8;
    }

    else
    {
      v12 = -v11;
    }

    LODWORD(result[1].pid) = v12;
  }

  return result;
}

uint64_t int_err_get(int a1)
{
  CRYPTO_lock(9, 1, 0, 0);
  v2 = int_error_hash;
  if (a1 && !int_error_hash)
  {
    CRYPTO_push_info_("int_err_get (err.c)", 0, 0);
    int_error_hash = lh_new(err_string_data_LHASH_HASH, err_string_data_LHASH_COMP);
    CRYPTO_pop_info();
    v2 = int_error_hash;
  }

  CRYPTO_lock(10, 1, 0, 0);
  return v2;
}

void int_err_del()
{
  CRYPTO_lock(9, 1, 0, 0);
  if (int_error_hash)
  {
    lh_free(int_error_hash);
    int_error_hash = 0;
  }

  CRYPTO_lock(10, 1, 0, 0);
}

uint64_t int_err_get_item(const void *a1)
{
  err_fns_check();
  result = (*err_fns)(0);
  if (result)
  {
    v3 = result;
    CRYPTO_lock(5, 1, 0, 0);
    v4 = lh_retrieve(v3, a1);
    CRYPTO_lock(6, 1, 0, 0);
    return v4;
  }

  return result;
}

uint64_t int_err_set_item(void *a1)
{
  err_fns_check();
  result = (*err_fns)(1);
  if (result)
  {
    v3 = result;
    CRYPTO_lock(9, 1, 0, 0);
    v4 = lh_insert(v3, a1);
    CRYPTO_lock(10, 1, 0, 0);
    return v4;
  }

  return result;
}

uint64_t int_err_del_item(const void *a1)
{
  err_fns_check();
  result = (*err_fns)(0);
  if (result)
  {
    v3 = result;
    CRYPTO_lock(9, 1, 0, 0);
    v4 = lh_delete(v3, a1);
    CRYPTO_lock(10, 1, 0, 0);
    return v4;
  }

  return result;
}

uint64_t int_thread_get(int a1)
{
  CRYPTO_lock(9, 1, 0, 0);
  v2 = int_thread_hash;
  if (a1 && !int_thread_hash)
  {
    CRYPTO_push_info_("int_thread_get (err.c)", 0, 0);
    int_thread_hash = lh_new(err_state_LHASH_HASH, err_state_LHASH_COMP);
    CRYPTO_pop_info();
    v2 = int_thread_hash;
  }

  if (v2)
  {
    ++int_thread_hash_references;
  }

  CRYPTO_lock(10, 1, 0, 0);
  return v2;
}

void *int_thread_release(void *result)
{
  if (result)
  {
    v1 = result;
    if (*result)
    {
      result = CRYPTO_add_lock(&int_thread_hash_references, -1, 1, 0, 0);
      if (result <= 0)
      {
        *v1 = 0;
      }
    }
  }

  return result;
}

uint64_t int_thread_get_item(const void *a1)
{
  err_fns_check();
  result = (*(err_fns + 40))(0);
  v5 = result;
  if (result)
  {
    v3 = result;
    CRYPTO_lock(5, 1, 0, 0);
    v4 = lh_retrieve(v3, a1);
    CRYPTO_lock(6, 1, 0, 0);
    (*(err_fns + 48))(&v5);
    return v4;
  }

  return result;
}

uint64_t int_thread_set_item(void *a1)
{
  err_fns_check();
  result = (*(err_fns + 40))(1);
  v5 = result;
  if (result)
  {
    v3 = result;
    CRYPTO_lock(9, 1, 0, 0);
    v4 = lh_insert(v3, a1);
    CRYPTO_lock(10, 1, 0, 0);
    (*(err_fns + 48))(&v5);
    return v4;
  }

  return result;
}

void int_thread_del_item(const void *a1)
{
  err_fns_check();
  v2 = (*(err_fns + 40))(0);
  v6 = v2;
  if (v2)
  {
    v3 = v2;
    CRYPTO_lock(9, 1, 0, 0);
    v4 = lh_delete(v3, a1);
    v5 = int_thread_hash_references != 1 || int_thread_hash == 0;
    if (!v5 && !lh_num_items(int_thread_hash))
    {
      lh_free(int_thread_hash);
      int_thread_hash = 0;
    }

    CRYPTO_lock(10, 1, 0, 0);
    (*(err_fns + 48))(&v6);
    if (v4)
    {
      ERR_STATE_free(v4);
    }
  }
}

uint64_t int_err_get_next_lib()
{
  CRYPTO_lock(9, 1, 0, 0);
  v0 = int_err_library_number++;
  CRYPTO_lock(10, 1, 0, 0);
  return v0;
}

int BN_generate_prime_ex(BIGNUM *ret, int bits, int safe, const BIGNUM *add, const BIGNUM *rem, BN_GENCB *cb)
{
  v6 = MEMORY[0x28223BE20](ret);
  v52 = *MEMORY[0x277D85DE8];
  if (v7 < 2 || (v12 = v11, v13 = v10, v14 = v9, v15 = v8, v16 = v7, v17 = v6, v7 == 2) && v8)
  {
    ERR_put_error(3, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bn/bn_prime.c", 169);
    v18 = 0;
    goto LABEL_82;
  }

  v51[0] = 0;
  v19 = BN_CTX_new();
  v20 = v19;
  if (v19)
  {
    BN_CTX_start(v19);
    v21 = BN_CTX_get(v20);
    if (v21)
    {
      v22 = v21;
      a = v13;
      v23 = 0;
      v48 = v12;
      v47 = v15;
      v46 = v21;
LABEL_8:
      b = v23;
      if (!v14)
      {
        if (BN_rand(v17, v16, 1, 1))
        {
          v30 = 1;
LABEL_23:
          while (1)
          {
            v31 = BN_mod_word(v17, primes[v30]);
            if (v31 == -1)
            {
              break;
            }

            *&v51[2 * v30++ + 1] = v31;
            if (v30 == 2048)
            {
              v32 = 0;
              v33 = b;
LABEL_26:
              for (i = 1; i != 2048; ++i)
              {
                if ((*&v51[2 * i + 1] + v32) % primes[i] <= 1)
                {
                  v32 += 2;
                  if (v32 <= 0xFFFFFFFFFFFFBA38)
                  {
                    goto LABEL_26;
                  }

                  v30 = 1;
                  if (BN_rand(v17, v16, 1, 1))
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_80;
                }
              }

              if (!BN_add_word(v17, v32))
              {
                goto LABEL_80;
              }

LABEL_68:
              if (!BN_GENCB_call(v12, 0, v33))
              {
                goto LABEL_80;
              }

              v23 = v33 + 1;
              is_prime_bpsw = bn_is_prime_bpsw(v51, v17, v20, 1);
              if (!v15)
              {
                if (!is_prime_bpsw)
                {
                  goto LABEL_80;
                }

                if (v51[0])
                {
                  goto LABEL_84;
                }

                goto LABEL_8;
              }

              if (!is_prime_bpsw)
              {
                goto LABEL_80;
              }

              if (!v51[0])
              {
                goto LABEL_8;
              }

              if (BN_rshift1(v22, v17) && bn_is_prime_bpsw(v51, v22, v20, 1))
              {
                if (!v51[0])
                {
                  goto LABEL_8;
                }

                if (BN_GENCB_call(v12, 2, b))
                {
LABEL_84:
                  v18 = 1;
                  goto LABEL_81;
                }
              }

              goto LABEL_80;
            }
          }
        }

        goto LABEL_80;
      }

      BN_CTX_start(v20);
      v24 = BN_CTX_get(v20);
      v25 = v24;
      if (v15)
      {
        if (!v24)
        {
          goto LABEL_79;
        }

        v26 = BN_CTX_get(v20);
        if (!v26)
        {
          goto LABEL_79;
        }

        v27 = v26;
        v28 = BN_CTX_get(v20);
        if (!v28)
        {
          goto LABEL_79;
        }

        v29 = v28;
        if (!BN_rshift1(v28, v14) || !BN_rand(v27, v16 - 1, 0, 1) || !BN_mod_ct(v25, v27, v29, v20) || !BN_sub(v27, v27, v25))
        {
          goto LABEL_79;
        }

        if (a)
        {
          if (!BN_rshift1(v25, a) || !BN_add(v27, v27, v25))
          {
            goto LABEL_79;
          }

LABEL_43:
          if (BN_lshift1(v17, v27) && BN_add_word(v17, 1uLL))
          {
            v35 = 1;
            while (1)
            {
              v36 = primes[v35];
              v37 = BN_mod_word(v17, v36);
              v38 = BN_mod_word(v27, v36);
              if (v37 == -1 || v38 == -1)
              {
                break;
              }

              if (v37)
              {
                v40 = v38 == 0;
              }

              else
              {
                v40 = 1;
              }

              if (v40)
              {
                if (!BN_add(v17, v17, v14))
                {
                  goto LABEL_79;
                }

                v35 = 1;
                if (!BN_add(v27, v27, v29))
                {
                  goto LABEL_79;
                }
              }

              else if (++v35 == 2048)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_79;
        }

        if (BN_add_word(v27, 1uLL))
        {
          goto LABEL_43;
        }

LABEL_79:
        BN_CTX_end(v20);
        goto LABEL_80;
      }

      if (!v24 || !BN_rand(v17, v16, 0, 1) || !BN_mod_ct(v25, v17, v14, v20) || !BN_sub(v17, v17, v25))
      {
        goto LABEL_79;
      }

      if (a)
      {
        if (!BN_add(v17, v17, a))
        {
          goto LABEL_79;
        }
      }

      else if (!BN_add_word(v17, 1uLL))
      {
        goto LABEL_79;
      }

      v41 = 1;
      while (1)
      {
        v42 = BN_mod_word(v17, primes[v41]);
        if (v42 == -1)
        {
          goto LABEL_79;
        }

        if (v42 > 1)
        {
          if (++v41 == 2048)
          {
LABEL_67:
            BN_CTX_end(v20);
            v12 = v48;
            v15 = v47;
            v22 = v46;
            v33 = b;
            goto LABEL_68;
          }
        }

        else
        {
          v41 = 1;
          if (!BN_add(v17, v17, v14))
          {
            goto LABEL_79;
          }
        }
      }
    }
  }

LABEL_80:
  v18 = 0;
LABEL_81:
  BN_CTX_end(v20);
  BN_CTX_free(v20);
LABEL_82:
  v44 = *MEMORY[0x277D85DE8];
  return v18;
}

int BN_is_prime_fasttest_ex(const BIGNUM *p, int nchecks, BN_CTX *ctx, int do_trial_division, BN_GENCB *cb)
{
  if (nchecks < 0)
  {
    return -1;
  }

  if (!nchecks)
  {
    if (BN_num_bits(p) <= 3746)
    {
      if (BN_num_bits(p) <= 1344)
      {
        if (BN_num_bits(p) <= 475)
        {
          if (BN_num_bits(p) <= 399)
          {
            if (BN_num_bits(p) <= 346)
            {
              if (BN_num_bits(p) <= 307)
              {
                if (BN_num_bits(p) <= 54)
                {
                  nchecks = 34;
                }

                else
                {
                  nchecks = 27;
                }
              }

              else
              {
                nchecks = 8;
              }
            }

            else
            {
              nchecks = 7;
            }
          }

          else
          {
            nchecks = 6;
          }
        }

        else
        {
          nchecks = 5;
        }
      }

      else
      {
        nchecks = 4;
      }
    }

    else
    {
      nchecks = 3;
    }
  }

  v8 = 0;
  if (bn_is_prime_bpsw(&v8, p, ctx, nchecks))
  {
    return v8;
  }

  else
  {
    return -1;
  }
}

int OBJ_NAME_init(void)
{
  if (names_lh)
  {
    return 1;
  }

  names_lh = lh_new(obj_name_LHASH_HASH, obj_name_LHASH_COMP);
  return names_lh != 0;
}

unint64_t obj_name_LHASH_HASH(int *a1)
{
  if (name_funcs_stack && sk_num(name_funcs_stack) > *a1)
  {
    v2 = sk_value(name_funcs_stack, *a1);
    v3 = (*v2)(*(a1 + 1));
  }

  else
  {
    v3 = lh_strhash(*(a1 + 1));
  }

  return v3 ^ *a1;
}

uint64_t obj_name_LHASH_COMP(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  result = (*a1 - *a2);
  if (v3 == *a2)
  {
    if (name_funcs_stack && sk_num(name_funcs_stack) > *a1)
    {
      v6 = *(sk_value(name_funcs_stack, *a1) + 1);
      v7 = *(a1 + 8);
      v8 = *(a2 + 8);

      return v6(v7, v8);
    }

    else
    {
      v9 = *(a1 + 8);
      v10 = *(a2 + 8);

      return strcmp(v9, v10);
    }
  }

  return result;
}

int OBJ_NAME_new_index(unint64_t (__cdecl *hash_func)(const char *), int (__cdecl *cmp_func)(const char *, const char *), void (__cdecl *free_func)(const char *, int, const char *))
{
  v6 = name_funcs_stack;
  if (!name_funcs_stack)
  {
    v6 = sk_new_null();
    name_funcs_stack = v6;
    if (!v6)
    {
      return 0;
    }
  }

  v7 = names_type_num++;
  v8 = sk_num(v6);
  if (v8 < names_type_num)
  {
    v9 = v8;
    while (1)
    {
      v10 = malloc_type_malloc(0x18uLL, 0x80040D6874129uLL);
      if (!v10)
      {
        v13 = 70;
        goto LABEL_16;
      }

      v11 = v10;
      *v10 = lh_strhash;
      v10[1] = MEMORY[0x277D85E98];
      v10[2] = 0;
      if (!sk_push(name_funcs_stack, v10))
      {
        break;
      }

      if (++v9 >= names_type_num)
      {
        goto LABEL_8;
      }
    }

    free(v11);
    v13 = 78;
LABEL_16:
    ERR_put_error(8, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/o_names.c", v13);
    return 0;
  }

LABEL_8:
  v12 = sk_value(name_funcs_stack, v7);
  if (hash_func)
  {
    *v12 = hash_func;
  }

  if (cmp_func)
  {
    *(v12 + 1) = cmp_func;
  }

  if (free_func)
  {
    *(v12 + 2) = free_func;
  }

  return v7;
}

const char *__cdecl OBJ_NAME_get(const char *name, int type)
{
  if (name)
  {
    v3 = name;
    name = names_lh;
    if (names_lh || (name = lh_new(obj_name_LHASH_HASH, obj_name_LHASH_COMP), (names_lh = name) != 0))
    {
      v6 = v3;
      v7 = 0;
      data = type & 0xFFFF7FFF;
      name = lh_retrieve(name, &data);
      if (name)
      {
        v4 = 11;
        while (1)
        {
          if ((type & 0x8000) != 0 || !*(name + 1))
          {
            return *(name + 2);
          }

          if (!--v4)
          {
            break;
          }

          v6 = *(name + 2);
          name = lh_retrieve(names_lh, &data);
          if (!name)
          {
            return name;
          }
        }

        return 0;
      }
    }
  }

  return name;
}

int OBJ_NAME_add(const char *name, int type, const char *data)
{
  if (!names_lh)
  {
    names_lh = lh_new(obj_name_LHASH_HASH, obj_name_LHASH_COMP);
    if (!names_lh)
    {
      return 0;
    }
  }

  v6 = malloc_type_malloc(0x18uLL, 0x105004015D6E50FuLL);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  *v6 = vand_s8(vdup_n_s32(type), 0x8000FFFF7FFFLL);
  v6[1] = name;
  v6[2] = data;
  v8 = lh_insert(names_lh, v6);
  if (v8)
  {
    v9 = v8;
    if (name_funcs_stack && sk_num(name_funcs_stack) > *v8)
    {
      v10 = sk_value(name_funcs_stack, *v9);
      (*(v10 + 2))(*(v9 + 1), *v9, *(v9 + 2));
    }

    v11 = 1;
  }

  else
  {
    if (!*(names_lh + 168))
    {
      return 1;
    }

    v11 = 0;
    v9 = v7;
  }

  free(v9);
  return v11;
}

int OBJ_NAME_remove(const char *name, int type)
{
  v2 = name;
  LODWORD(name) = names_lh;
  if (names_lh)
  {
    data[1] = v2;
    data[2] = 0;
    data[0] = type & 0xFFFF7FFF;
    name = lh_delete(names_lh, data);
    if (name)
    {
      v3 = name;
      if (name_funcs_stack && sk_num(name_funcs_stack) > *name)
      {
        v4 = sk_value(name_funcs_stack, *v3);
        (*(v4 + 2))(*(v3 + 1), *v3, *(v3 + 2));
      }

      free(v3);
      LODWORD(name) = 1;
    }
  }

  return name;
}

void OBJ_NAME_do_all(int type, void (__cdecl *fn)(const OBJ_NAME *, void *), void *arg)
{
  arga[1] = fn;
  arga[0] = type;
  arga[2] = arg;
  lh_doall_arg(names_lh, do_all_fn_LHASH_DOALL_ARG, arga);
}

_DWORD *do_all_fn_LHASH_DOALL_ARG(_DWORD *result, uint64_t a2)
{
  if (*result == *a2)
  {
    v3 = *(a2 + 8);
    v2 = *(a2 + 16);
    return v3();
  }

  return result;
}

void OBJ_NAME_do_all_sorted(int type, void (__cdecl *fn)(const OBJ_NAME *, void *), void *arg)
{
  v8 = type;
  v6 = lh_num_items(names_lh);
  *&__nel[1] = reallocarray(0, v6, 8uLL);
  __nel[0] = 0;
  if (*&__nel[1])
  {
    arga[0] = type;
    arga[1] = do_all_sorted_fn;
    arga[2] = &v8;
    lh_doall_arg(names_lh, do_all_fn_LHASH_DOALL_ARG, arga);
    qsort(*&__nel[1], __nel[0], 8uLL, do_all_sorted_cmp);
    if (__nel[0] >= 1)
    {
      v7 = 0;
      do
      {
        (fn)(*(*&__nel[1] + 8 * v7++), arg);
      }

      while (v7 < __nel[0]);
    }

    free(*&__nel[1]);
  }
}

_DWORD *do_all_sorted_fn(_DWORD *result, uint64_t a2)
{
  if (*result == *a2)
  {
    v2 = *(a2 + 8);
    v3 = *(a2 + 4);
    *(a2 + 4) = v3 + 1;
    *(v2 + 8 * v3) = result;
  }

  return result;
}

void OBJ_NAME_cleanup(int type)
{
  v2 = names_lh;
  if (names_lh)
  {
    free_type = type;
    v3 = *(names_lh + 48);
    *(names_lh + 48) = 0;
    lh_doall(v2, names_lh_free_LHASH_DOALL);
    if (type < 0)
    {
      lh_free(names_lh);
      sk_pop_free(name_funcs_stack, name_funcs_free);
      names_lh = 0;
      name_funcs_stack = 0;
    }

    else
    {
      *(names_lh + 48) = v3;
    }
  }
}

uint64_t names_lh_free_LHASH_DOALL(uint64_t result)
{
  if (result)
  {
    v1 = *result;
    if (free_type < 0 || free_type == v1)
    {
      return OBJ_NAME_remove(*(result + 8), v1);
    }
  }

  return result;
}

const char *__cdecl X509_verify_cert_error_string(uint64_t n)
{
  if (n > 0x45)
  {
    return "Unknown certificate verification error";
  }

  else
  {
    return off_278C13CC8[n & 0x7F];
  }
}

uint64_t aes_init_key(uint64_t a1, unsigned __int8 *userKey, uint64_t a3, int a4)
{
  v5 = *(a1 + 120);
  v6 = *(*a1 + 16) & 0xF0007;
  v7 = 8 * *(a1 + 104);
  if (v6 == 2)
  {
    v8 = AES_cbc_encrypt;
  }

  else
  {
    v8 = 0;
  }

  if (a4 || (v6 - 3) < 0xFFFFFFFE)
  {
    v9 = AES_set_encrypt_key(userKey, v7, v5);
    v10 = AES_encrypt;
  }

  else
  {
    v9 = AES_set_decrypt_key(userKey, v7, v5);
    v10 = AES_decrypt;
  }

  *(v5 + 248) = v10;
  *(v5 + 256) = v8;
  if ((v9 & 0x80000000) == 0)
  {
    return 1;
  }

  ERR_put_error(6, 4095, 143, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_aes.c", 422);
  return 0;
}

uint64_t aes_cbc_cipher(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  v5 = *(a1 + 120);
  v6 = *(v5 + 256);
  if (v6)
  {
    v7 = *(a1 + 16);
    v6(a3, a2, a4);
  }

  else
  {
    v8 = *(v5 + 248);
    v9 = (a1 + 40);
    if (*(a1 + 16))
    {
      CRYPTO_cbc128_encrypt(a3, a2, a4, v5, v9, v8);
    }

    else
    {
      CRYPTO_cbc128_decrypt(a3, a2, a4, v5, v9, v8);
    }
  }

  return 1;
}

uint64_t aes_ecb_cipher(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(*a1 + 4);
  v5 = a4 - v4;
  if (a4 >= v4)
  {
    v8 = 0;
    v9 = a1[15];
    do
    {
      (*(v9 + 248))(a3 + v8, a2 + v8, v9);
      v8 += v4;
    }

    while (v8 <= v5);
  }

  return 1;
}

uint64_t aes_cfb1_cipher(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v8 = *(a1 + 120);
  if ((*(a1 + 113) & 0x20) != 0)
  {
    v10 = *(a1 + 16);
    v11 = *(v8 + 248);
    v12 = a1 + 40;
    v13 = a1 + 88;
    v14 = a3;
    v9 = a4;
    goto LABEL_7;
  }

  if (a4 >> 60)
  {
    do
    {
      CRYPTO_cfb128_1_encrypt(v5, v6, 0x8000000000000000, v8, a1 + 40, a1 + 88, *(a1 + 16), *(v8 + 248));
      v4 -= 0x1000000000000000;
      v5 += 0x1000000000000000;
      v6 += 0x1000000000000000;
    }

    while (v4 >> 60);
  }

  if (v4)
  {
    v9 = 8 * v4;
    v10 = *(a1 + 16);
    v11 = *(v8 + 248);
    v12 = a1 + 40;
    v13 = a1 + 88;
    v14 = v5;
    a2 = v6;
LABEL_7:
    CRYPTO_cfb128_1_encrypt(v14, a2, v9, v8, v12, v13, v10, v11);
  }

  return 1;
}

uint64_t aes_ctr_cipher(uint64_t a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  v9 = *(a1 + 88);
  v6 = *(a1 + 120);
  v7 = *(v6 + 256);
  if (v7)
  {
    CRYPTO_ctr128_encrypt_ctr32(a3, a2, a4, v6, a1 + 40, (a1 + 56), &v9, v7);
  }

  else
  {
    CRYPTO_ctr128_encrypt(a3, a2, a4, v6, a1 + 40, a1 + 56, &v9, *(v6 + 248));
  }

  *(a1 + 88) = v9;
  return 1;
}

uint64_t aes_gcm_init_key(uint64_t a1, unsigned __int8 *userKey, void *__src)
{
  if (userKey | __src)
  {
    v3 = __src;
    v4 = *(a1 + 120);
    if (userKey)
    {
      AES_set_encrypt_key(userKey, 8 * *(a1 + 104), v4);
      CRYPTO_gcm128_init(v4 + 256, v4, AES_encrypt);
      *(v4 + 672) = 0;
      if (v3 || *(v4 + 248) && (v3 = *(v4 + 648)) != 0)
      {
        CRYPTO_gcm128_setiv(v4 + 256, v3, *(v4 + 656));
        *(v4 + 248) = 1;
      }

      *(v4 + 244) = 1;
    }

    else
    {
      if (*(v4 + 244))
      {
        CRYPTO_gcm128_setiv(v4 + 256, __src, *(v4 + 656));
      }

      else
      {
        memcpy(*(v4 + 648), __src, *(v4 + 656));
      }

      *(v4 + 248) = 1;
      *(v4 + 664) = 0;
    }
  }

  return 1;
}

unint64_t aes_gcm_cipher(EVP_CIPHER_CTX *ctx, char *ptr, char *a3, unint64_t a4)
{
  cipher_data = ctx->cipher_data;
  if (!cipher_data[61])
  {
    return 0xFFFFFFFFLL;
  }

  if ((cipher_data[167] & 0x80000000) != 0)
  {
    if (!cipher_data[62])
    {
      return 0xFFFFFFFFLL;
    }

    if (!a3)
    {
      if (ctx->encrypt)
      {
        CRYPTO_gcm128_tag((cipher_data + 64), ctx->buf, 0x10uLL);
        result = 0;
        cipher_data[165] = 16;
      }

      else
      {
        v20 = cipher_data[165];
        if ((v20 & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        result = CRYPTO_gcm128_finish((cipher_data + 64), ctx->buf, v20);
        if (result)
        {
          return 0xFFFFFFFFLL;
        }
      }

      cipher_data[62] = 0;
      return result;
    }

    if (ptr)
    {
      encrypt = ctx->encrypt;
      v13 = *(cipher_data + 84);
      v14 = (cipher_data + 64);
      if (encrypt)
      {
        if (v13)
        {
          if (!CRYPTO_gcm128_encrypt_ctr32(v14, a3, ptr, a4, v13))
          {
            return a4;
          }

          return 0xFFFFFFFFLL;
        }

        if (CRYPTO_gcm128_encrypt(v14, a3, ptr, a4))
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (v13)
        {
          if (!CRYPTO_gcm128_decrypt_ctr32(v14, a3, ptr, a4, v13))
          {
            return a4;
          }

          return 0xFFFFFFFFLL;
        }

        if (CRYPTO_gcm128_decrypt(v14, a3, ptr, a4))
        {
          return 0xFFFFFFFFLL;
        }
      }

      return a4;
    }

    if (!CRYPTO_gcm128_aad((cipher_data + 64), a3, a4))
    {
      return a4;
    }

    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (ptr == a3)
  {
    v10 = a4 - 24;
    if (a4 >= 0x18)
    {
      if (ctx->encrypt)
      {
        v11 = 19;
      }

      else
      {
        v11 = 24;
      }

      if (EVP_CIPHER_CTX_ctrl(ctx, v11, 8, ptr) < 1 || CRYPTO_gcm128_aad((cipher_data + 64), ctx->buf, cipher_data[167]))
      {
        goto LABEL_10;
      }

      v15 = a3 + 8;
      v16 = ptr + 8;
      v17 = *(cipher_data + 84);
      v18 = (cipher_data + 64);
      if (ctx->encrypt)
      {
        v19 = a4 - 24;
        if (v17)
        {
          if (!CRYPTO_gcm128_encrypt_ctr32(v18, v15, v16, v19, v17))
          {
            goto LABEL_41;
          }
        }

        else if (!CRYPTO_gcm128_encrypt(v18, v15, v16, v19))
        {
LABEL_41:
          CRYPTO_gcm128_tag((cipher_data + 64), &v16[v10], 0x10uLL);
          result = a4;
          goto LABEL_11;
        }

LABEL_10:
        result = 0xFFFFFFFFLL;
LABEL_11:
        cipher_data[62] = 0;
        cipher_data[167] = -1;
        return result;
      }

      v21 = a4 - 24;
      if (v17)
      {
        if (CRYPTO_gcm128_decrypt_ctr32(v18, v15, v16, v21, v17))
        {
          goto LABEL_10;
        }
      }

      else if (CRYPTO_gcm128_decrypt(v18, v15, v16, v21))
      {
        goto LABEL_10;
      }

      CRYPTO_gcm128_tag((cipher_data + 64), ctx->buf, 0x10uLL);
      if (*ctx->buf != *&v15[v10] || *&ctx->buf[8] != *&v15[v10 + 8])
      {
        explicit_bzero(v16, a4 - 24);
      }

      result = a4 - 24;
      goto LABEL_11;
    }
  }

  return result;
}

void aes_gcm_cleanup(uint64_t a1)
{
  v2 = *(a1 + 120);
  v3 = v2[81];
  if (v3 != (a1 + 40))
  {
    free(v3);
  }

  explicit_bzero(v2, 0x2A8uLL);
}

uint64_t aes_gcm_ctrl(uint64_t a1, int a2, size_t __n, char *__src)
{
  v5 = __n;
  v7 = *(a1 + 120);
  result = 0xFFFFFFFFLL;
  if (a2 > 16)
  {
    if (a2 > 18)
    {
      if (a2 == 19)
      {
        if (*(v7 + 664) && *(v7 + 244))
        {
          CRYPTO_gcm128_setiv(v7 + 256, *(v7 + 648), *(v7 + 656));
          v14 = *(v7 + 656);
          if (v14 >= v5)
          {
            v15 = v5;
          }

          else
          {
            v15 = *(v7 + 656);
          }

          if (v5 < 1)
          {
            v15 = *(v7 + 656);
          }

          memcpy(__src, (*(v7 + 648) + v14 - v15), v15);
          v16 = 0;
          v17 = *(v7 + 656) + *(v7 + 648) - 1;
          do
          {
            v18 = *(v17 + v16) + 1;
            *(v17 + v16) = v18;
            if (v16 == -7)
            {
              break;
            }

            --v16;
          }

          while (!v18);
          goto LABEL_51;
        }

        return 0;
      }

      if (a2 != 22)
      {
        if (a2 != 24)
        {
          return result;
        }

        if (*(v7 + 664) && *(v7 + 244) && !*(a1 + 16))
        {
          memcpy((*(v7 + 648) + *(v7 + 656) - __n), __src, __n);
          CRYPTO_gcm128_setiv(v7 + 256, *(v7 + 648), *(v7 + 656));
LABEL_51:
          result = 1;
          *(v7 + 248) = 1;
          return result;
        }

        return 0;
      }

      if (__n == 13)
      {
        v19 = *__src;
        *(a1 + 61) = *(__src + 5);
        *(a1 + 56) = v19;
        *(v7 + 668) = 13;
        v20 = __rev16(*(a1 + 67));
        v21 = v20 - 8;
        if (v20 >= 8)
        {
          if (*(a1 + 16))
          {
LABEL_60:
            *(a1 + 67) = bswap32(v21) >> 16;
            return 16;
          }

          if (v21 >= 0x10)
          {
            v21 = v20 - 24;
            goto LABEL_60;
          }
        }
      }

      return 0;
    }

    if (a2 != 17)
    {
      if (__n == -1)
      {
        memcpy(*(v7 + 648), __src, *(v7 + 656));
      }

      else
      {
        if (__n < 4 || *(v7 + 656) - __n < 8)
        {
          return 0;
        }

        memcpy(*(v7 + 648), __src, __n);
        if (*(a1 + 16))
        {
          arc4random_buf((*(v7 + 648) + v5), *(v7 + 656) - v5);
        }
      }

      result = 1;
      *(v7 + 664) = 1;
      return result;
    }

    if ((__n - 17) < 0xFFFFFFF0 || *(a1 + 16))
    {
      return 0;
    }

    memcpy((a1 + 56), __src, __n);
    *(v7 + 660) = v5;
    return 1;
  }

  if (a2 <= 8)
  {
    if (!a2)
    {
      *(v7 + 244) = 0;
      *(v7 + 248) = 0;
      v12 = *(*a1 + 12);
      if (!v12)
      {
        ERR_put_error(6, 4095, 194, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_aes.c", 1298);
        return 0;
      }

      *(v7 + 656) = v12;
      *(v7 + 648) = a1 + 40;
      *(v7 + 660) = -1;
      *(v7 + 664) = 0xFFFFFFFF00000000;
      return 1;
    }

    if (a2 != 8)
    {
      return result;
    }

    v9 = *(__src + 15);
    v10 = *(v7 + 640);
    if (v10)
    {
      if (v10 != v7)
      {
        return 0;
      }

      *(v9 + 640) = v9;
    }

    if (*(v7 + 648) == a1 + 40)
    {
      *(v9 + 648) = __src + 40;
      return 1;
    }

    result = malloc_type_calloc(1uLL, *(v7 + 656), 0xC55E7E7uLL);
    *(v9 + 648) = result;
    if (!result)
    {
      return result;
    }

    v11 = *(v7 + 648);
    __n = *(v7 + 656);
    goto LABEL_25;
  }

  if (a2 != 9)
  {
    if (a2 != 16)
    {
      return result;
    }

    if ((__n - 17) < 0xFFFFFFF0 || !*(a1 + 16) || (*(v7 + 660) & 0x80000000) != 0)
    {
      return 0;
    }

    __n = __n;
    v11 = (a1 + 56);
    result = __src;
LABEL_25:
    memcpy(result, v11, __n);
    return 1;
  }

  if (__n < 1)
  {
    return 0;
  }

  if (__n < 0x11 || *(v7 + 656) >= __n)
  {
    goto LABEL_40;
  }

  v13 = *(v7 + 648);
  if (v13 != (a1 + 40))
  {
    free(v13);
  }

  result = malloc_type_malloc(v5, 0xDCBD4349uLL);
  *(v7 + 648) = result;
  if (result)
  {
LABEL_40:
    *(v7 + 656) = v5;
    return 1;
  }

  return result;
}

uint64_t aes_xts_init_key(uint64_t a1, unsigned __int8 *userKey, unint64_t a3, int a4)
{
  if (userKey | a3)
  {
    v7 = *(a1 + 120);
    if (userKey)
    {
      *(v7 + 520) = 0;
      v8 = 4 * *(a1 + 104);
      if (a4)
      {
        AES_set_encrypt_key(userKey, v8, v7);
        v9 = AES_encrypt;
      }

      else
      {
        AES_set_decrypt_key(userKey, v8, v7);
        v9 = AES_decrypt;
      }

      *(v7 + 504) = v9;
      AES_set_encrypt_key(&userKey[*(a1 + 104) / 2], 4 * *(a1 + 104), (v7 + 244));
      *(v7 + 512) = AES_encrypt;
      *(v7 + 488) = v7;
    }

    if (a3)
    {
      *(v7 + 496) = v7 + 244;
      *(a1 + 40) = *a3;
    }
  }

  return 1;
}

BOOL aes_xts_cipher(uint64_t a1, int8x16_t *a2, void *a3, unint64_t a4)
{
  v4 = *(a1 + 120);
  if (!v4[61] || !v4[62])
  {
    return 0;
  }

  result = 0;
  if (a2 && a3 && a4 >= 0x10)
  {
    v7 = v4[65];
    if (v7)
    {
      v7(a3, a2, a4);
      return 1;
    }

    return !CRYPTO_xts128_encrypt(v4 + 61, (a1 + 40), a3, a2, a4, *(a1 + 16));
  }

  return result;
}

uint64_t aes_xts_ctrl(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 120);
  if (a2 == 8)
  {
    v6 = *(a4 + 120);
    v7 = *(v4 + 488);
    if (v7)
    {
      if (v7 != v4)
      {
        return 0;
      }

      *(v6 + 488) = v6;
    }

    v8 = *(v4 + 496);
    if (!v8)
    {
      return 1;
    }

    if (v8 == v4 + 244)
    {
      *(v6 + 496) = v6 + 244;
      return 1;
    }

    return 0;
  }

  if (!a2)
  {
    *(v4 + 488) = 0;
    *(v4 + 496) = 0;
    return 1;
  }

  return 0xFFFFFFFFLL;
}

uint64_t aes_ccm_init_key(uint64_t a1, unsigned __int8 *userKey, unint64_t __src)
{
  if (userKey | __src)
  {
    v5 = *(a1 + 120);
    if (userKey)
    {
      AES_set_encrypt_key(userKey, 8 * *(a1 + 104), v5);
      CRYPTO_ccm128_init((v5 + 272), *(v5 + 264), *(v5 + 260), v5, AES_encrypt);
      *(v5 + 328) = 0;
      *(v5 + 244) = 1;
    }

    if (__src)
    {
      memcpy((a1 + 40), __src, 15 - *(v5 + 260));
      *(v5 + 248) = 1;
    }
  }

  return 1;
}

unint64_t aes_ccm_cipher(uint64_t a1, uint64_t *a2, char *a3, unint64_t a4)
{
  v4 = a4;
  v17 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 120);
  if (!v8[15].i32[2] && !v8[15].i32[1])
  {
    goto LABEL_25;
  }

  v9 = *(a1 + 16);
  if (!v9 && !v8[15].i32[3])
  {
    goto LABEL_25;
  }

  if (a2)
  {
    if (a3)
    {
      if (v8[16].i32[0])
      {
        goto LABEL_8;
      }

      if (!CRYPTO_ccm128_setiv(v8[17].i8, (a1 + 40), 15 - v8[16].i32[1], a4))
      {
        v8[16].i32[0] = 1;
        v9 = *(a1 + 16);
LABEL_8:
        v10 = v8[20].i64[1];
        v11 = v8 + 17;
        if (v9)
        {
          if (v10)
          {
            CRYPTO_ccm128_encrypt_ccm64(v11, a3, a2, v4, v10);
            if (!v12)
            {
              goto LABEL_27;
            }
          }

          else
          {
            CRYPTO_ccm128_encrypt(v11, a3, a2, v4);
            if (!v13)
            {
LABEL_27:
              v8[15].i32[3] = 1;
              goto LABEL_26;
            }
          }

          goto LABEL_25;
        }

        if (v10)
        {
          if (CRYPTO_ccm128_decrypt_ccm64(v11, a3, a2, v4, v10))
          {
            goto LABEL_31;
          }
        }

        else if (CRYPTO_ccm128_decrypt(v11, a3, a2, v4))
        {
          goto LABEL_31;
        }

        if (CRYPTO_ccm128_tag(&v8[17], __s1, v8[16].i32[2]) && !memcmp(__s1, (a1 + 56), v8[16].i32[2]) && v4 != -1)
        {
          v8[15].i64[1] = 0;
          v8[16].i32[0] = 0;
          goto LABEL_26;
        }

LABEL_31:
        explicit_bzero(a2, v4);
      }

LABEL_25:
      v4 = 0xFFFFFFFFLL;
      goto LABEL_26;
    }

    v4 = 0;
  }

  else if (a3)
  {
    if (a4 && !v8[16].i32[0])
    {
      goto LABEL_25;
    }

    CRYPTO_ccm128_aad(v8[17].i64, a3, a4);
  }

  else
  {
    if (CRYPTO_ccm128_setiv(v8[17].i8, (a1 + 40), 15 - v8[16].i32[1], a4))
    {
      goto LABEL_25;
    }

    v8[16].i32[0] = 1;
  }

LABEL_26:
  v14 = *MEMORY[0x277D85DE8];
  return v4;
}

size_t aes_ccm_ctrl(uint64_t a1, int a2, size_t __n, void *__dst)
{
  v4 = __n;
  v6 = *(a1 + 120);
  result = 0xFFFFFFFFLL;
  if (a2 <= 15)
  {
    if (!a2)
    {
      *(v6 + 260) = 0xC00000008;
      *(v6 + 256) = 0;
      *(v6 + 248) = 0;
      result = 1;
      *(v6 + 244) = 0;
      return result;
    }

    if (a2 != 8)
    {
      if (a2 != 9)
      {
        return result;
      }

      v4 = 15 - __n;
      goto LABEL_9;
    }

    v8 = *(v6 + 320);
    if (!v8)
    {
      return 1;
    }

    if (v8 == v6)
    {
      *(__dst[15] + 320) = __dst[15];
      return 1;
    }

    return 0;
  }

  switch(a2)
  {
    case 16:
      if (!*(a1 + 16) || !*(v6 + 252))
      {
        return 0;
      }

      result = CRYPTO_ccm128_tag((v6 + 272), __dst, __n);
      if (result)
      {
        *(v6 + 248) = 0;
        result = 1;
        *(v6 + 256) = 0;
      }

      break;
    case 17:
      result = 0;
      if ((__n & 1) == 0 && (__n - 17) >= 0xFFFFFFF3)
      {
        if ((__dst != 0) != (*(a1 + 16) != 0))
        {
          if (__dst)
          {
            *(v6 + 252) = 1;
            memcpy((a1 + 56), __dst, __n);
          }

          *(v6 + 264) = v4;
          return 1;
        }

        return 0;
      }

      break;
    case 20:
LABEL_9:
      if ((v4 - 9) >= 0xFFFFFFF9)
      {
        *(v6 + 260) = v4;
        return 1;
      }

      return 0;
    default:
      return result;
  }

  return result;
}

uint64_t aead_aes_gcm_init(uint64_t a1, const unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a3;
  if ((a3 & 0x1FFFFFFFFFFFFFFFLL) != 0x10 && (a3 & 0x1FFFFFFFFFFFFFFFLL) != 0x20)
  {
    v8 = 137;
    v9 = 2249;
    goto LABEL_11;
  }

  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = 16;
  }

  if (v7 >= 0x11)
  {
    v8 = 171;
    v9 = 2257;
LABEL_11:
    ERR_put_error(6, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_aes.c", v9);
    return 0;
  }

  result = malloc_type_calloc(1uLL, 0x290uLL, 0x1080040FF578D95uLL);
  if (result)
  {
    v11 = result;
    AES_set_encrypt_key(a2, 8 * v4, result);
    CRYPTO_gcm128_init(v11 + 248, v11, AES_encrypt);
    *(v11 + 640) = 0;
    *(v11 + 648) = v7;
    result = 1;
    *(a1 + 8) = v11;
  }

  return result;
}

uint64_t aead_aes_gcm_seal(uint64_t a1, _BYTE *a2, void *a3, unint64_t a4, uint64_t *a5, unint64_t a6, char *a7, unint64_t a8, char *a9, uint64_t a10)
{
  v10 = *(a1 + 8);
  if (*(v10 + 648) + a8 > a4)
  {
    v11 = 155;
    v12 = 2301;
LABEL_10:
    ERR_put_error(6, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_aes.c", v12);
    return 0;
  }

  memcpy(__dst, (v10 + 248), sizeof(__dst));
  if (!a6)
  {
    v11 = 194;
    v12 = 2308;
    goto LABEL_10;
  }

  CRYPTO_gcm128_setiv(__dst, a5, a6);
  if (a10 && CRYPTO_gcm128_aad(__dst, a9, a10))
  {
    return 0;
  }

  v19 = *(v10 + 640);
  if (v19)
  {
    if (CRYPTO_gcm128_encrypt_ctr32(__dst, a7, a2, a8, v19))
    {
      return 0;
    }
  }

  else if (CRYPTO_gcm128_encrypt(__dst, a7, a2, a8))
  {
    return 0;
  }

  CRYPTO_gcm128_tag(__dst, &a2[a8], *(v10 + 648));
  *a3 = *(v10 + 648) + a8;
  return 1;
}

uint64_t aead_aes_gcm_open(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4, uint64_t *a5, unint64_t a6, char *a7, unint64_t a8, char *a9, uint64_t a10)
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8);
  v11 = *(v10 + 648);
  v12 = a8 - v11;
  if (a8 < v11)
  {
    v13 = 100;
    v14 = 2345;
LABEL_11:
    ERR_put_error(6, 4095, v13, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/e_aes.c", v14);
    goto LABEL_12;
  }

  if (v12 > a4)
  {
    v13 = 155;
    v14 = 2352;
    goto LABEL_11;
  }

  memcpy(__dst, (v10 + 248), sizeof(__dst));
  if (!a6)
  {
    v13 = 194;
    v14 = 2359;
    goto LABEL_11;
  }

  CRYPTO_gcm128_setiv(__dst, a5, a6);
  if (!CRYPTO_gcm128_aad(__dst, a9, a10))
  {
    v21 = *(v10 + 640);
    v22 = a8 - *(v10 + 648);
    if (!v21)
    {
      if (CRYPTO_gcm128_decrypt(__dst, a7, a2, v22))
      {
        goto LABEL_12;
      }

      goto LABEL_15;
    }

    if (!CRYPTO_gcm128_decrypt_ctr32(__dst, a7, a2, v22, v21))
    {
LABEL_15:
      CRYPTO_gcm128_tag(__dst, v26, *(v10 + 648));
      if (!timingsafe_memcmp(v26, &a7[v12], *(v10 + 648)))
      {
        *a3 = v12;
        result = 1;
        goto LABEL_13;
      }

      v13 = 100;
      v14 = 2379;
      goto LABEL_11;
    }
  }

LABEL_12:
  result = 0;
LABEL_13:
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t aes_wrap_init_key(const EVP_CIPHER_CTX *a1, unsigned __int8 *userKey, unint64_t a3)
{
  if (userKey | a3)
  {
    cipher_data = a1->cipher_data;
    if (userKey)
    {
      encrypt = a1->encrypt;
      v7 = (8 * a1->key_len);
      v9 = 8 * a1->key_len;
      if (encrypt)
      {
        AES_set_encrypt_key(userKey, v9, cipher_data);
        if (!a3)
        {
          goto LABEL_10;
        }
      }

      else
      {
        AES_set_decrypt_key(userKey, v9, cipher_data);
        if (!a3)
        {
LABEL_10:
          iv = 0;
          goto LABEL_11;
        }
      }
    }

    else if (!a3)
    {
      return 1;
    }

    iv = a1->iv;
    v11 = EVP_CIPHER_CTX_iv_length(a1);
    memcpy(a1->iv, a3, v11);
LABEL_11:
    *&cipher_data[1].rd_key[1] = iv;
  }

  return 1;
}

uint64_t aes_wrap_cipher(uint64_t a1, unsigned __int8 *out, unsigned __int8 *in, unint64_t inlen)
{
  if (!in)
  {
    return 0;
  }

  if ((inlen & 7) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(a1 + 120);
  v9 = *(a1 + 16);
  if (inlen <= 7)
  {
    if (v9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v13 = inlen < 0x10 && v9 == 0;
  v10 = 0xFFFFFFFFLL;
  if (!(inlen >> 31) && !v13)
  {
    if (out)
    {
      v14 = *(v8 + 248);
      if (v9)
      {
        v15 = AES_wrap_key(v8, v14, out, in, inlen);
      }

      else
      {
        v15 = AES_unwrap_key(v8, v14, out, in, inlen);
      }

      if (v15)
      {
        return v15;
      }

      else
      {
        return 0xFFFFFFFFLL;
      }
    }

    else
    {
      LODWORD(v10) = inlen - 8;
      if (v9)
      {
        return (inlen + 8);
      }

      else
      {
        return v10;
      }
    }
  }

  return v10;
}

uint64_t aes_wrap_ctrl(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 8)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(*(a1 + 120) + 248);
  if (v4)
  {
    if (a1 + 40 != v4)
    {
      return 0;
    }

    *(*(a4 + 120) + 248) = a4 + 40;
  }

  return 1;
}

void ENGINE_load_builtin_engines(void)
{
  OPENSSL_init_crypto(0);

  pthread_once(&ENGINE_load_builtin_engines_once, ENGINE_load_builtin_engines_internal);
}

uint64_t ec_GFp_mont_group_init(uint64_t a1)
{
  result = ec_GFp_simple_group_init(a1);
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return result;
}

void ec_GFp_mont_group_finish(uint64_t a1)
{
  BN_MONT_CTX_free(*(a1 + 208));
  *(a1 + 208) = 0;
  BN_free(*(a1 + 216));
  *(a1 + 216) = 0;

  ec_GFp_simple_group_finish(a1);
}

BN_MONT_CTX *ec_GFp_mont_group_copy(uint64_t a1, uint64_t a2)
{
  BN_MONT_CTX_free(*(a1 + 208));
  *(a1 + 208) = 0;
  BN_free(*(a1 + 216));
  *(a1 + 216) = 0;
  result = ec_GFp_simple_group_copy(a1, a2);
  if (result)
  {
    if (*(a2 + 208))
    {
      result = BN_MONT_CTX_new();
      *(a1 + 208) = result;
      if (!result)
      {
        return result;
      }

      if (!BN_MONT_CTX_copy(result, *(a2 + 208)))
      {
        goto LABEL_8;
      }
    }

    v5 = *(a2 + 216);
    if (v5 && (v6 = BN_dup(v5), (*(a1 + 216) = v6) == 0))
    {
LABEL_8:
      result = *(a1 + 208);
      if (result)
      {
        BN_MONT_CTX_free(result);
        result = 0;
        *(a1 + 208) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ec_GFp_mont_group_set_curve(uint64_t a1, BIGNUM *a2, const BIGNUM *a3, const BIGNUM *a4, BN_CTX *a5)
{
  BN_MONT_CTX_free(*(a1 + 208));
  *(a1 + 208) = 0;
  BN_free(*(a1 + 216));
  *(a1 + 216) = 0;
  v10 = BN_MONT_CTX_new();
  v11 = v10;
  if (!v10)
  {
    goto LABEL_8;
  }

  if (!BN_MONT_CTX_set(v10, a2, a5))
  {
    ERR_put_error(16, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_mont.c", 140);
LABEL_8:
    v12 = 0;
LABEL_9:
    v14 = 0;
    goto LABEL_10;
  }

  v12 = BN_new();
  if (!v12)
  {
    goto LABEL_9;
  }

  v13 = BN_value_one();
  if (!BN_to_montgomery(v12, v13, v11, a5))
  {
    goto LABEL_9;
  }

  *(a1 + 208) = v11;
  *(a1 + 216) = v12;
  v14 = ec_GFp_simple_group_set_curve(a1, a2, a3, a4, a5);
  if (v14)
  {
    v11 = 0;
    v12 = 0;
  }

  else
  {
    BN_MONT_CTX_free(*(a1 + 208));
    *(a1 + 208) = 0;
    BN_free(*(a1 + 216));
    v11 = 0;
    v12 = 0;
    *(a1 + 216) = 0;
  }

LABEL_10:
  BN_MONT_CTX_free(v11);
  BN_free(v12);
  return v14;
}

uint64_t ec_GFp_mont_field_mul(uint64_t a1, BIGNUM *r, BIGNUM *a, BIGNUM *b, BN_CTX *a5)
{
  v6 = *(a1 + 208);
  if (v6)
  {

    return BN_mod_mul_montgomery(r, a, b, v6, a5);
  }

  else
  {
    ERR_put_error(16, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_mont.c", 170);
    return 0;
  }
}

uint64_t ec_GFp_mont_field_sqr(uint64_t a1, BIGNUM *r, BIGNUM *a, BN_CTX *ctx)
{
  v6 = *(a1 + 208);
  if (v6)
  {

    return BN_mod_mul_montgomery(r, a, a, v6, ctx);
  }

  else
  {
    ERR_put_error(16, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_mont.c", 181);
    return 0;
  }
}

uint64_t ec_GFp_mont_field_encode(uint64_t a1, BIGNUM *a2, const BIGNUM *a3, BN_CTX *a4)
{
  v5 = *(a1 + 208);
  if (v5)
  {

    return BN_to_montgomery(a2, a3, v5, a4);
  }

  else
  {
    ERR_put_error(16, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_mont.c", 192);
    return 0;
  }
}

uint64_t ec_GFp_mont_field_decode(uint64_t a1, BIGNUM *r, BIGNUM *a, BN_CTX *a4)
{
  v5 = *(a1 + 208);
  if (v5)
  {

    return BN_from_montgomery(r, a, v5, a4);
  }

  else
  {
    ERR_put_error(16, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_mont.c", 203);
    return 0;
  }
}

BOOL ec_GFp_mont_field_set_to_one(uint64_t a1, BIGNUM *a2)
{
  v2 = *(a1 + 216);
  if (v2)
  {
    return bn_copy(a2, v2);
  }

  ERR_put_error(16, 4095, 111, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ecp_mont.c", 213);
  return 0;
}

uint64_t asn1_item_flags_i2d(ASN1_VALUE *a1, unsigned __int8 **out, ASN1_ITEM *it, int aclass)
{
  pval = a1;
  if (!out || *out)
  {
    return ASN1_item_ex_i2d(&pval, out, it, -1, aclass);
  }

  v7 = ASN1_item_ex_i2d(&pval, 0, it, -1, aclass);
  if (v7 >= 1)
  {
    v9 = malloc_type_calloc(1uLL, v7, 0xB8289751uLL);
    if (v9)
    {
      v10 = v9;
      v11 = v9;
      if (ASN1_item_ex_i2d(&pval, &v11, it, -1, aclass) == v7)
      {
        *out = v10;
        return v7;
      }

      freezero(v10, v7);
      ERR_put_error(13, 4095, 136, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_enc.c", 124);
    }

    return 0xFFFFFFFFLL;
  }

  return v7;
}

int ASN1_item_ex_i2d(ASN1_VALUE **pval, unsigned __int8 **out, const ASN1_ITEM *it, int tag, int aclass)
{
  v5 = aclass;
  v6 = tag;
  v7 = it;
  v8 = out;
  v9 = pval;
  funcs = it->funcs;
  itype = it->itype;
  if (it->itype && !*pval)
  {
    return 0;
  }

  if (funcs)
  {
    v12 = *(funcs + 3);
  }

  else
  {
    v12 = 0;
  }

  if (it->itype <= 3u)
  {
    if (it->itype)
    {
      if (itype != 1)
      {
        v13 = 0;
        if (itype == 2)
        {
          if (tag != -1)
          {
            v14 = 182;
LABEL_31:
            ERR_put_error(13, 4095, 230, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_enc.c", v14);
            return 0;
          }

          if (v12 && !v12(6, pval, it, 0))
          {
            return 0;
          }

          choice_selector = asn1_get_choice_selector(v9, v7);
          if ((choice_selector & 0x80000000) != 0 || v7->tcount <= choice_selector)
          {
            if (v12)
            {
              v12(7, v9, v7, 0);
            }

            return 0;
          }

          v28 = &v7->templates[choice_selector];
          pval = asn1_get_field_ptr(v9, v28);
          out = v8;
          v16 = v28;
          tag = -1;
          goto LABEL_19;
        }

        return v13;
      }

      LOBYTE(v15) = 0;
LABEL_26:
      len = 0;
      v19 = asn1_enc_restore(&len, out, pval, it);
      if (v19 < 0)
      {
        return 0;
      }

      if (!v19)
      {
        len = 0;
        if (v6 == -1)
        {
          v5 &= 0xFFFFFF3F;
          v6 = 16;
        }

        if (!v12 || v12(6, v9, v7, 0))
        {
          if (v7->tcount <= 0)
          {
            v26 = len;
LABEL_56:
            v13 = ASN1_object_size(itype, v26, v6);
            if (!v8)
            {
              return v13;
            }

            ASN1_put_object(v8, itype, len, v6, v5);
            if (v7->tcount < 1)
            {
LABEL_61:
              if (v15)
              {
                ASN1_put_eoc(v8);
              }

              if (!v12 || v12(7, v9, v7, 0))
              {
                return v13;
              }
            }

            else
            {
              v29 = 0;
              templates = v7->templates;
              while (1)
              {
                v31 = asn1_do_adb(v9, templates, 1);
                if (!v31)
                {
                  break;
                }

                v32 = v31;
                field_ptr = asn1_get_field_ptr(v9, v31);
                asn1_template_ex_i2d(field_ptr, v8, v32, -1, v5);
                ++templates;
                if (v7->tcount <= ++v29)
                {
                  goto LABEL_61;
                }
              }
            }
          }

          else
          {
            taga = v6;
            v20 = 0;
            v21 = v7->templates;
            while (1)
            {
              v22 = asn1_do_adb(v9, v21, 1);
              if (!v22)
              {
                break;
              }

              v23 = v22;
              v24 = asn1_get_field_ptr(v9, v22);
              v25 = asn1_template_ex_i2d(v24, 0, v23, -1, v5);
              v26 = len + v25;
              len += v25;
              ++v21;
              if (v7->tcount <= ++v20)
              {
                v6 = taga;
                goto LABEL_56;
              }
            }
          }
        }

        return 0;
      }

      return len;
    }

    v16 = it->templates;
    if (v16)
    {
LABEL_19:

      return asn1_template_ex_i2d(pval, out, v16, tag, v5);
    }

    it = v7;
LABEL_50:

    return asn1_i2d_ex_primitive(pval, out, it, tag, aclass);
  }

  if (itype != 4)
  {
    if (itype != 5)
    {
      v13 = 0;
      if (itype != 6)
      {
        return v13;
      }

      v15 = (aclass & 0x800) >> 11;
      if ((aclass & 0x800) != 0)
      {
        itype = 2;
      }

      else
      {
        itype = 1;
      }

      goto LABEL_26;
    }

    if (tag != -1)
    {
      v14 = 170;
      goto LABEL_31;
    }

    tag = -1;
    goto LABEL_50;
  }

  v18 = *(funcs + 5);

  return v18();
}

uint64_t asn1_template_ex_i2d(STACK **pval, unsigned __int8 **out, int *a3, int tag, int a5)
{
  v5 = tag;
  v9 = *a3;
  if ((*a3 & 0x18) != 0)
  {
    if (tag != -1)
    {
      return 0xFFFFFFFFLL;
    }

    v5 = a3[2];
    v11 = *a3 & 0xC0;
  }

  else if (tag == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a5 & 0xC0;
  }

  v12 = a5 & 0xFFFFFF3F;
  v13 = a5 & v9 & 0x800;
  if ((a5 & v9 & 0x800) != 0)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  if ((v9 & 6) != 0)
  {
    v15 = *pval;
    pvala = 0;
    if (v15)
    {
      v16 = v5 != -1;
      v17 = (v9 & 0x10) == 0;
      if ((v9 & 2) != 0)
      {
        v18 = 17;
      }

      else
      {
        v18 = 16;
      }

      v19 = !v17 || !v16;
      if (v17 && v16)
      {
        v20 = v5;
      }

      else
      {
        v20 = v18;
      }

      v46 = a5 & v9 & 0x800;
      taga = v20;
      if (v19)
      {
        v21 = 0;
      }

      else
      {
        v21 = v11;
      }

      xclass = v21;
      if (sk_num(v15) < 1)
      {
        v22 = 0;
      }

      else
      {
        v22 = 0;
        v23 = 0;
        do
        {
          pvala = sk_value(v15, v23);
          v22 += ASN1_item_ex_i2d(&pvala, 0, *(a3 + 4), -1, v12);
          ++v23;
        }

        while (v23 < sk_num(v15));
      }

      v10 = ASN1_object_size(v14, v22, taga);
      if ((v9 & 0x10) != 0)
      {
        v29 = ASN1_object_size(v14, v10, v5);
        v30 = v10;
        v10 = v29;
        if (!out)
        {
          return v10;
        }

        ASN1_put_object(out, v14, v30, v5, v11);
      }

      else if (!out)
      {
        return v10;
      }

      ASN1_put_object(out, v14, v22, taga, xclass);
      v31 = *(a3 + 4);
      v51 = 0;
      if ((v9 & 2) != 0 && sk_num(v15) > 1)
      {
        tagb = v10;
        v33 = sk_num(v15);
        v34 = reallocarray(0, v33, 0x18uLL);
        v35 = malloc_type_malloc(v22, 0xB8D535D8uLL);
        v36 = v35;
        if (v34 && v35)
        {
          outa = v35;
          if (sk_num(v15) >= 1)
          {
            v37 = 0;
            v38 = v34;
            do
            {
              v51 = sk_value(v15, v37);
              *v38 = outa;
              *(v38 + 2) = ASN1_item_ex_i2d(&v51, &outa, v31, -1, v12);
              v38[2] = v51;
              ++v37;
              v38 += 3;
            }

            while (v37 < sk_num(v15));
          }

          v39 = sk_num(v15);
          qsort(v34, v39, 0x18uLL, der_cmp);
          outa = *out;
          if (sk_num(v15) >= 1)
          {
            v40 = 0;
            v41 = v34;
            do
            {
              memcpy(outa, *v41, *(v41 + 2));
              outa += *(v41 + 2);
              ++v40;
              v41 += 3;
            }

            while (v40 < sk_num(v15));
          }

          *out = outa;
          if ((v9 & 4) != 0 && sk_num(v15) >= 1)
          {
            v42 = 0;
            v43 = v34 + 2;
            do
            {
              v44 = *v43;
              v43 += 3;
              sk_set(v15, v42++, v44);
            }

            while (v42 < sk_num(v15));
          }
        }

        free(v34);
        free(v36);
        v10 = tagb;
      }

      else if (sk_num(v15) >= 1)
      {
        v32 = 0;
        do
        {
          v51 = sk_value(v15, v32);
          ASN1_item_ex_i2d(&v51, out, v31, -1, v12);
          ++v32;
        }

        while (v32 < sk_num(v15));
      }

      if (v46)
      {
        ASN1_put_eoc(out);
        if ((v9 & 0x10) != 0)
        {
          ASN1_put_eoc(out);
        }
      }

      return v10;
    }

    return 0;
  }

  v24 = *(a3 + 4);
  if ((v9 & 0x10) != 0)
  {
    v26 = ASN1_item_ex_i2d(pval, 0, v24, -1, a5 & 0xFFFFFF3F);
    if (v26)
    {
      v27 = v26;
      v28 = ASN1_object_size(v14, v26, v5);
      if (out)
      {
        ASN1_put_object(out, v14, v27, v5, v11);
        ASN1_item_ex_i2d(pval, out, *(a3 + 4), -1, v12);
        if (v13)
        {
          ASN1_put_eoc(out);
        }
      }

      return v28;
    }

    return 0;
  }

  return ASN1_item_ex_i2d(pval, out, v24, v5, v11 | v12);
}

uint64_t asn1_i2d_ex_primitive(ASN1_VALUE **a1, unsigned __int8 **a2, ASN1_ITEM *it, int a4, int a5)
{
  putype = it->utype;
  v10 = asn1_ex_i2c(a1, 0, &putype, it);
  if (v10 == -1)
  {
    return 0;
  }

  v11 = v10;
  if (v10 == -2)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  if ((v12 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = putype;
  v14 = 2 * (v10 == -2);
  if (a4 == -1)
  {
    a4 = putype;
  }

  if (!a2)
  {
    goto LABEL_21;
  }

  if ((putype + 3) > 0x14 || ((1 << (putype + 3)) & 0x180001) == 0)
  {
    ASN1_put_object(a2, v14, v12, a4, a5);
  }

  if (asn1_ex_i2c(a1, *a2, &putype, it) != v11)
  {
    return 0xFFFFFFFFLL;
  }

  if (v11 == -2)
  {
    ASN1_put_eoc(a2);
  }

  else
  {
    *a2 += v11;
  }

LABEL_21:
  if ((v13 + 3) > 0x14 || ((1 << (v13 + 3)) & 0x180001) == 0)
  {
    return ASN1_object_size(v14, v12, a4);
  }

  return v12;
}

uint64_t der_cmp(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 - v3;
  if (v2 >= v3)
  {
    v2 = *(a2 + 8);
  }

  LODWORD(result) = memcmp(*a1, *a2, v2);
  if (result)
  {
    return result;
  }

  else
  {
    return v4;
  }
}

int asn1_ex_i2c(ASN1_VALUE **pval, unsigned __int8 *cont, int *putype, const ASN1_ITEM *it)
{
  v21 = cont;
  funcs = it->funcs;
  if (!funcs)
  {
    if (it->itype)
    {
      if (!*pval)
      {
        return -1;
      }

      if (it->itype == 5)
      {
        v7 = *(*pval + 1);
LABEL_16:
        *putype = v7;
        goto LABEL_18;
      }

      utype = it->utype;
    }

    else
    {
      utype = it->utype;
      if (utype == 1)
      {
        goto LABEL_17;
      }

      if (!*pval)
      {
        return -1;
      }
    }

    if (utype == -4)
    {
      v9 = *pval;
      v10 = *v9;
      pval = (v9 + 8);
      v7 = v10;
      goto LABEL_16;
    }

LABEL_17:
    v7 = *putype;
LABEL_18:
    v20 = 0;
    if (v7 > 4)
    {
      if (v7 == 5)
      {
        return 0;
      }

      if (v7 == 10)
      {
        goto LABEL_30;
      }

      if (v7 != 6)
      {
LABEL_39:
        v18 = *pval;
        if (it->size == 2048 && (*(v18 + 16) & 0x10) != 0)
        {
          if (cont)
          {
            *(v18 + 1) = cont;
            *v18 = 0;
          }

          return -2;
        }

        v14 = *(v18 + 1);
        v15 = *v18;
        goto LABEL_42;
      }

      v14 = *(*pval + 3);
      v15 = *(*pval + 5);
    }

    else
    {
      if (v7 != 1)
      {
        if (v7 != 2)
        {
          if (v7 == 3)
          {
            v11 = *pval;
            if (cont)
            {
              v12 = &v21;
            }

            else
            {
              v12 = 0;
            }

            return i2c_ASN1_BIT_STRING(v11, v12);
          }

          goto LABEL_39;
        }

LABEL_30:
        v16 = *pval;
        if (cont)
        {
          v17 = &v21;
        }

        else
        {
          v17 = 0;
        }

        return i2c_ASN1_INTEGER(v16, v17);
      }

      if (*pval == -1)
      {
        return -1;
      }

      if (it->utype != -4)
      {
        size = it->size;
        if (*pval)
        {
          if (size > 0)
          {
            return -1;
          }
        }

        else if (!size)
        {
          return -1;
        }
      }

      v20 = *pval;
      v15 = 1;
      v14 = &v20;
    }

LABEL_42:
    if (cont && v15)
    {
      memcpy(cont, v14, v15);
    }

    return v15;
  }

  v5 = funcs[6];
  if (!v5)
  {
    return -1;
  }

  return v5(pval, cont, putype);
}

void Camellia_cbc_encrypt(void *a1, uint64_t *a2, unint64_t a3, uint64_t a4, _OWORD *a5, int a6)
{
  if (a6)
  {
    CRYPTO_cbc128_encrypt(a1, a2, a3, a4, a5, Camellia_encrypt);
  }

  else
  {
    CRYPTO_cbc128_decrypt(a1, a2, a3, a4, a5, Camellia_decrypt);
  }
}

BUF_MEM *BUF_MEM_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1010040A500212DuLL);
  if (!v0)
  {
    ERR_put_error(7, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/buffer/buffer.c", 79);
  }

  return v0;
}

void BUF_MEM_free(BUF_MEM *a)
{
  if (a)
  {
    freezero(a->data, *&a->max);

    free(a);
  }
}

char *BUF_reverse(char *result, char *a2, unint64_t a3)
{
  if (a2)
  {
    for (; a3; --a3)
    {
      v3 = *a2++;
      result[a3 - 1] = v3;
    }
  }

  else if (a3 >= 2)
  {
    v4 = a3 >> 1;
    v5 = &result[a3 - 1];
    do
    {
      v6 = *v5;
      *v5-- = *result;
      *result++ = v6;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t engine_table_register(LHASH **a1, uint64_t a2, char *a3, _DWORD *a4, int a5, int a6)
{
  memset(v19, 0, sizeof(v19));
  CRYPTO_lock(9, 30, 0, 0);
  if (!*a1)
  {
    v12 = lh_new(engine_pile_LHASH_HASH, engine_pile_LHASH_COMP);
    if (!v12)
    {
      goto LABEL_19;
    }

    *a1 = v12;
    engine_cleanup_add_first(a2);
  }

  v13 = 1;
  if (a5)
  {
    while (1)
    {
      LODWORD(v19[0]) = *a4;
      v14 = lh_retrieve(*a1, v19);
      if (!v14)
      {
        v15 = malloc_type_malloc(0x20uLL, 0x10200406A377A34uLL);
        if (!v15)
        {
          goto LABEL_19;
        }

        v14 = v15;
        v15[6] = 1;
        *v15 = *a4;
        v16 = sk_new_null();
        *(v14 + 1) = v16;
        if (!v16)
        {
          free(v14);
LABEL_19:
          v13 = 0;
          break;
        }

        *(v14 + 2) = 0;
        lh_insert(*a1, v14);
      }

      sk_delete_ptr(*(v14 + 1), a3);
      if (!sk_push(*(v14 + 1), a3))
      {
        goto LABEL_19;
      }

      *(v14 + 6) = 0;
      if (a6)
      {
        if (!engine_unlocked_init(a3))
        {
          ERR_put_error(38, 4095, 109, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_table.c", 175);
          goto LABEL_19;
        }

        v17 = *(v14 + 2);
        if (v17)
        {
          engine_unlocked_finish(v17, 0);
        }

        *(v14 + 2) = a3;
        *(v14 + 6) = 1;
      }

      ++a4;
      if (!--a5)
      {
        v13 = 1;
        break;
      }
    }
  }

  CRYPTO_lock(10, 30, 0, 0);
  return v13;
}

void engine_table_unregister(LHASH **a1, void *a2)
{
  CRYPTO_lock(9, 30, 0, 0);
  if (*a1)
  {
    lh_doall_arg(*a1, int_unregister_cb_LHASH_DOALL_ARG, a2);
  }

  CRYPTO_lock(10, 30, 0, 0);
}

uint64_t int_unregister_cb_LHASH_DOALL_ARG(uint64_t a1, char *a2)
{
  result = sk_find(*(a1 + 8), a2);
  if ((result & 0x80000000) == 0)
  {
    v5 = result;
    do
    {
      sk_delete(*(a1 + 8), v5);
      *(a1 + 24) = 0;
      result = sk_find(*(a1 + 8), a2);
      v5 = result;
    }

    while ((result & 0x80000000) == 0);
  }

  if (*(a1 + 16) == a2)
  {
    result = engine_unlocked_finish(a2, 0);
    *(a1 + 16) = 0;
  }

  return result;
}

void engine_table_cleanup(LHASH **a1)
{
  CRYPTO_lock(9, 30, 0, 0);
  if (*a1)
  {
    lh_doall(*a1, int_cleanup_cb_LHASH_DOALL);
    lh_free(*a1);
    *a1 = 0;
  }

  CRYPTO_lock(10, 30, 0, 0);
}

void int_cleanup_cb_LHASH_DOALL(uint64_t a1)
{
  sk_free(*(a1 + 8));
  v2 = *(a1 + 16);
  if (v2)
  {
    engine_unlocked_finish(v2, 0);
  }

  free(a1);
}

char *engine_table_select(LHASH **a1, int a2)
{
  if (!*a1)
  {
    return 0;
  }

  memset(v12, 0, sizeof(v12));
  ERR_set_mark();
  CRYPTO_lock(9, 30, 0, 0);
  v4 = *a1;
  if (*a1 && (LODWORD(v12[0]) = a2, (v5 = lh_retrieve(v4, v12)) != 0))
  {
    v6 = v5;
    v7 = v5[2];
    if (v7 && engine_unlocked_init(v7) || *(v6 + 6))
    {
      v8 = v6[2];
    }

    else
    {
      v8 = sk_value(v6[1], 0);
      if (v8)
      {
        v10 = 1;
        while (*(v8 + 46) <= 0 && (table_flags & 1) != 0 || !engine_unlocked_init(v8))
        {
          v8 = sk_value(v6[1], v10++);
          if (!v8)
          {
            goto LABEL_8;
          }
        }

        if (v6[2] != v8 && engine_unlocked_init(v8))
        {
          v11 = v6[2];
          if (v11)
          {
            engine_unlocked_finish(v11, 0);
          }

          v6[2] = v8;
        }
      }
    }

LABEL_8:
    *(v6 + 6) = 1;
  }

  else
  {
    v8 = 0;
  }

  CRYPTO_lock(10, 30, 0, 0);
  ERR_pop_to_mark();
  return v8;
}

void engine_table_doall(LHASH *a1, uint64_t a2, uint64_t a3)
{
  v3[0] = a2;
  v3[1] = a3;
  lh_doall_arg(a1, int_cb_LHASH_DOALL_ARG, v3);
}

void RSA_padding_add_PKCS1_OAEP_mgf1(_BYTE *a1, int a2, const void *a3, int a4, const void *a5, int a6, EVP_MD *md, EVP_MD *a8)
{
  v9 = md;
  v36 = *MEMORY[0x277D85DE8];
  if (!md)
  {
    v9 = EVP_sha1();
  }

  if (!a8)
  {
    a8 = v9;
  }

  v16 = EVP_MD_size(v9);
  if (v16 >= 1)
  {
    v17 = v16;
    dgst = a8;
    v18 = a2 - 1;
    v19 = ~(2 * v16);
    if (a2 - 1 + v19 < a4)
    {
      v20 = 110;
      v21 = 115;
LABEL_20:
      ERR_put_error(4, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_oaep.c", v21);
      goto LABEL_21;
    }

    if (((2 * v16) | 1) >= a2)
    {
      v20 = 120;
      v21 = 120;
      goto LABEL_20;
    }

    *a1 = 0;
    v22 = a1 + 1;
    v23 = &v22[v16];
    if (EVP_Digest(a5, a6, v23, 0, v9, 0))
    {
      v24 = v17;
      bzero(&v23[v17], v18 - a4 + v19);
      v23[v18 - a4 + ~v17] = 1;
      memcpy(&v23[v18 - a4 - v17], a3, a4);
      arc4random_buf(v22, v17);
      v25 = v18 - v17;
      v26 = malloc_type_malloc(v25, 0x865C3C3CuLL);
      v27 = v26;
      if (v26)
      {
        if ((PKCS1_MGF1(v26, v25, v22, v24, dgst) & 0x80000000) == 0)
        {
          if (v25 >= 1)
          {
            v28 = v25;
            v29 = v27;
            v30 = v23;
            do
            {
              v31 = *v29++;
              *v30++ ^= v31;
              --v28;
            }

            while (v28);
          }

          if ((PKCS1_MGF1(mask, v24, v23, v25, dgst) & 0x80000000) == 0)
          {
            v32 = mask;
            do
            {
              v33 = *v32++;
              *v22++ ^= v33;
              --v24;
            }

            while (v24);
          }
        }
      }

      else
      {
        ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_oaep.c", 138);
      }
    }
  }

LABEL_21:
  explicit_bzero(mask, 0x40uLL);
}

int PKCS1_MGF1(unsigned __int8 *mask, uint64_t len, const unsigned __int8 *seed, uint64_t seedlen, const EVP_MD *dgst)
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  memset(&v18, 0, sizeof(v18));
  EVP_MD_CTX_init(&v18);
  v10 = EVP_MD_size(dgst);
  if ((v10 & 0x80000000) != 0)
  {
LABEL_14:
    v15 = -1;
    goto LABEL_15;
  }

  if (len >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = v10;
    do
    {
      d = bswap32(v12);
      if (!EVP_DigestInit_ex(&v18, dgst, 0) || !EVP_DigestUpdate(&v18, seed, seedlen) || !EVP_DigestUpdate(&v18, &d, 4uLL))
      {
        goto LABEL_14;
      }

      v14 = v11 + v13;
      if (v11 + v13 > len)
      {
        if (!EVP_DigestFinal_ex(&v18, md, 0))
        {
          goto LABEL_14;
        }

        memcpy(&mask[v11], md, len - v11);
        break;
      }

      if (!EVP_DigestFinal_ex(&v18, &mask[v11], 0))
      {
        goto LABEL_14;
      }

      ++v12;
      v11 += v13;
    }

    while (v14 < len);
  }

  v15 = 0;
LABEL_15:
  EVP_MD_CTX_cleanup(&v18);
  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

uint64_t RSA_padding_check_PKCS1_OAEP_mgf1(_BYTE *a1, int a2, uint64_t a3, int a4, int a5, const void *a6, int a7, EVP_MD *md, const EVP_MD *a9)
{
  v9 = md;
  v17 = a9;
  v57 = *MEMORY[0x277D85DE8];
  if (!md)
  {
    v9 = EVP_sha1();
  }

  if (!a9)
  {
    v17 = v9;
  }

  v18 = EVP_MD_size(v9);
  if (v18 < 1)
  {
    goto LABEL_11;
  }

  v19 = v18;
  result = 0xFFFFFFFFLL;
  if (a2 >= 1 && a4 >= 1)
  {
    if (a5 >= a4 && (2 * v19 + 2) <= a5)
    {
      v52 = ~v19;
      seedlen = (~v19 + a5);
      v53 = malloc_type_malloc(seedlen, 0x4F258BD2uLL);
      if (v53)
      {
        v51 = a1;
        v22 = malloc_type_malloc(a5, 0xF8E54389uLL);
        if (v22)
        {
          v23 = 0;
          v24 = &v22[a5];
          v25 = (a3 + a4);
          do
          {
            v26 = v24;
            v27 = a4 != 0;
            v25 -= v27;
            v28 = *v25;
            if (!a4)
            {
              v28 = 0;
            }

            a4 -= v27;
            *--v24 = v28;
            ++v23;
          }

          while (v23 != a5);
          v29 = v28 - 1;
          if (!PKCS1_MGF1(mask, v19, &v26[v19], seedlen, v17))
          {
            for (i = 0; i != v19; ++i)
            {
              mask[i] ^= v24[i + 1];
            }

            if (!PKCS1_MGF1(v53, seedlen, mask, v19, v17))
            {
              if (seedlen >= 1)
              {
                v31 = v19 + 1;
                v32 = (~v19 + a5);
                v33 = v53;
                do
                {
                  *v33++ ^= v24[v31++];
                  --v32;
                }

                while (v32);
              }

              if (EVP_Digest(a6, a7, mda, 0, v9, 0))
              {
                v34 = timingsafe_memcmp(v53, mda, v19);
                v35 = ((v34 - 1) & ~v34 & v29) >> 31;
                if (v19 >= seedlen)
                {
                  v36 = 0;
                  v42 = 1;
                }

                else
                {
                  v36 = 0;
                  v37 = 0;
                  v38 = &v53[v19];
                  v39 = v19;
                  do
                  {
                    v40 = *v38++;
                    v41 = (v40 ^ 1) - 1;
                    v37 = v37 & ~((v41 >> 31) & ~v36) | (v41 >> 31) & ~v36 & v39;
                    v36 |= v41 >> 31;
                    v35 &= v36 | ((v40 - 1) >> 31);
                    ++v39;
                  }

                  while (seedlen > v39);
                  v42 = v37 + 1;
                }

                if ((((a2 - (seedlen - v42)) ^ (seedlen - v42) | (seedlen - v42) ^ a2) ^ a2) < 0)
                {
                  v36 = 0;
                }

                v43 = v36 & v35;
                LODWORD(v44) = seedlen + v52;
                if (((seedlen + v52 - a2) & (v19 - seedlen)) >= 0)
                {
                  v44 = a2;
                }

                else
                {
                  v44 = v44;
                }

                v45 = (seedlen - v44) & ~v43 | v43 & v42;
                v46 = v51;
                if (v44 >= 1)
                {
                  v47 = v44;
                  v48 = v43;
                  do
                  {
                    if (seedlen == v45)
                    {
                      v49 = v44;
                    }

                    else
                    {
                      v49 = 0;
                    }

                    if (seedlen == v45)
                    {
                      v48 = 0;
                    }

                    v50 = v45 - v49;
                    v45 = v50 + 1;
                    *v46 = *v46 & ~v48 | v53[v50] & v48;
                    ++v46;
                    --v47;
                  }

                  while (v47);
                }

                ERR_put_error(4, 4095, 121, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_oaep.c", 308);
                err_clear_last_constant_time(v43 & 1);
              }
            }
          }
        }

        else
        {
          ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_oaep.c", 211);
        }
      }

      else
      {
        ERR_put_error(4, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_oaep.c", 207);
      }

      explicit_bzero(mask, 0x40uLL);
    }

    ERR_put_error(4, 4095, 121, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_oaep.c", 201);
LABEL_11:
    result = 0xFFFFFFFFLL;
  }

  v21 = *MEMORY[0x277D85DE8];
  return result;
}

int DSA_generate_parameters_ex(DSA *dsa, int bits, unsigned __int8 *seed, int seed_len, int *counter_ret, unint64_t *h_ret, BN_GENCB *cb)
{
  v14 = *&dsa->ex_data.sk[2].sorted;
  if (v14)
  {

    return v14();
  }

  else
  {
    if (bits < 2048)
    {
      v16 = 160;
      v17 = EVP_sha1();
    }

    else
    {
      v16 = 256;
      v17 = EVP_sha256();
    }

    return dsa_builtin_paramgen(dsa, bits, v16, v17, seed, seed_len, 0, counter_ret, h_ret, cb);
  }
}

BOOL dsa_builtin_paramgen(BIGNUM **a1, unint64_t a2, unint64_t a3, const EVP_MD *a4, uint64_t a5, size_t a6, void *a7, int *a8, void *a9, BN_GENCB *a10)
{
  v10 = 0;
  v81 = *MEMORY[0x277D85DE8];
  v11 = a3 >> 3;
  if ((a3 >> 3) > 0x20)
  {
    goto LABEL_77;
  }

  v13 = (a3 >> 3);
  if (((1 << (a3 >> 3)) & 0x110100000) == 0)
  {
    goto LABEL_77;
  }

  v17 = a4;
  if (!a4)
  {
    v17 = EVP_sha1();
  }

  if (a2 <= 0x200)
  {
    a2 = 512;
  }

  if (v13 <= a6)
  {
    v20 = a6;
  }

  else
  {
    v20 = 0;
  }

  if (v20 >= v11)
  {
    v21 = v13;
  }

  else
  {
    v21 = v20;
  }

  if (a5 && v13 <= a6)
  {
    __memcpy_chk();
    goto LABEL_18;
  }

  if (!v21)
  {
LABEL_18:
    v23 = BN_MONT_CTX_new();
    if (v23)
    {
      v24 = BN_CTX_new();
      v22 = v24;
      if (v24)
      {
        BN_CTX_start(v24);
        v25 = BN_CTX_get(v22);
        if (v25)
        {
          r = v25;
          v26 = BN_CTX_get(v22);
          if (v26)
          {
            v74 = v26;
            v27 = BN_CTX_get(v22);
            if (v27)
            {
              a = v27;
              v28 = BN_CTX_get(v22);
              if (v28)
              {
                ret = v28;
                v29 = BN_CTX_get(v22);
                if (v29)
                {
                  v71 = v29;
                  v30 = BN_CTX_get(v22);
                  if (v30)
                  {
                    v68 = v30;
                    v31 = BN_CTX_get(v22);
                    if (v31)
                    {
                      p = v31;
                      v32 = BN_CTX_get(v22);
                      if (v32)
                      {
                        v69 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
                        v33 = v32;
                        v34 = BN_value_one();
                        b = v33;
                        if (BN_lshift(v33, v34, v69 - 1))
                        {
                          v35 = 0;
                          n = v69 - 1;
                          v36 = a10;
                          v70 = (v69 - 1) / 0xA0;
                          v65 = (a3 >> 3) & 0x7FFFFFFF;
                          v37 = v21 == 0;
LABEL_30:
                          while (1)
                          {
                            v38 = v35;
                            if (!BN_GENCB_call(v36, 0, v35))
                            {
                              break;
                            }

                            if (v37)
                            {
                              arc4random_buf(__buf, v13);
                              v39 = 1;
                            }

                            else
                            {
                              v39 = 0;
                            }

                            __memcpy_chk();
                            __memcpy_chk();
                            v40 = v11 - 1;
                            do
                            {
                              v41 = ++data[v40];
                              if ((v41 & 0x100) == 0)
                              {
                                break;
                              }
                            }

                            while (v40-- > 0);
                            if (!EVP_Digest(__buf, v13, md, 0, v17, 0))
                            {
                              break;
                            }

                            if (!EVP_Digest(data, v13, v77, 0, v17, 0))
                            {
                              break;
                            }

                            v43 = 0;
                            do
                            {
                              md[v43] ^= v77[v43];
                              ++v43;
                            }

                            while (v65 != v43);
                            md[0] |= 0x80u;
                            md[(v11 - 1)] |= 1u;
                            if (!BN_bin2bn(md, v11, ret))
                            {
                              break;
                            }

                            is_prime_fasttest = BN_is_prime_fasttest_ex(ret, 64, v22, v39, a10);
                            if (is_prime_fasttest > 0)
                            {
                              if (BN_GENCB_call(a10, 2, 0) && BN_GENCB_call(a10, 3, 0))
                              {
                                v45 = 0;
                                v46 = a;
                                while (1)
                                {
                                  v47 = v45;
                                  if (v45)
                                  {
                                    v48 = BN_GENCB_call(a10, 0, v45);
                                    v46 = a;
                                    if (!v48)
                                    {
                                      break;
                                    }
                                  }

                                  v64 = v47;
                                  BN_zero(v46);
                                  if ((v70 & 0x80000000) == 0)
                                  {
                                    v49 = 0;
                                    do
                                    {
                                      v50 = v13;
                                      do
                                      {
                                        if (v50 < 1)
                                        {
                                          break;
                                        }

                                        v51 = &data[v50--];
                                        v52 = ++*(v51 - 1);
                                      }

                                      while ((v52 & 0x100) != 0);
                                      if (!EVP_Digest(data, v13, md, 0, v17, 0) || !BN_bin2bn(md, v11, r) || !BN_lshift(r, r, 8 * v11 * v49) || !BN_add(a, a, r))
                                      {
                                        goto LABEL_75;
                                      }
                                    }

                                    while (v49++ != v70);
                                  }

                                  if (!BN_mask_bits(a, n))
                                  {
                                    goto LABEL_75;
                                  }

                                  if (!bn_copy(v71, a))
                                  {
                                    goto LABEL_75;
                                  }

                                  if (!BN_add(v71, v71, b))
                                  {
                                    goto LABEL_75;
                                  }

                                  if (!BN_lshift1(r, ret))
                                  {
                                    goto LABEL_75;
                                  }

                                  if (!BN_mod_ct(v68, v71, r, v22))
                                  {
                                    goto LABEL_75;
                                  }

                                  v54 = BN_value_one();
                                  if (!BN_sub(r, v68, v54) || !BN_sub(p, v71, r))
                                  {
                                    goto LABEL_75;
                                  }

                                  if ((BN_cmp(p, b) & 0x80000000) == 0)
                                  {
                                    v55 = BN_is_prime_fasttest_ex(p, 64, v22, 1, a10);
                                    if (v55 > 0)
                                    {
                                      if (!BN_GENCB_call(a10, 2, 1))
                                      {
                                        goto LABEL_75;
                                      }

                                      v58 = BN_value_one();
                                      if (!BN_sub(b, p, v58) || !BN_div_ct(r, 0, b, ret, v22) || !BN_set_word(b, 2uLL) || !BN_MONT_CTX_set(v23, p, v22) || !BN_mod_exp_mont_ct(v74, b, r, p, v22, v23))
                                      {
                                        goto LABEL_75;
                                      }

                                      v59 = 2;
                                      while (BN_is_one(v74))
                                      {
                                        v60 = BN_value_one();
                                        if (BN_add(b, b, v60))
                                        {
                                          ++v59;
                                          if (BN_mod_exp_mont_ct(v74, b, r, p, v22, v23))
                                          {
                                            continue;
                                          }
                                        }

                                        goto LABEL_75;
                                      }

                                      v61 = BN_GENCB_call(a10, 3, 1);
                                      v10 = v61 != 0;
                                      if (v61)
                                      {
                                        BN_free(a1[2]);
                                        BN_free(a1[3]);
                                        BN_free(a1[4]);
                                        a1[2] = BN_dup(p);
                                        a1[3] = BN_dup(ret);
                                        v62 = BN_dup(v74);
                                        a1[4] = v62;
                                        if (!a1[2])
                                        {
                                          goto LABEL_75;
                                        }

                                        v10 = 0;
                                        if (a1[3] && v62)
                                        {
                                          if (a8)
                                          {
                                            *a8 = v64;
                                          }

                                          if (a9)
                                          {
                                            *a9 = v59;
                                          }

                                          if (a7)
                                          {
                                            memcpy(a7, __buf, v13);
                                          }

                                          v10 = 1;
                                        }
                                      }

                                      goto LABEL_76;
                                    }

                                    if (v55)
                                    {
                                      goto LABEL_75;
                                    }
                                  }

                                  v45 = v64 + 1;
                                  v37 = 1;
                                  v46 = a;
                                  if (v64 == 4095)
                                  {
                                    v36 = a10;
                                    v35 = v38 + 1;
                                    goto LABEL_30;
                                  }
                                }
                              }

                              goto LABEL_75;
                            }

                            v36 = a10;
                            v37 = 1;
                            v35 = v38 + 1;
                            if (is_prime_fasttest)
                            {
                              goto LABEL_75;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v22 = 0;
    }

    goto LABEL_75;
  }

  v22 = 0;
  v23 = 0;
LABEL_75:
  v10 = 0;
LABEL_76:
  BN_CTX_end(v22);
  BN_CTX_free(v22);
  BN_MONT_CTX_free(v23);
LABEL_77:
  v56 = *MEMORY[0x277D85DE8];
  return v10;
}

DSA *__cdecl DSA_generate_parameters(int bits, unsigned __int8 *seed, int seed_len, int *counter_ret, unint64_t *h_ret, void (__cdecl *callback)(int, int, void *), void *cb_arg)
{
  v14 = DSA_new();
  if (v14)
  {
    memset(&cb, 0, sizeof(cb));
    BN_GENCB_set_old(&cb, callback, cb_arg);
    if (!DSA_generate_parameters_ex(v14, bits, seed, seed_len, counter_ret, h_ret, &cb))
    {
      DSA_free(v14);
      return 0;
    }
  }

  return v14;
}

int EVP_PKEY_bits(EVP_PKEY *pkey)
{
  if (pkey && (ptr = pkey->pkey.ptr) != 0 && (v2 = *(ptr + 12)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

uint64_t EVP_PKEY_security_bits(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 16);
    if (v1 && (v2 = *(v1 + 104)) != 0)
    {
      return v2();
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

int EVP_PKEY_size(EVP_PKEY *pkey)
{
  if (pkey && (ptr = pkey->pkey.ptr) != 0 && (v2 = *(ptr + 11)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

int EVP_PKEY_save_parameters(EVP_PKEY *pkey, int mode)
{
  if (pkey->type != 408 && pkey->type != 116)
  {
    return 0;
  }

  type = pkey[1].type;
  v2 = pkey + 1;
  v3 = type;
  if ((mode & 0x80000000) == 0)
  {
    v2->type = mode;
  }

  return v3;
}

int EVP_PKEY_copy_parameters(EVP_PKEY *to, const EVP_PKEY *from)
{
  if (to->type != from->type)
  {
    v6 = 101;
    v7 = 144;
    goto LABEL_7;
  }

  ptr = from->pkey.ptr;
  if (!ptr)
  {
    return 0;
  }

  v5 = *(ptr + 16);
  if (v5)
  {
    if (v5(from))
    {
      v6 = 103;
      v7 = 149;
LABEL_7:
      ERR_put_error(6, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", v7);
      return 0;
    }

    ptr = from->pkey.ptr;
    if (!ptr)
    {
      return 0;
    }
  }

  v9 = *(ptr + 17);
  if (!v9)
  {
    return 0;
  }

  return v9(to, from);
}

int EVP_PKEY_missing_parameters(const EVP_PKEY *pkey)
{
  ptr = pkey->pkey.ptr;
  if (ptr && (v2 = *(ptr + 16)) != 0)
  {
    return v2();
  }

  else
  {
    return 0;
  }
}

int EVP_PKEY_cmp_parameters(const EVP_PKEY *a, const EVP_PKEY *b)
{
  if (a->type != b->type)
  {
    return -1;
  }

  ptr = a->pkey.ptr;
  if (ptr && (v3 = *(ptr + 18)) != 0)
  {
    return v3();
  }

  else
  {
    return -2;
  }
}

int EVP_PKEY_cmp(const EVP_PKEY *a, const EVP_PKEY *b)
{
  if (a->type != b->type)
  {
    return -1;
  }

  ptr = a->pkey.ptr;
  if (!ptr)
  {
    return -2;
  }

  v5 = *(ptr + 18);
  if (v5)
  {
    result = v5(a, b);
    if (result < 1)
    {
      return result;
    }

    ptr = a->pkey.ptr;
  }

  v7 = *(ptr + 6);
  if (!v7)
  {
    return -2;
  }

  return v7(a, b);
}

EVP_PKEY *EVP_PKEY_new(void)
{
  v0 = malloc_type_malloc(0x38uLL, 0x10E20405E855B9FuLL);
  v1 = v0;
  if (v0)
  {
    *&v0->type = 0;
    v0->references = 1;
    *&v0[1].references = 0;
    *&v0->save_parameters = 0;
    v0->attributes = 0;
    v0->pkey.ptr = 0;
    v0[1].type = 1;
  }

  else
  {
    ERR_put_error(6, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 206);
  }

  return v1;
}

uint64_t pkey_set_type(uint64_t a1, ENGINE *a2, int a3, char *__s, signed int a5)
{
  e = a2;
  if (a2)
  {
    p_e = 0;
  }

  else
  {
    p_e = &e;
  }

  if (a1)
  {
    if (*(a1 + 32))
    {
      EVP_PKEY_free_it(a1);
    }

    if (*(a1 + 4) == a3 && *(a1 + 16))
    {
      return 1;
    }

    ENGINE_finish(*(a1 + 24));
    *(a1 + 24) = 0;
  }

  if (__s)
  {
    str = EVP_PKEY_asn1_find_str(p_e, __s, a5);
  }

  else
  {
    str = EVP_PKEY_asn1_find(p_e, a3);
  }

  v12 = str;
  if (!(a1 | a2))
  {
    ENGINE_finish(e);
  }

  if (v12)
  {
    if (a1)
    {
      v13 = e;
      *(a1 + 16) = v12;
      *(a1 + 24) = v13;
      *a1 = *v12;
      *(a1 + 4) = a3;
    }

    return 1;
  }

  ERR_put_error(6, 4095, 156, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 262);
  return 0;
}

EVP_PKEY *EVP_PKEY_new_raw_private_key(int a1, ENGINE *a2, uint64_t a3, uint64_t a4)
{
  v8 = EVP_PKEY_new();
  v9 = v8;
  if (!v8 || !pkey_set_type(v8, a2, a1, 0, -1))
  {
    goto LABEL_8;
  }

  v10 = *(v9->pkey.ptr + 30);
  if (!v10)
  {
    v11 = 150;
    v12 = 294;
    goto LABEL_7;
  }

  if (!v10(v9, a3, a4))
  {
    v11 = 180;
    v12 = 298;
LABEL_7:
    ERR_put_error(6, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", v12);
LABEL_8:
    EVP_PKEY_free(v9);
    return 0;
  }

  return v9;
}

void EVP_PKEY_free(EVP_PKEY *pkey)
{
  if (pkey && CRYPTO_add_lock(&pkey->references, -1, 10, 0, 0) <= 0)
  {
    EVP_PKEY_free_it(pkey);
    v2 = *&pkey[1].references;
    if (v2)
    {
      sk_pop_free(v2, X509_ATTRIBUTE_free);
    }

    free(pkey);
  }
}

EVP_PKEY *EVP_PKEY_new_raw_public_key(int a1, ENGINE *a2, uint64_t a3, uint64_t a4)
{
  v8 = EVP_PKEY_new();
  v9 = v8;
  if (!v8 || !pkey_set_type(v8, a2, a1, 0, -1))
  {
    goto LABEL_8;
  }

  v10 = *(v9->pkey.ptr + 31);
  if (!v10)
  {
    v11 = 150;
    v12 = 323;
    goto LABEL_7;
  }

  if (!v10(v9, a3, a4))
  {
    v11 = 180;
    v12 = 327;
LABEL_7:
    ERR_put_error(6, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", v12);
LABEL_8:
    EVP_PKEY_free(v9);
    return 0;
  }

  return v9;
}

uint64_t EVP_PKEY_get_raw_private_key(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 256);
  if (v1)
  {
    if (v1())
    {
      return 1;
    }

    v3 = 182;
    v4 = 348;
  }

  else
  {
    v3 = 150;
    v4 = 344;
  }

  ERR_put_error(6, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", v4);
  return 0;
}

uint64_t EVP_PKEY_get_raw_public_key(uint64_t a1)
{
  v1 = *(*(a1 + 16) + 264);
  if (v1)
  {
    if (v1())
    {
      return 1;
    }

    v3 = 182;
    v4 = 364;
  }

  else
  {
    v3 = 150;
    v4 = 360;
  }

  ERR_put_error(6, 4095, v3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", v4);
  return 0;
}

EVP_PKEY *EVP_PKEY_new_CMAC_key(ENGINE *a1, const unsigned __int8 *a2, uint64_t a3, EVP_CIPHER *a4)
{
  v8 = EVP_PKEY_new();
  if (!v8)
  {
    v9 = 0;
LABEL_7:
    EVP_PKEY_free(v8);
    CMAC_CTX_free(v9);
    return 0;
  }

  v9 = CMAC_CTX_new();
  if (!v9 || !pkey_set_type(v8, a1, 894, 0, -1))
  {
    goto LABEL_7;
  }

  if (!CMAC_Init(v9, a2, a3, a4, a1))
  {
    ERR_put_error(6, 4095, 180, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 387);
    goto LABEL_7;
  }

  v8->attributes = v9;
  return v8;
}

int EVP_PKEY_assign(EVP_PKEY *pkey, int type, char *key)
{
  result = pkey_set_type(pkey, 0, type, 0, -1);
  if (result)
  {
    pkey->attributes = key;
    return key != 0;
  }

  return result;
}

uint64_t EVP_PKEY_get0_hmac(uint64_t a1, void *a2)
{
  if (*a1 == 855)
  {
    v2 = *(a1 + 32);
    *a2 = *v2;
    return *(v2 + 1);
  }

  else
  {
    ERR_put_error(6, 4095, 174, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 428);
    return 0;
  }
}

uint64_t EVP_PKEY_get0_RSA(uint64_t a1)
{
  if (*a1 == 6)
  {
    return *(a1 + 32);
  }

  ERR_put_error(6, 4095, 127, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 443);
  return 0;
}

rsa_st *__cdecl EVP_PKEY_get1_RSA(EVP_PKEY *pkey)
{
  if (pkey->type == 6)
  {
    RSA_up_ref(pkey->attributes);
    return pkey->attributes;
  }

  else
  {
    ERR_put_error(6, 4095, 127, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 453);
    return 0;
  }
}

int EVP_PKEY_set1_RSA(EVP_PKEY *pkey, rsa_st *key)
{
  result = pkey_set_type(pkey, 0, 6, 0, -1);
  if (result)
  {
    pkey->attributes = key;
    if (key)
    {
      RSA_up_ref(key);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EVP_PKEY_get0_DSA(uint64_t a1)
{
  if (*a1 == 116)
  {
    return *(a1 + 32);
  }

  ERR_put_error(6, 4095, 129, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 475);
  return 0;
}

dsa_st *__cdecl EVP_PKEY_get1_DSA(EVP_PKEY *pkey)
{
  if (pkey->type == 116)
  {
    DSA_up_ref(pkey->attributes);
    return pkey->attributes;
  }

  else
  {
    ERR_put_error(6, 4095, 129, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 485);
    return 0;
  }
}

int EVP_PKEY_set1_DSA(EVP_PKEY *pkey, dsa_st *key)
{
  result = pkey_set_type(pkey, 0, 116, 0, -1);
  if (result)
  {
    pkey->attributes = key;
    if (key)
    {
      DSA_up_ref(key);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EVP_PKEY_get0_EC_KEY(uint64_t a1)
{
  if (*a1 == 408)
  {
    return *(a1 + 32);
  }

  ERR_put_error(6, 4095, 142, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 507);
  return 0;
}

ec_key_st *__cdecl EVP_PKEY_get1_EC_KEY(EVP_PKEY *pkey)
{
  if (pkey->type == 408)
  {
    EC_KEY_up_ref(pkey->attributes);
    return pkey->attributes;
  }

  else
  {
    ERR_put_error(6, 4095, 142, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 517);
    return 0;
  }
}

int EVP_PKEY_set1_EC_KEY(EVP_PKEY *pkey, ec_key_st *key)
{
  result = pkey_set_type(pkey, 0, 408, 0, -1);
  if (result)
  {
    pkey->attributes = key;
    if (key)
    {
      EC_KEY_up_ref(key);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t EVP_PKEY_get0_DH(uint64_t a1)
{
  if (*a1 == 28)
  {
    return *(a1 + 32);
  }

  ERR_put_error(6, 4095, 128, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 540);
  return 0;
}

dh_st *__cdecl EVP_PKEY_get1_DH(EVP_PKEY *pkey)
{
  if (pkey->type == 28)
  {
    DH_up_ref(pkey->attributes);
    return pkey->attributes;
  }

  else
  {
    ERR_put_error(6, 4095, 128, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/p_lib.c", 550);
    return 0;
  }
}

int EVP_PKEY_set1_DH(EVP_PKEY *pkey, dh_st *key)
{
  result = pkey_set_type(pkey, 0, 28, 0, -1);
  if (result)
  {
    pkey->attributes = key;
    if (key)
    {
      DH_up_ref(key);
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int EVP_PKEY_type(int type)
{
  e = 0;
  v1 = EVP_PKEY_asn1_find(&e, type);
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  ENGINE_finish(e);
  return v2;
}

uint64_t EVP_PKEY_free_it(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(v2 + 168);
    if (v3)
    {
      v3(a1);
      *(a1 + 32) = 0;
    }
  }

  result = ENGINE_finish(*(a1 + 24));
  *(a1 + 24) = 0;
  return result;
}

uint64_t EVP_PKEY_print_public(BIO *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 56)) != 0)
  {
    return v4();
  }

  else
  {
    return unsup_alg(a1, a2, a3, "Public Key");
  }
}

uint64_t unsup_alg(BIO *a1, int *a2, int indent, const char *a4)
{
  result = BIO_indent(a1, indent, 128);
  if (result)
  {
    v8 = OBJ_nid2ln(*a2);
    BIO_printf(a1, "%s algorithm %s unsupported\n", a4, v8);
    return 1;
  }

  return result;
}

uint64_t EVP_PKEY_print_private(BIO *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 80)) != 0)
  {
    return v4();
  }

  else
  {
    return unsup_alg(a1, a2, a3, "Private Key");
  }
}

uint64_t EVP_PKEY_print_params(BIO *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  if (v3 && (v4 = *(v3 + 152)) != 0)
  {
    return v4();
  }

  else
  {
    return unsup_alg(a1, a2, a3, "Parameters");
  }
}

uint64_t EVP_PKEY_get_default_digest_nid(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && (v2 = *(v1 + 176)) != 0)
  {
    return v2();
  }

  else
  {
    return 4294967294;
  }
}

uint64_t buffer_write(BIO *b, char *a2, int a3)
{
  v3 = 0;
  if (!a2)
  {
    return v3;
  }

  v4 = a3;
  if (a3 < 1)
  {
    return v3;
  }

  next_bio = b->next_bio;
  if (!next_bio || !b->prev_bio)
  {
    return 0;
  }

  v7 = a2;
  BIO_clear_flags(b, 15);
  flags = next_bio->flags;
  retry_reason = next_bio->retry_reason;
  v10 = retry_reason + flags;
  v11 = HIDWORD(next_bio->method) - (retry_reason + flags);
  if (v11 >= v4)
  {
    LODWORD(v3) = 0;
LABEL_21:
    memcpy((*&next_bio->init + v10), v7, v4);
    next_bio->flags += v4;
    return (v3 + v4);
  }

  v3 = 0;
  while (2)
  {
    if (!flags)
    {
LABEL_12:
      next_bio->retry_reason = 0;
      while (1)
      {
        method_high = HIDWORD(next_bio->method);
        if (v4 < method_high)
        {
          break;
        }

        v16 = BIO_write(b->prev_bio, v7, v4);
        v17 = v16;
        if (v16 <= 0)
        {
          BIO_copy_next_retry(b);
          if (v3 <= 0)
          {
            v18 = v17;
          }

          else
          {
            v18 = v3;
          }

          if (v17 < 0)
          {
            return v18;
          }

          else
          {
            return v3;
          }
        }

        v3 = (v16 + v3);
        v7 += v16;
        v4 -= v16;
        if (!v4)
        {
          return v3;
        }
      }

      flags = next_bio->flags;
      retry_reason = next_bio->retry_reason;
      v10 = retry_reason + flags;
      v11 = method_high - (retry_reason + flags);
      if (v11 < v4)
      {
        continue;
      }

      goto LABEL_21;
    }

    break;
  }

  if (v11 >= 1)
  {
    memcpy((*&next_bio->init + v10), v7, v11);
    v7 += v11;
    v4 -= v11;
    v3 = (v11 + v3);
    retry_reason = next_bio->retry_reason;
    flags = next_bio->flags + v11;
    next_bio->flags = flags;
  }

  while (1)
  {
    v12 = BIO_write(b->prev_bio, (*&next_bio->init + retry_reason), flags);
    v13 = v12;
    if (v12 <= 0)
    {
      break;
    }

    v14 = next_bio->flags;
    retry_reason = next_bio->retry_reason + v12;
    flags = v14 - v12;
    next_bio->flags = v14 - v12;
    next_bio->retry_reason = retry_reason;
    if (v14 == v12)
    {
      goto LABEL_12;
    }
  }

  BIO_copy_next_retry(b);
  if ((v13 & 0x80000000) != 0)
  {
    if (v3 <= 0)
    {
      return v13;
    }

    else
    {
      return v3;
    }
  }

  return v3;
}

uint64_t buffer_read(BIO *b, char *a2, int a3)
{
  if (!a2)
  {
    return 0;
  }

  next_bio = b->next_bio;
  if (!next_bio || !b->prev_bio)
  {
    return 0;
  }

  v6 = a2;
  BIO_clear_flags(b, 15);
  LODWORD(v7) = 0;
  cb_arg = next_bio->cb_arg;
  if (!cb_arg)
  {
    goto LABEL_10;
  }

  while (1)
  {
    v9 = cb_arg >= a3 ? a3 : cb_arg;
    memcpy(v6, next_bio->callback + SHIDWORD(next_bio->cb_arg), v9);
    v10 = HIDWORD(next_bio->cb_arg) + v9;
    LODWORD(next_bio->cb_arg) -= v9;
    HIDWORD(next_bio->cb_arg) = v10;
    v7 = (v9 + v7);
    if (a3 <= cb_arg)
    {
      return v7;
    }

    a3 -= v9;
    v6 += v9;
LABEL_10:
    prev_bio = b->prev_bio;
    if (a3 > SLODWORD(next_bio->method))
    {
      while (1)
      {
        v12 = BIO_read(prev_bio, v6, a3);
        cb_arg = v12;
        if (v12 < 1)
        {
          break;
        }

        v7 = (v12 + v7);
        a3 -= v12;
        if (!a3)
        {
          return v7;
        }

        v6 += v12;
        prev_bio = b->prev_bio;
      }

LABEL_16:
      BIO_copy_next_retry(b);
      if (v7 <= 0)
      {
        v13 = cb_arg;
      }

      else
      {
        v13 = v7;
      }

      if (cb_arg < 0)
      {
        return v13;
      }

      else
      {
        return v7;
      }
    }

    cb_arg = BIO_read(prev_bio, next_bio->callback, next_bio->method);
    if (cb_arg <= 0)
    {
      goto LABEL_16;
    }

    next_bio->cb_arg = cb_arg;
  }
}

uint64_t buffer_puts(BIO *a1, char *__s)
{
  v4 = strlen(__s);

  return buffer_write(a1, __s, v4);
}

uint64_t buffer_gets(BIO *a1, _BYTE *a2, int a3)
{
  next_bio = a1->next_bio;
  v6 = a3 - 1;
  BIO_clear_flags(a1, 15);
  LODWORD(v7) = 0;
  LODWORD(cb_arg_low) = next_bio->cb_arg;
  while (1)
  {
    while (cb_arg_low >= 1)
    {
      if (v6 < 1)
      {
        v14 = 0;
        LODWORD(v9) = 0;
      }

      else
      {
        v9 = 0;
        v10 = next_bio->callback + SHIDWORD(next_bio->cb_arg);
        while (1)
        {
          v11 = v9;
          v12 = v10[v9];
          a2[v11] = v12;
          if (v12 == 10)
          {
            break;
          }

          v9 = v11 + 1;
          cb_arg_low = SLODWORD(next_bio->cb_arg);
          if ((v11 + 1) >= cb_arg_low || v9 >= v6)
          {
            v14 = 0;
            a2 += v11 + 1;
            goto LABEL_16;
          }
        }

        LODWORD(v9) = v11 + 1;
        LODWORD(cb_arg_low) = next_bio->cb_arg;
        a2 += v11 + 1;
        v14 = 1;
      }

LABEL_16:
      v7 = (v9 + v7);
      LODWORD(cb_arg_low) = cb_arg_low - v9;
      v15 = HIDWORD(next_bio->cb_arg) + v9;
      LODWORD(next_bio->cb_arg) = cb_arg_low;
      HIDWORD(next_bio->cb_arg) = v15;
      if ((v14 & 1) == 0)
      {
        v6 -= v9;
        if (v6)
        {
          continue;
        }
      }

      *a2 = 0;
      return v7;
    }

    LODWORD(cb_arg_low) = BIO_read(a1->prev_bio, next_bio->callback, next_bio->method);
    if (cb_arg_low <= 0)
    {
      break;
    }

    next_bio->cb_arg = cb_arg_low;
  }

  BIO_copy_next_retry(a1);
  *a2 = 0;
  if (v7 <= 0)
  {
    v16 = cb_arg_low;
  }

  else
  {
    v16 = v7;
  }

  if (cb_arg_low < 0)
  {
    return v16;
  }

  else
  {
    return v7;
  }
}

uint64_t buffer_ctrl(BIO *b, int a2, uint64_t size, BIO *parg)
{
  next_bio = b->next_bio;
  if (a2 > 12)
  {
    if (a2 <= 115)
    {
      if (a2 != 13)
      {
        if (a2 == 101)
        {
          if (b->prev_bio)
          {
            BIO_clear_flags(b, 15);
            v11 = BIO_ctrl(b->prev_bio, 101, size, parg);
            BIO_copy_next_retry(b);
            return v11;
          }

          return 0;
        }

        goto LABEL_46;
      }

      flags = next_bio->flags;
      if (flags)
      {
        return flags;
      }

      prev_bio = b->prev_bio;
      if (prev_bio)
      {
        a2 = 13;
        goto LABEL_47;
      }

      return 0;
    }

    if (a2 == 116)
    {
      cb_arg_low = LODWORD(next_bio->cb_arg);
      if (cb_arg_low >= 1)
      {
        flags = 0;
        v15 = next_bio->callback + SHIDWORD(next_bio->cb_arg);
        do
        {
          v16 = *v15++;
          if (v16 == 10)
          {
            ++flags;
          }

          --cb_arg_low;
        }

        while (cb_arg_low);
        return flags;
      }

      return 0;
    }

    if (a2 != 117)
    {
      if (a2 != 122)
      {
        goto LABEL_46;
      }

      if (SLODWORD(next_bio->method) >= size)
      {
        callback = next_bio->callback;
        goto LABEL_51;
      }

      v9 = malloc_type_malloc(size, 0x742EEE35uLL);
      if (v9)
      {
        callback = v9;
        free(next_bio->callback);
        next_bio->callback = callback;
LABEL_51:
        LODWORD(next_bio->cb_arg) = size;
        HIDWORD(next_bio->cb_arg) = 0;
        memcpy(callback, parg, size);
        return 1;
      }

LABEL_69:
      ERR_put_error(32, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bf_buff.c", 450);
      return 0;
    }

    if (parg)
    {
      if (!LODWORD(parg->method))
      {
        method_high = HIDWORD(next_bio->method);
        method = size;
        goto LABEL_55;
      }

      method = next_bio->method;
    }

    else
    {
      method = size;
    }

    method_high = size;
LABEL_55:
    v21 = next_bio->callback;
    v22 = *&next_bio->init;
    if (method <= 4096 || method == LODWORD(next_bio->method) || (v21 = malloc_type_malloc(size, 0xF1F3AC06uLL)) != 0)
    {
      if (method_high <= 4096 || method_high == HIDWORD(next_bio->method) || (v22 = malloc_type_malloc(size, 0x62F3DFA9uLL)) != 0)
      {
        v23 = next_bio->callback;
        if (v23 != v21)
        {
          free(v23);
          next_bio->callback = v21;
          next_bio->cb_arg = 0;
          LODWORD(next_bio->method) = method;
        }

        v24 = *&next_bio->init;
        if (v24 != v22)
        {
          free(v24);
          *&next_bio->init = v22;
          *&next_bio->flags = 0;
          flags = 1;
          HIDWORD(next_bio->method) = method_high;
          return flags;
        }

        return 1;
      }

      if (v21 != next_bio->callback)
      {
        free(v21);
      }
    }

    goto LABEL_69;
  }

  if (a2 <= 9)
  {
    if (a2 != 1)
    {
      if (a2 == 3)
      {
        return next_bio->flags;
      }

LABEL_46:
      prev_bio = b->prev_bio;
      if (prev_bio)
      {
        goto LABEL_47;
      }

      return 0;
    }

    next_bio->cb_arg = 0;
    *&next_bio->flags = 0;
    prev_bio = b->prev_bio;
    if (prev_bio)
    {
      a2 = 1;
      goto LABEL_47;
    }

    return 0;
  }

  if (a2 == 10)
  {
    flags = SLODWORD(next_bio->cb_arg);
    if (!flags)
    {
      prev_bio = b->prev_bio;
      if (prev_bio)
      {
        a2 = 10;
        goto LABEL_47;
      }

      return 0;
    }

    return flags;
  }

  if (a2 != 11)
  {
    if (BIO_int_ctrl(parg, 117, SLODWORD(next_bio->method), 0))
    {
      flags = 1;
      if (BIO_int_ctrl(parg, 117, SHIDWORD(next_bio->method), 1))
      {
        return flags;
      }
    }

    return 0;
  }

  prev_bio = b->prev_bio;
  if (!prev_bio)
  {
    return 0;
  }

  if (next_bio->flags >= 1)
  {
    BIO_clear_flags(b, 15);
    v17 = next_bio->flags;
    if (v17 >= 1)
    {
      do
      {
        LODWORD(flags) = BIO_write(b->prev_bio, (*&next_bio->init + next_bio->retry_reason), v17);
        BIO_copy_next_retry(b);
        if (flags <= 0)
        {
          return flags;
        }

        v18 = next_bio->retry_reason + flags;
        next_bio->flags -= flags;
        next_bio->retry_reason = v18;
        BIO_clear_flags(b, 15);
        v17 = next_bio->flags;
      }

      while (v17 > 0);
    }

    *&next_bio->flags = 0;
    prev_bio = b->prev_bio;
  }

  a2 = 11;
LABEL_47:

  return BIO_ctrl(prev_bio, a2, size, parg);
}

uint64_t buffer_new(uint64_t a1)
{
  result = malloc_type_malloc(0x28uLL, 0x101004019361378uLL);
  if (result)
  {
    v3 = result;
    v4 = malloc_type_malloc(0x1000uLL, 0x841D5F0BuLL);
    *(v3 + 8) = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(0x1000uLL, 0xE07586AEuLL);
      *(v3 + 24) = v5;
      if (v5)
      {
        *v3 = 0x100000001000;
        *(v3 + 16) = 0;
        *(v3 + 32) = 0;
        result = 1;
        *(a1 + 32) = 1;
        *(a1 + 56) = v3;
        *(a1 + 40) = 0;
        return result;
      }

      free(*(v3 + 8));
    }

    free(v3);
    return 0;
  }

  return result;
}

uint64_t buffer_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 56);
    free(*(v2 + 8));
    free(*(v2 + 24));
    free(*(v1 + 56));
    *(v1 + 56) = 0;
    *(v1 + 32) = 0;
    result = 1;
    *(v1 + 40) = 0;
  }

  return result;
}

BIO *buffer_callback_ctrl(uint64_t a1, int a2, void (__cdecl *a3)(bio_st *, int, const char *, int, uint64_t, uint64_t))
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_callback_ctrl(result, a2, a3);
  }

  return result;
}

void ERR_load_ECDH_strings(void)
{
  if (!ERR_func_error_string(ECDH_str_functs))
  {
    ERR_load_strings(0, &ECDH_str_functs);

    ERR_load_strings(0, &ECDH_str_reasons);
  }
}

void X509V3_EXT_val_prn(BIO *out, STACK *val, int indent, int ml)
{
  if (val)
  {
    if (!ml || !sk_num(val))
    {
      BIO_printf(out, "%*s", indent, "");
      if (!sk_num(val))
      {
        BIO_puts(out, "<EMPTY>\n");
      }
    }

    if (sk_num(val) >= 1)
    {
      for (i = 0; i < sk_num(val); ++i)
      {
        if (ml)
        {
          BIO_printf(out, "%*s");
        }

        else if (i)
        {
          BIO_printf(out, ", ");
        }

        v9 = sk_value(val, i);
        v10 = *(v9 + 1);
        v11 = *(v9 + 2);
        if (v10)
        {
          if (v11)
          {
            BIO_printf(out, "%s:%s", *(v9 + 1), v11);
            if (!ml)
            {
              continue;
            }

LABEL_19:
            BIO_puts(out, "\n");
            continue;
          }

          v12 = out;
        }

        else
        {
          v12 = out;
          v10 = v11;
        }

        BIO_puts(v12, v10);
        if (ml)
        {
          goto LABEL_19;
        }
      }
    }
  }
}

uint64_t unknown_ext_print(BIO *a1, uint64_t a2, unint64_t a3, int a4, int a5)
{
  v5 = (a3 >> 16) & 0xF;
  if (v5 <= 1)
  {
    if (!v5)
    {
      return 0;
    }

    if (v5 == 1)
    {
      if (a5)
      {
        BIO_printf(a1, "%*s<Parse Error>");
      }

      else
      {
        BIO_printf(a1, "%*s<Not Supported>");
      }
    }

    return 1;
  }

  if (v5 == 2)
  {
    v10 = *(a2 + 16);
    v11 = *(v10 + 1);
    v12 = *v10;

    return ASN1_parse_dump(a1, v11, v12, a4, -1);
  }

  else
  {
    if (v5 != 3)
    {
      return 1;
    }

    v6 = *(a2 + 16);
    v7 = *(v6 + 8);
    v8 = *v6;

    return BIO_dump_indent(a1, v7, v8, a4);
  }
}

int X509V3_extensions_print(BIO *out, char *title, STACK *exts, unint64_t flag, int indent)
{
  if (sk_num(exts) < 1)
  {
    return 1;
  }

  if (title)
  {
    BIO_printf(out, "%*s%s:\n", indent, "", title);
    indent += 4;
  }

  if (sk_num(exts) < 1)
  {
    return 1;
  }

  v10 = 0;
  while (1)
  {
    v11 = sk_value(exts, v10);
    if (indent)
    {
      if (BIO_printf(out, "%*s", indent, "") < 1)
      {
        break;
      }
    }

    object = X509_EXTENSION_get_object(v11);
    i2a_ASN1_OBJECT(out, object);
    critical = X509_EXTENSION_get_critical(v11);
    v14 = " critical";
    if (!critical)
    {
      v14 = "";
    }

    if (BIO_printf(out, ":%s\n", v14) < 1)
    {
      break;
    }

    if (!X509V3_EXT_print(out, v11, flag, indent + 4))
    {
      BIO_printf(out, "%*s", indent + 4, "");
      ASN1_STRING_print(out, v11->value);
    }

    if (BIO_write(out, "\n", 1) <= 0)
    {
      break;
    }

    if (++v10 >= sk_num(exts))
    {
      return 1;
    }
  }

  return 0;
}

int X509V3_EXT_print_fp(FILE *out, X509_EXTENSION *ext, int flag, int indent)
{
  v7 = BIO_new_fp(out, 0);
  if (v7)
  {
    v8 = v7;
    v9 = X509V3_EXT_print(v7, ext, flag, indent);
    BIO_free(v8);
    LODWORD(v7) = v9;
  }

  return v7;
}

void CAST_set_key(CAST_KEY *key, int len, const unsigned __int8 *data)
{
  v94 = *MEMORY[0x277D85DE8];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  if (len < 1)
  {
    v6 = 1;
  }

  else
  {
    if (len >= 0x10)
    {
      v3 = 16;
    }

    else
    {
      v3 = len;
    }

    v4 = &v90;
    do
    {
      v5 = *data++;
      *v4 = v5;
      v4 = (v4 + 4);
      --v3;
    }

    while (v3);
    v6 = len < 11;
  }

  v7 = v90;
  v8 = DWORD1(v90) << 16;
  LODWORD(key->data[16]) = v6;
  v9 = v8 | (v7 << 24) | (DWORD2(v90) << 8) | HIDWORD(v90);
  v10 = (DWORD1(v91) << 16) | (v91 << 24) | (DWORD2(v91) << 8) | HIDWORD(v91);
  v11 = DWORD1(v92);
  v12 = DWORD2(v92);
  v13 = HIDWORD(v92);
  v14 = (DWORD1(v92) << 16) | (v92 << 24) | (DWORD2(v92) << 8) | HIDWORD(v92);
  v15 = v93;
  v16 = DWORD1(v93);
  v17 = DWORD2(v93);
  v18 = (DWORD1(v93) << 16) | (v93 << 24) | (DWORD2(v93) << 8) | HIDWORD(v93);
  v19 = CAST_S_table5[HIDWORD(v93)];
  v20 = v89;
  v21 = CAST_S_table6[v92];
  do
  {
    v22 = CAST_S_table4[v16] ^ v9 ^ v19 ^ CAST_S_table6[v15] ^ CAST_S_table7[v17] ^ v21;
    v23 = CAST_S_table6[BYTE2(v22)];
    v24 = CAST_S_table4[HIBYTE(v22)] ^ v14 ^ CAST_S_table5[BYTE1(v22)] ^ CAST_S_table7[v22] ^ CAST_S_table7[v12] ^ v23;
    v25 = CAST_S_table7[HIBYTE(v24)];
    v26 = CAST_S_table5[BYTE1(v24)] ^ CAST_S_table6[BYTE2(v24)];
    v27 = v18 ^ CAST_S_table4[v11] ^ CAST_S_table4[v24] ^ v26 ^ v25;
    v28 = CAST_S_table4[BYTE1(v27)];
    v29 = CAST_S_table5[BYTE2(v27)];
    v30 = v10 ^ CAST_S_table6[v27] ^ CAST_S_table7[HIBYTE(v27)] ^ CAST_S_table5[v13] ^ v28 ^ v29;
    v31 = CAST_S_table7[BYTE1(v24)];
    v32 = v26 ^ v25 ^ CAST_S_table5[v27] ^ v28;
    v33 = CAST_S_table6[v22];
    v34 = CAST_S_table7[BYTE1(v22)];
    v35 = CAST_S_table6[BYTE2(v27)];
    *v20 = CAST_S_table4[HIBYTE(v27)] ^ CAST_S_table6[v24] ^ CAST_S_table4[BYTE1(v22)] ^ v29 ^ v31;
    v20[1] = v32;
    v36 = CAST_S_table4[BYTE2(v24)] ^ CAST_S_table5[v24] ^ CAST_S_table6[HIBYTE(v24)] ^ CAST_S_table6[HIBYTE(v22)] ^ v31 ^ v27;
    v37 = (LOBYTE(CAST_S_table4[BYTE2(v24)]) ^ LOBYTE(CAST_S_table5[v24]) ^ LOBYTE(CAST_S_table6[HIBYTE(v24)]) ^ LOBYTE(CAST_S_table6[HIBYTE(v22)]) ^ v31 ^ v27);
    v38 = CAST_S_table5[BYTE1(v36)];
    v39 = CAST_S_table4[HIBYTE(v36)] ^ CAST_S_table6[BYTE2(v36)] ^ CAST_S_table7[(LOBYTE(CAST_S_table4[BYTE2(v24)]) ^ LOBYTE(CAST_S_table5[v24]) ^ LOBYTE(CAST_S_table6[HIBYTE(v24)]) ^ LOBYTE(CAST_S_table6[HIBYTE(v22)]) ^ v31 ^ v27)] ^ v22 ^ v34 ^ v38;
    v40 = CAST_S_table5[BYTE1(v39)] ^ CAST_S_table4[v39];
    v41 = CAST_S_table4[BYTE1(v30)] ^ CAST_S_table5[v30] ^ CAST_S_table7[HIBYTE(v22)] ^ CAST_S_table7[HIBYTE(v30)] ^ v23;
    v42 = CAST_S_table6[BYTE2(v39)] ^ CAST_S_table7[HIBYTE(v39)] ^ CAST_S_table4[BYTE2(v22)] ^ v24 ^ v40;
    v43 = (LOBYTE(CAST_S_table6[BYTE2(v39)]) ^ LOBYTE(CAST_S_table7[HIBYTE(v39)]) ^ LOBYTE(CAST_S_table4[BYTE2(v22)]) ^ v24 ^ v40);
    v44 = CAST_S_table7[HIBYTE(v42)];
    v45 = CAST_S_table4[BYTE1(v42)] ^ CAST_S_table5[BYTE2(v42)] ^ CAST_S_table6[(LOBYTE(CAST_S_table6[BYTE2(v39)]) ^ LOBYTE(CAST_S_table7[HIBYTE(v39)]) ^ LOBYTE(CAST_S_table4[BYTE2(v22)]) ^ v24 ^ v40)] ^ v44 ^ CAST_S_table5[v22] ^ v30;
    v46 = (LOBYTE(CAST_S_table4[BYTE1(v42)]) ^ LOBYTE(CAST_S_table5[BYTE2(v42)]) ^ LOBYTE(CAST_S_table6[(LOBYTE(CAST_S_table6[BYTE2(v39)]) ^ LOBYTE(CAST_S_table7[HIBYTE(v39)]) ^ LOBYTE(CAST_S_table4[BYTE2(v22)]) ^ v24 ^ v40)]) ^ v44 ^ LOBYTE(CAST_S_table5[v22]) ^ v30);
    v47 = CAST_S_table4[(LOBYTE(CAST_S_table4[BYTE2(v24)]) ^ LOBYTE(CAST_S_table5[v24]) ^ LOBYTE(CAST_S_table6[HIBYTE(v24)]) ^ LOBYTE(CAST_S_table6[HIBYTE(v22)]) ^ v31 ^ v27)];
    v20[2] = CAST_S_table5[BYTE2(v30)] ^ CAST_S_table4[HIBYTE(v30)] ^ v33 ^ v35 ^ v34;
    v20[3] = v41;
    v48 = CAST_S_table6[HIBYTE(v45)];
    v49 = CAST_S_table6[HIBYTE(v42)];
    v50 = v47 ^ CAST_S_table4[HIBYTE(v42)] ^ v38 ^ CAST_S_table7[BYTE2(v45)];
    v51 = CAST_S_table5[HIBYTE(v36)] ^ CAST_S_table4[BYTE2(v36)] ^ CAST_S_table6[BYTE1(v45)];
    v52 = CAST_S_table7[v46] ^ CAST_S_table5[BYTE2(v45)];
    v53 = CAST_S_table5[HIBYTE(v39)] ^ CAST_S_table4[BYTE2(v39)] ^ CAST_S_table6[BYTE1(v42)] ^ CAST_S_table7[v43] ^ CAST_S_table7[v39];
    v20[6] = CAST_S_table7[BYTE2(v42)] ^ CAST_S_table6[v37] ^ v40 ^ v49;
    v20[7] = v53;
    v54 = CAST_S_table4[BYTE2(v45)] ^ CAST_S_table5[v46];
    v55 = CAST_S_table7[BYTE1(v45)] ^ v36;
    v20[4] = v50 ^ v48;
    v20[5] = v51 ^ v52;
    v56 = v54 ^ v55 ^ v48 ^ v49;
    v57 = CAST_S_table5[BYTE1(v56)];
    v58 = v56;
    v59 = CAST_S_table4[HIBYTE(v56)] ^ CAST_S_table6[BYTE2(v56)] ^ CAST_S_table7[v56] ^ CAST_S_table7[BYTE1(v42)] ^ v42 ^ v57;
    v60 = (LOBYTE(CAST_S_table4[HIBYTE(v56)]) ^ LOBYTE(CAST_S_table6[BYTE2(v56)]) ^ LOBYTE(CAST_S_table7[v56]) ^ LOBYTE(CAST_S_table7[BYTE1(v42)]) ^ v42 ^ v57);
    v61 = CAST_S_table5[BYTE1(v59)] ^ CAST_S_table4[(LOBYTE(CAST_S_table4[HIBYTE(v56)]) ^ LOBYTE(CAST_S_table6[BYTE2(v56)]) ^ LOBYTE(CAST_S_table7[v56]) ^ LOBYTE(CAST_S_table7[BYTE1(v42)]) ^ v42 ^ v57)];
    v62 = CAST_S_table6[BYTE2(v59)] ^ CAST_S_table7[HIBYTE(v59)] ^ CAST_S_table4[BYTE2(v42)] ^ v45 ^ v61;
    v63 = CAST_S_table4[BYTE1(v62)] ^ CAST_S_table5[BYTE2(v62)] ^ CAST_S_table6[v62] ^ CAST_S_table7[HIBYTE(v62)] ^ CAST_S_table5[v43] ^ v39;
    v64 = CAST_S_table6[HIBYTE(v62)] ^ CAST_S_table7[BYTE2(v62)] ^ CAST_S_table6[BYTE1(v56)] ^ v61;
    v65 = CAST_S_table4[BYTE2(v59)];
    v66 = CAST_S_table7[BYTE2(v63)] ^ CAST_S_table4[BYTE2(v62)];
    v67 = CAST_S_table4[BYTE2(v56)];
    v68 = CAST_S_table7[BYTE1(v59)];
    v69 = CAST_S_table5[HIBYTE(v59)] ^ CAST_S_table6[BYTE1(v62)] ^ CAST_S_table7[v62] ^ v65 ^ v68;
    v9 = CAST_S_table5[v60] ^ CAST_S_table6[HIBYTE(v59)] ^ CAST_S_table6[HIBYTE(v56)] ^ v65 ^ v68 ^ v62;
    v70 = CAST_S_table6[BYTE2(v9)];
    v71 = CAST_S_table4[v56] ^ CAST_S_table6[HIBYTE(v63)] ^ v66;
    v10 = CAST_S_table4[HIBYTE(v9)] ^ CAST_S_table5[BYTE1(v9)] ^ CAST_S_table7[v9] ^ CAST_S_table7[BYTE1(v56)] ^ v56 ^ v70;
    v72 = (LOBYTE(CAST_S_table4[HIBYTE(v9)]) ^ LOBYTE(CAST_S_table5[BYTE1(v9)]) ^ LOBYTE(CAST_S_table7[v9]) ^ LOBYTE(CAST_S_table7[BYTE1(v56)]) ^ v56 ^ v70);
    v73 = CAST_S_table5[HIBYTE(v56)] ^ CAST_S_table6[BYTE1(v63)] ^ CAST_S_table7[v63] ^ CAST_S_table5[HIBYTE(v63)];
    v74 = CAST_S_table4[(LOBYTE(CAST_S_table4[HIBYTE(v9)]) ^ LOBYTE(CAST_S_table5[BYTE1(v9)]) ^ LOBYTE(CAST_S_table7[v9]) ^ LOBYTE(CAST_S_table7[BYTE1(v56)]) ^ v56 ^ v70)];
    v20[10] = v64;
    v20[11] = v69;
    v75 = CAST_S_table6[BYTE2(v10)];
    v76 = CAST_S_table7[HIBYTE(v10)];
    v77 = v74 ^ CAST_S_table5[BYTE1(v10)] ^ v75 ^ v76;
    v20[8] = v71 ^ v57;
    v20[9] = v73 ^ v67;
    v14 = v77 ^ v59 ^ v67;
    v13 = (v77 ^ v59 ^ v67);
    v12 = BYTE1(v14);
    v78 = CAST_S_table4[BYTE1(v14)];
    v11 = BYTE2(v14);
    v79 = CAST_S_table5[v58] ^ v63;
    v80 = CAST_S_table5[BYTE2(v14)];
    v18 = CAST_S_table6[v13] ^ CAST_S_table7[HIBYTE(v14)] ^ v79 ^ v78 ^ v80;
    v81 = CAST_S_table4[HIBYTE(v14)] ^ CAST_S_table6[v72] ^ CAST_S_table7[BYTE1(v10)] ^ CAST_S_table4[v9] ^ v80;
    v17 = BYTE1(v18);
    v16 = BYTE2(v18);
    v82 = CAST_S_table5[v13] ^ CAST_S_table5[v72] ^ v75 ^ v76 ^ v78;
    v15 = HIBYTE(v18);
    v20[12] = v81;
    v20[13] = v82;
    v19 = CAST_S_table5[v18];
    v21 = CAST_S_table6[HIBYTE(v14)];
    v83 = CAST_S_table4[BYTE1(v18)] ^ CAST_S_table7[HIBYTE(v9)] ^ CAST_S_table7[BYTE2(v18)] ^ v19 ^ v70;
    v20[14] = CAST_S_table5[BYTE2(v18)] ^ CAST_S_table4[HIBYTE(v18)] ^ CAST_S_table6[v9] ^ CAST_S_table7[BYTE1(v9)] ^ v21;
    v20[15] = v83;
    v84 = v20 == v89;
    v20 += 16;
  }

  while (v84);
  v85 = 0;
  v86.i64[0] = 0x1F0000001FLL;
  v86.i64[1] = 0x1F0000001FLL;
  v87.i64[0] = 0x1000000010;
  v87.i64[1] = 0x1000000010;
  do
  {
    v95.val[0] = *&v89[v85];
    v95.val[1] = veorq_s8(vandq_s8(*&v89[v85 + 64], v86), v87);
    vst2q_f32(key, v95);
    key = (key + 32);
    v85 += 16;
  }

  while (v85 != 64);
  v88 = *MEMORY[0x277D85DE8];
}

void ERR_load_CONF_strings(void)
{
  if (!ERR_func_error_string(CONF_str_functs))
  {
    ERR_load_strings(0, &CONF_str_functs);

    ERR_load_strings(0, &CONF_str_reasons);
  }
}

uint64_t pkey_ec_init(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x40uLL, 0x1070040E3D958DBuLL);
  if (v2)
  {
    v2[12] = 511;
    *(a1 + 40) = v2;
    return 1;
  }

  else
  {
    ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", 102);
    return 0;
  }
}

uint64_t pkey_ec_copy(uint64_t a1, uint64_t a2)
{
  result = pkey_ec_init(a1);
  if (result)
  {
    v5 = *(a2 + 40);
    v6 = *(a1 + 40);
    if (!*v5 || (result = EC_GROUP_dup(*v5), (*v6 = result) != 0))
    {
      v7 = *(v5 + 16);
      *(v6 + 8) = *(v5 + 8);
      if (!v7 || (result = EC_KEY_dup(v7), (*(v6 + 16) = result) != 0))
      {
        *(v6 + 25) = *(v5 + 25);
        v8 = *(v5 + 40);
        *(v6 + 32) = *(v5 + 32);
        *(v6 + 56) = *(v5 + 56);
        if (v8)
        {
          result = malloc_type_calloc(1uLL, *(v5 + 48), 0xBA2AF3DuLL);
          *(v6 + 40) = result;
          if (!result)
          {
            return result;
          }

          memcpy(result, *(v5 + 40), *(v5 + 48));
        }

        else
        {
          *(v6 + 40) = 0;
        }

        *(v6 + 48) = *(v5 + 48);
        return 1;
      }
    }
  }

  return result;
}

void pkey_ec_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    EC_GROUP_free(*v1);
    EC_KEY_free(*(v1 + 16));
    free(*(v1 + 40));
    free(v1);
    *(a1 + 40) = 0;
  }
}

uint64_t pkey_ec_paramgen(uint64_t a1, EVP_PKEY *a2)
{
  v2 = *(a1 + 40);
  if (!*v2)
  {
    ERR_put_error(16, 4095, 139, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", 464);
    return 0;
  }

  v4 = EC_KEY_new();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = EC_KEY_set_group(v4, *v2);
  if (v6)
  {
    EVP_PKEY_assign(a2, 408, v5);
  }

  else
  {
    EC_KEY_free(v5);
  }

  return v6;
}

uint64_t pkey_ec_keygen(uint64_t a1, EVP_PKEY *a2)
{
  v4 = *(a1 + 40);
  if (!*(a1 + 16) && !*v4)
  {
    ERR_put_error(16, 4095, 139, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", 485);
    return 0;
  }

  v5 = EC_KEY_new();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  if (!EVP_PKEY_assign(a2, 408, v5))
  {
    EC_KEY_free(v6);
    return 0;
  }

  v7 = *(a1 + 16);
  if (!v7)
  {
    if (EC_KEY_set_group(v6, *v4))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (!EVP_PKEY_copy_parameters(a2, v7))
  {
    return 0;
  }

LABEL_11:

  return EC_KEY_generate_key(v6);
}

uint64_t pkey_ec_sign(uint64_t a1, unsigned __int8 *a2, unint64_t *a3, const unsigned __int8 *a4, int a5)
{
  v6 = *(a1 + 16);
  v7 = *(v6 + 32);
  if (!a2)
  {
    v14 = ECDSA_size(*(v6 + 32));
LABEL_10:
    *a3 = v14;
    return 1;
  }

  v11 = *(a1 + 40);
  v12 = *a3;
  if (v12 < ECDSA_size(*(v6 + 32)))
  {
    ERR_put_error(16, 4095, 100, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", 176);
    return 0;
  }

  v15 = *(v11 + 8);
  if (v15)
  {
    v16 = EVP_MD_type(v15);
  }

  else
  {
    v16 = 64;
  }

  siglen = 0;
  result = ECDSA_sign(v16, a4, a5, a2, &siglen, v7);
  if (result >= 1)
  {
    v14 = siglen;
    goto LABEL_10;
  }

  return result;
}

uint64_t pkey_ec_verify(uint64_t a1, const unsigned __int8 *a2, int a3, const unsigned __int8 *a4, int a5)
{
  v9 = *(*(a1 + 16) + 32);
  v10 = *(*(a1 + 40) + 8);
  if (v10)
  {
    v11 = EVP_MD_type(v10);
  }

  else
  {
    v11 = 64;
  }

  return ECDSA_verify(v11, a4, a5, a2, a3, v9);
}

uint64_t pkey_ec_kdf_derive(void *a1, char *a2, unint64_t *a3)
{
  v6 = a1[5];
  if (*(v6 + 25) != 1)
  {
    if (a2)
    {
      if (*a3 == *(v6 + 56))
      {
        size = 0;
        if (pkey_ec_derive(a1, 0, &size))
        {
          v8 = malloc_type_calloc(1uLL, size, 0x30813402uLL);
          if (v8)
          {
            v9 = v8;
            v10 = pkey_ec_derive(a1, v8, &size);
            v11 = size;
            if (v10)
            {
              v12 = ecdh_KDF_X9_63(a2, *a3, v9, size, *(v6 + 40), *(v6 + 48), *(v6 + 32)) != 0;
            }

            else
            {
              v12 = 0;
            }

            freezero(v9, v11);
            return v12;
          }

          ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", 269);
        }
      }

      return 0;
    }

    else
    {
      *a3 = *(v6 + 56);
      return 1;
    }
  }

  return pkey_ec_derive(a1, a2, a3);
}

uint64_t pkey_ec_ctrl(uint64_t a1, int a2, int nid, EVP_MD *md)
{
  v6 = *(a1 + 40);
  if (a2 <= 4098)
  {
    if (a2 > 0xD)
    {
LABEL_15:
      if (a2 == 4097)
      {
        v9 = EC_GROUP_new_by_curve_name(nid);
        if (v9)
        {
          v10 = v9;
          EC_GROUP_free(*v6);
          *v6 = v10;
          return 1;
        }

        v12 = 141;
        v13 = 296;
        goto LABEL_52;
      }

      if (a2 == 4098)
      {
        if (*v6)
        {
          EC_GROUP_set_asn1_flag(*v6, nid);
          return 1;
        }

        v12 = 139;
        v13 = 305;
LABEL_52:
        ERR_put_error(16, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", v13);
        return 0;
      }

      return 4294967294;
    }

    if (((1 << a2) & 0x8A4) == 0)
    {
      if (a2 == 1)
      {
        if (EVP_MD_type(md) == 64 || EVP_MD_type(md) == 416 || EVP_MD_type(md) == 675 || EVP_MD_type(md) == 672 || EVP_MD_type(md) == 673 || EVP_MD_type(md) == 674 || EVP_MD_type(md) == 1031 || EVP_MD_type(md) == 1032 || EVP_MD_type(md) == 1033 || EVP_MD_type(md) == 1034)
        {
          *(v6 + 8) = md;
          return 1;
        }

        v12 = 138;
        v13 = 395;
        goto LABEL_52;
      }

      if (a2 == 13)
      {
        v7 = *(v6 + 8);
LABEL_21:
        *&md->type = v7;
        return 1;
      }

      goto LABEL_15;
    }

    return 1;
  }

  if (a2 > 4102)
  {
    if (a2 > 4104)
    {
      if (a2 == 4105)
      {
        free(*(v6 + 40));
        *(v6 + 40) = md;
        if (md)
        {
          *(v6 + 48) = nid;
        }

        else
        {
          *(v6 + 48) = 0;
        }

        return 1;
      }

      if (a2 == 4106)
      {
        *&md->type = *(v6 + 40);
        return *(v6 + 48);
      }

      return 4294967294;
    }

    if (a2 == 4103)
    {
      if (nid >= 1)
      {
        *(v6 + 56) = nid;
        return 1;
      }

      return 4294967294;
    }

    md->type = *(v6 + 56);
    return 1;
  }

  if (a2 > 4100)
  {
    if (a2 == 4101)
    {
      *(v6 + 32) = md;
      return 1;
    }

    v7 = *(v6 + 32);
    goto LABEL_21;
  }

  if (a2 != 4099)
  {
    if (nid == -2)
    {
      return *(v6 + 25);
    }

    if ((nid - 3) >= 0xFFFFFFFE)
    {
      *(v6 + 25) = nid;
      return 1;
    }

    return 4294967294;
  }

  if (nid == -2)
  {
    result = *(v6 + 24);
    if (result == -1)
    {
      return (EC_KEY_get_flags(*(*(a1 + 16) + 32)) >> 12) & 1;
    }
  }

  else
  {
    if ((nid - 2) < 0xFFFFFFFD)
    {
      return 4294967294;
    }

    *(v6 + 24) = nid;
    if (nid == -1)
    {
      EC_KEY_free(*(v6 + 16));
      *(v6 + 16) = 0;
      return 1;
    }

    v14 = *(*(a1 + 16) + 32);
    v15 = *(v14 + 24);
    if (!v15)
    {
      return 4294967294;
    }

    if (BN_is_one(v15 + 40))
    {
      return 1;
    }

    result = *(v6 + 16);
    if (result || (result = EC_KEY_dup(v14), (*(v6 + 16) = result) != 0))
    {
      if (nid)
      {
        EC_KEY_set_flags(result, 4096);
      }

      else
      {
        EC_KEY_clear_flags(result, 4096);
      }

      return 1;
    }
  }

  return result;
}

uint64_t pkey_ec_ctrl_str(uint64_t *a1, char *__s1, char *a3)
{
  if (!strcmp(__s1, "ec_paramgen_curve"))
  {
    if (EC_curve_nist2nid(a3) || OBJ_sn2nid(a3) || OBJ_ln2nid(a3))
    {
      v6 = a1;
      v7 = 6;
      goto LABEL_16;
    }

    v9 = 141;
    v10 = 429;
LABEL_21:
    ERR_put_error(16, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", v10);
    return 0;
  }

  if (!strcmp(__s1, "ec_param_enc"))
  {
    if (!strcmp(a3, "explicit") || !strcmp(a3, "named_curve"))
    {
      v6 = a1;
      v7 = 6;
      goto LABEL_16;
    }

    return 4294967294;
  }

  if (!strcmp(__s1, "ecdh_kdf_md"))
  {
    if (EVP_get_digestbyname(a3))
    {
      v6 = a1;
      v7 = 1024;
      goto LABEL_16;
    }

    v9 = 151;
    v10 = 445;
    goto LABEL_21;
  }

  if (strcmp(__s1, "ecdh_cofactor_mode"))
  {
    return 4294967294;
  }

  atoi(a3);
  v6 = a1;
  v7 = 1024;
LABEL_16:

  return EVP_PKEY_CTX_ctrl(v6, 408, v7);
}

uint64_t pkey_ec_derive(void *a1, void *a2, size_t *a3)
{
  v3 = a1[2];
  if (!v3 || (v4 = a1[3]) == 0)
  {
    ERR_put_error(16, 4095, 140, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_pmeth.c", 220);
    return 0;
  }

  v7 = *(a1[5] + 16);
  if (v7)
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    v12 = EC_KEY_get0_group(v7);
    degree = EC_GROUP_get_degree(v12);
    v14 = degree + 7;
    if (degree < -7)
    {
      v14 = degree + 14;
    }

    v10 = v14 >> 3;
    goto LABEL_13;
  }

  v7 = *(v3 + 32);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  v8 = EC_KEY_get0_public_key(*(v4 + 32));
  v9 = ECDH_compute_key(a2, *a3, v8, v7, 0);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = v9;
LABEL_13:
  *a3 = v10;
  return 1;
}

int X509_NAME_print_ex(BIO *out, X509_NAME *nm, int indent, unint64_t flags)
{
  if (flags)
  {
    return do_name_ex(send_bio_chars, out, nm, indent, flags);
  }

  else
  {
    return X509_NAME_print(out, nm, indent);
  }
}

uint64_t do_name_ex(unsigned int (*a1)(uint64_t, char *, uint64_t), uint64_t a2, X509_NAME *name, int a4, int a5)
{
  v54 = *MEMORY[0x277D85DE8];
  if (a4 >= 1)
  {
    v10 = a4;
    do
    {
      if (!a1(a2, " ", 1))
      {
        goto LABEL_58;
      }

      --v10;
    }

    while (v10);
  }

  v11 = a4 & ~(a4 >> 31);
  v12 = ((*&a5 & 0xF0000uLL) - 0x10000) >> 16;
  v13 = 0xFFFFFFFFLL;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = 0;
      v48 = 3;
      v15 = 2;
      v47 = " + ";
      v16 = "; ";
    }

    else
    {
      if (v12 != 3)
      {
        goto LABEL_60;
      }

      v48 = 3;
      v15 = 1;
      v47 = " + ";
      v14 = v11;
      v16 = "\n";
    }
  }

  else
  {
    v14 = 0;
    if (v12)
    {
      v48 = 3;
      v15 = 2;
      v47 = " + ";
      v16 = ", ";
    }

    else
    {
      v15 = 1;
      v47 = "+";
      v48 = 1;
      v16 = ",";
    }
  }

  v46 = v16;
  v17 = " = ";
  if ((*&a5 & 0x800000) == 0)
  {
    v17 = "=";
  }

  v49 = v17;
  if ((*&a5 & 0x800000) != 0)
  {
    v18 = 3;
  }

  else
  {
    v18 = 1;
  }

  v19 = X509_NAME_entry_count(name);
  if (v19 < 1)
  {
    v13 = v11;
    goto LABEL_60;
  }

  v43 = v14;
  v44 = v18;
  v20 = 0;
  v51 = v19;
  v52 = a5 & 0x600000;
  v41 = v15 + v14;
  v42 = v15;
  v21 = -1;
  LODWORD(v13) = v11;
  v45 = name;
  while (1)
  {
    if ((*&a5 & 0x100000) != 0)
    {
      v22 = v19 + ~v20;
    }

    else
    {
      v22 = v20;
    }

    entry = X509_NAME_get_entry(name, v22);
    v24 = entry;
    if (v21 == -1)
    {
      goto LABEL_32;
    }

    if (v21 != X509_NAME_ENTRY_set(entry))
    {
      break;
    }

    if (!a1(a2, v47, v48))
    {
      goto LABEL_58;
    }

    LODWORD(v13) = v13 + v48;
LABEL_32:
    v21 = X509_NAME_ENTRY_set(v24);
    object = X509_NAME_ENTRY_get_object(v24);
    data = X509_NAME_ENTRY_get_data(v24);
    v28 = OBJ_obj2nid(object);
    v29 = v28;
    if (v52 != 6291456)
    {
      v50 = data;
      if (v52 == 0x400000 || !v28)
      {
        v30 = buf;
        OBJ_obj2txt(buf, 80, object, 1);
        v31 = 0;
      }

      else if (v52 == 0x200000)
      {
        v30 = OBJ_nid2ln(v28);
        v31 = 25;
      }

      else if (v52)
      {
        v31 = 0;
        v30 = "";
      }

      else
      {
        v30 = OBJ_nid2sn(v28);
        v31 = 10;
      }

      v32 = strlen(v30);
      if (!a1(a2, v30, v32))
      {
        goto LABEL_58;
      }

      if ((a5 & 0x2000000) != 0)
      {
        v33 = __OFSUB__(v31, v32);
        v34 = v31 - v32;
        if (!((v34 < 0) ^ v33 | (v34 == 0)))
        {
          v35 = v34;
          if (v34 >= 1)
          {
            while (a1(a2, " ", 1))
            {
              if (!--v35)
              {
                goto LABEL_47;
              }
            }

            goto LABEL_58;
          }

LABEL_47:
          LODWORD(v13) = v34 + v13;
        }
      }

      name = v45;
      if (!a1(a2, v49, v44))
      {
        goto LABEL_58;
      }

      LODWORD(v13) = v44 + v32 + v13;
      data = v50;
    }

    if (v29)
    {
      v36 = 1;
    }

    else
    {
      v36 = (a5 & 0x1000000) == 0;
    }

    v37 = 128;
    if (v36)
    {
      v37 = 0;
    }

    v38 = do_print_ex(a1, a2, v37 | a5, data);
    if (v38 < 0)
    {
      goto LABEL_58;
    }

    v13 = (v38 + v13);
    ++v20;
    v19 = v51;
    if (v20 == v51)
    {
      goto LABEL_60;
    }
  }

  if (!a1(a2, v46, v42))
  {
    goto LABEL_58;
  }

  v25 = v43;
  if (!v43)
  {
LABEL_31:
    LODWORD(v13) = v41 + v13;
    goto LABEL_32;
  }

  while (a1(a2, " ", 1))
  {
    if (!--v25)
    {
      goto LABEL_31;
    }
  }

LABEL_58:
  v13 = 0xFFFFFFFFLL;
LABEL_60:
  v39 = *MEMORY[0x277D85DE8];
  return v13;
}

int X509_NAME_print_ex_fp(FILE *fp, X509_NAME *nm, int indent, unint64_t flags)
{
  if (flags)
  {

    return do_name_ex(send_fp_chars, fp, nm, indent, flags);
  }

  else
  {
    v7 = BIO_new_fp(fp, 0);
    if (v7)
    {
      v8 = v7;
      v9 = X509_NAME_print(v7, nm, indent);
      BIO_free(v8);
      return v9;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t do_print_ex(unsigned int (*a1)(uint64_t, char *, uint64_t), uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = 0;
  v25 = 0;
  v9 = *(a4 + 4);
  if ((a3 & 0x40) != 0)
  {
    v10 = ASN1_tag2str(*(a4 + 4));
    v11 = strlen(v10);
    if (!a1(a2, v10, v11))
    {
      return 0xFFFFFFFFLL;
    }

    v12 = a1(a2, ":", 1);
    v8 = v12 ? v11 + 1 : v11;
    if (!v12)
    {
      return 0xFFFFFFFFLL;
    }
  }

  if ((a3 & 0x80) != 0)
  {
    goto LABEL_28;
  }

  if ((a3 & 0x20) != 0)
  {
LABEL_13:
    v14 = 9;
    v13 = 1;
    goto LABEL_14;
  }

  v13 = asn1_tag2charwidth(v9);
  if (v13 == -1)
  {
    if ((a3 & 0x100) == 0)
    {
      goto LABEL_13;
    }

LABEL_28:
    if (a1(a2, "#", 1))
    {
      if ((a3 & 0x200) != 0)
      {
        v20 = *(a4 + 4);
        *(&a.type + 1) = 0;
        a.value.ptr = a4;
        a.type = v20;
        v21 = i2d_ASN1_TYPE(&a, 0);
        v22 = malloc_type_malloc(v21, 0x716207F2uLL);
        if (v22)
        {
          v23 = v22;
          out = v22;
          i2d_ASN1_TYPE(&a, &out);
          v19 = do_hex_dump(a1, a2, v23, v21);
          free(v23);
          if ((v19 & 0x80000000) == 0)
          {
            return (v8 + v19 + 1);
          }
        }
      }

      else
      {
        v18 = do_hex_dump(a1, a2, *(a4 + 8), *a4);
        if ((v18 & 0x80000000) == 0)
        {
          v19 = v18;
          return (v8 + v19 + 1);
        }
      }
    }

    return 0xFFFFFFFFLL;
  }

  v14 = v13 | 8;
  if (!v13)
  {
    v14 = 1;
  }

LABEL_14:
  if ((a3 & 0x10) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v13;
  }

  v16 = do_buf(*(a4 + 8), *a4, v15, a3 & 0xF, &v25, a1, 0);
  if (v16 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v17 = v25 ? (v16 + v8 + 2) : (v16 + v8);
  if (a2 && (v25 && !a1(a2, "", 1) || (do_buf(*(a4 + 8), *a4, v15, a3 & 0xF, 0, a1, a2) & 0x80000000) != 0 || v25 && !a1(a2, "", 1)))
  {
    return 0xFFFFFFFFLL;
  }

  return v17;
}

uint64_t do_buf(unsigned __int8 *str, int a2, uint64_t a3, char a4, _BYTE *a5, unsigned int (*a6)(uint64_t, char *, uint64_t), uint64_t a7)
{
  if (!a2)
  {
    return 0;
  }

  v7 = a3;
  v8 = a3 & 7;
  v9 = 0xFFFFFFFFLL;
  if (v8 <= 4 && v8 != 3)
  {
    v14 = str;
    v9 = 0;
    val = 0;
    v15 = str;
    v36 = &str[a2];
    v34 = a3 & 7;
    do
    {
      if (v15 != v14 || (a4 & 1) == 0)
      {
        v17 = 0;
      }

      else
      {
        v17 = 32;
      }

      switch(v8)
      {
        case 1u:
          v23 = *v15++;
          val = v23;
          break;
        case 2u:
          v22 = *v15;
          val = *v15 << 8;
          val = v15[1] | (v22 << 8);
          if ((v22 & 0xF8) == 0xD8)
          {
            return 0xFFFFFFFFLL;
          }

          v15 += 2;
          break;
        case 4u:
          val = *v15 << 24;
          v18 = val | (v15[1] << 16);
          val = v18;
          v19 = v18 | (v15[2] << 8);
          val = v19;
          val = v19 | v15[3];
          v20 = v19 & 0x1FF800;
          if (v18 >> 16 > 0x10 || v20 == 55296)
          {
            return 0xFFFFFFFFLL;
          }

          v15 += 4;
          break;
        default:
          v24 = UTF8_getc(v15, v36 - v15, &val);
          if ((v24 & 0x80000000) != 0)
          {
            return 0xFFFFFFFFLL;
          }

          v15 += v24;
          break;
      }

      if (v15 == v36 && (a4 & 1) != 0)
      {
        v17 = 64;
      }

      if ((v7 & 8) != 0)
      {
        v27 = v7;
        v28 = UTF8_putc(stra, 6, val);
        if ((v28 & 0x80000000) != 0)
        {
          return 0xFFFFFFFFLL;
        }

        if (v28)
        {
          v29 = v28;
          v30 = stra;
          do
          {
            v31 = *v30++;
            v32 = do_esc_char(v31, v17 | a4, a5, a6, a7);
            if (v32 < 0)
            {
              return 0xFFFFFFFFLL;
            }

            v9 = (v32 + v9);
          }

          while (--v29);
        }

        v7 = v27;
        v14 = str;
        v8 = v34;
      }

      else
      {
        v26 = do_esc_char(val, v17 | a4, a5, a6, a7);
        if (v26 < 0)
        {
          return 0xFFFFFFFFLL;
        }

        v9 = (v26 + v9);
      }
    }

    while (v15 != v36);
  }

  return v9;
}

uint64_t do_hex_dump(unsigned int (*a1)(uint64_t, _BYTE *, uint64_t), uint64_t a2, unsigned __int8 *a3, int a4)
{
  if (!a2 || !a4)
  {
    return (2 * a4);
  }

  v8 = a4;
  while (1)
  {
    v9 = *a3;
    v11[0] = do_hex_dump_hexdig[v9 >> 4];
    v11[1] = do_hex_dump_hexdig[v9 & 0xF];
    if (!a1(a2, v11, 2))
    {
      break;
    }

    ++a3;
    if (!--v8)
    {
      return (2 * a4);
    }
  }

  return 0xFFFFFFFFLL;
}

uint64_t do_esc_char(unint64_t a1, char a2, _BYTE *a3, unsigned int (*a4)(uint64_t, char *, uint64_t), uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (HIDWORD(a1))
  {
    goto LABEL_2;
  }

  if (a1 >= 0x10000)
  {
    snprintf(__str, 0x13uLL, "\\W%08lX", a1);
    v8 = 10;
    v9 = __str;
    v10 = a5;
    v11 = 10;
    goto LABEL_7;
  }

  if (a1 >= 0x100)
  {
    snprintf(__str, 0x13uLL, "\\U%04lX", a1);
    v8 = 6;
    v9 = __str;
    v10 = a5;
    v11 = 6;
    goto LABEL_7;
  }

  v14 = a1;
  if (a1 < 0x80)
  {
    v13 = char_type[a1] & a2;
  }

  else
  {
    v13 = a2 & 4;
  }

  if ((v13 & 0x61) == 0)
  {
    if ((v13 & 6) != 0)
    {
      snprintf(__str, 0x13uLL, "\\%02X", a1);
      v8 = 3;
      v9 = __str;
      v10 = a5;
      v11 = 3;
    }

    else
    {
      if (a1 != 92 || (a2 & 0xF) == 0)
      {
LABEL_24:
        if (a4(a5, &v14, 1))
        {
          result = 1;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }

        goto LABEL_10;
      }

      v9 = "\\\";
      v8 = 2;
      v10 = a5;
      v11 = 2;
    }

LABEL_7:
    if (a4(v10, v9, v11))
    {
      result = v8;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }

    goto LABEL_10;
  }

  if ((v13 & 8) != 0)
  {
    if (a3)
    {
      *a3 = 1;
    }

    goto LABEL_24;
  }

  if (!a4(a5, "\", 1))
  {
LABEL_2:
    result = 0xFFFFFFFFLL;
    goto LABEL_10;
  }

  if (a4(a5, &v14, 1))
  {
    result = 2;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

LABEL_10:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CRYPTO_ctr128_encrypt(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v14 = result;
  v15 = *a7;
  if (*a7)
  {
    v16 = a3 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (v16)
  {
    v17 = a3;
  }

  else
  {
    do
    {
      v18 = *v14++;
      *a2++ = *(a6 + v15) ^ v18;
      v17 = a3 - 1;
      v15 = (v15 + 1) & 0xF;
      if (!v15)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  if (v17 < 0x10)
  {
    v23 = v15;
    if (!v17)
    {
      goto LABEL_25;
    }

    goto LABEL_21;
  }

  do
  {
    result = a8(a5, a6, a4);
    v19 = 15;
    do
    {
      v20 = *(a5 + v19) + 1;
      *(a5 + v19) = v20;
      if (!v19)
      {
        break;
      }

      --v19;
    }

    while (!v20);
    if (v15 <= 0xF)
    {
      v21 = v15;
      do
      {
        *&a2[v21] = *(a6 + v21) ^ *&v14[v21];
        v22 = v21 >= 8;
        v21 += 8;
      }

      while (!v22);
    }

    v15 = 0;
    v23 = 0;
    v17 -= 16;
    a2 += 16;
    v14 += 16;
  }

  while (v17 > 0xF);
  if (v17)
  {
LABEL_21:
    result = a8(a5, a6, a4);
    v24 = 15;
    do
    {
      v25 = *(a5 + v24) + 1;
      *(a5 + v24) = v25;
      if (!v24)
      {
        break;
      }

      --v24;
    }

    while (!v25);
    do
    {
      a2[v23] = *(a6 + v23) ^ v14[v23];
      ++v23;
      --v17;
    }

    while (v17);
  }

LABEL_25:
  *a7 = v23;
  return result;
}

uint64_t CRYPTO_ctr128_encrypt_ctr32(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, unsigned int *a7, uint64_t (*a8)(char *, _BYTE *, unint64_t, uint64_t, uint64_t))
{
  v12 = result;
  v13 = *a7;
  if (*a7)
  {
    v14 = a3 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = a3;
  }

  else
  {
    do
    {
      v16 = *v12++;
      *a2++ = *(a6 + v13) ^ v16;
      v15 = a3 - 1;
      v13 = (v13 + 1) & 0xF;
      if (!v13)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  v17 = bswap32(*(a5 + 12));
  if (v15 >= 0x10)
  {
    do
    {
      v18 = v15 >> 4;
      if (v15 >> 4 >= 0x10000000)
      {
        v18 = 0x10000000;
      }

      v19 = v17 + v18;
      if (v18 <= v19)
      {
        v17 += v18;
      }

      else
      {
        v17 = 0;
      }

      if (v18 <= v19)
      {
        v19 = 0;
      }

      v20 = v18 - v19;
      result = a8(v12, a2, v18 - v19, a4, a5);
      *(a5 + 12) = bswap32(v17);
      if (!v17)
      {
        v21 = 11;
        do
        {
          v22 = *(a5 + v21) + 1;
          *(a5 + v21) = v22;
          if (!v21)
          {
            break;
          }

          --v21;
        }

        while (!v22);
      }

      v15 -= 16 * v20;
      a2 += 16 * v20;
      v12 += 16 * v20;
    }

    while (v15 > 0xF);
  }

  if (v15)
  {
    *a6 = 0;
    a6[1] = 0;
    result = a8(a6, a6, 1uLL, a4, a5);
    *(a5 + 12) = bswap32(v17 + 1);
    if (v17 == -1)
    {
      v23 = 11;
      do
      {
        v24 = *(a5 + v23) + 1;
        *(a5 + v23) = v24;
        if (!v23)
        {
          break;
        }

        --v23;
      }

      while (!v24);
    }

    do
    {
      a2[v13] = *(a6 + v13) ^ v12[v13];
      ++v13;
      --v15;
    }

    while (v15);
  }

  *a7 = v13;
  return result;
}

void ERR_load_GOST_strings()
{
  if (!ERR_func_error_string(GOST_str_functs))
  {
    ERR_load_strings(0, &GOST_str_functs);

    ERR_load_strings(0, &GOST_str_reasons);
  }
}

double x509_constraints_name_clear(uint64_t a1)
{
  free(*(a1 + 8));
  free(*(a1 + 16));
  free(*(a1 + 24));
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

void x509_constraints_name_free(void *a1)
{
  if (a1)
  {
    x509_constraints_name_clear(a1);

    free(a1);
  }
}

uint64_t x509_constraints_name_dup(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = *a1;
    v2[10] = *(a1 + 40);
    v4 = *(a1 + 32);
    *(v3 + 32) = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(v4, 0x8AB3AE71uLL);
      *(v3 + 24) = v5;
      if (!v5)
      {
        goto LABEL_10;
      }

      memcpy(v5, *(a1 + 24), *(a1 + 32));
    }

    v6 = *(a1 + 8);
    if (!v6 || (v7 = strdup(v6), (*(v3 + 8) = v7) != 0))
    {
      v8 = *(a1 + 16);
      if (!v8 || (v9 = strdup(v8), (*(v3 + 16) = v9) != 0))
      {
        v10 = *(a1 + 44);
        *(v3 + 60) = *(a1 + 60);
        *(v3 + 44) = v10;
        return v3;
      }
    }

LABEL_10:
    x509_constraints_name_clear(v3);
    free(v3);
    return 0;
  }

  return v3;
}

void *x509_constraints_names_new(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
  if (result)
  {
    result[3] = a1;
  }

  return result;
}

double x509_constraints_names_clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        x509_constraints_name_clear(*(*a1 + 8 * i));
        free(v4);
        v2 = *(a1 + 8);
      }
    }
  }

  free(*a1);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void x509_constraints_names_free(void *a1)
{
  if (a1)
  {
    x509_constraints_names_clear(a1);

    free(a1);
  }
}

char *x509_constraints_names_add(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 16);
  result = *a1;
  if (v3 == v5)
  {
    result = recallocarray(result, v3, v3 + 32, 8uLL);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 8);
    *(a1 + 16) += 32;
    *a1 = result;
  }

  *&result[8 * v3] = a2;
  *(a1 + 8) = v3 + 1;
  return 1;
}

void *x509_constraints_names_dup(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
  v4 = v3;
  if (v3)
  {
    *(v3 + 3) = v2;
    if (a1[1])
    {
      v5 = 0;
      while (1)
      {
        v6 = x509_constraints_name_dup(*(*a1 + 8 * v5));
        if (!v6)
        {
          x509_constraints_names_clear(v4);
          v7 = v4;
          goto LABEL_12;
        }

        v7 = v6;
        if (!x509_constraints_names_add(v4, v6))
        {
          break;
        }

        if (++v5 >= a1[1])
        {
          return v4;
        }
      }

      x509_constraints_names_clear(v4);
      free(v4);
      x509_constraints_name_clear(v7);
LABEL_12:
      free(v7);
      return 0;
    }
  }

  return v4;
}

uint64_t x509_constraints_valid_host(void *a1)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v5 = 0;
  v2 = CBS_peek_u8(a1, &v5);
  result = 0;
  if (v2 && v5 != 46)
  {
    v6 = 0;
    if (CBS_len(a1) <= 0x2E)
    {
      memset(v7, 0, sizeof(v7));
      v8 = 0;
      v9[0] = 0;
      v9[1] = 0;
      if (CBS_strdup(a1, &v6))
      {
        if (inet_pton(2, v6, v9) == 1 || inet_pton(30, v6, v7) == 1)
        {
          free(v6);
          result = 0;
          goto LABEL_10;
        }

        free(v6);
      }
    }

    result = x509_constraints_valid_domain_internal(a1, 0);
  }

LABEL_10:
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t x509_constraints_valid_domain_internal(void *a1, int a2)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  CBS_dup(a1, v13);
  v4 = CBS_len(a1);
  if (v4 > 0xFF)
  {
    return 0;
  }

  if (!v4)
  {
    return 1;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 1 - v4;
  v10 = MEMORY[0x277D85DE0];
  while (1)
  {
    result = CBS_get_u8(v13, &v14);
    if (!result)
    {
      break;
    }

    if (v14 < 1)
    {
      return 0;
    }

    if ((*(v10 + 4 * v14 + 60) & 0x500) == 0 && (v14 - 42 > 0x35 || ((1 << (v14 - 42)) & 0x20000000000019) == 0))
    {
      return 0;
    }

    if (!a2 && v14 == 42)
    {
      return 0;
    }

    if (v14 == 46)
    {
      result = 0;
      if (v6)
      {
        v12 = v8 == 0;
      }

      else
      {
        v12 = 0;
      }

      if (v12 || !v9 || v7 == 45)
      {
        return result;
      }
    }

    else
    {
      if (v14 == 45)
      {
        result = 0;
        if (!v8 || !v9)
        {
          return result;
        }
      }

      result = 0;
      if (v7 == 42 || v8 > 62)
      {
        return result;
      }

      LODWORD(result) = v8 + 1;
    }

    ++v9;
    --v6;
    v7 = v14;
    v8 = result;
    if (v9 == 1)
    {
      return 1;
    }
  }

  return result;
}

uint64_t x509_constraints_valid_sandns(void *a1)
{
  v4 = 0;
  v2 = CBS_peek_u8(a1, &v4);
  result = 0;
  if (v2 && v4 != 46)
  {
    if (CBS_len(a1) <= 3 && v4 == 42)
    {
      return 0;
    }

    else
    {
      return x509_constraints_valid_domain_internal(a1, 1);
    }
  }

  return result;
}

uint64_t x509_constraints_parse_mailbox(uint64_t result, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v26 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *__s1 = 0u;
  if (!result)
  {
    goto LABEL_57;
  }

  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  CBS_dup(result, v19);
  v3 = CBS_len(v19);
  if ((v3 - 321) < 0xFFFFFFFFFFFFFEC0)
  {
LABEL_56:
    result = 0;
    goto LABEL_57;
  }

  v4 = v3;
  v16 = a2;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  do
  {
    v18 = 0;
    if (!CBS_get_u8(v19, &v18) || v18 < 0)
    {
      goto LABEL_55;
    }

    v11 = v18;
    if (v18 <= 0xD && ((1 << v18) & 0x2401) != 0)
    {
      goto LABEL_55;
    }

    if (!v5)
    {
      if (v18 == 34)
      {
        v6 = 1;
      }

      if (v18 == 46)
      {
        goto LABEL_55;
      }
    }

    if (v7)
    {
      if (v8 > 0xFE)
      {
        goto LABEL_55;
      }

LABEL_17:
      v7 = 0;
      goto LABEL_18;
    }

    if (v10)
    {
      if (v8 > 0xFE)
      {
        goto LABEL_55;
      }

      v13 = v8 + 1;
      __s1[v8] = v18;
      if (v4 == 1)
      {
        if (v9)
        {
          goto LABEL_55;
        }

        v9 = strdup(__s1);
        if (!v9)
        {
          goto LABEL_55;
        }
      }

      v7 = 0;
    }

    else
    {
      if (v8 >= 0x40)
      {
        goto LABEL_54;
      }

      if (v6)
      {
        if (v18 != 92)
        {
          v6 = 1;
          if (v5 && v18 == 34)
          {
            v17 = 0;
            if (!CBS_peek_u8(v19, &v17) || v17 != 64)
            {
              goto LABEL_54;
            }

            v6 = 0;
            v11 = v18;
          }

          if (v11 == 9)
          {
            goto LABEL_54;
          }

          v10 = 0;
          goto LABEL_17;
        }

        v10 = 0;
        v7 = 1;
        v13 = v8;
        v6 = 1;
      }

      else
      {
        if (v18 == 92)
        {
          v17 = 0;
          if (!CBS_peek_u8(v19, &v17) || !local_part_ok(v17))
          {
LABEL_54:
            v10 = 0;
LABEL_55:
            free(v10);
            free(v9);
            goto LABEL_56;
          }

          v7 = 1;
          v11 = v18;
LABEL_47:
          if (!local_part_ok(v11))
          {
            goto LABEL_54;
          }

          v10 = 0;
          v6 = 0;
LABEL_18:
          v13 = v8 + 1;
          __s1[v8] = v11;
          goto LABEL_25;
        }

        if (v18 != 64)
        {
          v7 = 0;
          goto LABEL_47;
        }

        if (!v8)
        {
          goto LABEL_54;
        }

        v10 = strdup(__s1);
        if (!v10)
        {
          goto LABEL_55;
        }

        v13 = 0;
        v7 = 0;
        v6 = 0;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        *__s1 = 0u;
      }
    }

LABEL_25:
    --v5;
    v8 = v13;
    --v4;
  }

  while (v4);
  if (!v10)
  {
    goto LABEL_55;
  }

  if (!v9)
  {
    goto LABEL_55;
  }

  v14 = strlen(v9);
  CBS_init(v20, v9, v14);
  if (!x509_constraints_valid_host(v20))
  {
    goto LABEL_55;
  }

  if (v16)
  {
    *(v16 + 8) = v9;
    *(v16 + 16) = v10;
    result = 1;
    *v16 = 1;
  }

  else
  {
    free(v10);
    free(v9);
    result = 1;
  }

LABEL_57:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t local_part_ok(unsigned __int8 a1)
{
  v1 = a1;
  v2 = a1 - 48;
  v3 = (a1 & 0xDF) - 65;
  result = 1;
  v5 = v2 >= 0xA && v3 >= 0x1A;
  if (v5 && ((v1 - 33) > 0x3F || ((1 << (v1 - 33)) & 0xE00000005000567DLL) == 0))
  {
    v6 = v1 - 123;
    v7 = v1 == 46;
    return v6 < 4 || v7;
  }

  return result;
}

uint64_t x509_constraints_valid_domain_constraint(void *a1)
{
  if (!CBS_len(a1))
  {
    return 1;
  }

  v4 = 0;
  if (CBS_len(a1) > 2)
  {
    return x509_constraints_valid_domain_internal(a1, 0);
  }

  v2 = CBS_peek_u8(a1, &v4);
  result = 0;
  if (v2)
  {
    if (v4 != 46)
    {
      return x509_constraints_valid_domain_internal(a1, 0);
    }
  }

  return result;
}

uint64_t x509_constraints_uri_host(uint64_t a1, unint64_t a2, void **a3)
{
  if (a2 < 3)
  {
    return 0;
  }

  v17[5] = v3;
  v17[6] = v4;
  v7 = 0;
  do
  {
    v8 = *(a1 + v7);
    if (v8 < 0)
    {
      return 0;
    }

    if (v8 == 47)
    {
      v9 = a1 + v7;
      if (*(a1 + v7 + 1) == 47)
      {
        if (v7 + 2 >= a2)
        {
          return 0;
        }

        v10 = 0;
        v11 = 0;
        v12 = v9 + 2;
        v13 = v9 + 3;
        v14 = a2 - v7 - 2;
        while (1)
        {
          if (*(v13 - 1) < 0)
          {
            return 0;
          }

          v15 = *(v13 - 1) - 35;
          if (v15 <= 0x1D)
          {
            if (*(v13 - 1) == 64)
            {
              if (v10)
              {
                return 0;
              }

              v11 = 0;
              v10 = v13;
              goto LABEL_20;
            }

            if (((1 << v15) & 0x10801001) != 0)
            {
              goto LABEL_21;
            }
          }

          ++v11;
LABEL_20:
          ++v13;
          if (!--v14)
          {
LABEL_21:
            if (!v11)
            {
              return 0;
            }

            memset(v17, 0, 24);
            if (v10)
            {
              v16 = v10;
            }

            else
            {
              v16 = v12;
            }

            CBS_init(v17, v16, v11);
            result = x509_constraints_valid_host(v17);
            if (result)
            {
              if (!a3)
              {
                return 1;
              }

              result = CBS_strdup(v17, a3);
              if (result)
              {
                return 1;
              }
            }

            return result;
          }
        }
      }
    }

    ++v7;
  }

  while (a2 - 1 != v7);
  if (a3)
  {
    *a3 = strdup("");
  }

  return 1;
}

BOOL x509_constraints_sandns(uint64_t a1, unint64_t a2, char *a3, size_t a4)
{
  if (!a4)
  {
    return 1;
  }

  if (a2 >= a4)
  {
    return strncasecmp((a1 + a2 - a4), a3, a4) == 0;
  }

  return 0;
}

BOOL x509_constraints_domain(char *a1, size_t a2, char *a3, size_t a4)
{
  if (!a4)
  {
    return 1;
  }

  v5 = a1;
  if (*a3 == 46)
  {
    v6 = a2 >= a4;
    v7 = a2 - a4;
    if (!v6)
    {
      return 0;
    }

    a1 += v7;
    goto LABEL_11;
  }

  if (*a1 == 46)
  {
    if (a4 >= a2)
    {
      a1 = &a3[a4 - a2];
      v9 = a2;
      return strncasecmp(a1, v5, v9) == 0;
    }
  }

  else if (a2 == a4)
  {
LABEL_11:
    v5 = a3;
    v9 = a4;
    return strncasecmp(a1, v5, v9) == 0;
  }

  return 0;
}

BOOL x509_constraints_uri(uint64_t a1, unint64_t a2, char *a3, size_t a4, int *a5)
{
  __s = 0;
  memset(v14, 0, sizeof(v14));
  CBS_init(v14, a3, a4);
  if (!x509_constraints_uri_host(a1, a2, &__s))
  {
    v11 = 0;
    v12 = 53;
LABEL_8:
    *a5 = v12;
    goto LABEL_9;
  }

  if (!__s)
  {
    v11 = 0;
    v12 = 17;
    goto LABEL_8;
  }

  if (!x509_constraints_valid_domain_constraint(v14))
  {
    v11 = 0;
    v12 = 52;
    goto LABEL_8;
  }

  v10 = strlen(__s);
  v11 = x509_constraints_domain(__s, v10, a3, a4);
LABEL_9:
  free(__s);
  return v11;
}

uint64_t x509_constraints_ipaddr(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a4 == 2 * a2)
  {
    if (!a2)
    {
      return 1;
    }

    v4 = a2;
    while (1)
    {
      v5 = *a1++;
      if (((*a3 ^ v5) & a3[a2]) != 0)
      {
        break;
      }

      ++a3;
      if (!--v4)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t x509_constraints_general_to_bytes(unsigned int *a1, void *a2, void *a3)
{
  *a2 = 0;
  *a3 = 0;
  result = *a1;
  if (result <= 3)
  {
    if (result != 1 && result != 2)
    {
      goto LABEL_10;
    }

LABEL_7:
    v7 = *(a1 + 1);
    *a2 = *(v7 + 1);
    goto LABEL_15;
  }

  if (result == 4)
  {
    v8 = *(a1 + 1);
    if (*(v8 + 8))
    {
      v9 = i2d_X509_NAME(*(a1 + 1), 0);
      result = *a1;
      if (v9 < 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = 4;
    }

    *a2 = *(v8 + 24);
    v7 = (v8 + 32);
    goto LABEL_15;
  }

  if (result == 6)
  {
    goto LABEL_7;
  }

LABEL_10:
  if (result != 7)
  {
    return 0;
  }

  *a2 = *(*(a1 + 1) + 8);
  v7 = *(a1 + 1);
LABEL_15:
  *a3 = *v7;
  return result;
}

uint64_t x509_constraints_extract_names(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v7 = sk_value(*(a2 + 112), 0);
  if (v7)
  {
    v8 = v7;
    v9 = 1;
    v10 = a3;
    while (1)
    {
      v34 = 0;
      v35 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
      if (!v11)
      {
        goto LABEL_64;
      }

      v12 = x509_constraints_general_to_bytes(v8, &v35, &v34);
      v13 = v34;
      v14 = v35;
      CBS_init(&v31, v35, v34);
      if (v12 <= 3)
      {
        if (v12 == 1)
        {
          if (!x509_constraints_parse_mailbox(&v31, v11))
          {
            goto LABEL_34;
          }

          v10 = 0;
          goto LABEL_29;
        }

        if (v12 == 2)
        {
          if (!x509_constraints_valid_sandns(&v31))
          {
            goto LABEL_34;
          }

          if (!CBS_strdup(&v31, v11 + 1))
          {
            goto LABEL_64;
          }

          a3 = 0;
          goto LABEL_29;
        }
      }

      else
      {
        switch(v12)
        {
          case 4:
            if (!v13)
            {
              goto LABEL_34;
            }

            if (!v14)
            {
              goto LABEL_64;
            }

            v16 = malloc_type_malloc(v13, 0x8E93192CuLL);
            v11[3] = v16;
            if (!v16)
            {
              goto LABEL_64;
            }

            memcpy(v16, v14, v13);
            v11[4] = v13;
            goto LABEL_29;
          case 6:
            if (!x509_constraints_uri_host(v14, v13, v11 + 1))
            {
              goto LABEL_34;
            }

            if (!v11[1])
            {
              goto LABEL_64;
            }

            goto LABEL_29;
          case 7:
            if (v13 == 4)
            {
              v15 = 2;
LABEL_27:
              *(v11 + 10) = v15;
            }

            else
            {
              if (v13 == 16)
              {
                v15 = 30;
                goto LABEL_27;
              }

              v18 = *(v11 + 10);
              if (v18 != 2 && v18 != 30)
              {
LABEL_34:
                v19 = 53;
                goto LABEL_65;
              }
            }

            __memcpy_chk();
LABEL_29:
            *v11 = v12;
            if (!x509_constraints_names_add(a1, v11))
            {
              goto LABEL_64;
            }

            goto LABEL_30;
        }
      }

      x509_constraints_name_clear(v11);
      free(v11);
LABEL_30:
      v17 = v9 + 1;
      v8 = sk_value(*(a2 + 112), v9++);
      if (!v8)
      {
        goto LABEL_36;
      }
    }
  }

  v17 = 1;
  v10 = a3;
LABEL_36:
  subject_name = X509_get_subject_name(a2);
  if (X509_NAME_entry_count(subject_name) < 1)
  {
    return 1;
  }

  if (subject_name->modified && i2d_X509_NAME(subject_name, 0) < 0)
  {
LABEL_63:
    v11 = 0;
LABEL_64:
    v19 = 17;
LABEL_65:
    *a4 = v19;
    if (!v11)
    {
      return 0;
    }

    goto LABEL_66;
  }

  v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
  if (!v11)
  {
    goto LABEL_64;
  }

  v21 = malloc_type_malloc(SLODWORD(subject_name[1].entries), 0x40D1052DuLL);
  v11[3] = v21;
  if (!v21)
  {
    goto LABEL_64;
  }

  memcpy(v21, subject_name->hash, SLODWORD(subject_name[1].entries));
  v11[4] = SLODWORD(subject_name[1].entries);
  *v11 = 4;
  if (x509_constraints_names_add(a1, v11))
  {
    if (v10)
    {
      for (i = X509_NAME_get_index_by_NID(subject_name, 48, v17); (i & 0x80000000) == 0; i = X509_NAME_get_index_by_NID(subject_name, 48, i))
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
        entry = X509_NAME_get_entry(subject_name, i);
        if (!entry)
        {
          goto LABEL_63;
        }

        data = X509_NAME_ENTRY_get_data(entry);
        if (!data)
        {
          goto LABEL_63;
        }

        CBS_init(&v31, data->data, data->length);
        v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
        if (!v11)
        {
          goto LABEL_64;
        }

        if (!x509_constraints_parse_mailbox(&v31, v11))
        {
          goto LABEL_34;
        }

        *v11 = 1;
        if (!x509_constraints_names_add(a1, v11))
        {
          goto LABEL_64;
        }
      }

      v17 = i;
    }

    if (a3)
    {
      index_by_NID = X509_NAME_get_index_by_NID(subject_name, 13, v17);
      if ((index_by_NID & 0x80000000) == 0)
      {
        v26 = index_by_NID;
        while (1)
        {
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v27 = X509_NAME_get_entry(subject_name, v26);
          if (!v27)
          {
            goto LABEL_63;
          }

          v28 = X509_NAME_ENTRY_get_data(v27);
          if (!v28)
          {
            goto LABEL_63;
          }

          CBS_init(&v31, v28->data, v28->length);
          if (x509_constraints_valid_host(&v31))
          {
            v11 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
            if (!v11)
            {
              goto LABEL_64;
            }

            if (!CBS_strdup(&v31, v11 + 1))
            {
              goto LABEL_64;
            }

            *v11 = 2;
            if (!x509_constraints_names_add(a1, v11))
            {
              goto LABEL_64;
            }
          }

          v26 = X509_NAME_get_index_by_NID(subject_name, 13, v26);
          result = 1;
          if (v26 < 0)
          {
            return result;
          }
        }
      }
    }

    return 1;
  }

  *a4 = 17;
LABEL_66:
  x509_constraints_name_clear(v11);
  free(v11);
  return 0;
}

uint64_t x509_constraints_validate(unsigned int *a1, void ***a2, int *a3)
{
  v17 = 0;
  v18 = 0;
  if (!a2 || *a2)
  {
    return 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v7 = malloc_type_calloc(1uLL, 0x50uLL, 0x1010040B88FB30EuLL);
  if (!v7)
  {
    v13 = 17;
    if (a3)
    {
LABEL_38:
      result = 0;
      *a3 = v13;
      return result;
    }

    return 0;
  }

  v8 = v7;
  v19 = 0;
  memset(v16, 0, sizeof(v16));
  v9 = x509_constraints_general_to_bytes(a1, &v18, &v17);
  v10 = v17;
  v11 = v18;
  CBS_init(v16, v18, v17);
  if (v9 <= 3)
  {
    if (v9 == 1)
    {
      if (v10 && memchr((v11 + 1), 64, v10 - 1))
      {
        if (!x509_constraints_parse_mailbox(v16, v8))
        {
          goto LABEL_36;
        }

        goto LABEL_42;
      }

      if (CBS_len(v16) && (!CBS_peek_u8(v16, &v19) || v19 == 64 && !CBS_skip(v16, 1uLL)) || !x509_constraints_valid_domain_constraint(v16))
      {
        goto LABEL_36;
      }

      if (CBS_strdup(v16, v8 + 1))
      {
        goto LABEL_41;
      }

LABEL_21:
      v13 = 17;
      goto LABEL_37;
    }

    if (v9 != 2)
    {
      goto LABEL_42;
    }

LABEL_19:
    if (!x509_constraints_valid_domain_constraint(v16))
    {
      goto LABEL_36;
    }

    v14 = strndup(v11, v10);
    v8[1] = v14;
    if (v14)
    {
      goto LABEL_41;
    }

    goto LABEL_21;
  }

  switch(v9)
  {
    case 7:
      if (v10 == 8)
      {
        v15 = 2;
      }

      else
      {
        if (v10 != 32)
        {
          goto LABEL_36;
        }

        v15 = 30;
      }

      *(v8 + 10) = v15;
      __memcpy_chk();
      goto LABEL_41;
    case 6:
      goto LABEL_19;
    case 4:
      if (v10)
      {
        if (v11)
        {
          v12 = malloc_type_malloc(v10, 0x54E20C12uLL);
          v8[3] = v12;
          if (v12)
          {
            memcpy(v12, v11, v10);
            v8[4] = v10;
LABEL_41:
            *v8 = v9;
            break;
          }
        }

        goto LABEL_21;
      }

LABEL_36:
      v13 = 52;
LABEL_37:
      x509_constraints_name_clear(v8);
      free(v8);
      if (a3)
      {
        goto LABEL_38;
      }

      return 0;
  }

LABEL_42:
  *a2 = v8;
  return 1;
}

uint64_t x509_constraints_extract_constraints(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v17 = 0;
  v4 = *(a1 + 120);
  if (!v4)
  {
    return 1;
  }

  if (sk_num(*v4) >= 1)
  {
    v8 = 0;
    do
    {
      v9 = sk_value(*v4, v8);
      if (*(v9 + 1) || *(v9 + 2))
      {
        goto LABEL_23;
      }

      result = x509_constraints_validate(*v9, &v17, a4);
      if (!result)
      {
        return result;
      }

      v11 = v17;
      if (*v17)
      {
        if (!x509_constraints_names_add(a2, v17))
        {
          v16 = v17;
          if (v17)
          {
            x509_constraints_name_clear(v17);
            free(v16);
          }

LABEL_26:
          v15 = 17;
          goto LABEL_27;
        }
      }

      else
      {
        x509_constraints_name_clear(v17);
        free(v11);
      }

      v17 = 0;
    }

    while (++v8 < sk_num(*v4));
  }

  if (sk_num(v4[1]) < 1)
  {
    return 1;
  }

  v12 = 0;
  while (1)
  {
    v13 = sk_value(v4[1], v12);
    if (*(v13 + 1) || *(v13 + 2))
    {
      break;
    }

    result = x509_constraints_validate(*v13, &v17, a4);
    if (!result)
    {
      return result;
    }

    v14 = v17;
    if (*v17)
    {
      if (!x509_constraints_names_add(a3, v17))
      {
        x509_constraints_name_free(v17);
        goto LABEL_26;
      }
    }

    else
    {
      x509_constraints_name_clear(v17);
      free(v14);
    }

    v17 = 0;
    if (++v12 >= sk_num(v4[1]))
    {
      return 1;
    }
  }

LABEL_23:
  v15 = 49;
LABEL_27:
  result = 0;
  *a4 = v15;
  return result;
}

uint64_t x509_constraints_match(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 != *a2)
  {
    return 0;
  }

  result = 0;
  if (v2 <= 3)
  {
    if (v2 != 1)
    {
      if (v2 != 2)
      {
        return result;
      }

      v14 = *(a1 + 8);
      v15 = strlen(v14);
      v16 = *(a2 + 8);
      v17 = strlen(v16);
      if (!v17)
      {
        return 1;
      }

      if (v15 < v17)
      {
        return 0;
      }

      v18 = strncasecmp(&v14[v15 - v17], v16, v17);
      return v18 == 0;
    }

    v20 = *(a2 + 16);
    if (!v20)
    {
      goto LABEL_31;
    }

    if (!strcmp(*(a1 + 16), v20))
    {
      v18 = strcmp(*(a1 + 8), *(a2 + 8));
      return v18 == 0;
    }

    return 0;
  }

  if (v2 == 4)
  {
    v19 = *(a2 + 32);
    if (v19 <= *(a1 + 32))
    {
      v18 = memcmp(*(a2 + 24), *(a1 + 24), v19);
      return v18 == 0;
    }

    return 0;
  }

  if (v2 != 6)
  {
    if (v2 != 7)
    {
      return result;
    }

    v6 = *(a1 + 40);
    v7 = 16;
    if (v6 == 2)
    {
      v7 = 4;
    }

    v8 = 32;
    if (v6 == 2)
    {
      v8 = 8;
    }

    if (v6 == 30 || v6 == 2)
    {
      v9 = *(a2 + 40);
      if ((v9 == 30 || v9 == 2) && v6 == v9 && v8 == 2 * v7)
      {
        v10 = (a1 + 44);
        v11 = (a2 + 44);
        v12 = v7;
        result = 1;
        while (1)
        {
          v13 = *v10++;
          if (((*v11 ^ v13) & v11[v7]) != 0)
          {
            break;
          }

          ++v11;
          if (!--v12)
          {
            return result;
          }
        }
      }
    }

    return 0;
  }

LABEL_31:
  v21 = *(a1 + 8);
  v22 = strlen(v21);
  v23 = *(a2 + 8);
  v24 = strlen(v23);

  return x509_constraints_domain(v21, v22, v23, v24);
}

uint64_t x509_constraints_check(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = a1[1];
  if (!v4)
  {
    return 1;
  }

  v7 = 0;
  v8 = *(a3 + 8);
  while (!v8)
  {
LABEL_7:
    v12 = *(a2 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = *a2;
      v15 = *(*a1 + 8 * v7);
      while (1)
      {
        v16 = *v14;
        if (x509_constraints_match(v15, *v14))
        {
          break;
        }

        if (*v16 == *v15)
        {
          ++v13;
        }

        ++v14;
        if (!--v12)
        {
          if (!v13)
          {
            break;
          }

          v18 = 47;
          goto LABEL_17;
        }
      }
    }

    if (++v7 == v4)
    {
      return 1;
    }
  }

  v9 = *(*a1 + 8 * v7);
  v10 = *a3;
  v11 = v8;
  while (!x509_constraints_match(v9, *v10))
  {
    ++v10;
    if (!--v11)
    {
      goto LABEL_7;
    }
  }

  v18 = 48;
LABEL_17:
  result = 0;
  *a4 = v18;
  return result;
}

uint64_t x509_constraints_chain(const STACK *a1, int *a2, int *a3)
{
  v22 = 1;
  if (!a1)
  {
    LODWORD(v7) = 0;
    goto LABEL_21;
  }

  v6 = sk_num(a1);
  v7 = v6;
  if (!v6)
  {
LABEL_21:
    v9 = 0;
LABEL_22:
    *a2 = v22;
    *a3 = v7;
    goto LABEL_23;
  }

  if (v6 == 1)
  {
    return v7;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
  v9 = v8;
  if (!v8)
  {
    LODWORD(v7) = 0;
    v22 = 17;
    goto LABEL_22;
  }

  v8[3] = 512;
  v10 = sk_value(a1, 0);
  if (!v10 || !x509_constraints_extract_names(v9, v10, 1, &v22))
  {
    LODWORD(v7) = 0;
    goto LABEL_22;
  }

  if (v7 < 2)
  {
    v18 = 1;
    goto LABEL_24;
  }

  v21 = 0;
  v11 = 1;
  while (1)
  {
    v12 = sk_value(a1, v11);
    if (!v12)
    {
      goto LABEL_31;
    }

    v13 = v12;
    if (!*(v12 + 15))
    {
      goto LABEL_17;
    }

    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
    if (!v14)
    {
      v22 = 17;
LABEL_31:
      LODWORD(v7) = v11;
      goto LABEL_22;
    }

    v15 = v14;
    v14[3] = 512;
    v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x1080040ABB4582EuLL);
    if (!v16)
    {
      v22 = 17;
      *a2 = 17;
      *a3 = v11;
      goto LABEL_35;
    }

    v17 = v16;
    v16[3] = 512;
    if (!x509_constraints_extract_constraints(v13, v15, v16, &v22))
    {
      goto LABEL_29;
    }

    if ((v15[1] + v21 + v17[1]) >= 0x201)
    {
      break;
    }

    v21 += v15[1] + v17[1];
    if (!x509_constraints_check(v9, v15, v17, &v22))
    {
LABEL_29:
      v20 = v22;
      goto LABEL_34;
    }

    x509_constraints_names_clear(v17);
    free(v17);
    x509_constraints_names_clear(v15);
    free(v15);
LABEL_17:
    if (!x509_constraints_extract_names(v9, v13, 0, &v22))
    {
      goto LABEL_31;
    }

    ++v11;
    v18 = 1;
    if (v7 == v11)
    {
      goto LABEL_24;
    }
  }

  v20 = 17;
  v22 = 17;
LABEL_34:
  *a2 = v20;
  *a3 = v11;
  x509_constraints_names_clear(v17);
  free(v17);
LABEL_35:
  x509_constraints_names_clear(v15);
  free(v15);
LABEL_23:
  v18 = 0;
  v7 = 0;
  if (v9)
  {
LABEL_24:
    x509_constraints_names_clear(v9);
    free(v9);
    return v18;
  }

  return v7;
}

uint64_t sk_X509_POLICY_NODE_delete_if (STACK *a1, unsigned int (*a2)(char *, uint64_t), uint64_t a3)
{
  result = sk_num(a1);
  if (result < 1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = sk_value(a1, v7);
      if (!a2(v9, a3))
      {
        a1->data[v8++] = v9;
      }

      ++v7;
      result = sk_num(a1);
    }

    while (v7 < result);
  }

  a1->num = v8;
  return result;
}

int X509_policy_check(X509_POLICY_TREE **ptree, int *pexplicit_policy, STACK *certs, STACK *policy_oids, unsigned int flags)
{
  v5 = policy_oids;
  v6 = certs;
  v8 = ptree;
  *&policy_oids->num = 0;
  v9 = sk_num(ptree);
  v10 = v9 - 2;
  if (v9 < 2)
  {
    return 0;
  }

  v12 = (v9 + 1);
  if ((v6 & 0x100) != 0)
  {
    v13 = 0;
  }

  else
  {
    v13 = (v9 + 1);
  }

  if ((v6 & 0x200) != 0)
  {
    v14 = 0;
  }

  else
  {
    v14 = (v9 + 1);
  }

  v82 = v14;
  v83 = v13;
  if ((v6 & 0x400) != 0)
  {
    v12 = 0;
  }

  v81 = v12;
  v15 = sk_new_null();
  if (!v15)
  {
LABEL_147:
    v16 = 0;
LABEL_148:
    v47 = 0;
    goto LABEL_149;
  }

  v75 = pexplicit_policy;
  v16 = 0;
  v17 = v10;
  do
  {
    v18 = sk_value(v8, v17);
    if (!x509v3_cache_extensions(v18))
    {
      goto LABEL_148;
    }

    ex_pathlen = v18->ex_pathlen;
    if (!v16)
    {
      if (v17 != v10)
      {
        goto LABEL_147;
      }

      v20 = x509_policy_level_new();
      v16 = v20;
      if (!v20)
      {
        goto LABEL_148;
      }

      *(v20 + 2) = 1;
    }

    v78 = ex_pathlen;
    v80 = v17;
    v21 = v17 != 0;
    v22 = v17 - 1;
    v23 = v21;
    if (v82)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23 & ((ex_pathlen & 0x20) != 0);
    }

    crit = 0;
    ext_d2i = X509_get_ext_d2i(v18, 89, &crit, 0);
    v79 = v22;
    if (!ext_d2i)
    {
      if (crit == -1)
      {
        *(v16 + 2) = 0;
        if (sk_num(*v16) >= 1)
        {
          v40 = 0;
          do
          {
            v41 = sk_value(*v16, v40);
            x509_policy_node_free(v41);
            ++v40;
          }

          while (v40 < sk_num(*v16));
        }

        sk_zero(*v16);
        goto LABEL_59;
      }

      goto LABEL_152;
    }

    v26 = ext_d2i;
    if (!sk_num(ext_d2i))
    {
      ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 377);
LABEL_158:
      v36 = 0;
      goto LABEL_151;
    }

    sk_set_cmp_func(v26, policyinfo_cmp);
    sk_sort(v26);
    if (sk_num(v26) < 1)
    {
      v34 = *(v16 + 2);
LABEL_55:
      if (sk_is_sorted(v26))
      {
        sk_X509_POLICY_NODE_delete_if (*v16, delete_if_not_in_policies, v26);
        *(v16 + 2) = 0;
        if (!v34)
        {
          goto LABEL_57;
        }

LABEL_38:
        v36 = sk_new_null();
        if (v36)
        {
          if (sk_num(v26) < 1)
          {
LABEL_47:
            if (x509_policy_level_add_nodes(v16, v36))
            {
              goto LABEL_58;
            }
          }

          else
          {
            v37 = 0;
            while (1)
            {
              v38 = sk_value(v26, v37);
              if (OBJ_obj2nid(*v38) != 746)
              {
                if (!sk_is_sorted(*v16))
                {
                  goto LABEL_151;
                }

                if (!x509_policy_level_find(v16, *v38))
                {
                  v39 = x509_policy_node_new(*v38);
                  if (!v39 || !sk_push(v36, v39))
                  {
                    break;
                  }
                }
              }

              if (++v37 >= sk_num(v26))
              {
                goto LABEL_47;
              }
            }

            x509_policy_node_free(v39);
          }
        }

        goto LABEL_151;
      }

      goto LABEL_158;
    }

    v76 = v10;
    v27 = v8;
    v28 = v5;
    v29 = v15;
    v30 = 0;
    v31 = 0;
    do
    {
      v32 = sk_value(v26, v30);
      if (OBJ_obj2nid(*v32) == 746)
      {
        v31 = 1;
      }

      if (v30)
      {
        v33 = sk_value(v26, v30 - 1);
        if (!OBJ_cmp(*v33, *v32))
        {
          ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 395);
          v36 = 0;
          v15 = v29;
          v5 = v28;
LABEL_151:
          sk_pop_free(v36, x509_policy_node_free);
          CERTIFICATEPOLICIES_free(v26);
LABEL_152:
          v47 = 0;
LABEL_153:
          *&v5->num = v18;
          v11 = 42;
          goto LABEL_154;
        }
      }

      ++v30;
    }

    while (v30 < sk_num(v26));
    v34 = *(v16 + 2);
    if (v31)
    {
      v35 = v24;
    }

    else
    {
      v35 = 0;
    }

    v15 = v29;
    v5 = v28;
    v8 = v27;
    v10 = v76;
    if ((v35 & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v34)
    {
      goto LABEL_38;
    }

LABEL_57:
    v36 = 0;
LABEL_58:
    sk_pop_free(v36, x509_policy_node_free);
    CERTIFICATEPOLICIES_free(v26);
LABEL_59:
    v42 = v80;
    if (!v83 && !*(v16 + 2) && !sk_num(*v16))
    {
      v47 = 0;
LABEL_171:
      v11 = 43;
      goto LABEL_154;
    }

    if (!sk_push(v15, v16))
    {
      goto LABEL_148;
    }

    if (!v80)
    {
      v47 = 0;
      goto LABEL_97;
    }

    v77 = v15;
    v43 = v81;
    crit = 0;
    v44 = X509_get_ext_d2i(v18, 747, &crit, 0);
    v45 = v44;
    if (!v44 && crit != -1)
    {
      v46 = 0;
      v45 = 0;
LABEL_93:
      v47 = 0;
      goto LABEL_94;
    }

    if (!v44)
    {
      goto LABEL_118;
    }

    if (!sk_num(v44))
    {
      ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 532);
LABEL_92:
      v46 = 0;
      goto LABEL_93;
    }

    if (sk_num(v45) >= 1)
    {
      v48 = 0;
      do
      {
        v49 = sk_value(v45, v48);
        if (OBJ_obj2nid(*v49) == 746 || OBJ_obj2nid(v49[1]) == 746)
        {
          goto LABEL_92;
        }
      }

      while (++v48 < sk_num(v45));
    }

    sk_set_cmp_func(v45, compare_issuer_policy);
    sk_sort(v45);
    if (!v43)
    {
      if (!sk_is_sorted(v45))
      {
        goto LABEL_92;
      }

      sk_X509_POLICY_NODE_delete_if (*v16, delete_if_mapped, v45);
      sk_pop_free(v45, POLICY_MAPPING_free);
LABEL_118:
      v56 = sk_new_null();
      v46 = 0;
      v45 = 0;
      v47 = 0;
      if (!v56)
      {
        goto LABEL_94;
      }

      goto LABEL_119;
    }

    v50 = sk_new_null();
    if (!v50)
    {
      goto LABEL_92;
    }

    st = v50;
    if (sk_num(v45) >= 1)
    {
      v51 = 0;
      v52 = 0;
      while (2)
      {
        v53 = sk_value(v45, v51);
        v54 = v53;
        if (v52 && !OBJ_cmp(*v53, v52))
        {
          goto LABEL_88;
        }

        v52 = *v54;
        if (!sk_is_sorted(*v16))
        {
          v47 = 0;
          goto LABEL_144;
        }

        v55 = x509_policy_level_find(v16, *v54);
        if (v55)
        {
LABEL_86:
          *(v55 + 4) = 1;
        }

        else if (*(v16 + 2))
        {
          v55 = x509_policy_node_new(*v54);
          v46 = st;
          if (!v55 || !sk_push(st, v55))
          {
            x509_policy_node_free(v55);
            v47 = 0;
            v42 = v80;
            goto LABEL_94;
          }

          goto LABEL_86;
        }

        v42 = v80;
LABEL_88:
        if (++v51 >= sk_num(v45))
        {
          break;
        }

        continue;
      }
    }

    v46 = st;
    if (!x509_policy_level_add_nodes(v16, st))
    {
      goto LABEL_93;
    }

    v56 = v45;
LABEL_119:
    st = v46;
    if (sk_num(*v16) >= 1)
    {
      v64 = 0;
      do
      {
        v65 = sk_value(*v16, v64);
        if (!*(v65 + 4))
        {
          v66 = v65;
          v47 = POLICY_MAPPING_new();
          if (!v47)
          {
            goto LABEL_143;
          }

          v47->issuerDomainPolicy = OBJ_dup(*v66);
          v67 = OBJ_dup(*v66);
          v47->subjectDomainPolicy = v67;
          if (!v47->issuerDomainPolicy || !v67 || !sk_push(v56, v47))
          {
            POLICY_MAPPING_free(v47);
            v47 = 0;
            goto LABEL_143;
          }
        }

        ++v64;
      }

      while (v64 < sk_num(*v16));
    }

    sk_set_cmp_func(v56, compare_subject_policy);
    sk_sort(v56);
    v68 = x509_policy_level_new();
    v47 = v68;
    if (!v68)
    {
      goto LABEL_143;
    }

    *(v68 + 2) = *(v16 + 2);
    if (sk_num(v56) < 1)
    {
LABEL_140:
      sk_sort(v47->issuerDomainPolicy);
      v42 = v80;
      v46 = st;
      goto LABEL_95;
    }

    v69 = 0;
    v70 = 0;
    while (2)
    {
      v71 = sk_value(v56, v70);
      if (!*(v16 + 2))
      {
        if (!sk_is_sorted(*v16))
        {
          goto LABEL_143;
        }

        if (!x509_policy_level_find(v16, *v71))
        {
LABEL_139:
          if (++v70 >= sk_num(v56))
          {
            goto LABEL_140;
          }

          continue;
        }
      }

      break;
    }

    if (v69 && !OBJ_cmp(*v69, *(v71 + 1)) || (v69 = x509_policy_node_new(*(v71 + 1))) != 0 && sk_push(v47->issuerDomainPolicy, v69))
    {
      if (!sk_push(*(v69 + 1), *v71))
      {
        goto LABEL_143;
      }

      *v71 = 0;
      goto LABEL_139;
    }

    x509_policy_node_free(v69);
LABEL_143:
    v45 = v56;
    v42 = v80;
LABEL_144:
    v46 = st;
LABEL_94:
    x509_policy_level_free(v47);
    v47 = 0;
    v56 = v45;
LABEL_95:
    sk_pop_free(v56, POLICY_MAPPING_free);
    sk_pop_free(v46, x509_policy_node_free);
    v15 = v77;
    if (!v47)
    {
      v16 = 0;
      goto LABEL_153;
    }

    v16 = v47;
    if ((v78 & 0x20) == 0)
    {
LABEL_97:
      if (v83)
      {
        --v83;
      }

      if (v81)
      {
        --v81;
      }

      if (v82)
      {
        --v82;
      }

      v16 = v47;
    }

    crit = 0;
    v57 = X509_get_ext_d2i(v18, 401, &crit, 0);
    v58 = v57;
    if (!v57 && crit != -1)
    {
      goto LABEL_152;
    }

    if (!v57)
    {
      goto LABEL_111;
    }

    v59 = *v57;
    if (!*v58 && !v58[1])
    {
      ERR_put_error(11, 4095, 201, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_policy.c", 741);
LABEL_166:
      POLICY_CONSTRAINTS_free(v58);
      goto LABEL_152;
    }

    if (!apply_skip_certs(v59, &v83))
    {
      goto LABEL_166;
    }

    v60 = apply_skip_certs(v58[1], &v81);
    POLICY_CONSTRAINTS_free(v58);
    if (!v60)
    {
      goto LABEL_152;
    }

LABEL_111:
    v61 = X509_get_ext_d2i(v18, 748, &crit, 0);
    v62 = v61;
    if (!v61 && crit != -1)
    {
      goto LABEL_152;
    }

    v63 = apply_skip_certs(v61, &v82);
    ASN1_INTEGER_free(v62);
    if (!v63)
    {
      goto LABEL_152;
    }

    v17 = v79;
  }

  while (v42 >= 1);
  if (v83)
  {
    v47 = 0;
    goto LABEL_170;
  }

  if (!v75)
  {
    v47 = 0;
LABEL_169:
    if (has_explicit_policy(v15, v47))
    {
LABEL_170:
      v11 = 0;
      goto LABEL_154;
    }

    goto LABEL_171;
  }

  v73 = sk_dup(v75);
  v47 = v73;
  if (v73)
  {
    sk_set_cmp_func(v73, asn1_object_cmp);
    sk_sort(v47);
    goto LABEL_169;
  }

LABEL_149:
  v11 = 17;
LABEL_154:
  x509_policy_level_free(v16);
  sk_free(v47);
  sk_pop_free(v15, x509_policy_level_free);
  return v11;
}