uint64_t x509_verify_chain_append(uint64_t a1, X509 *a2, int *a3)
{
  v12 = 1;
  v6 = *(a1 + 16);
  v7 = sk_num(*a1) == 0;
  result = x509_constraints_extract_names(v6, a2, v7, &v12);
  if (!result)
  {
    v11 = v12;
LABEL_9:
    *a3 = v11;
    return result;
  }

  X509_up_ref(a2);
  if (!sk_push(*a1, a2))
  {
    X509_free(a2);
    result = 0;
    v11 = 17;
    goto LABEL_9;
  }

  v9 = sk_num(*a1);
  v10 = (*(a1 + 8) + 4 * (v9 - 1));
  *v10 = *a3;
  if ((v9 - 1) >= 2 && *(v10 - 1) == 20)
  {
    *(v10 - 1) = 0;
  }

  return 1;
}

uint64_t x509_verify_ctx_add_chain(uint64_t *a1, uint64_t a2, const char *a3)
{
  v6 = x509_verify_chain_last(a2);
  v7 = *a2;
  if (*a2)
  {
    v8 = sk_value(v7, 0);
    v7 = *a2;
  }

  else
  {
    v8 = 0;
  }

  v9 = sk_num(v7);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (a1[4] >= a1[9])
  {
    v29 = 22;
    goto LABEL_34;
  }

  v11 = *(a2 + 8);
  if (*(v11 + 4 * v10) == 20)
  {
    *(v11 + 4 * v10) = 0;
  }

  v12 = *a1;
  if (*a1)
  {
    *(v12 + 172) = 0;
    *(v12 + 176) = 0;
    v13 = 1;
    if (x509_verify_ctx_set_xsc_chain(a1, a2, 0, 1))
    {
      if (x509_vfy_check_trust(*a1) == 1)
      {
        if (x509_vfy_check_chain_extensions(*a1))
        {
          if (X509v3_asid_validate_path(*a1))
          {
            if (X509v3_addr_validate_path(*a1))
            {
              if (x509_vfy_check_security_level(*a1))
              {
                if (x509_constraints_chain(*(*a1 + 160), (*a1 + 176), (*a1 + 172)) || (v14 = sk_value(*(*a1 + 160), v10), v15 = *a1, v16 = *(*a1 + 172), *(a1 + 28) = *(*a1 + 176), a1[13] = v16, *(v15 + 184) = v14, (*(v15 + 64))(0)))
                {
                  if (x509_vfy_check_revocation(*a1))
                  {
                    v13 = x509_vfy_check_policy(*a1, v17, v18, v19, v20) == 0;
                  }
                }
              }
            }
          }
        }
      }
    }

    v21 = *a1;
    v22 = *(*a1 + 176);
    if (v22)
    {
      v23 = *(v21 + 172);
      if (v23 > 0x1F)
      {
        return 0;
      }

      *(*(a2 + 8) + 4 * v23) = v22;
      a1[13] = *(v21 + 172);
    }

    if (!v13)
    {
      goto LABEL_25;
    }

    return 0;
  }

LABEL_25:
  result = x509_verify_cert_valid(a1, v8, 0);
  if (!result)
  {
    return result;
  }

  if (a3)
  {
    v25 = strdup(a3);
    v26 = v25;
    if (!v25)
    {
      v28 = 17;
      goto LABEL_46;
    }

    v27 = strlen(v25);
    if (!v27)
    {
      v28 = 1;
      goto LABEL_46;
    }

    if (*v26 == 91 && v26[v27 - 1] == 93)
    {
      v26[v27 - 1] = 0;
      if (X509_check_ip_asc(v8, v26 + 1, 0) < 1)
      {
        v28 = 64;
LABEL_46:
        *(a1 + 28) = v28;
        free(v26);
        a1[13] = 0;
        v32 = *a1;
        if (!*a1)
        {
          return 0;
        }

        *(v32 + 172) = 0;
        *(v32 + 176) = v28;
        *(v32 + 184) = v8;
        result = (*(v32 + 64))(0);
        if (!result)
        {
          return result;
        }

        goto LABEL_48;
      }
    }

    else if (X509_check_host(v8, v26, v27, 32 * (*a1 == 0), 0) < 1)
    {
      v28 = 62;
      goto LABEL_46;
    }

    free(v26);
  }

  else if (*a1)
  {
    result = x509_vfy_check_id();
    if (!result)
    {
      *(a1 + 28) = *(*a1 + 176);
      return result;
    }
  }

LABEL_48:
  if (!a1[13])
  {
    v33 = *(a1 + 28);
    if (v33 != 20)
    {
      **(a2 + 8) = v33;
    }
  }

  v34 = x509_verify_chain_dup(a2);
  v35 = a1[4];
  *(a1[1] + 8 * v35) = v34;
  if (v34)
  {
    a1[4] = v35 + 1;
    *(a1 + 28) = 0;
    a1[13] = v10;
    return 1;
  }

  v29 = 17;
LABEL_34:
  *(a1 + 28) = v29;
  a1[13] = v10;
  v30 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *(v30 + 172) = v10;
  *(v30 + 176) = v29;
  *(v30 + 184) = v6;
  v31 = *(v30 + 64);

  return v31(0);
}

uint64_t x509_verify_build_chains(uint64_t result, uint64_t a2, const STACK **a3, uint64_t a4, const char *a5)
{
  v9 = result;
  if (*result && *(result + 32))
  {
    return result;
  }

  result = sk_num(*a3);
  v10 = result - (result > 0);
  if (*(v9 + 80) <= v10)
  {
    *(v9 + 112) = 22;
    *(v9 + 104) = v10;
    v11 = *v9;
    if (!*v9)
    {
      return result;
    }

    *(v11 + 172) = v10;
    *(v11 + 176) = 22;
    *(v11 + 184) = a2;
    result = (*(v11 + 64))(0);
    if (!result)
    {
      return result;
    }
  }

  v12 = *(v9 + 32);
  *(v9 + 112) = 20;
  *(v9 + 104) = v10;
  v13 = *(v9 + 24);
  if (v13)
  {
    *(v9 + 112) = v13;
  }

  v14 = *(v9 + 28);
  if (v14)
  {
    *(v9 + 104) = v14;
  }

  a = 0;
  v15 = *v9;
  if (!*v9)
  {
    if (sk_num(*(v9 + 40)) < 1)
    {
      v19 = 0;
    }

    else
    {
      v18 = 0;
      do
      {
        v19 = sk_value(*(v9 + 40), v18);
        if (x509_verify_potential_parent(v9, v19, a2))
        {
          if (a4)
          {
            v20 = (*(v19 + 14) >> 13) & 1;
          }

          else
          {
            v20 = 1;
          }

          x509_verify_consider_candidate(v9, a2, v20, v19, a3, a4, a5);
        }

        ++v18;
      }

      while (v18 < sk_num(*(v9 + 40)));
    }

    a = v19;
    goto LABEL_37;
  }

  if ((*(a2 + 57) & 0x20) != 0)
  {
    if (v10)
    {
      v16 = 19;
    }

    else
    {
      v16 = 18;
    }

    *(v9 + 112) = v16;
  }

  result = (*(v15 + 72))(&a);
  if ((result & 0x80000000) == 0)
  {
    if (result)
    {
      if (x509_verify_potential_parent(v9, a, a2))
      {
        if (a4)
        {
          v17 = (LODWORD(a->ex_pathlen) >> 13) & 1;
        }

        else
        {
          v17 = 1;
        }

        x509_verify_consider_candidate(v9, a2, v17, a, a3, a4, a5);
      }

      X509_free(a);
    }

LABEL_37:
    result = *(v9 + 48);
    if (result)
    {
      result = sk_num(result);
      if (result >= 1)
      {
        v22 = 0;
        do
        {
          a = sk_value(*(v9 + 48), v22);
          if (x509_verify_potential_parent(v9, a, a2))
          {
            x509_verify_consider_candidate(v9, a2, 0, a, a3, a4, a5);
          }

          ++v22;
          result = sk_num(*(v9 + 48));
        }

        while (v22 < result);
      }
    }

    if (*(v9 + 32) <= v12)
    {
      if (*(v9 + 104) == v10)
      {
        return x509_verify_ctx_set_xsc_chain(v9, a3, 0, 0);
      }
    }

    else
    {
      v23 = *v9;
      if (*v9)
      {
        *(v23 + 172) = v10;
        *(v23 + 176) = 0;
        *(v23 + 184) = a2;
      }
    }

    return result;
  }

  *(v9 + 112) = 66;
  *(v9 + 104) = v10;
  v21 = *v9;
  if (*v9)
  {
    *(v21 + 172) = v10;
    *(v21 + 176) = 66;
    *(v21 + 184) = a2;
    return (*(v21 + 64))(0);
  }

  return result;
}

uint64_t x509_verify_ctx_set_xsc_chain(uint64_t *a1, uint64_t a2, int a3, int a4)
{
  if (!*a1)
  {
    return 1;
  }

  v8 = sk_num(*a2);
  if (a4)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = !v9;
  v11 = *a1;
  *(v11 + 156) = v8 - v10;
  sk_pop_free(*(v11 + 160), X509_free);
  v12 = X509_chain_up_ref(*a2);
  v13 = *a1;
  *(*a1 + 160) = v12;
  if (v12)
  {
    if (a3)
    {
      *(v13 + 172) = 0;
      *(v13 + 176) = 0;
      if (sk_num(*a2) >= 1)
      {
        v14 = 0;
        while (1)
        {
          v15 = *(*(a2 + 8) + 4 * v14);
          if (v15)
          {
            break;
          }

          if (++v14 >= sk_num(*a2))
          {
            return 1;
          }
        }

        v18 = *a1;
        *(v18 + 172) = v14;
        *(v18 + 176) = v15;
      }
    }

    return 1;
  }

  *(a1 + 28) = 17;
  a1[13] = 0;
  *(v13 + 172) = 0x1100000000;
  *(v13 + 184) = 0;
  v16 = *(v13 + 64);

  return v16();
}

uint64_t x509_verify_ctx_restore_xsc_error(uint64_t *a1)
{
  if (!*a1 || a1[4] || !a1[2])
  {
    return 1;
  }

  sk_pop_free(*(*a1 + 160), X509_free);
  v3 = X509_chain_up_ref(a1[2]);
  v4 = *a1;
  *(*a1 + 160) = v3;
  if (v3)
  {
    *(v4 + 172) = vrev64_s32(a1[3]);
    return 1;
  }

  *(a1 + 28) = 17;
  a1[13] = 0;
  *(v4 + 172) = 0x1100000000;
  *(v4 + 184) = 0;
  v5 = *(v4 + 64);

  return v5();
}

char *x509_verify_chain_last(const STACK **a1)
{
  v2 = *a1;
  if (!v2)
  {
    return 0;
  }

  v3 = sk_num(v2);
  v4 = v3 - 1;
  if (v3 < 1)
  {
    return 0;
  }

  v5 = *a1;

  return sk_value(v5, v4);
}

uint64_t x509_verify_cert_valid(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 != 0;
  if (a3)
  {
    v7 = sk_num(*a3);
  }

  else
  {
    v7 = 0;
  }

  if (!x509v3_cache_extensions(a2))
  {
    v12 = 1;
    goto LABEL_24;
  }

  if (!*a1)
  {
    if ((*(a2 + 56) & 0x200) != 0)
    {
      v12 = 34;
    }

    else if (a3 && (*(a2 + 56) & 0x11) == 0x10)
    {
      v12 = 24;
    }

    else
    {
      v18 = *(a1 + 16);
      if (v18 < 1 || !X509_check_purpose(a2, v18, v6))
      {
        goto LABEL_6;
      }

      v12 = 26;
    }

LABEL_24:
    result = 0;
    *(a1 + 28) = v12;
    return result;
  }

LABEL_6:
  if (!a3)
  {
    goto LABEL_52;
  }

  v8 = x509_verify_chain_last(a3);
  if (!v8 || X509_check_issued(v8, a2))
  {
    goto LABEL_52;
  }

  *(a1 + 28) = 29;
  a1[13] = v7;
  v17 = *a1;
  if (!*a1)
  {
    return 0;
  }

  *(v17 + 172) = v7;
  *(v17 + 176) = 29;
  *(v17 + 184) = a2;
  result = (*(v17 + 64))(0);
  if (result)
  {
LABEL_52:
    if (*a1)
    {
      v9 = *(*a1 + 48);
      v10 = *(v9 + 24);
      if ((v10 & 2) != 0)
      {
        v11 = *(v9 + 8);
        a1[7] = v9 + 8;
LABEL_19:
        v13 = *(a2 + 208);
        if (v13 == -1)
        {
          v14 = 13;
        }

        else if (v11 >= v13)
        {
          v16 = *(a2 + 216);
          if (v16 == -1)
          {
            v14 = 14;
          }

          else
          {
            if (v11 <= v16)
            {
              goto LABEL_37;
            }

            v14 = 10;
          }
        }

        else
        {
          v14 = 9;
        }

        *(a1 + 28) = v14;
        a1[13] = v7;
        v19 = *a1;
        if (*a1)
        {
          *(v19 + 172) = v7;
          *(v19 + 176) = v14;
          *(v19 + 184) = a2;
          result = (*(v19 + 64))(0);
          if (!result)
          {
            return result;
          }

LABEL_37:
          v24 = 1;
          if (!a3 || !*(a2 + 120))
          {
            return 1;
          }

          v20 = x509_constraints_names_new(512);
          if (v20)
          {
            v21 = x509_constraints_names_new(512);
            if (v21)
            {
              if (x509_constraints_extract_constraints(a2, v20, v21, &v24) && x509_constraints_check(*(a3 + 16), v20, v21, &v24))
              {
                x509_constraints_names_free(v21);
                x509_constraints_names_free(v20);
                return 1;
              }

              goto LABEL_46;
            }
          }

          else
          {
            v21 = 0;
          }

          v24 = 17;
LABEL_46:
          *(a1 + 28) = v24;
          x509_constraints_names_free(v21);
          x509_constraints_names_free(v20);
          v22 = *(a1 + 28);
          a1[13] = v7;
          v23 = *a1;
          if (*a1)
          {
            *(v23 + 172) = v7;
            *(v23 + 176) = v22;
            *(v23 + 184) = a2;
            result = (*(v23 + 64))(0);
            if (!result)
            {
              return result;
            }

            return 1;
          }
        }

        return 0;
      }

      if ((v10 & 0x200000) != 0)
      {
        goto LABEL_37;
      }
    }

    a1[7] = 0;
    v11 = time(0);
    goto LABEL_19;
  }

  return result;
}

void *x509_verify_chain_dup(uint64_t a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x30040275E93A9uLL);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = X509_chain_up_ref(*a1);
  *v2 = v3;
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = malloc_type_calloc(0x20uLL, 4uLL, 0x100004052888210uLL);
  v2[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = *(a1 + 8);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[3];
  v4[2] = v5[2];
  v4[3] = v8;
  *v4 = v6;
  v4[1] = v7;
  v9 = v5[4];
  v10 = v5[5];
  v11 = v5[7];
  v4[6] = v5[6];
  v4[7] = v11;
  v4[4] = v9;
  v4[5] = v10;
  v12 = x509_constraints_names_dup(*(a1 + 16));
  v2[2] = v12;
  if (!v12)
  {
LABEL_5:
    x509_verify_chain_free(v2);
    return 0;
  }

  return v2;
}

uint64_t x509_verify_potential_parent(uint64_t a1, X509 *a2, X509 *a3)
{
  result = x509v3_cache_extensions(a2);
  if (result)
  {
    if (*a1)
    {
      v7 = *(*a1 + 80);

      return v7();
    }

    else
    {
      return X509_check_issued(a3, a2) != 0;
    }
  }

  return result;
}

void x509_verify_consider_candidate(uint64_t a1, uint64_t a2, int a3, uint64_t a4, const STACK **a5, uint64_t a6, const char *a7)
{
  v14 = sk_num(*a5);
  if (sk_num(*a5) < 1)
  {
LABEL_5:
    v17 = *(a1 + 96);
    *(a1 + 96) = v17 + 1;
    if (v17 >= 0x101)
    {
      v18 = v14;
      v19 = 22;
      goto LABEL_7;
    }

    v22 = x509_issuer_cache_find(a4 + 144, a2 + 144);
    if (v22 < 0)
    {
      pubkey = X509_get_pubkey(a4);
      if (!pubkey)
      {
        v26 = 6;
        *(a1 + 112) = 6;
LABEL_21:
        *(a1 + 104) = v14;
        v27 = *a1;
        if (!*a1)
        {
          return;
        }

        *(v27 + 172) = v14;
        *(v27 + 176) = v26;
        *(v27 + 184) = a4;
        if (!(*(v27 + 64))(0))
        {
          return;
        }

        goto LABEL_23;
      }

      v24 = pubkey;
      if (X509_verify(a2, pubkey) <= 0)
      {
        v25 = 0;
        *(a1 + 112) = 7;
      }

      else
      {
        v25 = 1;
      }

      x509_issuer_cache_add((a4 + 144), (a2 + 144), v25);
      EVP_PKEY_free(v24);
      if (!v25)
      {
LABEL_20:
        v26 = *(a1 + 112);
        goto LABEL_21;
      }
    }

    else if (!v22)
    {
      goto LABEL_20;
    }

LABEL_23:
    if (!x509_verify_cert_valid(a1, a4, a5))
    {
      return;
    }

    v28 = x509_verify_chain_dup(a5);
    if (v28)
    {
      v29 = v28;
      if (x509_verify_chain_append(v28, a4, (a1 + 112)))
      {
        if (a3)
        {
          if (x509_verify_ctx_set_xsc_chain(a1, v29, 0, 1))
          {
            x509_verify_ctx_add_chain(a1, v29, a7);
          }
        }

        else
        {
          x509_verify_build_chains(a1, a4, v29, a6, a7);
        }
      }

      else
      {
        v30 = *(a1 + 112);
        *(a1 + 104) = v14;
        v31 = *a1;
        if (*a1)
        {
          *(v31 + 172) = v14;
          *(v31 + 176) = v30;
          *(v31 + 184) = a4;
          (*(v31 + 64))(0);
        }
      }

      x509_verify_chain_free(v29);
      return;
    }

    v18 = v14;
    v19 = 17;
LABEL_7:
    *(a1 + 112) = v19;
    *(a1 + 104) = v18;
    v20 = *a1;
    if (*a1)
    {
      *(v20 + 172) = v14;
      *(v20 + 176) = v19;
      *(v20 + 184) = a4;
      v21 = *(v20 + 64);

      v21(0);
    }

    return;
  }

  v15 = 0;
  while (1)
  {
    v16 = sk_value(*a5, v15);
    if (!X509_cmp(v16, a4))
    {
      break;
    }

    if (++v15 >= sk_num(*a5))
    {
      goto LABEL_5;
    }
  }
}

uint64_t Gost2814789_set_sbox(uint64_t a1, int a2)
{
  if (a2 != 824)
  {
    v3 = &gost_cipher_list;
    v4 = 8;
    while (--v4)
    {
      v2 = v3 + 6;
      v5 = v3[6];
      v3 += 6;
      if (v5 == a2)
      {
        goto LABEL_6;
      }
    }

    return 0;
  }

  v2 = &gost_cipher_list;
LABEL_6:
  v6 = v2[1];
  *(a1 + 4132) = *(a1 + 4132) & 0xFE | v2[2] & 1;
  if (!v6)
  {
    return 0;
  }

  for (i = 0; i != 256; ++i)
  {
    v8 = i >> 4;
    *(a1 + 32) = ((*(v6 + 16 + (i & 0xF)) << 24) | (*(v6 + v8) << 28)) >> 21;
    HIDWORD(v9) = (*(v6 + 48 + (i & 0xF)) << 16) | (*(v6 + 32 + v8) << 20);
    LODWORD(v9) = HIDWORD(v9);
    *(a1 + 1056) = v9 >> 21;
    *(a1 + 2080) = (*(v6 + 80 + (i & 0xF)) << 19) | (*(v6 + 64 + v8) << 23);
    *(a1 + 3104) = (*(v6 + 112 + (i & 0xF)) << 11) | (*(v6 + 96 + v8) << 15);
    a1 += 4;
  }

  return 1;
}

uint64_t Gost2814789_set_key(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 != 256)
  {
    return 0;
  }

  for (i = 0; i != 32; i += 4)
  {
    v4 = *(a2 + i);
    *(a1 + i) = v4;
    v5 = v4 | (*(a2 + i + 1) << 8);
    *(a1 + i) = v5;
    v6 = v5 | (*(a2 + i + 2) << 16);
    *(a1 + i) = v6;
    *(a1 + i) = v6 | (*(a2 + i + 3) << 24);
  }

  *(a1 + 4128) = 0;
  return 1;
}

uint64_t Gost2814789_cryptopro_key_mesh(int *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  Gost2814789_decrypt(CryptoProKeyMeshingKey, v5, a1);
  Gost2814789_decrypt(&CryptoProKeyMeshingKey[2], &v6, a1);
  Gost2814789_decrypt(&CryptoProKeyMeshingKey[4], &v7, a1);
  result = Gost2814789_decrypt(&CryptoProKeyMeshingKey[6], &v8, a1);
  for (i = 0; i != 8; ++i)
  {
    a1[i] = v5[i];
  }

  a1[1032] = 0;
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

STACK *__cdecl i2v_GENERAL_NAMES(X509V3_EXT_METHOD *method, GENERAL_NAMES *gen, STACK *extlist)
{
  if (extlist)
  {
    v4 = extlist;
    v5 = 0;
  }

  else
  {
    v4 = sk_new_null();
    v5 = v4;
    if (!v4)
    {
      return v4;
    }
  }

  if (sk_num(gen) >= 1)
  {
    v6 = 0;
    while (1)
    {
      v7 = sk_value(gen, v6);
      if (!v7)
      {
        break;
      }

      v8 = i2v_GENERAL_NAME(v7, v7, v4);
      if (!v8)
      {
        break;
      }

      v4 = v8;
      if (++v6 >= sk_num(gen))
      {
        return v4;
      }
    }

    sk_pop_free(v5, X509V3_conf_free);
    return 0;
  }

  return v4;
}

STACK *v2i_subject_alt(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, const STACK *a3)
{
  v6 = sk_new_null();
  if (!v6)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 402);
    return v6;
  }

  if (sk_num(a3) >= 1)
  {
    v7 = 0;
    while (1)
    {
      v8 = sk_value(a3, v7);
      if (!name_cmp(v8->name, "email"))
      {
        value = v8->value;
        if (value)
        {
          if (!strcmp(value, "copy"))
          {
            break;
          }
        }
      }

      if (!name_cmp(v8->name, "email"))
      {
        v15 = v8->value;
        if (v15)
        {
          if (!strcmp(v15, "move"))
          {
            v12 = a2;
            v13 = v6;
            v14 = 1;
LABEL_16:
            if (!copy_email(v12, v13, v14))
            {
              goto LABEL_20;
            }

            goto LABEL_8;
          }
        }
      }

      v9 = v2i_GENERAL_NAME_ex(0, a1, a2, v8, 0);
      if (!v9)
      {
        goto LABEL_20;
      }

      v10 = v9;
      if (!sk_push(v6, v9))
      {
        GENERAL_NAME_free(v10);
LABEL_20:
        sk_pop_free(v6, GENERAL_NAME_free);
        return 0;
      }

LABEL_8:
      if (++v7 >= sk_num(a3))
      {
        return v6;
      }
    }

    v12 = a2;
    v13 = v6;
    v14 = 0;
    goto LABEL_16;
  }

  return v6;
}

STACK *v2i_issuer_alt(X509V3_EXT_METHOD *a1, X509V3_CTX *a2, const STACK *a3)
{
  v6 = sk_new_null();
  if (!v6)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 326);
    return v6;
  }

  if (sk_num(a3) >= 1)
  {
    for (i = 0; i < sk_num(a3); ++i)
    {
      v8 = sk_value(a3, i);
      if (!name_cmp(v8->name, "issuer") && (value = v8->value) != 0 && !strcmp(value, "copy"))
      {
        if (!a2)
        {
          goto LABEL_25;
        }

        if (a2->flags != 1)
        {
          issuer_cert = a2->issuer_cert;
          if (!issuer_cert)
          {
LABEL_25:
            v19 = 127;
            v20 = 365;
            goto LABEL_27;
          }

          ext_by_NID = X509_get_ext_by_NID(issuer_cert, 85, -1);
          if ((ext_by_NID & 0x80000000) == 0)
          {
            ext = X509_get_ext(a2->issuer_cert, ext_by_NID);
            if (!ext || (v15 = X509V3_EXT_d2i(ext)) == 0)
            {
              v19 = 126;
              v20 = 373;
              goto LABEL_27;
            }

            v16 = v15;
            if (sk_num(v15) >= 1)
            {
              v17 = 0;
              while (1)
              {
                v18 = sk_value(v16, v17);
                if (!sk_push(v6, v18))
                {
                  break;
                }

                if (++v17 >= sk_num(v16))
                {
                  goto LABEL_21;
                }
              }

              v19 = 65;
              v20 = 380;
LABEL_27:
              ERR_put_error(34, 4095, v19, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", v20);
LABEL_28:
              sk_pop_free(v6, GENERAL_NAME_free);
              return 0;
            }

LABEL_21:
            sk_free(v16);
          }
        }
      }

      else
      {
        v9 = v2i_GENERAL_NAME_ex(0, a1, a2, v8, 0);
        if (!v9)
        {
          goto LABEL_28;
        }

        v10 = v9;
        if (!sk_push(v6, v9))
        {
          GENERAL_NAME_free(v10);
          goto LABEL_28;
        }
      }
    }
  }

  return v6;
}

STACK *__cdecl i2v_GENERAL_NAME(X509V3_EXT_METHOD *method, GENERAL_NAME *gen, STACK *ret)
{
  v21 = *MEMORY[0x277D85DE8];
  extlist = ret;
  if (ret)
  {
    v4 = 0;
    goto LABEL_4;
  }

  result = sk_new_null();
  v4 = result;
  extlist = result;
  if (result)
  {
LABEL_4:
    type = gen->type;
    if (gen->type <= 3)
    {
      if (type > 1)
      {
        if (type == 2)
        {
          v8 = *(gen->d.ptr + 1);
          v9 = "DNS";
          goto LABEL_25;
        }

        if (type != 3)
        {
          goto LABEL_37;
        }

        v7 = "X400Name";
      }

      else
      {
        if (type)
        {
          if (type != 1)
          {
            goto LABEL_37;
          }

          v8 = *(gen->d.ptr + 1);
          v9 = "email";
          goto LABEL_25;
        }

        v7 = "othername";
      }
    }

    else
    {
      if (type > 5)
      {
        if (type != 6)
        {
          if (type != 7)
          {
            if (type == 8)
            {
              if (!i2t_ASN1_OBJECT(buf, 256, gen->d.registeredID))
              {
                goto LABEL_38;
              }

              v7 = "Registered ID";
              goto LABEL_35;
            }

LABEL_37:
            result = extlist;
            goto LABEL_39;
          }

          ptr = gen->d.ptr;
          v12 = *(ptr + 1);
          v13 = *ptr;
          if (v13 == 16)
          {
            buf[0] = 0;
            v15 = *v12;
            v14 = v12 + 3;
            snprintf(__str, 5uLL, "%X", __rev16(v15));
            __strlcat_chk();
            v16 = 7;
            do
            {
              __strlcat_chk();
              snprintf(__str, 5uLL, "%X", __rev16(*(v14 - 1)));
              __strlcat_chk();
              v14 += 2;
              --v16;
            }

            while (v16);
          }

          else
          {
            if (v13 != 4)
            {
              v7 = "IP Address";
              v10 = "<invalid>";
LABEL_36:
              if (X509V3_add_value(v7, v10, &extlist))
              {
                goto LABEL_37;
              }

LABEL_38:
              sk_pop_free(v4, X509V3_conf_free);
              result = 0;
              goto LABEL_39;
            }

            snprintf(buf, 0x100uLL, "%d.%d.%d.%d", *v12, v12[1], v12[2], v12[3]);
          }

          v7 = "IP Address";
LABEL_35:
          v10 = buf;
          goto LABEL_36;
        }

        v8 = *(gen->d.ptr + 1);
        v9 = "URI";
LABEL_25:
        if (!X509V3_add_value_uchar(v9, v8, &extlist))
        {
          goto LABEL_38;
        }

        goto LABEL_37;
      }

      if (type == 4)
      {
        if (!X509_NAME_oneline(gen->d.directoryName, buf, 256))
        {
          goto LABEL_38;
        }

        v7 = "DirName";
        goto LABEL_35;
      }

      if (type != 5)
      {
        goto LABEL_37;
      }

      v7 = "EdiPartyName";
    }

    v10 = "<unsupported>";
    goto LABEL_36;
  }

LABEL_39:
  v17 = *MEMORY[0x277D85DE8];
  return result;
}

int GENERAL_NAME_print(BIO *out, GENERAL_NAME *gen)
{
  type = gen->type;
  if (gen->type <= 3)
  {
    if (type > 1)
    {
      if (type == 2)
      {
        ptr = gen->d.ptr;
        v15 = *ptr;
        v18 = *(ptr + 1);
        BIO_printf(out, "DNS:%.*s");
      }

      else
      {
        BIO_printf(out, "X400Name:<unsupported>");
      }
    }

    else if (type)
    {
      if (type == 1)
      {
        v5 = gen->d.ptr;
        v14 = *v5;
        v17 = *(v5 + 1);
        BIO_printf(out, "email:%.*s");
      }
    }

    else
    {
      BIO_printf(out, "othername:<unsupported>");
    }
  }

  else if (type <= 5)
  {
    if (type == 4)
    {
      BIO_printf(out, "DirName: ");
      X509_NAME_print_ex(out, gen->d.directoryName, 0, 0x82031FuLL);
    }

    else
    {
      BIO_printf(out, "EdiPartyName:<unsupported>");
    }
  }

  else
  {
    switch(type)
    {
      case 6:
        v7 = gen->d.ptr;
        v16 = *v7;
        v19 = *(v7 + 1);
        BIO_printf(out, "URI:%.*s");
        break;
      case 7:
        v8 = gen->d.ptr;
        v9 = *(v8 + 1);
        v10 = *v8;
        if (v10 == 16)
        {
          BIO_printf(out, "IP Address");
          v12 = 0;
          do
          {
            BIO_printf(out, ":%X", __rev16(*&v9[v12]));
            v12 += 2;
          }

          while (v12 != 16);
          BIO_puts(out, "\n");
        }

        else if (v10 == 4)
        {
          v11 = *v9;
          v21 = v9[2];
          v22 = v9[3];
          v20 = v9[1];
          BIO_printf(out, "IP Address:%d.%d.%d.%d");
        }

        else
        {
          BIO_printf(out, "IP Address:<invalid>");
        }

        break;
      case 8:
        BIO_printf(out, "Registered ID");
        i2a_ASN1_OBJECT(out, gen->d.registeredID);
        break;
    }
  }

  return 1;
}

GENERAL_NAMES *__cdecl v2i_GENERAL_NAMES(X509V3_EXT_METHOD *method, X509V3_CTX *ctx, STACK *nval)
{
  v6 = sk_new_null();
  if (v6)
  {
    if (sk_num(nval) >= 1)
    {
      v7 = 0;
      while (1)
      {
        v8 = sk_value(nval, v7);
        v9 = v2i_GENERAL_NAME_ex(0, method, ctx, v8, 0);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        if (!sk_push(v6, v9))
        {
          GENERAL_NAME_free(v10);
          break;
        }

        if (++v7 >= sk_num(nval))
        {
          return v6;
        }
      }

      sk_pop_free(v6, GENERAL_NAME_free);
      return 0;
    }
  }

  else
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 500);
  }

  return v6;
}

GENERAL_NAME *__cdecl v2i_GENERAL_NAME_ex(GENERAL_NAME *out, X509V3_EXT_METHOD *method, X509V3_CTX *ctx, CONF_VALUE *cnf, int is_nc)
{
  v20 = 0;
  v19 = 0;
  value = cnf->value;
  if (!value)
  {
    ERR_put_error(34, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 634);
    return 0;
  }

  name = cnf->name;
  if (name_cmp(name, "email"))
  {
    if (name_cmp(name, "URI"))
    {
      if (name_cmp(name, "DNS"))
      {
        if (name_cmp(name, "RID"))
        {
          if (name_cmp(name, "IP"))
          {
            if (name_cmp(name, "dirName"))
            {
              if (name_cmp(name, "otherName"))
              {
                ERR_put_error(34, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 653);
                ERR_asprintf_error_data("name=%s", name);
                return 0;
              }

              v12 = 0;
            }

            else
            {
              v12 = 4;
            }
          }

          else
          {
            v12 = 7;
          }
        }

        else
        {
          v12 = 8;
        }
      }

      else
      {
        v12 = 2;
      }
    }

    else
    {
      v12 = 6;
    }
  }

  else
  {
    v12 = 1;
  }

  v13 = a2i_GENERAL_NAME(out, v10, ctx, v12, value, is_nc);
  v11 = v13;
  if (!v13)
  {
    return v11;
  }

  memset(v18, 0, sizeof(v18));
  if (is_nc)
  {
    v17 = 0;
    if (x509_constraints_validate(v13, &v17, 0))
    {
      x509_constraints_name_free(v17);
      return v11;
    }

    ERR_put_error(34, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 670);
    ERR_asprintf_error_data("name=%s");
    goto LABEL_40;
  }

  v15 = x509_constraints_general_to_bytes(v13, &v20, &v19);
  CBS_init(v18, v20, v19);
  if (v15 > 5)
  {
    if (v15 == 6)
    {
      if (x509_constraints_uri_host(v20, v19, 0))
      {
        return v11;
      }

      v16 = 691;
      goto LABEL_39;
    }

    if (v15 == 7 && v19 != 4 && v19 != 16)
    {
      ERR_put_error(34, 4095, 118, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 707);
      ERR_asprintf_error_data("name=%s len=%zu");
      goto LABEL_40;
    }
  }

  else
  {
    if (v15 == 1)
    {
      if (x509_constraints_parse_mailbox(v18, 0))
      {
        return v11;
      }

      v16 = 699;
      goto LABEL_39;
    }

    if (v15 == 2 && !x509_constraints_valid_sandns(v18))
    {
      v16 = 683;
LABEL_39:
      ERR_put_error(34, 4095, 119, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", v16);
      ERR_asprintf_error_data("name=%s value='%.*s'");
LABEL_40:
      if (!out)
      {
        GENERAL_NAME_free(v11);
      }

      return 0;
    }
  }

  return v11;
}

GENERAL_NAME *a2i_GENERAL_NAME(GENERAL_NAME *a1, int a2, X509V3_CTX *a3, int a4, char *__s, int a6)
{
  if (!__s)
  {
    ERR_put_error(34, 4095, 124, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 536);
    return 0;
  }

  v11 = a1;
  if (a1 || (v11 = GENERAL_NAME_new()) != 0)
  {
    if (a4 > 5)
    {
      if (a4 != 6)
      {
        if (a4 == 7)
        {
          if (a6)
          {
            v29 = a2i_IPADDRESS_NC(__s);
          }

          else
          {
            v29 = a2i_IPADDRESS(__s);
          }

          v11->d.ptr = v29;
          if (v29)
          {
            goto LABEL_33;
          }

          v30 = 118;
          v31 = 575;
        }

        else
        {
          if (a4 != 8)
          {
            goto LABEL_22;
          }

          v16 = OBJ_txt2obj(__s, 0);
          if (v16)
          {
            v11->d.ptr = v16;
            goto LABEL_33;
          }

          v30 = 119;
          v31 = 561;
        }

        ERR_put_error(34, 4095, v30, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", v31);
        ERR_asprintf_error_data("value=%s", __s);
        if (!a1)
        {
          goto LABEL_44;
        }

        return 0;
      }
    }

    else if ((a4 - 1) >= 2)
    {
      if (!a4)
      {
        v22 = strchr(__s, 59);
        if (v22)
        {
          v23 = v22;
          v24 = OTHERNAME_new();
          v11->d.ptr = v24;
          if (v24)
          {
            ASN1_TYPE_free(v24->value);
            v25 = ASN1_generate_v3(v23 + 1, a3);
            *(v11->d.ptr + 1) = v25;
            if (v25)
            {
              v26 = v23 - __s + 1;
              v27 = malloc_type_malloc(v26, 0xB0807273uLL);
              if (v27)
              {
                v28 = v27;
                strlcpy(v27, __s, v26);
                *v11->d.ptr = OBJ_txt2obj(v28, 0);
                free(v28);
              }

              else
              {
                *v11->d.ptr = 0;
              }

              if (*v11->d.ptr)
              {
                goto LABEL_33;
              }
            }
          }
        }

        v20 = 147;
        v21 = 590;
        goto LABEL_43;
      }

      if (a4 == 4)
      {
        v12 = X509_NAME_new();
        if (v12)
        {
          v13 = v12;
          section = X509V3_get_section(a3, __s);
          if (section)
          {
            v15 = section;
            if (X509V3_NAME_from_section(v13, section, 0x1001uLL))
            {
              v11->d.ptr = v13;
              X509V3_section_free(a3, v15);
LABEL_33:
              v11->type = a4;
              return v11;
            }

            X509_NAME_free(v13);
            v11->d.ptr = v13;
            X509V3_section_free(a3, v15);
          }

          else
          {
            ERR_put_error(34, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 763);
            ERR_asprintf_error_data("section=%s", __s);
            X509_NAME_free(v13);
          }
        }

        v20 = 149;
        v21 = 583;
LABEL_43:
        ERR_put_error(34, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", v21);
        if (!a1)
        {
LABEL_44:
          GENERAL_NAME_free(v11);
        }

        return 0;
      }

LABEL_22:
      v20 = 167;
      v21 = 596;
      goto LABEL_43;
    }

    v17 = ASN1_IA5STRING_new();
    v11->d.ptr = v17;
    if (v17)
    {
      v18 = v17;
      v19 = strlen(__s);
      if (ASN1_STRING_set(v18, __s, v19))
      {
        goto LABEL_33;
      }
    }

    v20 = 65;
    v21 = 603;
    goto LABEL_43;
  }

  ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 545);
  return v11;
}

uint64_t copy_email(uint64_t a1, STACK *a2, int a3)
{
  if (a1)
  {
    if (*a1 == 1)
    {
      return 1;
    }

    if (*(a1 + 16))
    {
      subject_name = X509_get_subject_name(*(a1 + 16));
      goto LABEL_8;
    }

    v7 = *(a1 + 24);
    if (v7)
    {
      subject_name = X509_REQ_get_subject_name(v7);
LABEL_8:
      v8 = subject_name;
      v9 = -1;
      while (1)
      {
        index_by_NID = X509_NAME_get_index_by_NID(v8, 48, v9);
        if (index_by_NID < 0)
        {
          return 1;
        }

        v9 = index_by_NID;
        entry = X509_NAME_get_entry(v8, index_by_NID);
        data = X509_NAME_ENTRY_get_data(entry);
        v13 = ASN1_STRING_dup(data);
        if (a3)
        {
          X509_NAME_delete_entry(v8, v9);
          X509_NAME_ENTRY_free(entry);
          --v9;
        }

        if (!v13 || (v14 = GENERAL_NAME_new()) == 0)
        {
          ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 469);
          goto LABEL_18;
        }

        v15 = v14;
        v14->d.ptr = v13;
        v14->type = 1;
        if (!sk_push(a2, v14))
        {
          ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 476);
          v13 = 0;
          goto LABEL_19;
        }
      }
    }
  }

  ERR_put_error(34, 4095, 125, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_alt.c", 448);
  v13 = 0;
LABEL_18:
  v15 = 0;
LABEL_19:
  GENERAL_NAME_free(v15);
  ASN1_IA5STRING_free(v13);
  return 0;
}

UI *__cdecl UI_new_method(const UI_METHOD *method)
{
  v2 = malloc_type_calloc(1uLL, 0x28uLL, 0x10E00402F6BC7AFuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = method;
    if (!method)
    {
      v4 = default_UI_meth;
      if (!default_UI_meth)
      {
        v4 = UI_OpenSSL();
        default_UI_meth = v4;
      }

      *v3 = v4;
    }

    CRYPTO_new_ex_data(11, v3, (v3 + 3));
  }

  else
  {
    ERR_put_error(40, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", 84);
  }

  return v3;
}

const UI_METHOD *UI_get_default_method(void)
{
  result = default_UI_meth;
  if (!default_UI_meth)
  {
    result = UI_OpenSSL();
    default_UI_meth = result;
  }

  return result;
}

void UI_free(UI *ui)
{
  if (ui)
  {
    sk_pop_free(*(ui + 1), free_string);
    CRYPTO_free_ex_data(11, ui, (ui + 24));

    free(ui);
  }
}

void free_string(void **a1)
{
  if (a1)
  {
    if (a1[7])
    {
      free(a1[1]);
      if (*a1 == 3)
      {
        free(a1[4]);
        free(a1[5]);
        free(a1[6]);
      }
    }

    free(a1);
  }
}

uint64_t general_allocate_string(uint64_t a1, const char *a2, int a3, int a4, int a5, uint64_t a6, int a7, int a8, void *a9)
{
  prompt = general_allocate_prompt(a2, a3, a4, a5, a6);
  v13 = prompt;
  if (!prompt || (*(prompt + 8) = a7, *(prompt + 9) = a8, prompt[5] = a9, (allocate_string_stack(a1) & 0x80000000) != 0) || (result = sk_push(*(a1 + 8), v13), result <= 0))
  {
    free_string(v13);
    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t general_allocate_BOOLean(uint64_t a1, const char *a2, const char *a3, char *__s, char *__charset, int a6, int a7, uint64_t a8)
{
  if (!__s || !__charset)
  {
    v16 = 67;
    v17 = 214;
    goto LABEL_6;
  }

  if (__s[strcspn(__s, __charset)])
  {
    v16 = 104;
    v17 = 218;
LABEL_6:
    ERR_put_error(40, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v17);
    v18 = 0;
LABEL_7:
    free_string(v18);
    return 0xFFFFFFFFLL;
  }

  prompt = general_allocate_prompt(a2, a6, 3, a7, a8);
  v18 = prompt;
  if (!prompt)
  {
    goto LABEL_7;
  }

  if (a6)
  {
    if (a3)
    {
      v21 = strdup(a3);
      v18[4] = v21;
      if (!v21)
      {
        v24 = 230;
        goto LABEL_22;
      }
    }

    v22 = strdup(__s);
    v18[5] = v22;
    if (!v22)
    {
      v24 = 235;
      goto LABEL_22;
    }

    v23 = strdup(__charset);
    v18[6] = v23;
    if (!v23)
    {
      v24 = 240;
LABEL_22:
      ERR_put_error(40, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v24);
      goto LABEL_7;
    }
  }

  else
  {
    prompt[4] = a3;
    prompt[5] = __s;
    prompt[6] = __charset;
  }

  if ((allocate_string_stack(a1) & 0x80000000) != 0)
  {
    goto LABEL_7;
  }

  result = sk_push(*(a1 + 8), v18);
  if (result <= 0)
  {
    goto LABEL_7;
  }

  return result;
}

char *__cdecl UI_construct_prompt(UI *ui_method, const char *object_desc, const char *object_name)
{
  v5 = *(*ui_method + 48);
  if (v5)
  {

    return v5();
  }

  else
  {
    v8[1] = v3;
    v8[2] = v4;
    if (!object_desc)
    {
      return 0;
    }

    v8[0] = 0;
    v7 = object_name ? asprintf(v8, "Enter %s for %s:") : asprintf(v8, "Enter %s:");
    if (v7 == -1)
    {
      return 0;
    }

    else
    {
      return v8[0];
    }
  }
}

void *__cdecl UI_add_user_data(UI *ui, void *user_data)
{
  v2 = *(ui + 2);
  *(ui + 2) = user_data;
  return v2;
}

const char *__cdecl UI_get0_result(UI *ui, int i)
{
  if (i < 0)
  {
    v5 = 103;
    v6 = 399;
LABEL_8:
    ERR_put_error(40, 4095, v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v6);
    return 0;
  }

  if (sk_num(*(ui + 1)) <= i)
  {
    v5 = 102;
    v6 = 403;
    goto LABEL_8;
  }

  result = sk_value(*(ui + 1), i);
  if (!result)
  {
    return result;
  }

  if ((*result - 1) <= 1)
  {
    return *(result + 3);
  }

  return 0;
}

const char *__cdecl UI_get0_result_string(const char *uis)
{
  if (uis)
  {
    if ((*uis - 1) > 1)
    {
      return 0;
    }

    else
    {
      return *(uis + 3);
    }
  }

  return uis;
}

int UI_process(UI *ui)
{
  v2 = *(*ui + 8);
  if (v2 && !v2(ui))
  {
    return -1;
  }

  if (*(ui + 33))
  {
    ERR_print_errors_cb(print_error, ui);
  }

  if (sk_num(*(ui + 1)) >= 1)
  {
    v3 = 0;
    do
    {
      v4 = *(*ui + 16);
      if (v4)
      {
        v5 = sk_value(*(ui + 1), v3);
        if (!v4(ui, v5))
        {
          goto LABEL_13;
        }
      }
    }

    while (++v3 < sk_num(*(ui + 1)));
  }

  v6 = *(*ui + 24);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6(ui);
  if (v7 == -1)
  {
    goto LABEL_22;
  }

  if (v7)
  {
LABEL_14:
    if (sk_num(*(ui + 1)) < 1)
    {
LABEL_20:
      v8 = 0;
      goto LABEL_23;
    }

    v9 = 0;
    while (1)
    {
      v10 = *(*ui + 32);
      if (v10)
      {
        v11 = sk_value(*(ui + 1), v9);
        v12 = v10(ui, v11);
        if (!v12)
        {
          goto LABEL_13;
        }

        if (v12 == -1)
        {
          break;
        }
      }

      if (++v9 >= sk_num(*(ui + 1)))
      {
        goto LABEL_20;
      }
    }

    *(ui + 8) &= ~1u;
LABEL_22:
    v8 = -2;
    goto LABEL_23;
  }

LABEL_13:
  v8 = -1;
LABEL_23:
  v13 = *(*ui + 40);
  if (v13 && !v13(ui))
  {
    return -1;
  }

  return v8;
}

uint64_t print_error(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  v5[0] = 5;
  v5[1] = a1;
  v3 = *(*a3 + 16);
  if (v3 && !v3(a3, v5))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return 0;
  }
}

int UI_ctrl(UI *ui, int cmd, uint64_t i, void *p, void (*f)(void))
{
  if (ui)
  {
    if (cmd == 2)
    {
      return *(ui + 8) & 1;
    }

    if (cmd == 1)
    {
      v6 = *(ui + 8);
      result = (v6 >> 8) & 1;
      *(ui + 8) = v6 & 0xFFFFFEFF | ((i != 0) << 8);
      return result;
    }

    v8 = 106;
    v9 = 507;
  }

  else
  {
    v8 = 67;
    v9 = 488;
  }

  ERR_put_error(40, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v9);
  return -1;
}

UI_METHOD *__cdecl UI_create_method(char *name)
{
  v2 = malloc_type_calloc(1uLL, 0x38uLL, 0x90040541F721BuLL);
  if (!v2 || name && (v3 = strdup(name), (*v2 = v3) == 0))
  {
    UI_destroy_method(v2);
    return 0;
  }

  return v2;
}

void UI_destroy_method(UI_METHOD *ui_method)
{
  if (ui_method)
  {
    free(*ui_method);

    free(ui_method);
  }
}

int UI_method_set_opener(UI_METHOD *method, int (__cdecl *opener)(UI *))
{
  if (!method)
  {
    return -1;
  }

  result = 0;
  *(method + 1) = opener;
  return result;
}

int UI_method_set_writer(UI_METHOD *method, int (__cdecl *writer)(UI *, UI_STRING *))
{
  if (!method)
  {
    return -1;
  }

  result = 0;
  *(method + 2) = writer;
  return result;
}

int UI_method_set_flusher(UI_METHOD *method, int (__cdecl *flusher)(UI *))
{
  if (!method)
  {
    return -1;
  }

  result = 0;
  *(method + 3) = flusher;
  return result;
}

int UI_method_set_reader(UI_METHOD *method, int (__cdecl *reader)(UI *, UI_STRING *))
{
  if (!method)
  {
    return -1;
  }

  result = 0;
  *(method + 4) = reader;
  return result;
}

int UI_method_set_closer(UI_METHOD *method, int (__cdecl *closer)(UI *))
{
  if (!method)
  {
    return -1;
  }

  result = 0;
  *(method + 5) = closer;
  return result;
}

uint64_t UI_method_set_prompt_constructor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *(a1 + 48) = a2;
  return result;
}

int (__cdecl *__cdecl UI_method_get_opener(int (__cdecl *method)(UI *)))(UI *)
{
  if (method)
  {
    return *(method + 1);
  }

  return method;
}

int (__cdecl *__cdecl UI_method_get_writer(int (__cdecl *method)(UI *, UI_STRING *)))(UI *, UI_STRING *)
{
  if (method)
  {
    return *(method + 2);
  }

  return method;
}

int (__cdecl *__cdecl UI_method_get_flusher(int (__cdecl *method)(UI *)))(UI *)
{
  if (method)
  {
    return *(method + 3);
  }

  return method;
}

int (__cdecl *__cdecl UI_method_get_reader(int (__cdecl *method)(UI *, UI_STRING *)))(UI *, UI_STRING *)
{
  if (method)
  {
    return *(method + 4);
  }

  return method;
}

int (__cdecl *__cdecl UI_method_get_closer(int (__cdecl *method)(UI *)))(UI *)
{
  if (method)
  {
    return *(method + 5);
  }

  return method;
}

uint64_t UI_method_get_prompt_constructor(uint64_t result)
{
  if (result)
  {
    return *(result + 48);
  }

  return result;
}

UI_string_types UI_get_string_type(UI_STRING *uis)
{
  if (uis)
  {
    LODWORD(uis) = *uis;
  }

  return uis;
}

int UI_get_input_flags(UI_STRING *uis)
{
  if (uis)
  {
    LODWORD(uis) = *(uis + 4);
  }

  return uis;
}

const char *__cdecl UI_get0_output_string(const char *uis)
{
  if (uis)
  {
    return *(uis + 1);
  }

  return uis;
}

const char *__cdecl UI_get0_action_string(const char *uis)
{
  if (uis)
  {
    if ((*uis | 2) == 3)
    {
      return *(uis + 4);
    }

    else
    {
      return 0;
    }
  }

  return uis;
}

const char *__cdecl UI_get0_test_string(const char *uis)
{
  if (uis)
  {
    if (*uis == 2)
    {
      return *(uis + 5);
    }

    else
    {
      return 0;
    }
  }

  return uis;
}

int UI_get_result_minsize(UI_STRING *uis)
{
  if (uis && (*uis - 1) <= 1)
  {
    return *(uis + 8);
  }

  else
  {
    return -1;
  }
}

int UI_get_result_maxsize(UI_STRING *uis)
{
  if (uis && (*uis - 1) <= 1)
  {
    return *(uis + 9);
  }

  else
  {
    return -1;
  }
}

int UI_set_result(UI *ui, UI_STRING *uis, const char *result)
{
  v6 = strlen(result);
  v7 = *(ui + 8);
  *(ui + 8) = v7 & 0xFFFFFFFE;
  if (!uis)
  {
    goto LABEL_22;
  }

  if ((*uis - 1) < 2)
  {
    if (*(uis + 8) > v6)
    {
      *(ui + 8) = v7 | 1;
      v8 = 101;
      v9 = 861;
LABEL_15:
      ERR_put_error(40, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v9);
      ERR_asprintf_error_data("You must type in %d to %d characters", *(uis + 8), *(uis + 9));
LABEL_22:
      LODWORD(v16) = -1;
      return v16;
    }

    v18 = *(uis + 9);
    if (v18 < v6)
    {
      *(ui + 8) = v7 | 1;
      v8 = 100;
      v9 = 870;
      goto LABEL_15;
    }

    v19 = *(uis + 3);
    if (v19)
    {
      strlcpy(v19, result, v18 + 1);
      goto LABEL_18;
    }

    v20 = 878;
LABEL_21:
    ERR_put_error(40, 4095, 105, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v20);
    goto LABEL_22;
  }

  if (*uis != 3)
  {
    goto LABEL_18;
  }

  v10 = *(uis + 3);
  if (!v10)
  {
    v20 = 886;
    goto LABEL_21;
  }

  *v10 = 0;
  v11 = *result;
  if (!*result)
  {
LABEL_18:
    LODWORD(v16) = 0;
    return v16;
  }

  v12 = *(uis + 5);
  v13 = result + 1;
  while (1)
  {
    v14 = v11;
    if (strchr(v12, v11))
    {
      LODWORD(v16) = 0;
      v21 = *v12;
      goto LABEL_25;
    }

    v15 = *(uis + 6);
    v16 = strchr(v15, v14);
    if (v16)
    {
      break;
    }

    v17 = *v13++;
    v11 = v17;
    if (!v17)
    {
      return v16;
    }
  }

  LODWORD(v16) = 0;
  v21 = *v15;
LABEL_25:
  **(uis + 3) = v21;
  return v16;
}

void *general_allocate_prompt(const char *a1, int a2, int a3, int a4, uint64_t a5)
{
  if (!a1)
  {
    v10 = 67;
    v11 = 146;
    goto LABEL_6;
  }

  if ((a3 - 1) > 2 || a5)
  {
    v14 = malloc_type_calloc(1uLL, 0x40uLL, 0x1052040C0D9DABDuLL);
    v12 = v14;
    if (v14)
    {
      v14[1] = a1;
      if (!a2)
      {
LABEL_13:
        *(v12 + 4) = a4;
        *v12 = a3;
        v12[3] = a5;
        return v12;
      }

      v15 = strdup(a1);
      v12[1] = v15;
      if (v15)
      {
        *(v12 + 14) = 1;
        goto LABEL_13;
      }

      v16 = 162;
    }

    else
    {
      v16 = 156;
    }

    ERR_put_error(40, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v16);
    goto LABEL_7;
  }

  v10 = 105;
  v11 = 151;
LABEL_6:
  ERR_put_error(40, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", v11);
  v12 = 0;
LABEL_7:
  free_string(v12);
  return 0;
}

uint64_t allocate_string_stack(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  v3 = sk_new_null();
  *(a1 + 8) = v3;
  if (v3)
  {
    return 0;
  }

  ERR_put_error(40, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ui/ui_lib.c", 132);
  return 0xFFFFFFFFLL;
}

void ERR_load_EC_strings(void)
{
  if (!ERR_func_error_string(EC_str_functs))
  {
    ERR_load_strings(0, &EC_str_functs);

    ERR_load_strings(0, &EC_str_reasons);
  }
}

BIGNUM *__cdecl EC_POINT_point2bn(const EC_GROUP *a1, const EC_POINT *a2, point_conversion_form_t form, BIGNUM *a4, BN_CTX *a5)
{
  v10 = EC_POINT_point2oct(a1, a2, form, 0, 0, a5);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = malloc_type_malloc(v10, 0x1472565AuLL);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  if (EC_POINT_point2oct(a1, a2, form, v12, v11, a5))
  {
    v14 = BN_bin2bn(v13, v11, a4);
  }

  else
  {
    v14 = 0;
  }

  free(v13);
  return v14;
}

EC_POINT *__cdecl EC_POINT_bn2point(const EC_GROUP *a1, const BIGNUM *a2, EC_POINT *a3, BN_CTX *a4)
{
  v8 = BN_num_bits(a2);
  v9 = v8 + 7;
  if (v8 < -7)
  {
    v9 = v8 + 14;
  }

  if ((v8 + 14) >= 0xF)
  {
    v10 = v9 >> 3;
    v11 = malloc_type_malloc(v10, 0x76ACB1DCuLL);
    if (v11)
    {
      v12 = v11;
      if (BN_bn2bin(a2, v11))
      {
        if (a3)
        {
          if (EC_POINT_oct2point(a1, a3, v12, v10, a4))
          {
LABEL_14:
            free(v12);
            return a3;
          }
        }

        else
        {
          a3 = EC_POINT_new(a1);
          if (!a3 || EC_POINT_oct2point(a1, a3, v12, v10, a4))
          {
            goto LABEL_14;
          }

          EC_POINT_free(a3);
        }
      }

      a3 = 0;
      goto LABEL_14;
    }
  }

  return 0;
}

char *__cdecl EC_POINT_point2hex(const EC_GROUP *a1, const EC_POINT *a2, point_conversion_form_t form, BN_CTX *a4)
{
  v8 = EC_POINT_point2oct(a1, a2, form, 0, 0, a4);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = v8 + 1;
  if (v8 == -1)
  {
    return 0;
  }

  v11 = malloc_type_malloc(v8, 0x8A02E87AuLL);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  if (!EC_POINT_point2oct(a1, a2, form, v11, v9, a4))
  {
    free(v12);
    return 0;
  }

  v13 = reallocarray(0, v10, 2uLL);
  v14 = v13;
  if (v13)
  {
    v15 = 0;
    v16 = v13;
    do
    {
      v17 = v12[v15];
      *v16 = a0123456789abcd[v17 >> 4];
      v16[1] = a0123456789abcd[v17 & 0xF];
      v16 += 2;
      ++v15;
    }

    while (v9 != v15);
    *v16 = 0;
  }

  free(v12);
  return v14;
}

EC_POINT *__cdecl EC_POINT_hex2point(const EC_GROUP *a1, const char *a2, EC_POINT *a3, BN_CTX *a4)
{
  a = 0;
  if (!BN_hex2bn(&a, a2))
  {
    return 0;
  }

  v7 = EC_POINT_bn2point(a1, a, a3, a4);
  BN_free(a);
  return v7;
}

void BIO_set_cipher(BIO *b, const EVP_CIPHER *c, const unsigned __int8 *k, const unsigned __int8 *i, int enc)
{
  if (b)
  {
    data = BIO_get_data(b);
    if (data)
    {
      v11 = data;
      callback = BIO_get_callback(b);
      if (!callback || (callback)(b, 6, c, 4, enc, 0) >= 1)
      {
        BIO_set_init(b, 1);
        v13 = EVP_CipherInit_ex((v11 + 24), c, 0, k, i, enc);
        if (callback)
        {
          if (v13)
          {
            (callback)(b, 6, c, 4, enc, 1);
          }
        }
      }
    }
  }
}

uint64_t enc_write(BIO *a1, const unsigned __int8 *a2, uint64_t a3)
{
  next_bio = a1->next_bio;
  BIO_clear_flags(a1, 15);
  method_high = HIDWORD(next_bio->method);
  v8 = LODWORD(next_bio->method) - method_high;
  if (v8 < 1)
  {
LABEL_5:
    v10 = 0;
    if (a2 && a3 >= 1)
    {
      HIDWORD(next_bio->method) = 0;
      v12 = a3;
      while (1)
      {
        v13 = v12 >= 0x1000 ? 4096 : v12;
        EVP_CipherUpdate(&next_bio->init, &next_bio[1].num_read, next_bio, a2, v13);
        v12 -= v13;
        HIDWORD(next_bio->method) = 0;
        method = next_bio->method;
        if (SLODWORD(next_bio->method) >= 1)
        {
          break;
        }

LABEL_16:
        a2 += v13;
        next_bio->method = 0;
        if (v12 <= 0)
        {
          BIO_copy_next_retry(a1);
          return a3;
        }
      }

      v15 = 0;
      while (1)
      {
        v16 = BIO_write(a1->prev_bio, &next_bio[1].num_read + v15, method);
        v17 = v16;
        if (v16 <= 0)
        {
          break;
        }

        v15 = HIDWORD(next_bio->method) + v16;
        HIDWORD(next_bio->method) = v15;
        v11 = __OFSUB__(method, v16);
        method -= v16;
        if ((method < 0) ^ v11 | (method == 0))
        {
          goto LABEL_16;
        }
      }

      BIO_copy_next_retry(a1);
      if (a3 == v12)
      {
        return v17;
      }

      else
      {
        return (a3 - v12);
      }
    }
  }

  else
  {
    while (1)
    {
      v9 = BIO_write(a1->prev_bio, &next_bio[1].num_read + method_high, v8);
      v10 = v9;
      if (v9 <= 0)
      {
        break;
      }

      method_high = HIDWORD(next_bio->method) + v9;
      HIDWORD(next_bio->method) = method_high;
      v11 = __OFSUB__(v8, v9);
      v8 -= v9;
      if ((v8 < 0) ^ v11 | (v8 == 0))
      {
        goto LABEL_5;
      }
    }

    BIO_copy_next_retry(a1);
  }

  return v10;
}

uint64_t enc_read(BIO *a1, char *__dst, int a3)
{
  if (!__dst)
  {
    return 0;
  }

  next_bio = a1->next_bio;
  if (!next_bio || !a1->prev_bio)
  {
    return 0;
  }

  v5 = a3;
  v6 = __dst;
  if (SLODWORD(next_bio->method) < 1)
  {
    v9 = 0;
  }

  else
  {
    method_high = SHIDWORD(next_bio->method);
    v8 = LODWORD(next_bio->method) - method_high;
    if (v8 >= a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v8;
    }

    memcpy(__dst, &next_bio[1].num_read + method_high, v9);
    v6 += v9;
    v5 -= v9;
    method = next_bio->method;
    v11 = HIDWORD(next_bio->method) + v9;
    HIDWORD(next_bio->method) = v11;
    if (method == v11)
    {
      next_bio->method = 0;
    }
  }

  if (v5 >= 1)
  {
    do
    {
      if (SLODWORD(next_bio->callback) < 1)
      {
        break;
      }

      while (1)
      {
        v13 = BIO_read(a1->prev_bio, &next_bio[2].flags, 4096);
        if (v13 <= 0)
        {
          break;
        }

        EVP_CipherUpdate(&next_bio->init, &next_bio[1].num_read, next_bio, &next_bio[2].flags, v13);
        LODWORD(next_bio->callback) = 1;
        v14 = next_bio->method;
        if (LODWORD(next_bio->method))
        {
          goto LABEL_20;
        }
      }

      if (BIO_test_flags(a1->prev_bio, 8))
      {
        if (v9)
        {
          v9 = v9;
        }

        else
        {
          v9 = v13;
        }

        break;
      }

      LODWORD(next_bio->callback) = v13;
      LODWORD(next_bio->cb_arg) = EVP_CipherFinal_ex(&next_bio->init, &next_bio[1].num_read, next_bio);
      HIDWORD(next_bio->method) = 0;
      v14 = next_bio->method;
LABEL_20:
      v15 = v14 >= v5 ? v5 : v14;
      if (v15 < 1)
      {
        break;
      }

      memcpy(v6, &next_bio[1].num_read, v15);
      v9 = (v15 + v9);
      HIDWORD(next_bio->method) = v15;
      v6 += v15;
      v16 = __OFSUB__(v5, v15);
      v5 -= v15;
    }

    while (!((v5 < 0) ^ v16 | (v5 == 0)));
  }

  BIO_clear_flags(a1, 15);
  BIO_copy_next_retry(a1);
  if (!v9)
  {
    return LODWORD(next_bio->callback);
  }

  return v9;
}

uint64_t enc_ctrl(BIO *b, int a2, uint64_t larg, int **parg)
{
  next_bio = b->next_bio;
  if (a2 > 11)
  {
    if (a2 <= 100)
    {
      if (a2 == 12)
      {
        v13 = parg[7];
        EVP_CIPHER_CTX_init((v13 + 6));
        LODWORD(result) = EVP_CIPHER_CTX_copy((v13 + 6), &next_bio->init);
        if (!result)
        {
          return 0;
        }

        result = result;
        *(parg + 8) = 1;
        return result;
      }

      if (a2 == 13)
      {
        method_high = HIDWORD(next_bio->method);
        result = (LODWORD(next_bio->method) - method_high);
        if (SLODWORD(next_bio->method) > method_high)
        {
          return result;
        }

        prev_bio = b->prev_bio;
        a2 = 13;
        goto LABEL_35;
      }
    }

    else
    {
      switch(a2)
      {
        case 101:
          BIO_clear_flags(b, 15);
          v12 = BIO_ctrl(b->prev_bio, 101, larg, parg);
          BIO_copy_next_retry(b);
          return v12;
        case 113:
          return SLODWORD(next_bio->cb_arg);
        case 129:
          *parg = &next_bio->init;
          result = 1;
          b->flags = 1;
          return result;
      }
    }

LABEL_30:
    prev_bio = b->prev_bio;
    goto LABEL_35;
  }

  if (a2 > 9)
  {
    if (a2 == 10)
    {
      v11 = HIDWORD(next_bio->method);
      result = (LODWORD(next_bio->method) - v11);
      if (SLODWORD(next_bio->method) > v11)
      {
        return result;
      }

      prev_bio = b->prev_bio;
      a2 = 10;
    }

    else
    {
      while (1)
      {
        while (LODWORD(next_bio->method) != HIDWORD(next_bio->method))
        {
          LODWORD(result) = enc_write(b, 0, 0);
          if ((result & 0x80000000) != 0)
          {
            return result;
          }
        }

        if (HIDWORD(next_bio->callback))
        {
          break;
        }

        HIDWORD(next_bio->callback) = 1;
        HIDWORD(next_bio->method) = 0;
        LODWORD(result) = EVP_CipherFinal_ex(&next_bio->init, &next_bio[1].num_read, next_bio);
        LODWORD(next_bio->cb_arg) = result;
        if (result < 1)
        {
          return result;
        }
      }

      prev_bio = b->prev_bio;
      a2 = 11;
    }

    goto LABEL_35;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      if (SLODWORD(next_bio->callback) < 1)
      {
        return 1;
      }

      prev_bio = b->prev_bio;
      a2 = 2;
      goto LABEL_35;
    }

    goto LABEL_30;
  }

  *(&next_bio->callback + 4) = 0x100000000;
  EVP_CipherInit_ex(&next_bio->init, 0, 0, 0, 0, next_bio->num);
  prev_bio = b->prev_bio;
  a2 = 1;
LABEL_35:

  return BIO_ctrl(prev_bio, a2, larg, parg);
}

uint64_t enc_new(uint64_t a1)
{
  result = malloc_type_malloc(0x1108uLL, 0x10E004092A15CCAuLL);
  if (result)
  {
    v3 = result;
    EVP_CIPHER_CTX_init((result + 24));
    *v3 = xmmword_23E229690;
    result = 1;
    *(v3 + 16) = 1;
    *(a1 + 32) = 0;
    *(a1 + 56) = v3;
    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t enc_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    EVP_CIPHER_CTX_cleanup((*(result + 56) + 24));
    freezero(*(v1 + 56), 0x1108uLL);
    *(v1 + 56) = 0;
    *(v1 + 32) = 0;
    result = 1;
    *(v1 + 40) = 0;
  }

  return result;
}

BIO *enc_callback_ctrl(uint64_t a1, int a2, void (__cdecl *a3)(bio_st *, int, const char *, int, uint64_t, uint64_t))
{
  result = *(a1 + 64);
  if (result)
  {
    return BIO_callback_ctrl(result, a2, a3);
  }

  return result;
}

int ENGINE_set_default(ENGINE *e, unsigned int flags)
{
  v2 = flags;
  if (((flags & 0x40) == 0 || (result = ENGINE_set_default_ciphers(e)) != 0) && ((v2 & 0x80) == 0 || (result = ENGINE_set_default_digests(e)) != 0) && ((v2 & 1) == 0 || (result = ENGINE_set_default_RSA(e)) != 0) && ((v2 & 2) == 0 || (result = ENGINE_set_default_DSA(e)) != 0) && ((v2 & 4) == 0 || (result = ENGINE_set_default_DH(e)) != 0) && ((v2 & 0x10) == 0 || (result = ENGINE_set_default_ECDH(e)) != 0) && ((v2 & 0x20) == 0 || (result = ENGINE_set_default_ECDSA(e)) != 0) && ((v2 & 0x800) == 0 || (result = ENGINE_set_default_EC(e)) != 0) && ((v2 & 8) == 0 || (result = ENGINE_set_default_RAND(e)) != 0) && ((v2 & 0x200) == 0 || (result = ENGINE_set_default_pkey_meths(e)) != 0))
  {
    if ((v2 & 0x400) == 0)
    {
      return 1;
    }

    result = ENGINE_set_default_pkey_asn1_meths(e);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

int ENGINE_set_default_string(ENGINE *e, const char *def_list)
{
  arg = 0;
  if (CONF_parse_list(def_list, 44, 1, int_def_cb, &arg))
  {
    return ENGINE_set_default(e, arg);
  }

  ERR_put_error(38, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_fat.c", 156);
  ERR_asprintf_error_data("str=%s", def_list);
  return 0;
}

uint64_t int_def_cb(const char *a1, int a2, _DWORD *a3)
{
  v5 = a2;
  if (!strncmp(a1, "ALL", a2))
  {
    v7 = 0xFFFF;
  }

  else if (!strncmp(a1, "RSA", v5))
  {
    v7 = 1;
  }

  else if (!strncmp(a1, "DSA", v5))
  {
    v7 = 2;
  }

  else if (!strncmp(a1, "ECDH", v5))
  {
    v7 = 16;
  }

  else if (!strncmp(a1, "ECDSA", v5))
  {
    v7 = 32;
  }

  else if (!strncmp(a1, "DH", v5))
  {
    v7 = 4;
  }

  else if (!strncmp(a1, "EC", v5))
  {
    v7 = 2048;
  }

  else if (!strncmp(a1, "RAND", v5))
  {
    v7 = 8;
  }

  else if (!strncmp(a1, "CIPHERS", v5))
  {
    v7 = 64;
  }

  else if (!strncmp(a1, "DIGESTS", v5))
  {
    v7 = 128;
  }

  else if (!strncmp(a1, "PKEY", v5))
  {
    v7 = 1536;
  }

  else if (!strncmp(a1, "PKEY_CRYPTO", v5))
  {
    v7 = 512;
  }

  else
  {
    if (strncmp(a1, "PKEY_ASN1", v5))
    {
      return 0;
    }

    v7 = 1024;
  }

  *a3 |= v7;
  return 1;
}

int ENGINE_register_complete(ENGINE *e)
{
  ENGINE_register_ciphers(e);
  ENGINE_register_digests(e);
  ENGINE_register_RSA(e);
  ENGINE_register_DSA(e);
  ENGINE_register_DH(e);
  ENGINE_register_ECDH(e);
  ENGINE_register_ECDSA(e);
  ENGINE_register_EC(e);
  ENGINE_register_RAND(e);
  ENGINE_register_pkey_meths(e);
  return 1;
}

int ENGINE_register_all_complete(void)
{
  first = ENGINE_get_first();
  if (first)
  {
    next = first;
    do
    {
      if ((*(next + 176) & 8) == 0)
      {
        ENGINE_register_complete(next);
      }

      next = ENGINE_get_next(next);
    }

    while (next);
  }

  return 1;
}

uint64_t check_defer(uint64_t result)
{
  if (result >= 1053 && !obj_cleanup_defer)
  {
    obj_cleanup_defer = 1;
  }

  return result;
}

void OBJ_cleanup(void)
{
  if (obj_cleanup_defer)
  {
    obj_cleanup_defer = 2;
  }

  else
  {
    v0 = added;
    if (added)
    {
      *(added + 48) = 0;
      lh_doall(v0, cleanup1_LHASH_DOALL);
      lh_doall(added, cleanup2_LHASH_DOALL);
      lh_doall(added, cleanup3_LHASH_DOALL);
      lh_free(added);
      added = 0;
    }
  }
}

uint64_t cleanup1_LHASH_DOALL(uint64_t result)
{
  v1 = *(result + 8);
  *(v1 + 16) = 0;
  *(v1 + 32) |= 0xDu;
  return result;
}

void cleanup3_LHASH_DOALL(void *a1)
{
  v2 = a1[1];
  v3 = v2->nid - 1;
  v2->nid = v3;
  if (!v3)
  {
    ASN1_OBJECT_free(v2);
  }

  free(a1);
}

int OBJ_new_nid(int num)
{
  v1 = new_nid;
  new_nid += num;
  return v1;
}

int OBJ_add_object(const ASN1_OBJECT *obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  if (!added)
  {
    v2 = lh_new(added_obj_LHASH_HASH, added_obj_LHASH_COMP);
    added = v2;
    if (!v2)
    {
      goto LABEL_21;
    }
  }

  v3 = OBJ_dup(obj);
  if (!v3)
  {
LABEL_18:
    for (i = 0; i != 32; i += 8)
    {
      free(*(&v10 + i));
    }

    ASN1_OBJECT_free(v3);
    LODWORD(v2) = 0;
    goto LABEL_21;
  }

  *(&v11 + 1) = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL);
  if (!*(&v11 + 1) || v3->length && obj->data && (*&v10 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL), !v10) || v3->sn && (*(&v10 + 1) = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL)) == 0 || v3->ln && (*&v11 = malloc_type_malloc(0x10uLL, 0x1020040D5A9D86FuLL), !v11))
  {
    ERR_put_error(8, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_dat.c", 334);
    goto LABEL_18;
  }

  for (j = 0; j != 4; ++j)
  {
    v5 = *(&v10 + j);
    if (v5)
    {
      *v5 = j;
      v5[1] = v3;
      v6 = lh_insert(added, v5);
      free(v6);
    }
  }

  v3->flags &= 0xFFFFFFF2;
  LODWORD(v2) = v3->nid;
LABEL_21:
  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

ASN1_OBJECT *__cdecl OBJ_nid2obj(int n)
{
  if (n <= 0x41C)
  {
    if (!n)
    {
      v1 = 0;
      return &nid_objs[5 * v1];
    }

    if (LODWORD(nid_objs[5 * n + 2]))
    {
      v1 = n;
      return &nid_objs[5 * v1];
    }

    v4 = 350;
    goto LABEL_12;
  }

  if (added)
  {
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
    data[0] = 3;
    data[1] = &v5;
    LODWORD(v6) = n;
    v2 = lh_retrieve(added, data);
    if (v2)
    {
      return *(v2 + 1);
    }

    v4 = 364;
LABEL_12:
    ERR_put_error(8, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_dat.c", v4);
  }

  return 0;
}

const char *__cdecl OBJ_nid2sn(int n)
{
  if (n <= 0x41C)
  {
    if (!n)
    {
      v1 = 0;
      return nid_objs[5 * v1];
    }

    if (LODWORD(nid_objs[5 * n + 2]))
    {
      v1 = n;
      return nid_objs[5 * v1];
    }

    v4 = 378;
    goto LABEL_12;
  }

  if (added)
  {
    v5 = 0u;
    v6 = 0u;
    v7 = 0;
    data[0] = 3;
    data[1] = &v5;
    LODWORD(v6) = n;
    v2 = lh_retrieve(added, data);
    if (v2)
    {
      return **(v2 + 1);
    }

    v4 = 392;
LABEL_12:
    ERR_put_error(8, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_dat.c", v4);
  }

  return 0;
}

const char *__cdecl OBJ_nid2ln(int n)
{
  if (n <= 0x41C)
  {
    if (!n)
    {
      v1 = 0;
      goto LABEL_9;
    }

    if (LODWORD(nid_objs[5 * n + 2]))
    {
      v1 = n;
LABEL_9:
      v3 = &nid_objs[5 * v1];
      return v3[1];
    }

    v5 = 406;
    goto LABEL_13;
  }

  if (added)
  {
    v6 = 0u;
    v7 = 0u;
    v8 = 0;
    data[0] = 3;
    data[1] = &v6;
    LODWORD(v7) = n;
    v2 = lh_retrieve(added, data);
    if (v2)
    {
      v3 = *(v2 + 1);
      return v3[1];
    }

    v5 = 420;
LABEL_13:
    ERR_put_error(8, 4095, 101, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_dat.c", v5);
  }

  return 0;
}

int OBJ_obj2nid(const ASN1_OBJECT *o)
{
  v12 = o;
  if (!o)
  {
    return 0;
  }

  length = o->length;
  if (length)
  {
    length = o->nid;
    if (!length)
    {
      data = 0;
      v11 = 0;
      if (added)
      {
        v11 = o;
        v2 = lh_retrieve(added, &data);
        if (v2)
        {
          v3 = *(v2 + 1);
          return *(v3 + 4);
        }
      }

      v4 = 0;
      v5 = 975;
      while (1)
      {
        v6 = (v4 + v5) >> 1;
        v7 = 4 * v6;
        v8 = obj_cmp_BSEARCH_CMP_FN(&v12, (&obj_objs + v7));
        if (v8 < 0)
        {
          v5 = (v4 + v5) >> 1;
        }

        else
        {
          if (!v8)
          {
            v3 = &nid_objs[5 * *(&obj_objs + v7)];
            return *(v3 + 4);
          }

          v4 = v6 + 1;
        }

        if (v4 >= v5)
        {
          return 0;
        }
      }
    }
  }

  return length;
}

ASN1_OBJECT *__cdecl OBJ_txt2obj(const char *s, int no_name)
{
  if (!no_name && ((v4 = OBJ_sn2nid(s)) != 0 || (v4 = OBJ_ln2nid(s)) != 0))
  {

    return OBJ_nid2obj(v4);
  }

  else
  {

    return t2i_ASN1_OBJECT_internal(s);
  }
}

int OBJ_sn2nid(const char *s)
{
  v1 = s;
  v13 = 0u;
  v14 = 0u;
  data = 0;
  v11 = 0;
  v12 = s;
  if (!added)
  {
    goto LABEL_5;
  }

  LODWORD(data) = 1;
  v11 = &v12;
  v2 = lh_retrieve(added, &data);
  if (!v2)
  {
    v1 = v12;
LABEL_5:
    v4 = 0;
    v5 = 1046;
    while (1)
    {
      v6 = (v4 + v5) >> 1;
      v7 = *(&sn_objs + (4 * v6));
      v8 = strcmp(v1, nid_objs[5 * v7]);
      if ((v8 & 0x80000000) == 0)
      {
        if (!v8)
        {
          v3 = &nid_objs[5 * v7];
          return *(v3 + 4);
        }

        v4 = v6 + 1;
        v6 = v5;
      }

      v5 = v6;
      if (v4 >= v6)
      {
        return 0;
      }
    }
  }

  v3 = *(v2 + 1);
  return *(v3 + 4);
}

int OBJ_ln2nid(const char *s)
{
  v1 = s;
  v12 = 0;
  v14 = 0u;
  v10 = 0;
  v11 = 0;
  v15 = 0;
  v13 = s;
  if (!added)
  {
    goto LABEL_5;
  }

  LODWORD(v10) = 2;
  v11 = &v12;
  v2 = lh_retrieve(added, &v10);
  if (!v2)
  {
    v1 = v13;
LABEL_5:
    v4 = 0;
    v5 = 1046;
    while (1)
    {
      v6 = (v4 + v5) >> 1;
      v7 = *(&ln_objs + (4 * v6));
      v8 = strcmp(v1, nid_objs[5 * v7 + 1]);
      if ((v8 & 0x80000000) == 0)
      {
        if (!v8)
        {
          v3 = &nid_objs[5 * v7];
          return *(v3 + 4);
        }

        v4 = v6 + 1;
        v6 = v5;
      }

      v5 = v6;
      if (v4 >= v6)
      {
        return 0;
      }
    }
  }

  v3 = *(v2 + 1);
  return *(v3 + 4);
}

int OBJ_txt2nid(const char *s)
{
  v1 = OBJ_txt2obj(s, 0);
  v2 = OBJ_obj2nid(v1);
  ASN1_OBJECT_free(v1);
  return v2;
}

const char *__cdecl OBJ_bsearch_(const char *key, const char *base, int num, int size, int (__cdecl *cmp)(const void *, const void *))
{
  if (num >= 1)
  {
    v7 = num;
    v10 = 0;
    do
    {
      v11 = (v10 + v7) >> 1;
      v12 = &base[v11 * size];
      v13 = (cmp)(key, v12);
      if (v13 < 0)
      {
        v7 = (v10 + v7) >> 1;
      }

      else
      {
        if (!v13)
        {
          return v12;
        }

        v10 = v11 + 1;
      }
    }

    while (v10 < v7);
  }

  return 0;
}

int OBJ_create_objects(BIO *in)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = BIO_gets(in, buf, 512);
  if (v2 < 1)
  {
    v4 = 0;
    goto LABEL_44;
  }

  v3 = 0;
  v4 = 0;
  v5 = MEMORY[0x277D85DE0];
  do
  {
    buf[v2 - 1] = 0;
    if ((buf[0] & 0x8000000000000000) != 0)
    {
      if (!__maskrune(buf[0], 0x500uLL))
      {
        break;
      }
    }

    else if ((*(v5 + 4 * buf[0] + 60) & 0x500) == 0)
    {
      break;
    }

    v6 = &v19;
    do
    {
      v8 = *++v6;
      v7 = v8;
      v9 = v8 - 48;
    }

    while (v8 == 46 || v9 < 0xA);
    if (!v7)
    {
      goto LABEL_28;
    }

    *v6 = 0;
    do
    {
      while (1)
      {
        v12 = *++v6;
        v11 = v12;
        if (v12 < 0)
        {
          break;
        }

        if ((*(v5 + 4 * v11 + 60) & 0x4000) == 0)
        {
          goto LABEL_19;
        }
      }
    }

    while (__maskrune(v11, 0x4000uLL));
LABEL_19:
    if (!v11)
    {
LABEL_28:
      v6 = 0;
      goto LABEL_39;
    }

    v13 = *v6;
    if (!*v6)
    {
LABEL_38:
      v3 = 0;
      goto LABEL_39;
    }

    v3 = v6;
    while ((v13 & 0x80) == 0)
    {
      if ((*(v5 + 4 * v13 + 60) & 0x4000) != 0)
      {
        goto LABEL_29;
      }

LABEL_26:
      v14 = *++v3;
      v13 = v14;
      if (!v14)
      {
        goto LABEL_38;
      }
    }

    if (!__maskrune(v13, 0x4000uLL))
    {
      goto LABEL_26;
    }

LABEL_29:
    if (!*v3)
    {
      goto LABEL_38;
    }

    *v3 = 0;
    do
    {
      while (1)
      {
        v16 = *++v3;
        v15 = v16;
        if (v16 < 0)
        {
          break;
        }

        if ((*(v5 + 4 * v15 + 60) & 0x4000) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    while (__maskrune(v15, 0x4000uLL));
LABEL_35:
    if (!v15)
    {
      v3 = 0;
    }

LABEL_39:
    if (!buf[0])
    {
      break;
    }

    if (!OBJ_create(buf, v6, v3))
    {
      break;
    }

    ++v4;
    v2 = BIO_gets(in, buf, 512);
  }

  while (v2 > 0);
LABEL_44:
  v17 = *MEMORY[0x277D85DE8];
  return v4;
}

int OBJ_create(const char *oid, const char *sn, const char *ln)
{
  v6 = a2d_ASN1_OBJECT(0, 0, oid, -1);
  if (v6 < 1)
  {
    return 0;
  }

  v7 = v6;
  v8 = malloc_type_malloc(v6, 0x36A8BD3EuLL);
  if (!v8)
  {
    ERR_put_error(8, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/objects/obj_dat.c", 663);
    return 0;
  }

  v9 = v8;
  v10 = a2d_ASN1_OBJECT(v8, v7, oid, -1);
  if (v10)
  {
    v11 = v10;
    v12 = new_nid++;
    v13 = ASN1_OBJECT_create(v12, v9, v11, sn, ln);
    v14 = v13;
    if (v13)
    {
      v15 = OBJ_add_object(v13);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  ASN1_OBJECT_free(v14);
  free(v9);
  return v15;
}

uint64_t OBJ_length(uint64_t result)
{
  if (result)
  {
    return *(result + 20) & ~(*(result + 20) >> 31);
  }

  return result;
}

uint64_t OBJ_get0_data(uint64_t result)
{
  if (result)
  {
    return *(result + 24);
  }

  return result;
}

unint64_t added_obj_LHASH_HASH(uint64_t a1)
{
  v2 = 0;
  v3 = *(a1 + 8);
  v4 = *a1;
  if (*a1 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(v3 + 8);
      goto LABEL_13;
    }

    if (v4 == 3)
    {
      v6 = *(v3 + 16);
      return (*a1 << 30) & 0xFFFFFFFFC0000000 | v6 & 0x3FFFFFFF;
    }
  }

  else
  {
    if (!v4)
    {
      v7 = *(v3 + 20);
      v6 = v7 << 20;
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = *(v3 + 24);
        do
        {
          v10 = *v9++;
          v6 ^= v10 << (v8 % 0x18);
          v8 += 3;
          --v7;
        }

        while (v7);
      }

      return (*a1 << 30) & 0xFFFFFFFFC0000000 | v6 & 0x3FFFFFFF;
    }

    if (v4 == 1)
    {
      v5 = *v3;
LABEL_13:
      v6 = lh_strhash(v5);
      return (*a1 << 30) & 0xFFFFFFFFC0000000 | v6 & 0x3FFFFFFF;
    }
  }

  return v2;
}

uint64_t added_obj_LHASH_COMP(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  result = (*a1 - *a2);
  if (v3 != *a2)
  {
    return result;
  }

  v5 = *(a1 + 8);
  v6 = *(a2 + 8);
  if (v3 <= 1)
  {
    if (!v3)
    {
      v9 = *(v5 + 20);
      v10 = *(v6 + 20);
      result = (v9 - v10);
      if (v9 == v10)
      {
        return memcmp(*(v5 + 24), *(v6 + 24), v9);
      }

      return result;
    }

    if (v3 != 1)
    {
      return result;
    }

    v7 = *v5;
    if (*v5)
    {
      v8 = *v6;
      if (*v6)
      {
        return strcmp(v7, v8);
      }

      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 == 2)
  {
    v7 = *(v5 + 8);
    if (v7)
    {
      v8 = *(v6 + 8);
      if (v8)
      {
        return strcmp(v7, v8);
      }

      return 1;
    }

    return 0xFFFFFFFFLL;
  }

  if (v3 == 3)
  {
    return (*(v5 + 16) - *(v6 + 16));
  }

  return result;
}

uint64_t obj_cmp_BSEARCH_CMP_FN(uint64_t *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = &nid_objs[5 * *a2];
  v4 = *(*a1 + 20);
  v5 = *(v3 + 5);
  result = (v4 - v5);
  if (v4 == v5)
  {
    return memcmp(*(v2 + 24), v3[3], v4);
  }

  return result;
}

void RC2_cbc_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, RC2_KEY *ks, unsigned __int8 *iv, int enc)
{
  v6 = iv;
  v8 = length;
  v49 = *MEMORY[0x277D85DE8];
  *&v11 = *iv;
  *(&v11 + 1) = HIDWORD(*iv);
  v12 = v11;
  v14 = *(&v11 + 1);
  v13 = v11;
  if (!enc)
  {
    if (length >= 8)
    {
      do
      {
        v21 = out;
        v22 = v13;
        v23 = v14;
        LODWORD(v13) = *in;
        v14 = *(in + 1);
        v24 = v8;
        v8 -= 8;
        v25 = in + 8;
        data.i64[0] = *in;
        data.i64[1] = v14;
        RC2_decrypt(&data, ks);
        v26 = data.i16[1] ^ HIWORD(v22);
        v27 = data.i32[2] ^ v23;
        *v21 = data.i16[0] ^ v22;
        *(v21 + 1) = v26;
        *(v21 + 1) = v27;
        out = v21 + 8;
        in += 8;
      }

      while (v24 > 0xF);
      in = v25;
      v6 = iv;
    }

    if (v8)
    {
      v28 = *in;
      data.i64[0] = *in;
      v29 = *(in + 1);
      data.i64[1] = v29;
      RC2_decrypt(&data, ks);
      v30 = data.i32[0] ^ v13;
      v31 = &out[v8];
      if (v8 <= 3)
      {
        if (v8 == 1)
        {
LABEL_46:
          *(v31 - 1) = v30;
          goto LABEL_47;
        }

        if (v8 == 2)
        {
LABEL_45:
          *--v31 = BYTE1(v30);
          goto LABEL_46;
        }

        if (v8 != 3)
        {
          goto LABEL_47;
        }

LABEL_44:
        *--v31 = BYTE2(v30);
        goto LABEL_45;
      }

      v32 = data.i32[2] ^ v14;
      if (v8 <= 5)
      {
        if (v8 == 4)
        {
LABEL_43:
          *--v31 = HIBYTE(v30);
          goto LABEL_44;
        }

LABEL_42:
        *--v31 = v32;
        goto LABEL_43;
      }

      if (v8 == 6)
      {
LABEL_41:
        *--v31 = BYTE1(v32);
        goto LABEL_42;
      }

      if (v8 == 7)
      {
        *--v31 = BYTE2(v32);
        goto LABEL_41;
      }
    }

    else
    {
      v28 = v13;
      v29 = v14;
    }

LABEL_47:
    *v6 = v28;
    *(v6 + 2) = v29;
    v35 = v29 >> 16;
    v36 = v29 >> 24;
    goto LABEL_48;
  }

  if (length >= 8)
  {
    do
    {
      v15 = out;
      v16 = v8;
      v8 -= 8;
      v17 = *in;
      in += 8;
      v18.i64[0] = v17;
      v18.i64[1] = HIDWORD(v17);
      data = veorq_s8(v12, v18);
      RC2_encrypt(&data, ks);
      v12 = data;
      v13 = data.i64[0];
      *out = data.i16[0];
      out[2] = BYTE2(v13);
      out[3] = BYTE3(v13);
      v14 = v12.u64[1];
      *(out + 2) = v12.i16[4];
      out[6] = v12.u8[10];
      out += 8;
      v15[7] = v12.u8[11];
    }

    while (v16 > 0xF);
  }

  if (v8)
  {
    v19 = 0;
    v20 = &in[v8];
    if (v8 <= 3)
    {
      v39 = 0;
      if (v8 == 1)
      {
LABEL_31:
        v19 |= *(v20 - 1);
        goto LABEL_32;
      }

      if (v8 == 2)
      {
LABEL_30:
        v45 = *--v20;
        v19 |= v45 << 8;
        goto LABEL_31;
      }

      if (v8 != 3)
      {
        goto LABEL_32;
      }

LABEL_29:
      v44 = *--v20;
      v19 |= v44 << 16;
      goto LABEL_30;
    }

    if (v8 > 5)
    {
      if (v8 != 6)
      {
        v39 = 0;
        if (v8 != 7)
        {
LABEL_32:
          data.i64[0] = v19 ^ v13;
          data.i64[1] = v39 ^ v14;
          RC2_encrypt(&data, ks);
          LOBYTE(v13) = data.i8[0];
          LODWORD(v14) = data.i32[2];
          v33 = data.i64[0] >> 8;
          v38 = data.i64[0] >> 16;
          v37 = data.i64[0] >> 24;
          v34 = data.i64[1] >> 8;
          v35 = data.i64[1] >> 16;
          v36 = data.i64[1] >> 24;
          *out = data.i32[0];
          *(out + 1) = v14;
          goto LABEL_33;
        }

        v40 = *--v20;
        v19 = v40 << 16;
      }

      v41 = *--v20;
      v19 |= v41 << 8;
    }

    else if (v8 == 4)
    {
LABEL_28:
      v39 = v19;
      v43 = *--v20;
      v19 = v43 << 24;
      goto LABEL_29;
    }

    v42 = *--v20;
    v19 |= v42;
    goto LABEL_28;
  }

  v33 = v13 >> 8;
  v34 = v14 >> 8;
  v35 = v14 >> 16;
  v36 = v14 >> 24;
  v37 = v13 >> 24;
  v38 = v13 >> 16;
LABEL_33:
  *v6 = v13;
  v6[1] = v33;
  v6[2] = v38;
  v6[3] = v37;
  v6[4] = v14;
  v6[5] = v34;
LABEL_48:
  v6[6] = v35;
  v6[7] = v36;
  v46 = *MEMORY[0x277D85DE8];
}

void RC2_encrypt(unint64_t *data, RC2_KEY *key)
{
  v3 = *data;
  v2 = data[1];
  v4 = *data >> 16;
  v5 = v2 >> 16;
  v6 = 3;
  v7 = key;
  v8 = 5;
  while (1)
  {
    do
    {
      v9 = (v4 & ~v5) + v3 + (v5 & v2) + v7->data[0];
      LODWORD(v3) = (v9 >> 15) & 1 | (2 * v9);
      v10 = v7->data[1] + v4 + (v2 & ~v3) + (v3 & v5);
      LODWORD(v4) = (v10 >> 14) & 0xFFFC0003 | (4 * v10);
      v11 = v7->data[2] + v2 + (v5 & ~v4) + (v4 & v3);
      LODWORD(v2) = (v11 >> 13) & 0xFFF80007 | (8 * v11);
      v12 = &v7->data[4];
      LODWORD(v5) = ((v7->data[3] + v5 + (v3 & ~v2) + (v2 & v4)) >> 11) & 0xFFE0001F | (32 * (v7->data[3] + v5 + (v3 & ~v2) + (v2 & v4)));
      v7 = (v7 + 16);
      --v8;
    }

    while (v8);
    if (!--v6)
    {
      break;
    }

    if (v6 == 2)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    LODWORD(v3) = key->data[v5 & 0x3F] + v3;
    LODWORD(v4) = key->data[v3 & 0x3F] + v4;
    LODWORD(v2) = key->data[v4 & 0x3F] + v2;
    LODWORD(v5) = key->data[v2 & 0x3F] + v5;
    v7 = v12;
  }

  *data = v3 | (v4 << 16);
  data[1] = v2 | (v5 << 16);
}

void RC2_decrypt(unint64_t *data, RC2_KEY *key)
{
  v2 = *data;
  v3 = *data >> 16;
  v4 = data[1];
  v5 = data[1] >> 16;
  v6 = &key->data[63];
  v7 = 3;
  v8 = 5;
  while (1)
  {
    v9 = ((v5 << 11) | (v5 >> 5)) - (v2 & ~v4 | v4 & v3) - *v6;
    LODWORD(v5) = (((v5 << 11) | (v5 >> 5)) - (v2 & ~v4 | v4 & v3) - *v6);
    v10 = ((v4 << 13) | (v4 >> 3)) - ((v3 & v2) + *(v6 - 1)) - (v9 & ~v3);
    v4 = (((v4 << 13) | (v4 >> 3)) - ((v3 & v2) + *(v6 - 2)) - (v9 & ~v3));
    v11 = *(v6 - 3);
    LODWORD(v3) = ((v3 << 14) | (v3 >> 2)) - (*(v6 - 2) + (v9 & v2)) - (v10 & ~v2);
    v12 = ((v2 << 15) | (v2 >> 1)) - (v11 + (v10 & v9)) - (v3 & ~v5);
    v2 = (((v2 << 15) | (v2 >> 1)) - (v11 + (v10 & v9)) - (v3 & ~v5));
    if (--v8)
    {
      goto LABEL_8;
    }

    if (!--v7)
    {
      break;
    }

    if (v7 == 2)
    {
      v8 = 6;
    }

    else
    {
      v8 = 5;
    }

    LODWORD(v5) = (v9 - key->data[v10 & 0x3F]);
    v4 = (v10 - key->data[v3 & 0x3F]);
    LODWORD(v3) = v3 - key->data[v12 & 0x3F];
    v2 = (v12 - key->data[(v9 - key->data[v10 & 0x3F]) & 0x3F]);
LABEL_8:
    LODWORD(v3) = v3;
    v6 -= 4;
  }

  *data = v2 | (v3 << 16);
  data[1] = v4 | (v9 << 16);
}

uint64_t CRYPTO_cfb128_encrypt(uint64_t result, _BYTE *a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, int a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v13 = result;
  v14 = *a6;
  if (*a6)
  {
    v15 = a3 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (a7)
  {
    if (v16)
    {
      do
      {
        v17 = *v13++;
        v18 = *(a5 + v14);
        *(a5 + v14) = v18 ^ v17;
        *a2++ = v18 ^ v17;
        v19 = a3 - 1;
        v14 = (v14 + 1) & 0xF;
        if (!v14)
        {
          break;
        }

        --a3;
      }

      while (a3);
    }

    else
    {
      v19 = a3;
    }

    if (v19 < 0x10)
    {
      v25 = v14;
      if (!v19)
      {
        goto LABEL_41;
      }
    }

    else
    {
      do
      {
        result = a8(a5, a5, a4);
        if (v14 <= 0xF)
        {
          v22 = v14;
          do
          {
            v23 = *(a5 + v22) ^ *&v13[v22];
            *(a5 + v22) = v23;
            *&a2[v22] = v23;
            v24 = v22 >= 8;
            v22 += 8;
          }

          while (!v24);
        }

        v14 = 0;
        v25 = 0;
        v19 -= 16;
        a2 += 16;
        v13 += 16;
      }

      while (v19 > 0xF);
      if (!v19)
      {
        goto LABEL_41;
      }
    }

    result = a8(a5, a5, a4);
    do
    {
      v26 = *(a5 + v25) ^ v13[v25];
      *(a5 + v25) = v26;
      a2[v25++] = v26;
      --v19;
    }

    while (v19);
    goto LABEL_41;
  }

  if (v16)
  {
    do
    {
      v20 = *v13++;
      *a2++ = v20 ^ *(a5 + v14);
      *(a5 + v14) = v20;
      v21 = a3 - 1;
      v14 = (v14 + 1) & 0xF;
      if (!v14)
      {
        break;
      }

      --a3;
    }

    while (a3);
  }

  else
  {
    v21 = a3;
  }

  if (v21 < 0x10)
  {
    v25 = v14;
    if (!v21)
    {
      goto LABEL_41;
    }

    goto LABEL_39;
  }

  do
  {
    result = a8(a5, a5, a4);
    if (v14 <= 0xF)
    {
      v27 = v14;
      do
      {
        v28 = *&v13[v27];
        *&a2[v27] = *(a5 + v27) ^ v28;
        *(a5 + v27) = v28;
        v24 = v27 >= 8;
        v27 += 8;
      }

      while (!v24);
    }

    v14 = 0;
    v25 = 0;
    v21 -= 16;
    a2 += 16;
    v13 += 16;
  }

  while (v21 > 0xF);
  if (v21)
  {
LABEL_39:
    result = a8(a5, a5, a4);
    do
    {
      v29 = v13[v25];
      a2[v25] = v29 ^ *(a5 + v25);
      *(a5 + v25++) = v29;
      --v21;
    }

    while (v21);
  }

LABEL_41:
  *a6 = v25;
  return result;
}

uint8x16_t CRYPTO_cfb128_1_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, void (*a8)(uint64_t, uint64_t, uint64_t))
{
  if (a3)
  {
    for (i = 0; i != a3; ++i)
    {
      v26 = 1 << (i & 7 ^ 7);
      v16 = a5;
      v17 = vld1q_dup_s8(v16++);
      v25 = v17;
      v18 = (v26 & *(a1 + (i >> 3))) != 0;
      v17.i64[0] = *v16;
      v17.i32[2] = *(a5 + 9);
      v17.i16[6] = *(a5 + 13);
      v17.i8[14] = *(a5 + 15);
      v24 = v17;
      a8(a5, a5, a4);
      v19 = *a5 ^ (v18 << 7);
      v20 = v18 << 7;
      if (a7)
      {
        v20 = *a5 ^ (v18 << 7);
      }

      v21 = v24;
      v22 = vextq_s8(v25, v24, 0xFuLL);
      v21.i8[15] = v20;
      result = vsraq_n_u8(vaddq_s8(v22, v22), vshrq_n_u8(v21, 1uLL), 6uLL);
      *a5 = result;
      *(a2 + (i >> 3)) = *(a2 + (i >> 3)) & ~v26 | ((v19 & 0x80) >> (i & 7));
    }
  }

  return result;
}

uint64_t CRYPTO_cfb128_8_encrypt(uint64_t result, _BYTE *a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, int a7, uint64_t (*a8)(__int128 *, __int128 *, uint64_t))
{
  v8 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v13 = a3;
    v15 = result;
    do
    {
      v20 = *a5;
      result = a8(a5, a5, a4);
      v17 = *v15++;
      v16 = v17;
      v18 = *a5 ^ v17;
      if (a7)
      {
        v16 = v18;
      }

      *a2++ = v18;
      *a5 = *(&v20 + 1);
      *(a5 + 7) = *(&v20 + 1);
      *(a5 + 15) = v16;
      --v13;
    }

    while (v13);
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

void ERR_load_ASN1_strings(void)
{
  if (!ERR_func_error_string(ASN1_str_functs))
  {
    ERR_load_strings(0, &ASN1_str_functs);

    ERR_load_strings(0, &ASN1_str_reasons);
  }
}

uint64_t CRYPTO_xts128_encrypt(void *a1, int8x16_t *a2, void *a3, int8x16_t *a4, unint64_t a5, int a6)
{
  v6 = a5 - 16;
  if (a5 < 0x10)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = a5;
  v13 = *a2;
  v30 = 0u;
  v31 = v13;
  (a1[3])(&v31, &v31, a1[1]);
  if ((v9 & 0xF) != 0 && a6 == 0)
  {
    v9 = v6;
  }

  if (v9 >= 0x10)
  {
    v16 = v31.i64[1];
    v15 = v31.i64[0];
    do
    {
      v17 = v16 ^ a3[1];
      v30.i64[0] = v15 ^ *a3;
      v30.i64[1] = v17;
      (a1[2])(&v30, &v30, *a1);
      v18 = v31;
      v19 = veorq_s8(v30, v31);
      v30 = v19;
      *a4 = v19;
      v9 -= 16;
      if (!v9)
      {
        return 0;
      }

      ++a4;
      a3 += 2;
      v15 = (*(&v18 + 1) >> 63) & 0x87 ^ (2 * v18);
      v16 = v18 >> 63;
      v31.i64[0] = v15;
      v31.i64[1] = v16;
    }

    while (v9 > 0xF);
    if (!a6)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v19 = 0uLL;
  if (a6)
  {
LABEL_14:
    if (v9)
    {
      for (i = 0; i != v9; ++i)
      {
        v21 = *(a3 + i);
        a4->i8[i] = v30.i8[i];
        v30.i8[i] = v21;
      }

      v19 = v30;
    }

    v30 = veorq_s8(v19, v31);
    (a1[2])(&v30, &v30, *a1);
    result = 0;
    v30 = veorq_s8(v30, v31);
    a4[-1] = v30;
    return result;
  }

LABEL_20:
  v22 = 135;
  if (v31.i32[3] >= 0)
  {
    v22 = 0;
  }

  v23 = v22 ^ (2 * v31.i64[0]);
  v24 = *&v31 >> 63;
  v25 = a3[1] ^ v24;
  v30.i64[0] = *a3 ^ v23;
  v30.i64[1] = v25;
  (a1[2])(&v30, &v30, *a1);
  v26 = v30.i64[0] ^ v23;
  v27 = v30.i64[1] ^ v24;
  v30.i64[0] ^= v23;
  v30.i64[1] ^= v24;
  if (v9)
  {
    for (j = 0; j != v9; ++j)
    {
      v29 = *(a3 + j + 16);
      a4[1].i8[j] = v30.i8[j];
      v30.i8[j] = v29;
    }

    v27 = v30.i64[1];
    v26 = v30.i64[0];
  }

  v30.i64[0] = v26 ^ v31.i64[0];
  v30.i64[1] = v27 ^ v31.i64[1];
  (a1[2])(&v30, &v30, *a1);
  result = 0;
  *a4 = veorq_s8(v31, v30);
  return result;
}

int PKCS7_add_attrib_smimecap(PKCS7_SIGNER_INFO *si, STACK *cap)
{
  v4 = ASN1_STRING_new();
  if (v4)
  {
    v5 = v4;
    v4->length = ASN1_item_i2d(cap, &v4->data, &X509_ALGORS_it);

    return PKCS7_add_signed_attribute(si, 167, 16, v5);
  }

  else
  {
    ERR_put_error(33, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_attr.c", 74);
    return 0;
  }
}

STACK *__cdecl PKCS7_get_smimecap(PKCS7_SIGNER_INFO *si)
{
  result = PKCS7_get_signed_attribute(si, 167);
  if (result)
  {
    if (result->num == 16)
    {
      data = result->data;
      in = data[1];
      return ASN1_item_d2i(0, &in, *data, &X509_ALGORS_it);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

int PKCS7_simple_smimecap(STACK *sk, int nid, int arg)
{
  v6 = X509_ALGOR_new();
  if (v6)
  {
    v7 = v6;
    ASN1_OBJECT_free(v6->algorithm);
    v7->algorithm = OBJ_nid2obj(nid);
    if (arg < 1)
    {
      goto LABEL_7;
    }

    v8 = ASN1_TYPE_new();
    v7->parameter = v8;
    if (v8)
    {
      v9 = ASN1_INTEGER_new();
      if (v9)
      {
        v10 = v9;
        if (ASN1_INTEGER_set(v9, arg))
        {
          v7->parameter->value.ptr = v10;
          v7->parameter->type = 2;
LABEL_7:
          if (sk_push(sk, v7))
          {
            return 1;
          }

          goto LABEL_11;
        }

        ASN1_INTEGER_free(v10);
      }
    }

LABEL_11:
    ERR_put_error(33, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_attr.c", 131);
    X509_ALGOR_free(v7);
    return 0;
  }

  ERR_put_error(33, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_attr.c", 107);
  return 0;
}

uint64_t PKCS7_add_attrib_content_type(PKCS7_SIGNER_INFO *a1, ASN1_OBJECT *a2)
{
  if (PKCS7_get_signed_attribute(a1, 50))
  {
    return 0;
  }

  if (!a2)
  {
    a2 = OBJ_nid2obj(21);
  }

  return PKCS7_add_signed_attribute(a1, 50, 6, a2);
}

uint64_t PKCS7_add0_attrib_signing_time(PKCS7_SIGNER_INFO *p7si, ASN1_TIME *a2)
{
  v2 = a2;
  if (a2 || (v2 = X509_gmtime_adj(0, 0)) != 0)
  {

    return PKCS7_add_signed_attribute(p7si, 52, 23, v2);
  }

  else
  {
    ERR_put_error(33, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/pkcs7/pk7_attr.c", 153);
    return 0;
  }
}

ASN1_OCTET_STRING *PKCS7_add1_attrib_digest(PKCS7_SIGNER_INFO *a1, const void *a2, int a3)
{
  result = ASN1_OCTET_STRING_new();
  if (result)
  {
    v7 = result;
    if (ASN1_STRING_set(result, a2, a3) && PKCS7_add_signed_attribute(a1, 51, 4, v7))
    {
      return 1;
    }

    else
    {
      ASN1_OCTET_STRING_free(v7);
      return 0;
    }
  }

  return result;
}

void *X509_SIG_get0(void *result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[1];
  }

  return result;
}

void *X509_SIG_getm(void *result, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = *result;
  }

  if (a3)
  {
    *a3 = result[1];
  }

  return result;
}

uint64_t PKCS8_pkey_set0(uint64_t a1, ASN1_OBJECT *aobj, uint64_t v, int ptype, void *pval, void *a6, int a7)
{
  if ((v & 0x80000000) != 0 || (result = ASN1_INTEGER_set(*a1, v), result))
  {
    result = X509_ALGOR_set0(*(a1 + 8), aobj, ptype, pval);
    if (result)
    {
      if (a6)
      {
        ASN1_STRING_set0(*(a1 + 16), a6, a7);
      }

      return 1;
    }
  }

  return result;
}

uint64_t PKCS8_pkey_get0(void *a1, unsigned __int8 **a2, int *a3, void *a4, uint64_t a5)
{
  if (a1)
  {
    *a1 = **(a5 + 8);
  }

  if (a2)
  {
    *a2 = ASN1_STRING_data(*(a5 + 16));
    *a3 = ASN1_STRING_length(*(a5 + 16));
  }

  if (a4)
  {
    *a4 = *(a5 + 8);
  }

  return 1;
}

uint64_t pkey_cb(int a1, uint64_t a2)
{
  if (a1 == 2)
  {
    v2 = *(*a2 + 16);
    if (v2)
    {
      explicit_bzero(v2[1], *v2);
    }
  }

  return 1;
}

void *__cdecl ASN1_dup(i2d_of_void *i2d, d2i_of_void *d2i, char *x)
{
  if (!x)
  {
    return 0;
  }

  v6 = (i2d)(x, 0);
  v7 = malloc_type_malloc(v6 + 10, 0xA57E494BuLL);
  if (!v7)
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_old.c", 84);
    return 0;
  }

  v8 = v7;
  v13 = v7;
  v9 = (i2d)(x, &v13);
  v12 = v8;
  v10 = (d2i)(0, &v12, v9);
  free(v8);
  return v10;
}

void *__cdecl ASN1_d2i_fp(void *(*xnew)(void), d2i_of_void *d2i, FILE *in, void **x)
{
  v7 = BIO_s_file();
  v8 = BIO_new(v7);
  if (v8)
  {
    v9 = v8;
    v10 = BIO_ctrl(v8, 106, 0, in);
    v11 = ASN1_d2i_bio(v10, d2i, v9, x);
    BIO_free(v9);
    return v11;
  }

  else
  {
    ERR_put_error(13, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_old.c", 102);
    return 0;
  }
}

void *__cdecl ASN1_d2i_bio(void *(*xnew)(void), d2i_of_void *d2i, BIO *in, void **x)
{
  data = 0;
  a = 0;
  v6 = asn1_d2i_read_bio(in, &a);
  if ((v6 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    data = a->data;
    v7 = (d2i)(x, &data, v6);
  }

  if (a)
  {
    BUF_MEM_free(a);
  }

  return v7;
}

int ASN1_i2d_fp(i2d_of_void *i2d, FILE *out, void *x)
{
  v6 = BIO_s_file();
  v7 = BIO_new(v6);
  if (v7)
  {
    v8 = v7;
    BIO_ctrl(v7, 106, 0, out);
    v9 = ASN1_i2d_bio(i2d, v8, x);
    BIO_free(v8);
    return v9;
  }

  else
  {
    ERR_put_error(13, 4095, 7, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_old.c", 139);
    return 0;
  }
}

int ASN1_i2d_bio(i2d_of_void *i2d, BIO *out, unsigned __int8 *x)
{
  v6 = (i2d)(x, 0);
  v7 = malloc_type_malloc(v6, 0x32023B36uLL);
  if (v7)
  {
    v8 = v7;
    v13 = v7;
    (i2d)(x, &v13);
    v9 = BIO_write(out, v8, v6);
    if (v9 == v6)
    {
LABEL_6:
      v11 = 1;
    }

    else
    {
      LODWORD(v10) = 0;
      while (v9 >= 1)
      {
        v10 = (v9 + v10);
        v6 -= v9;
        v9 = BIO_write(out, &v8[v10], v6);
        if (v9 == v6)
        {
          goto LABEL_6;
        }
      }

      v11 = 0;
    }

    free(v8);
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/asn1_old.c", 158);
    return 0;
  }

  return v11;
}

int X509_REQ_set_version(X509_REQ *x, uint64_t version)
{
  if (x)
  {
    req_info = x->req_info;
    req_info->enc.modified = 1;
    LODWORD(x) = ASN1_INTEGER_set(req_info->version, version);
  }

  return x;
}

int X509_REQ_set_subject_name(X509_REQ *req, X509_NAME *name)
{
  if (!req)
  {
    return 0;
  }

  req_info = req->req_info;
  if (!req->req_info)
  {
    return 0;
  }

  req_info->enc.modified = 1;
  return X509_NAME_set(&req_info->subject, name);
}

int X509_REQ_set_pubkey(X509_REQ *x, EVP_PKEY *pkey)
{
  if (!x)
  {
    return 0;
  }

  req_info = x->req_info;
  if (!x->req_info)
  {
    return 0;
  }

  req_info->enc.modified = 1;
  return X509_PUBKEY_set(&req_info->pubkey, pkey);
}

uint64_t x509_name_ex_new(STACK ***a1)
{
  v2 = malloc_type_malloc(0x28uLL, 0x10300406D22A611uLL);
  if (v2)
  {
    v3 = v2;
    v4 = sk_new_null();
    *v3 = v4;
    if (v4)
    {
      v5 = BUF_MEM_new();
      v3[2] = v5;
      if (v5)
      {
        v3[3] = 0;
        *(v3 + 8) = 0;
        result = 1;
        *(v3 + 2) = 1;
        *a1 = v3;
        return result;
      }
    }

    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/x_name.c", 261);
    if (*v3)
    {
      sk_free(*v3);
    }

    free(v3);
  }

  else
  {
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/x_name.c", 261);
  }

  return 0;
}

void x509_name_ex_free(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      BUF_MEM_free(*(v2 + 16));
      sk_pop_free(*v2, X509_NAME_ENTRY_free);
      free(*(v2 + 24));
      free(v2);
      *a1 = 0;
    }
  }
}

uint64_t x509_name_ex_d2i(uint64_t *a1, unsigned __int8 **a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7, ASN1_TLC *a8)
{
  v10 = *a2;
  pval = 0;
  in = v10;
  v18 = 0;
  result = ASN1_item_ex_d2i(&pval, &in, a3, &X509_NAME_INTERNAL_it, a5, a6, a7, a8);
  if (result >= 1)
  {
    if (*a1)
    {
      x509_name_ex_free(a1);
    }

    v12 = x509_name_ex_new(&v18);
    v13 = v18;
    if (v12)
    {
      if (!BUF_MEM_grow(v18[2], in - v10))
      {
        goto LABEL_16;
      }

      memcpy(v13[2]->data, v10, in - v10);
      if (sk_num(pval) >= 1)
      {
        v14 = 0;
        while (1)
        {
          v15 = sk_value(pval, v14);
          if (sk_num(v15) >= 1)
          {
            break;
          }

LABEL_12:
          sk_free(v15);
          if (++v14 >= sk_num(pval))
          {
            goto LABEL_13;
          }
        }

        v16 = 0;
        while (1)
        {
          v17 = sk_value(v15, v16);
          *(v17 + 4) = v14;
          if (!sk_push(*v13, v17))
          {
            goto LABEL_16;
          }

          if (++v16 >= sk_num(v15))
          {
            goto LABEL_12;
          }
        }
      }

LABEL_13:
      sk_free(pval);
      if (x509_name_canon(v13))
      {
        *(v13 + 2) = 0;
        *a1 = v13;
        *a2 = in;
        return 1;
      }
    }

    if (!v13)
    {
LABEL_17:
      ERR_put_error(13, 4095, 58, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/x_name.c", 343);
      return 0;
    }

LABEL_16:
    ASN1_item_free(v13, &X509_NAME_it);
    goto LABEL_17;
  }

  return result;
}

uint64_t x509_name_ex_i2d(uint64_t *a1, void **a2)
{
  v3 = *a1;
  if (!*(*a1 + 8))
  {
    goto LABEL_16;
  }

  v4 = sk_new_null();
  pval = v4;
  if (!v4)
  {
LABEL_19:
    sk_pop_free(v4, local_sk_X509_NAME_ENTRY_free);
    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/x_name.c", 428);
    return 0xFFFFFFFFLL;
  }

  if (sk_num(*v3) >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = -1;
    do
    {
      v8 = sk_value(*v3, v5);
      if (*(v8 + 4) == v7)
      {
        if (!v6)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v9 = sk_new_null();
        if (!v9)
        {
          goto LABEL_19;
        }

        v6 = v9;
        if (!sk_push(v4, v9))
        {
          goto LABEL_19;
        }

        v7 = *(v8 + 4);
      }

      if (!sk_push(v6, v8))
      {
        goto LABEL_19;
      }

      ++v5;
    }

    while (v5 < sk_num(*v3));
  }

  v10 = ASN1_item_ex_i2d(&pval, 0, &X509_NAME_INTERNAL_it, -1, -1);
  if (!BUF_MEM_grow(*(v3 + 16), v10))
  {
    v4 = pval;
    goto LABEL_19;
  }

  v14 = *(*(v3 + 16) + 8);
  ASN1_item_ex_i2d(&pval, &v14, &X509_NAME_INTERNAL_it, -1, -1);
  sk_pop_free(pval, local_sk_X509_NAME_ENTRY_free);
  *(v3 + 8) = 0;
  v11 = v10;
  if ((v10 & 0x80000000) != 0)
  {
    return v11;
  }

  x509_name_canon(v3);
LABEL_16:
  v12 = *(v3 + 16);
  v11 = *v12;
  if (a2)
  {
    memcpy(*a2, v12[1], v11);
    *a2 = *a2 + v11;
  }

  return v11;
}

int X509_NAME_set(X509_NAME **xn, X509_NAME *name)
{
  if (*xn == name)
  {
    LODWORD(v3) = name != 0;
  }

  else
  {
    v3 = ASN1_item_dup(&X509_NAME_it, name);
    if (v3)
    {
      v4 = v3;
      ASN1_item_free(*xn, &X509_NAME_it);
      *xn = v4;
      LODWORD(v3) = 1;
    }
  }

  return v3;
}

uint64_t X509_NAME_get0_der(uint64_t a1, void *a2, void *a3)
{
  if (ASN1_item_i2d(a1, 0, &X509_NAME_it) < 1)
  {
    return 0;
  }

  if (a2)
  {
    *a2 = *(*(a1 + 16) + 8);
  }

  if (a3)
  {
    *a3 = **(a1 + 16);
  }

  return 1;
}

uint64_t x509_name_canon(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    free(v2);
    *(a1 + 24) = 0;
  }

  if (sk_num(*a1))
  {
    v3 = sk_new_null();
    if (v3)
    {
      v4 = v3;
      v39 = 0;
      if (sk_num(*a1) >= 1)
      {
        v5 = 0;
        v6 = 0;
        v38 = -1;
        v7 = MEMORY[0x277D85DE0];
        do
        {
          v8 = sk_value(*a1, v5);
          if (*(v8 + 4) != v38)
          {
            v9 = sk_new_null();
            if (!v9)
            {
              goto LABEL_52;
            }

            v6 = v9;
            if (!sk_push(v4, v9))
            {
              sk_free(v6);
              goto LABEL_52;
            }

            v38 = *(v8 + 4);
          }

          v10 = ASN1_item_new(&X509_NAME_ENTRY_it);
          if (!v10)
          {
            goto LABEL_52;
          }

          v11 = v10;
          v12 = OBJ_dup(*v8);
          *v11 = v12;
          if (!v12)
          {
            goto LABEL_51;
          }

          v13 = *(v11 + 1);
          v14 = *(v8 + 1);
          if ((ASN1_tag2bit(v14->type) & 0x2956) == 0)
          {
            v21 = ASN1_STRING_copy(v13, v14) == 0;
            goto LABEL_42;
          }

          v13->type = 12;
          v15 = ASN1_STRING_to_UTF8(&v13->data, v14);
          v13->length = v15;
          if (v15 == -1)
          {
LABEL_51:
            ASN1_item_free(v11, &X509_NAME_ENTRY_it);
            goto LABEL_52;
          }

          data = v13->data;
          if (v15 < 1)
          {
            v25 = v13->data;
            goto LABEL_41;
          }

          v17 = v15 + 1;
          v18 = v15;
          v19 = v13->data;
          while (1)
          {
            v20 = *v19;
            if (v20 < 0 || (*(v7 + 4 * v20 + 60) & 0x4000) == 0)
            {
              break;
            }

            ++v19;
            --v18;
            if (--v17 <= 1)
            {
LABEL_27:
              v25 = v13->data;
              goto LABEL_41;
            }
          }

          v22 = v15 - 1;
          while (1)
          {
            v23 = data[v22];
            if (v23 < 0 || (*(v7 + 4 * v23 + 60) & 0x4000) == 0)
            {
              break;
            }

            --v22;
            v24 = __OFSUB__(v18--, 1);
            if ((v18 < 0) ^ v24 | (v18 == 0))
            {
              goto LABEL_27;
            }
          }

          v37 = v4;
          v26 = 0;
          do
          {
            v27 = *v19;
            if (v27 < 0)
            {
              ++v19;
              *data = v27;
              goto LABEL_34;
            }

            if ((*(v7 + 4 * v27 + 60) & 0x4000) == 0)
            {
              *data = __tolower(*v19++);
LABEL_34:
              ++v26;
              goto LABEL_35;
            }

            *data = 32;
            v28 = v19 + 1;
            v29 = v26 + 1;
            do
            {
              v19 = v28;
              v26 = v29;
              v30 = *v28;
              if (v30 < 0)
              {
                break;
              }

              v31 = *(v7 + 4 * v30 + 60);
              v28 = v19 + 1;
              ++v29;
            }

            while ((v31 & 0x4000) != 0);
LABEL_35:
            ++data;
          }

          while (v26 < v18);
          v25 = v13->data;
          v4 = v37;
LABEL_41:
          v21 = 0;
          v13->length = data - v25;
LABEL_42:
          if (v21 || !v6 || !sk_push(v6, v11))
          {
            goto LABEL_51;
          }

          ++v5;
        }

        while (v5 < sk_num(*a1));
      }

      v32 = i2d_name_canon(v4, 0);
      if ((v32 & 0x80000000) != 0 || (v33 = v32, v34 = malloc_type_malloc(v32, 0x9F771B8FuLL), (v39 = v34) == 0))
      {
LABEL_52:
        v35 = 0;
      }

      else
      {
        *(a1 + 24) = v34;
        *(a1 + 32) = v33;
        i2d_name_canon(v4, &v39);
        v35 = 1;
      }

      sk_pop_free(v4, local_sk_X509_NAME_ENTRY_pop_free);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    return 1;
  }

  return v35;
}

uint64_t i2d_name_canon(const STACK *a1, unsigned __int8 **a2)
{
  pval = 0;
  if (sk_num(a1) < 1)
  {
    return 0;
  }

  LODWORD(v4) = 0;
  v5 = 0;
  while (1)
  {
    pval = sk_value(a1, v5);
    v6 = ASN1_item_ex_i2d(&pval, a2, &X509_NAME_ENTRIES_it, -1, -1);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    v4 = (v6 + v4);
    if (++v5 >= sk_num(a1))
    {
      return v4;
    }
  }

  return v6;
}

uint64_t asn1_time_tm_to_time_t(int *a1, void *a2)
{
  v4 = a1[5];
  if (v4 > 9999)
  {
    return 0;
  }

  v5 = a1[4];
  if (v5 > 12)
  {
    return 0;
  }

  v8[3] = v2;
  v8[4] = v3;
  v8[0] = 0;
  result = posix_time_from_utc(v4 + 1900, v5 + 1, a1[3], a1[2], a1[1], *a1, v8);
  if (result)
  {
    *a2 = v8[0];
    return 1;
  }

  return result;
}

uint64_t asn1_time_time_t_to_tm(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = (a2 + 16);
  result = utc_from_posix_time(v2, (a2 + 20), (a2 + 16), (a2 + 12), (a2 + 8), (a2 + 4), a2);
  if (result)
  {
    *v3 = vadd_s32(*v3, 0xFFFFF894FFFFFFFFLL);
    return 1;
  }

  return result;
}

uint64_t OPENSSL_gmtime_adj(int *a1, int a2, uint64_t a3)
{
  v4 = a1 + 5;
  v3 = a1[5];
  if (v3 > 9999)
  {
    return 0;
  }

  v7 = (a1 + 4);
  v6 = a1[4];
  if (v6 > 12)
  {
    return 0;
  }

  v11 = 0;
  result = posix_time_from_utc(v3 + 1900, v6 + 1, a1[3], a1[2], a1[1], *a1, &v11);
  if (result)
  {
    result = utc_from_posix_time(a3 + 86400 * a2 + v11, v4, v7, a1 + 3, a1 + 2, a1 + 1, a1);
    if (result)
    {
      *v7 = vadd_s32(*v7, 0xFFFFF894FFFFFFFFLL);
      return 1;
    }
  }

  return result;
}

uint64_t posix_time_from_utc(unsigned int a1, unsigned int a2, int a3, int a4, int a5, int a6, void *a7)
{
  if (a1 >> 4 > 0x270 || a2 < 1 || a3 < 1)
  {
    return 0;
  }

  v9 = 0;
  if (a2 <= 0xC)
  {
    if (((1 << a2) & 0x15AA) != 0)
    {
      v10 = 31;
    }

    else if (((1 << a2) & 0xA50) != 0)
    {
      v10 = 30;
    }

    else
    {
      if (a2 != 2)
      {
        return v9;
      }

      HIDWORD(v18) = -1030792151 * a1;
      LODWORD(v18) = HIDWORD(v18);
      v19 = (v18 >> 2) > 0x28F5C28 && (a1 & 3) == 0;
      HIDWORD(v21) = -1030792151 * a1;
      LODWORD(v21) = HIDWORD(v21);
      v20 = v21 >> 4;
      if (!v19 && v20 >= 0xA3D70B)
      {
        v10 = 28;
      }

      else
      {
        v10 = 29;
      }
    }

    if (v10 < a3)
    {
      return 0;
    }

    v9 = 0;
    if (a6 <= 59 && a5 <= 59 && a4 <= 23 && ((a5 | a4 | a6) & 0x80000000) == 0)
    {
      v12 = (__PAIR64__(a1, a2) - 3) >> 32;
      v13 = v12 - 399;
      if (v12 >= 0)
      {
        v13 = (__PAIR64__(a1, a2) - 3) >> 32;
      }

      v14 = ((5243 * v13) >> 21) + ((5243 * v13) >> 31);
      v15 = v12 - 400 * v14;
      if (a2 <= 2)
      {
        v16 = 9;
      }

      else
      {
        v16 = -3;
      }

      v17 = 26215 * (153 * (v16 + a2) + 2);
      *a7 = 60 * a5 + 3600 * a4 + a6 + 86400 * ((a3 + (v17 >> 17) + (v17 >> 31) - 1) + 146097 * v14 + 365 * v15 + (((v15 + ((v15 >> 29) & 3)) << 16) >> 18) + (((-5243 * v15) >> 19) + ((-5243 * v15) >> 31))) - 0xE79256200;
      return 1;
    }
  }

  return v9;
}

uint64_t utc_from_posix_time(uint64_t a1, _DWORD *a2, int *a3, _DWORD *a4, unsigned int *a5, unsigned int *a6, unsigned int *a7)
{
  if ((a1 - 0x3AFFF44180) < 0xFFFFFFB686974280)
  {
    return 0;
  }

  v8 = a1 / 86400 + ((a1 % 86400) >> 63);
  if (a1 % 86400 >= 0)
  {
    v9 = a1 % 86400;
  }

  else
  {
    v9 = a1 % 86400 + 86400;
  }

  v10 = v8 + 573372;
  if (v8 > -719468)
  {
    v10 = v8 + 719468;
  }

  v11 = v10 / 146097;
  v12 = v8 + 719468 - 146097 * v11;
  v13 = ((((1282606671 * v12) >> 32) - v12) >> 10) + ((((1282606671 * v12) >> 32) - v12) >> 31) + v12 + v12 / 36524 + ((((441679365 * v12) >> 32) - v12) >> 17) + ((((441679365 * v12) >> 32) - v12) >> 31);
  *a2 = v13 / 365 + 400 * v11;
  v14 = v12 + (((((1282606671 * v13) >> 32) - v13) >> 10) + ((((1282606671 * v13) >> 32) - v13) >> 31)) + v13 / 36500 - 365 * (v13 / 365);
  v15 = (5 * v14 + 2) / 153;
  if (v14 >= 306)
  {
    v16 = -9;
  }

  else
  {
    v16 = 3;
  }

  v17 = v16 + v15;
  *a3 = v17;
  if (v17 <= 2)
  {
    ++*a2;
  }

  *a4 = (153 * v15 + 2) / -5 + v14 + 1;
  *a5 = v9 / 0xE10;
  v18 = v9 % 0xE10;
  *a6 = v18 / 0x3Cu;
  *a7 = v18 % 0x3Cu;
  return 1;
}

uint64_t OPENSSL_gmtime_diff(_DWORD *a1, _DWORD *a2, int *a3, int *a4)
{
  v10 = 0;
  result = posix_time_from_utc(a4[5] + 1900, a4[4] + 1, a4[3], a4[2], a4[1], *a4, &v10);
  if (result)
  {
    v9 = 0;
    result = posix_time_from_utc(a3[5] + 1900, a3[4] + 1, a3[3], a3[2], a3[1], *a3, &v9);
    if (result)
    {
      v8 = v10 - v9;
      if ((v10 - v9 - 0xA8C000000000) >= 0xFFFEAE7FFFFEAE81)
      {
        *a2 = v8 % 86400;
        *a1 = v8 / 86400;
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

int SHA224_Init(SHA256_CTX *c)
{
  *&c->data[10] = 0u;
  *&c->data[14] = 0u;
  *&c->data[2] = 0u;
  *&c->data[6] = 0u;
  *c->h = xmmword_23E23C740;
  *&c->h[4] = xmmword_23E23C750;
  *&c->Nl = 0u;
  c->md_len = 28;
  return 1;
}

int SHA256_Init(SHA256_CTX *c)
{
  *&c->data[10] = 0u;
  *&c->data[14] = 0u;
  *&c->data[2] = 0u;
  *&c->data[6] = 0u;
  *c->h = xmmword_23E23C760;
  *&c->h[4] = xmmword_23E23C770;
  *&c->Nl = 0u;
  c->md_len = 32;
  return 1;
}

unsigned __int8 *__cdecl SHA224(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  if (md)
  {
    v3 = md;
  }

  else
  {
    v3 = &SHA224_m;
  }

  memset(&v5.Nl, 0, 76);
  *v5.h = xmmword_23E23C740;
  *&v5.h[4] = xmmword_23E23C750;
  v5.md_len = 28;
  SHA256_Update(&v5, d, n);
  SHA256_Final(v3, &v5);
  explicit_bzero(&v5, 0x70uLL);
}

int SHA256_Update(SHA256_CTX *c, const void *data, size_t len)
{
  if (len)
  {
    v3 = len;
    v4 = data;
    *&c->Nl += 8 * len;
    num = c->num;
    if (num)
    {
      v7 = c->data;
      if (len <= 0x3F && num + len < 0x40)
      {
        memcpy(v7 + num, data, len);
        c->num += v3;
        return 1;
      }

      v8 = 64 - num;
      memcpy(v7 + num, data, 64 - num);
      sha256_block_data_order(c, c->data, 1);
      v4 = (v4 + v8);
      v3 -= v8;
      c->num = 0;
      *v7 = 0u;
      *&c->data[4] = 0u;
      *&c->data[8] = 0u;
      *&c->data[12] = 0u;
    }

    if (v3 >= 0x40)
    {
      sha256_block_data_order(c, v4, v3 >> 6);
      v4 = (v4 + (v3 & 0xFFFFFFFFFFFFFFC0));
      v3 &= 0x3Fu;
    }

    if (v3)
    {
      c->num = v3;
      memcpy(c->data, v4, v3);
    }
  }

  return 1;
}

int SHA256_Final(unsigned __int8 *md, SHA256_CTX *c)
{
  data = c->data;
  num = c->num;
  *(c->data + num) = 0x80;
  v6 = num + 1;
  if (num >= 0x38)
  {
    bzero(data + v6, 63 - num);
    sha256_block_data_order(c, data, 1);
    v6 = 0;
  }

  bzero(data + v6, 56 - v6);
  v7 = bswap32(c->Nl);
  c->data[14] = bswap32(c->Nh);
  c->data[15] = v7;
  sha256_block_data_order(c, data, 1);
  c->num = 0;
  *data = 0u;
  *(data + 1) = 0u;
  *(data + 2) = 0u;
  *(data + 3) = 0u;
  md_len = c->md_len;
  if (md_len == 28)
  {
    for (i = 0; i != 7; ++i)
    {
      *&md[i * 4] = bswap32(c->h[i]);
    }

    return 1;
  }

  if (md_len == 32)
  {
    for (j = 0; j != 8; ++j)
    {
      *&md[j * 4] = bswap32(c->h[j]);
    }

    return 1;
  }

  if (md_len <= 0x20)
  {
    if (md_len >= 4)
    {
      v12 = 0;
      do
      {
        *md = bswap32(c->h[v12]);
        md += 4;
        ++v12;
      }

      while (v12 < c->md_len >> 2);
    }

    return 1;
  }

  return 0;
}

unsigned __int8 *__cdecl SHA256(const unsigned __int8 *d, size_t n, unsigned __int8 *md)
{
  if (md)
  {
    v3 = md;
  }

  else
  {
    v3 = &SHA256_m;
  }

  memset(&v5.Nl, 0, 76);
  *v5.h = xmmword_23E23C760;
  *&v5.h[4] = xmmword_23E23C770;
  v5.md_len = 32;
  SHA256_Update(&v5, d, n);
  SHA256_Final(v3, &v5);
  explicit_bzero(&v5, 0x70uLL);
}

unint64_t sha256_block_data_order(unint64_t result, unsigned int *a2, uint64_t a3)
{
  v212 = result;
  v224 = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v3 = *result;
    v4 = *(result + 4);
    v6 = *(result + 8);
    v5 = *(result + 12);
    v8 = *(result + 16);
    v7 = *(result + 20);
    v9 = *(result + 24);
    LODWORD(result) = *(result + 28);
    do
    {
      v222 = a3;
      v10 = bswap32(*a2);
      HIDWORD(v11) = v8;
      LODWORD(v11) = v8;
      v12 = (v11 >> 6) ^ __ROR4__(v8, 11);
      v13 = __PAIR64__(v3, __ROR4__(v8, 25));
      v213 = result;
      v14 = (v7 & v8) + result + (v9 & ~v8) + v10 + (v12 ^ v13) + 1116352408;
      LODWORD(v13) = v3;
      v217 = v5;
      v15 = v14 + v5;
      v16 = ((v6 ^ v4) & v3 ^ v6 & v4) + ((v13 >> 2) ^ __ROR4__(v3, 13) ^ __ROR4__(v3, 22)) + v14;
      v17 = bswap32(a2[1]);
      HIDWORD(v13) = v15;
      LODWORD(v13) = v15;
      v223[0] = v10;
      v223[1] = v17;
      v18 = (v13 >> 6) ^ __ROR4__(v15, 11);
      v19 = __PAIR64__(v16, __ROR4__(v15, 25));
      v214 = v9;
      v20 = v9 + (v7 & ~v15) + (v15 & v8) + v17 + 1899447441 + (v18 ^ v19);
      LODWORD(v19) = v16;
      v218 = v6;
      v21 = v20 + v6;
      v22 = ((v19 >> 2) ^ __ROR4__(v16, 13) ^ __ROR4__(v16, 22)) + (v16 & (v4 ^ v3) ^ v4 & v3) + v20;
      v23 = bswap32(a2[2]);
      HIDWORD(v19) = v21;
      LODWORD(v19) = v21;
      v24 = (v19 >> 6) ^ __ROR4__(v21, 11);
      v26 = __PAIR64__(v22, __ROR4__(v21, 25));
      v25 = v24 ^ v26;
      v215 = v7;
      LODWORD(v26) = v22;
      v27 = v7 + v23 + (v8 & ~v21) + (v21 & v15) - 1245643825 + v25;
      v219 = v4;
      v28 = v27 + v4;
      v29 = ((v26 >> 2) ^ __ROR4__(v22, 13) ^ __ROR4__(v22, 22)) + (v22 & (v16 ^ v3) ^ v16 & v3) + v27;
      v30 = bswap32(a2[3]);
      v223[2] = v23;
      v223[3] = v30;
      HIDWORD(v26) = v27 + v4;
      LODWORD(v26) = v27 + v4;
      v31 = (v26 >> 6) ^ __ROR4__(v27 + v4, 11);
      v32 = __PAIR64__(v29, __ROR4__(v27 + v4, 25));
      v216 = v8;
      v33 = v8 + v30 + (v15 & ~(v27 + v4)) + ((v27 + v4) & v21) - 373957723 + (v31 ^ v32);
      LODWORD(v32) = v29;
      v220 = v3;
      v34 = v33 + v3;
      v35 = ((v32 >> 2) ^ __ROR4__(v29, 13) ^ __ROR4__(v29, 22)) + (v29 & (v22 ^ v16) ^ v22 & v16) + v33;
      v36 = bswap32(a2[4]);
      HIDWORD(v32) = v34;
      LODWORD(v32) = v34;
      v37 = (v32 >> 6) ^ __ROR4__(v34, 11);
      v38 = __PAIR64__(v35, __ROR4__(v34, 25));
      v39 = v15 + v36 + (v21 & ~v34) + (v34 & v28) + 961987163 + (v37 ^ v38);
      LODWORD(v38) = v35;
      v40 = v39 + v16;
      v41 = ((v38 >> 2) ^ __ROR4__(v35, 13) ^ __ROR4__(v35, 22)) + (v35 & (v29 ^ v22) ^ v29 & v22) + v39;
      v42 = bswap32(a2[5]);
      v223[4] = v36;
      v223[5] = v42;
      HIDWORD(v38) = v40;
      LODWORD(v38) = v40;
      v43 = (v38 >> 6) ^ __ROR4__(v40, 11);
      v44 = __PAIR64__(v41, __ROR4__(v40, 25));
      v45 = v21 + v42 + (v28 & ~v40) + (v40 & v34) + 1508970993 + (v43 ^ v44);
      LODWORD(v44) = v41;
      v46 = v45 + v22;
      v47 = ((v44 >> 2) ^ __ROR4__(v41, 13) ^ __ROR4__(v41, 22)) + (v41 & (v35 ^ v29) ^ v35 & v29) + v45;
      v48 = bswap32(a2[6]);
      HIDWORD(v44) = v46;
      LODWORD(v44) = v46;
      v49 = (v44 >> 6) ^ __ROR4__(v46, 11);
      v50 = __PAIR64__(v47, __ROR4__(v46, 25));
      v51 = v28 + v48 + (v34 & ~v46) + (v46 & v40) - 1841331548 + (v49 ^ v50);
      LODWORD(v50) = v47;
      v52 = v51 + v29;
      v53 = ((v50 >> 2) ^ __ROR4__(v47, 13) ^ __ROR4__(v47, 22)) + (v47 & (v41 ^ v35) ^ v41 & v35) + v51;
      v54 = bswap32(a2[7]);
      HIDWORD(v50) = v52;
      LODWORD(v50) = v52;
      v223[6] = v48;
      v223[7] = v54;
      v55 = (v50 >> 6) ^ __ROR4__(v52, 11);
      v56 = __PAIR64__(v53, __ROR4__(v52, 25));
      v57 = v34 + v54 + (v40 & ~v52) + (v52 & v46) - 1424204075 + (v55 ^ v56);
      LODWORD(v56) = v53;
      v58 = v57 + v35;
      v59 = ((v56 >> 2) ^ __ROR4__(v53, 13) ^ __ROR4__(v53, 22)) + (v53 & (v47 ^ v41) ^ v47 & v41) + v57;
      HIDWORD(v56) = v57 + v35;
      LODWORD(v56) = v57 + v35;
      v60 = bswap32(a2[8]);
      v61 = (v56 >> 6) ^ __ROR4__(v57 + v35, 11);
      v62 = __PAIR64__(v59, __ROR4__(v58, 25));
      v63 = v40 + v60 + (v46 & ~v58) + (v58 & v52) - 670586216 + (v61 ^ v62);
      LODWORD(v62) = v59;
      v64 = v63 + v41;
      v65 = ((v62 >> 2) ^ __ROR4__(v59, 13) ^ __ROR4__(v59, 22)) + (v59 & (v53 ^ v47) ^ v53 & v47) + v63;
      v66 = bswap32(a2[9]);
      v223[8] = v60;
      v223[9] = v66;
      HIDWORD(v62) = v64;
      LODWORD(v62) = v64;
      v67 = (v62 >> 6) ^ __ROR4__(v64, 11);
      v68 = __PAIR64__(v65, __ROR4__(v64, 25));
      v69 = v46 + v66 + (v52 & ~v64) + (v64 & v58) + 310598401 + (v67 ^ v68);
      LODWORD(v68) = v65;
      v70 = v69 + v47;
      v71 = ((v68 >> 2) ^ __ROR4__(v65, 13) ^ __ROR4__(v65, 22)) + (v65 & (v59 ^ v53) ^ v59 & v53) + v69;
      v72 = bswap32(a2[10]);
      HIDWORD(v68) = v70;
      LODWORD(v68) = v70;
      v73 = (v68 >> 6) ^ __ROR4__(v70, 11);
      v74 = __PAIR64__(v71, __ROR4__(v70, 25));
      v75 = v52 + v72 + (v58 & ~v70) + (v70 & v64) + 607225278 + (v73 ^ v74);
      LODWORD(v74) = v71;
      v76 = v75 + v53;
      v77 = ((v74 >> 2) ^ __ROR4__(v71, 13) ^ __ROR4__(v71, 22)) + (v71 & (v65 ^ v59) ^ v65 & v59) + v75;
      v78 = bswap32(a2[11]);
      v223[10] = v72;
      v223[11] = v78;
      HIDWORD(v74) = v76;
      LODWORD(v74) = v76;
      v79 = (v74 >> 6) ^ __ROR4__(v76, 11);
      v80 = __PAIR64__(v77, __ROR4__(v76, 25));
      v81 = v78 + v58 + (v64 & ~v76) + (v76 & v70) + 1426881987 + (v79 ^ v80);
      LODWORD(v80) = v77;
      v82 = v81 + v59;
      v83 = ((v80 >> 2) ^ __ROR4__(v77, 13) ^ __ROR4__(v77, 22)) + (v77 & (v71 ^ v65) ^ v71 & v65) + v81;
      v84 = bswap32(a2[12]);
      HIDWORD(v80) = v82;
      LODWORD(v80) = v82;
      v85 = (v80 >> 6) ^ __ROR4__(v82, 11);
      v86 = __PAIR64__(v83, __ROR4__(v82, 25));
      v87 = v84 + v64 + (v70 & ~v82) + (v82 & v76) + 1925078388 + (v85 ^ v86);
      LODWORD(v86) = v83;
      v88 = v87 + v65;
      v89 = ((v86 >> 2) ^ __ROR4__(v83, 13) ^ __ROR4__(v83, 22)) + (v83 & (v77 ^ v71) ^ v77 & v71) + v87;
      v90 = bswap32(a2[13]);
      HIDWORD(v86) = v88;
      LODWORD(v86) = v88;
      v223[12] = v84;
      v223[13] = v90;
      v91 = (v86 >> 6) ^ __ROR4__(v88, 11);
      v92 = __PAIR64__(v89, __ROR4__(v88, 25));
      v93 = v90 + v70 + (v76 & ~v88) + (v88 & v82) - 2132889090 + (v91 ^ v92);
      LODWORD(v92) = v89;
      v94 = v93 + v71;
      v95 = ((v92 >> 2) ^ __ROR4__(v89, 13) ^ __ROR4__(v89, 22)) + (v89 & (v83 ^ v77) ^ v83 & v77) + v93;
      HIDWORD(v92) = v94;
      LODWORD(v92) = v94;
      v221 = a2;
      v96 = bswap32(a2[14]);
      v97 = (v92 >> 6) ^ __ROR4__(v94, 11);
      v98 = __PAIR64__(v95, __ROR4__(v94, 25));
      v99 = v96 + v76 + (v82 & ~v94) + (v94 & v88) - 1680079193 + (v97 ^ v98);
      LODWORD(v98) = v95;
      v100 = v99 + v77;
      v101 = ((v98 >> 2) ^ __ROR4__(v95, 13) ^ __ROR4__(v95, 22)) + (v95 & (v89 ^ v83) ^ v89 & v83) + v99;
      v102 = bswap32(a2[15]);
      v223[14] = v96;
      v223[15] = v102;
      HIDWORD(v98) = v100;
      LODWORD(v98) = v100;
      v103 = (v98 >> 6) ^ __ROR4__(v100, 11);
      v104 = __PAIR64__(v101, __ROR4__(v100, 25));
      v105 = v102 + v82 + (v88 & ~v100) + (v100 & v94) - 1046744716 + (v103 ^ v104);
      LODWORD(v104) = v101;
      v106 = v105 + v83;
      v107 = ((v104 >> 2) ^ __ROR4__(v101, 13) ^ __ROR4__(v101, 22)) + (v101 & (v95 ^ v89) ^ v95 & v89) + v105;
      v108 = &dword_23E23C7DC;
      v109 = 31;
      do
      {
        v110 = v109 - 15;
        v111 = (v109 - 14) & 9;
        v112 = v223[v111];
        v113 = v223[(v109 - 1) & 0xE];
        HIDWORD(v115) = v112;
        LODWORD(v115) = v112;
        v114 = v115 >> 7;
        v117 = __PAIR64__(v113, __ROR4__(v112, 18));
        v116 = v114 ^ v117;
        LODWORD(v117) = v113;
        v118 = v117 >> 17;
        v120 = __PAIR64__(v106, __ROR4__(v113, 19));
        v119 = v118 ^ v120;
        v121 = (v109 - 15) & 8;
        LODWORD(v120) = v106;
        v122 = (v109 - 15) & 8;
        v123 = (v116 ^ (v112 >> 3)) + v223[(v109 - 6) & 9] + v223[v121] + (v119 ^ (v113 >> 10));
        v124 = (v120 >> 6) ^ __ROR4__(v106, 11);
        v126 = __PAIR64__(v107, __ROR4__(v106, 25));
        v125 = v124 ^ v126;
        LODWORD(v126) = v107;
        v127 = *(v108 - 6);
        v128 = v88 + (v94 & ~v106 | v100 & v106) + *(v108 - 7) + v125;
        v223[v121] = v123;
        LODWORD(v121) = ((v95 ^ v101) & v107 ^ v95 & v101) + ((v126 >> 2) ^ __ROR4__(v107, 13) ^ __ROR4__(v107, 22));
        v129 = v128 + v123 + v89;
        HIDWORD(v126) = v223[v122 | 2];
        LODWORD(v126) = HIDWORD(v126);
        v130 = v121 + v128 + v123;
        v131 = v223[v109 & 0xF];
        v132 = (v126 >> 7) ^ __ROR4__(HIDWORD(v126), 18) ^ (HIDWORD(v126) >> 3);
        HIDWORD(v126) = v131;
        LODWORD(v126) = v131;
        v133 = v126 >> 17;
        v134 = __PAIR64__(v129, __ROR4__(v131, 19));
        v135 = v223[(v109 - 5) & 0xALL] + v112 + (v133 ^ v134 ^ (v131 >> 10));
        LODWORD(v134) = v129;
        v136 = v135 + v132;
        v137 = (v134 >> 6) ^ __ROR4__(v129, 11);
        v139 = __PAIR64__(v130, __ROR4__(v129, 25));
        v138 = v137 ^ v139;
        LODWORD(v139) = v130;
        v223[v111] = v136;
        LODWORD(v121) = (v139 >> 2) ^ __ROR4__(v130, 13);
        v140 = __PAIR64__(v123, __ROR4__(v130, 22));
        v141 = v127 + v94 + (v129 & v106 | v100 & ~v129) + v136 + v138;
        v142 = (v121 ^ v140) + (v130 & (v101 ^ v107) ^ v101 & v107);
        v143 = v141 + v95;
        v144 = v223[v122 | 3];
        LODWORD(v140) = v123;
        v145 = v140 >> 17;
        HIDWORD(v140) = v144;
        LODWORD(v140) = v144;
        v146 = (v140 >> 7) ^ __ROR4__(v144, 18);
        v147 = __PAIR64__(v143, __ROR4__(v123, 19));
        v148 = v146 ^ (v144 >> 3);
        v149 = (v109 - 13) & 0xALL;
        v150 = v142 + v141;
        v151 = v223[(v109 - 4) & 0xBLL] + v223[v149] + v148 + (v145 ^ v147 ^ (v123 >> 10));
        LODWORD(v147) = v143;
        v152 = (v147 >> 6) ^ __ROR4__(v143, 11);
        v153 = __PAIR64__(v150, __ROR4__(v143, 25));
        LODWORD(v121) = v152 ^ v153;
        v223[v149] = v151;
        v154 = *(v108 - 4);
        LODWORD(v153) = v150;
        v155 = ((v153 >> 2) ^ __ROR4__(v150, 13) ^ __ROR4__(v150, 22)) + (v150 & (v130 ^ v107) ^ v130 & v107);
        v156 = v223[v122 | 4];
        v157 = *(v108 - 5) + v100 + v151 + (v143 & v129 | v106 & ~v143) + v121;
        HIDWORD(v153) = v156;
        LODWORD(v153) = v156;
        LODWORD(v121) = v153 >> 7;
        v158 = v223[v122 | 1];
        v159 = __PAIR64__(v158, __ROR4__(v156, 18));
        LODWORD(v121) = v121 ^ v159;
        LODWORD(v159) = v158;
        v160 = (v109 - 12) & 0xBLL;
        v161 = (v159 >> 17) ^ __ROR4__(v158, 19) ^ (v158 >> 10);
        v162 = v157 + v101;
        v163 = (v121 ^ (v156 >> 3)) + v223[(v109 - 3) & 0xC] + v223[v160] + v161;
        v164 = v155 + v157;
        HIDWORD(v159) = v162;
        LODWORD(v159) = v162;
        v165 = (v159 >> 6) ^ __ROR4__(v162, 11);
        v167 = __PAIR64__(v164, __ROR4__(v162, 25));
        v166 = v165 ^ v167;
        v223[v160] = v163;
        LODWORD(v167) = v164;
        v168 = v154 + v106 + v163 + (v162 & v143 | v129 & ~v162) + v166;
        v169 = ((v167 >> 2) ^ __ROR4__(v164, 13) ^ __ROR4__(v164, 22)) + (v164 & (v150 ^ v130) ^ v150 & v130);
        v170 = v168 + v107;
        LODWORD(v160) = v223[v122 | 5];
        HIDWORD(v167) = v160;
        LODWORD(v167) = v160;
        v171 = (v167 >> 7) ^ __ROR4__(v160, 18);
        v172 = v223[v122 | 2];
        HIDWORD(v167) = v172;
        LODWORD(v167) = v172;
        v173 = v167 >> 17;
        v174 = __PAIR64__(v170, __ROR4__(v172, 19));
        v175 = (v109 - 11) & 0xC;
        LODWORD(v160) = (v171 ^ (v160 >> 3)) + v223[(v109 - 2) & 0xDLL] + v223[v175] + (v173 ^ v174 ^ (v172 >> 10));
        v176 = v169 + v168;
        LODWORD(v174) = v170;
        v177 = (v174 >> 6) ^ __ROR4__(v170, 11);
        v179 = __PAIR64__(v176, __ROR4__(v170, 25));
        v178 = v177 ^ v179;
        v223[v175] = v160;
        v180 = *(v108 - 2);
        LODWORD(v179) = v176;
        LODWORD(v121) = ((v179 >> 2) ^ __ROR4__(v176, 13) ^ __ROR4__(v176, 22)) + (v176 & (v164 ^ v150) ^ v164 & v150);
        v181 = *(v108 - 3) + v160 + v129 + (v170 & v162 | v143 & ~v170) + v178;
        v88 = v181 + v130;
        v182 = v223[v122 | 6];
        HIDWORD(v179) = v182;
        LODWORD(v179) = v182;
        LODWORD(v160) = v179 >> 7;
        v183 = v223[v122 | 3];
        HIDWORD(v179) = v183;
        LODWORD(v179) = v183;
        v184 = v179 >> 17;
        v185 = v160 ^ __ROR4__(v182, 18) ^ (v182 >> 3);
        v186 = __PAIR64__(v181 + v130, __ROR4__(v183, 19));
        LODWORD(v160) = v184 ^ v186;
        v187 = (v109 - 10) & 0xDLL;
        v89 = v121 + v181;
        v188 = v223[v187] + v113 + v185 + (v160 ^ (v183 >> 10));
        LODWORD(v186) = v88;
        v189 = (v186 >> 6) ^ __ROR4__(v88, 11);
        v191 = __PAIR64__(v89, __ROR4__(v88, 25));
        v190 = v189 ^ v191;
        v223[v187] = v188;
        LODWORD(v191) = v89;
        v192 = v180 + v188 + v143 + (v88 & v170 | v162 & ~v88) + v190;
        v193 = ((v191 >> 2) ^ __ROR4__(v89, 13) ^ __ROR4__(v89, 22)) + (v89 & (v176 ^ v164) ^ v176 & v164);
        LODWORD(v175) = v223[v122 | 7];
        v94 = v192 + v150;
        HIDWORD(v191) = v175;
        LODWORD(v191) = v175;
        v194 = v191 >> 7;
        LODWORD(v111) = v223[v122 | 4];
        v195 = __PAIR64__(v111, __ROR4__(v175, 18));
        LODWORD(v175) = v194 ^ v195 ^ (v175 >> 3);
        LODWORD(v195) = v111;
        v196 = v195 >> 17;
        v197 = __PAIR64__(v94, __ROR4__(v111, 19));
        v198 = (v109 - 9) & 0xE;
        LODWORD(v175) = v223[v198] + v131 + v175 + (v196 ^ v197 ^ (v111 >> 10));
        v95 = v193 + v192;
        LODWORD(v197) = v94;
        v199 = (v197 >> 6) ^ __ROR4__(v94, 11);
        v201 = __PAIR64__(v95, __ROR4__(v94, 25));
        v200 = v199 ^ v201;
        v223[v198] = v175;
        LODWORD(v201) = v95;
        v202 = *(v108 - 1) + v175 + v162 + (v94 & v88 | v170 & ~v94) + v200;
        v100 = v202 + v164;
        v101 = ((v201 >> 2) ^ __ROR4__(v95, 13) ^ __ROR4__(v95, 22)) + (v95 & (v89 ^ v176) ^ v89 & v176) + v202;
        v203 = v223[v122 ^ 8];
        HIDWORD(v201) = v203;
        LODWORD(v201) = v203;
        LODWORD(v175) = v201 >> 7;
        LODWORD(v111) = v223[v122 | 5];
        HIDWORD(v201) = v111;
        LODWORD(v201) = v111;
        LODWORD(v160) = v201 >> 17;
        v204 = v175 ^ __ROR4__(v203, 18) ^ (v203 >> 3);
        v205 = __PAIR64__(v100, __ROR4__(v111, 19));
        v206 = (v109 - 8) & 0xF;
        LODWORD(v175) = v160 ^ v205 ^ (v111 >> 10);
        LODWORD(v205) = v100;
        LODWORD(v111) = (v205 >> 6) ^ __ROR4__(v100, 11);
        v207 = v223[v206] + v204 + v123 + v175;
        v208 = __PAIR64__(v101, __ROR4__(v100, 25));
        LODWORD(v175) = v111 ^ v208;
        v223[v206] = v207;
        v209 = *v108;
        v108 += 8;
        LODWORD(v208) = v101;
        v210 = v209 + v207 + v170 + (v100 & v94 | v88 & ~v100) + v175;
        v106 = v210 + v176;
        v107 = ((v208 >> 2) ^ __ROR4__(v101, 13) ^ __ROR4__(v101, 22)) + (v101 & (v95 ^ v89) ^ v95 & v89) + v210;
        v109 += 8;
      }

      while (v110 < 0x38);
      a2 = v221 + 16;
      v3 = v107 + v220;
      v4 = v101 + v219;
      *v212 = v107 + v220;
      v212[1] = v101 + v219;
      v6 = v95 + v218;
      v5 = v89 + v217;
      v212[2] = v95 + v218;
      v212[3] = v89 + v217;
      v8 = v106 + v216;
      v7 = v100 + v215;
      v212[4] = v106 + v216;
      v212[5] = v100 + v215;
      v9 = v94 + v214;
      result = (v88 + v213);
      v212[6] = v94 + v214;
      v212[7] = result;
      a3 = v222 - 1;
    }

    while (v222 != 1);
  }

  v211 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sha3_init(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x63)
  {
    return 0;
  }

  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v2 = 1;
  *(a1 + 208) = 200 - 2 * a2;
  *(a1 + 216) = a2;
  return v2;
}

uint64_t sha3_update(void *a1, char *a2, uint64_t a3)
{
  v4 = a1[25];
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = *a2++;
      v8 = v4 + 1;
      *(a1 + v4) ^= v7;
      if ((v4 + 1) >= a1[26])
      {
        sha3_keccakf(a1);
        v8 = 0;
      }

      v4 = v8;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = a1[25];
  }

  a1[25] = v8;
  return 1;
}

void *sha3_keccakf(void *result)
{
  v1 = 0;
  v27 = *MEMORY[0x277D85DE8];
  do
  {
    for (i = 0; i != 5; ++i)
    {
      *(v25 + i * 8) = result[i + 5] ^ result[i] ^ result[i + 10] ^ result[i + 15] ^ result[i + 20];
    }

    v3 = 0;
    v4 = result;
    do
    {
      v5 = (v3 - 1);
      if (!v3)
      {
        v5 = 4;
      }

      v6 = *(v25 + v5);
      v7 = ++v3;
      if (v3 == 5)
      {
        v7 = 0;
      }

      v8 = v6 ^ __ROR8__(*(v25 + v7), 63);
      v9 = -5;
      v10 = v4;
      do
      {
        *v10 ^= v8;
        v10 += 5;
        v9 += 5;
      }

      while (v9 < 0x14);
      ++v4;
    }

    while (v3 != 5);
    v11 = 0;
    v12 = result[1];
    do
    {
      v13 = sha3_keccakf_piln[v11];
      v14 = result[v13];
      v15 = -*&sha3_keccakf_rotc[v11 * 4];
      result[v13] = __ROR8__(v12, -sha3_keccakf_rotc[v11 * 4]);
      ++v11;
      v12 = v14;
    }

    while (v11 != 24);
    v16 = 0;
    v17 = result;
    do
    {
      v18 = 0;
      v19 = &result[5 * v16];
      v20 = *(v19 + 1);
      v25[0] = *v19;
      v25[1] = v20;
      v26 = v19[4];
      do
      {
        if (v18 == 4)
        {
          v21 = 0;
        }

        else
        {
          v21 = v18 + 1;
        }

        v22 = *(v25 + v21);
        if (v18 > 2)
        {
          v23 = -3;
        }

        else
        {
          v23 = 2;
        }

        v17[v18] ^= *(v25 + (v23 + v18)) & ~v22;
        ++v18;
      }

      while (v18 != 5);
      ++v16;
      v17 += 5;
    }

    while (v16 != 5);
    *result ^= sha3_keccakf_rndc[v1++];
  }

  while (v1 != 24);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sha3_final(uint64_t a1, void *a2)
{
  *(a2 + a2[25]) ^= 6u;
  *(a2 + a2[26] - 1) ^= 0x80u;
  sha3_keccakf(a2);
  if (a2[27])
  {
    v4 = 0;
    do
    {
      *(a1 + v4) = *(a2 + v4);
      ++v4;
    }

    while (a2[27] > v4);
  }

  return 1;
}

void *shake_xof(void *a1)
{
  *(a1 + a1[25]) ^= 0x1Fu;
  *(a1 + a1[26] - 1) ^= 0x80u;
  result = sha3_keccakf(a1);
  a1[25] = 0;
  return result;
}

void *shake_out(void *result, _BYTE *a2, uint64_t a3)
{
  v3 = result;
  v4 = result[25];
  if (a3)
  {
    v5 = a3;
    do
    {
      if (v4 >= v3[26])
      {
        result = sha3_keccakf(v3);
        v4 = 0;
      }

      v7 = v4 + 1;
      *a2++ = *(v3 + v4++);
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = result[25];
  }

  v3[25] = v7;
  return result;
}

uint64_t open_console()
{
  CRYPTO_lock(9, 31, 0, 0);
  is_a_tty = 1;
  tty_in = fopen("/dev/tty", "r");
  if (!tty_in)
  {
    tty_in = *MEMORY[0x277D85E00];
  }

  tty_out = fopen("/dev/tty", "w");
  if (!tty_out)
  {
    tty_out = *MEMORY[0x277D85DF8];
  }

  v0 = fileno(tty_in);
  if (tcgetattr(v0, &tty_orig) != -1)
  {
    return 1;
  }

  if (*__error() == 25 || *__error() == 22)
  {
    is_a_tty = 0;
    return 1;
  }

  return 0;
}

uint64_t write_string(int a1, UI_STRING *uis)
{
  if ((UI_get_string_type(uis) & 0xFFFFFFFE) == 4)
  {
    v3 = UI_get0_output_string(uis);
    fputs(v3, tty_out);
    fflush(tty_out);
  }

  return 1;
}

uint64_t read_string(UI *a1, UI_STRING *uis)
{
  string_type = UI_get_string_type(uis);
  switch(string_type)
  {
    case UIT_PROMPT:
      v15 = UI_get0_output_string(uis);
      fputs(v15, tty_out);
      fflush(tty_out);
      v7 = UI_get_input_flags(uis) & 1;
      v8 = a1;
      v9 = uis;
      v10 = 1;
LABEL_8:

      read_string_inner(v8, v9, v7, v10);
    case UIT_VERIFY:
      v11 = tty_out;
      v12 = UI_get0_output_string(uis);
      fprintf(v11, "Verifying - %s", v12);
      fflush(tty_out);
      input_flags = UI_get_input_flags(uis);
      read_string_inner(a1, uis, input_flags & 1, 1);
    case UIT_BOOLEAN:
      v5 = UI_get0_output_string(uis);
      fputs(v5, tty_out);
      v6 = UI_get0_action_string(uis);
      fputs(v6, tty_out);
      fflush(tty_out);
      v7 = UI_get_input_flags(uis) & 1;
      v8 = a1;
      v9 = uis;
      v10 = 0;
      goto LABEL_8;
  }

  return 1;
}

uint64_t close_console()
{
  if (tty_in != *MEMORY[0x277D85E00])
  {
    fclose(tty_in);
  }

  if (tty_out != *MEMORY[0x277D85DF8])
  {
    fclose(tty_out);
  }

  CRYPTO_lock(10, 31, 0, 0);
  return 1;
}

void read_string_inner(UI *a1, UI_STRING *a2, int a3, int a4)
{
  v20 = *MEMORY[0x277D85DE8];
  intr_signal = 0;
  read_string_inner_ps = 0;
  v19[0].c_iflag = recsig;
  v19[0].c_oflag = 0;
  v8 = -31;
  v9 = &unk_27E33AB68;
  do
  {
    if (v8 != -23 && ((v8 + 32) & 0x1E) != 0x1E)
    {
      sigaction(v8 + 32, v19, v9);
    }

    ++v9;
    v10 = __CFADD__(v8++, 1);
  }

  while (!v10);
  signal(28, 0);
  read_string_inner_ps = 1;
  if (!a3)
  {
    *v19[0].c_cc = xmmword_27E33AB28;
    *&v19[0].c_cc[16] = unk_27E33AB38;
    v19[0].c_ospeed = qword_27E33AB48;
    *&v19[0].c_iflag = tty_orig;
    v19[0].c_cflag = unk_27E33AB18;
    v19[0].c_lflag = unk_27E33AB20 & 0xFFFFFFFFFFFFFFF7;
    if (is_a_tty == 1)
    {
      v11 = fileno(tty_in);
      if (tcsetattr(v11, 0, v19) == -1)
      {
        goto LABEL_29;
      }
    }
  }

  read_string_inner_ps = 2;
  LOBYTE(v19[0].c_iflag) = 0;
  if (fgets(v19, 1023, tty_in))
  {
    if (!feof(tty_in))
    {
      v12 = tty_in;
      if (!ferror(tty_in))
      {
        v16 = strchr(v19, 10);
        if (v16)
        {
          if (a4)
          {
            *v16 = 0;
          }

LABEL_25:
          UI_set_result(a1, a2, v19);
        }

        else
        {
          while (fgets(__s, 4, v12))
          {
            if (strchr(__s, 10))
            {
              goto LABEL_25;
            }
          }
        }
      }
    }
  }

  if (!a3)
  {
LABEL_29:
    fputc(10, tty_out);
    v13 = read_string_inner_ps;
    if (read_string_inner_ps <= 1)
    {
LABEL_15:
      if (v13 < 1)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (is_a_tty != 1)
    {
LABEL_16:
      v14 = -31;
      v15 = &unk_27E33AB68;
      do
      {
        if ((~(v14 + 32) & 0x1E) != 0)
        {
          sigaction(v14 + 32, v15, 0);
        }

        ++v15;
        v10 = __CFADD__(v14++, 1);
      }

      while (!v10);
LABEL_21:
      explicit_bzero(v19, 0x400uLL);
    }

    v17 = fileno(tty_in);
    tcsetattr(v17, 0, &tty_orig);
  }

  v13 = read_string_inner_ps;
  goto LABEL_15;
}

BIO *__cdecl BIO_new_file(const char *filename, const char *mode)
{
  v4 = fopen(filename, mode);
  if (v4)
  {
    v5 = v4;
    v6 = BIO_new(&methods_filep);
    v7 = v6;
    if (v6)
    {
      BIO_ctrl(v6, 106, 1, v5);
    }

    else
    {
      fclose(v5);
    }
  }

  else
  {
    v8 = __error();
    ERR_put_error(2, 4095, *v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_file.c", 124);
    ERR_asprintf_error_data("fopen('%s', '%s')", filename, mode);
    if (*__error() == 2)
    {
      v9 = 128;
      v10 = 127;
    }

    else
    {
      v9 = 2;
      v10 = 129;
    }

    ERR_put_error(32, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_file.c", v10);
    return 0;
  }

  return v7;
}

BIO *__cdecl BIO_new_fp(FILE *stream, int close_flag)
{
  v4 = BIO_new(&methods_filep);
  v5 = v4;
  if (v4)
  {
    BIO_ctrl(v4, 106, close_flag, stream);
  }

  return v5;
}

size_t file_write(uint64_t a1, void *__ptr, int a3)
{
  result = 0;
  if (__ptr)
  {
    if (*(a1 + 32))
    {
      return fwrite(__ptr, 1uLL, a3, *(a1 + 56));
    }
  }

  return result;
}

uint64_t file_read(uint64_t a1, void *__ptr, int a3)
{
  result = 0;
  if (__ptr)
  {
    if (*(a1 + 32))
    {
      result = fread(__ptr, 1uLL, a3, *(a1 + 56));
      if (!result)
      {
        result = ferror(*(a1 + 56));
        if (result)
        {
          v5 = __error();
          ERR_put_error(2, 4095, *v5, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_file.c", 193);
          ERR_put_error(32, 4095, 2, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_file.c", 194);
          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

size_t file_puts(uint64_t a1, char *__s)
{
  result = 0;
  if (__s)
  {
    if (*(a1 + 32))
    {
      v5 = strlen(__s);
      return fwrite(__s, 1uLL, v5, *(a1 + 56));
    }
  }

  return result;
}

char *file_gets(uint64_t a1, char *a2, int a3)
{
  *a2 = 0;
  result = fgets(a2, a3, *(a1 + 56));
  if (result)
  {
    if (*a2)
    {
      return strlen(a2);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t file_ctrl(uint64_t a1, int a2, uint64_t a3, char *a4)
{
  v4 = a3;
  v6 = *(a1 + 56);
  if (a2 > 11)
  {
    if (a2 <= 107)
    {
      if (a2 != 12)
      {
        if (a2 == 106)
        {
          file_free(a1);
          *(a1 + 56) = a4;
          result = 1;
          *(a1 + 32) = 1;
          *(a1 + 36) = v4 & 1;
          return result;
        }

        if (a2 != 107)
        {
          return 0;
        }

        if (a4)
        {
          *a4 = v6;
        }
      }

      return 1;
    }

    switch(a2)
    {
      case 108:
        file_free(a1);
        *(a1 + 36) = v4 & 1;
        if ((v4 & 8) != 0 || (v4 & 6) == 6 || (v4 & 6) != 0)
        {
          __strlcpy_chk();
          v9 = fopen(a4, __mode);
          if (v9)
          {
            *(a1 + 56) = v9;
            result = 1;
            *(a1 + 32) = 1;
            return result;
          }

          v10 = __error();
          ERR_put_error(2, 4095, *v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_file.c", 257);
          ERR_asprintf_error_data("fopen('%s', '%s')", a4, __mode);
          v11 = 2;
          v12 = 259;
        }

        else
        {
          v11 = 101;
          v12 = 251;
        }

        ERR_put_error(32, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/bio/bss_file.c", v12);
        break;
      case 133:
        goto LABEL_21;
      case 128:
        goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 7)
    {
      if (a2 != 1)
      {
        if (a2 != 2)
        {
          if (a2 != 3)
          {
            return 0;
          }

LABEL_21:

          JUMPOUT(0x23EF06560);
        }

        LODWORD(result) = feof(v6);
        return result;
      }

LABEL_20:
      LODWORD(result) = fseek(v6, a3, 0);
      return result;
    }

    switch(a2)
    {
      case 8:
        return *(a1 + 36);
      case 9:
        *(a1 + 36) = a3;
        return 1;
      case 11:
        fflush(v6);
        return 1;
    }
  }

  return 0;
}

uint64_t file_new(uint64_t a1)
{
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  return 1;
}

uint64_t file_free(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 36))
    {
      if (*(result + 32))
      {
        v2 = *(result + 56);
        if (v2)
        {
          fclose(v2);
          *(v1 + 56) = 0;
          *(v1 + 40) = 0;
        }
      }

      *(v1 + 32) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t Camellia_ecb_encrypt(unsigned int *a1, _BYTE *a2, _DWORD *a3, int a4)
{
  if (a4 == 1)
  {
    return Camellia_encrypt(a1, a2, a3);
  }

  else
  {
    return Camellia_decrypt(a1, a2, a3);
  }
}

void HMAC_Init_ex(HMAC_CTX *ctx, const void *key, int len, const EVP_MD *md, ENGINE *impl)
{
  v6 = len;
  v22 = *MEMORY[0x277D85DE8];
  v9 = ctx->md;
  if (md)
  {
    if (v9 != md && (!key || len < 0))
    {
      goto LABEL_26;
    }

    ctx->md = md;
    v9 = md;
  }

  else if (!v9)
  {
    goto LABEL_26;
  }

  if (key)
  {
    v10 = EVP_MD_block_size(v9);
    if (v10 >= 0x91)
    {
      v11 = 136;
      v12 = 92;
LABEL_10:
      ERR_put_error(6, 4095, v11, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/hmac/hmac.c", v12);
      goto LABEL_26;
    }

    if (v10 >= v6)
    {
      if (v6 >= 0x91)
      {
        v11 = 137;
        v12 = 105;
        goto LABEL_10;
      }

      memcpy(&ctx->key[48], key, v6);
      *&ctx->key[44] = v6;
    }

    else
    {
      if (!EVP_DigestInit_ex(&ctx->md_ctx, v9, impl) || !EVP_DigestUpdate(&ctx->md_ctx, key, v6) || !EVP_DigestFinal_ex(&ctx->md_ctx, &ctx->key[48], &ctx->key[44]))
      {
        goto LABEL_26;
      }

      v6 = *&ctx->key[44];
    }

    if (v6 != 144)
    {
      bzero(&ctx->key[v6 + 48], 144 - v6);
    }
  }

  else if (!md)
  {
LABEL_20:
    EVP_MD_CTX_copy_ex(&ctx->md_ctx, &ctx->i_ctx.flags);
    goto LABEL_26;
  }

  v13 = 0;
  v14 = &ctx->key[48];
  v15.i64[0] = 0x3636363636363636;
  v15.i64[1] = 0x3636363636363636;
  do
  {
    *&d[v13] = veorq_s8(*&v14[v13], v15);
    v13 += 16;
  }

  while (v13 != 144);
  if (EVP_DigestInit_ex(&ctx->i_ctx.flags, v9, impl))
  {
    v16 = EVP_MD_block_size(v9);
    if (EVP_DigestUpdate(&ctx->i_ctx.flags, d, v16))
    {
      v17 = 0;
      v18.i64[0] = 0x5C5C5C5C5C5C5C5CLL;
      v18.i64[1] = 0x5C5C5C5C5C5C5C5CLL;
      do
      {
        *&d[v17] = veorq_s8(*&v14[v17], v18);
        v17 += 16;
      }

      while (v17 != 144);
      if (EVP_DigestInit_ex(&ctx->key_length, v9, impl))
      {
        v19 = EVP_MD_block_size(v9);
        if (EVP_DigestUpdate(&ctx->key_length, d, v19))
        {
          goto LABEL_20;
        }
      }
    }
  }

LABEL_26:
  v20 = *MEMORY[0x277D85DE8];
}

void HMAC_Init(HMAC_CTX *ctx, const void *key, int len, const EVP_MD *md)
{
  if (key && md)
  {
    HMAC_CTX_init(ctx);
  }

  HMAC_Init_ex(ctx, key, len, md, 0);
}

void HMAC_CTX_init(HMAC_CTX *ctx)
{
  EVP_MD_CTX_init(&ctx->i_ctx.flags);
  EVP_MD_CTX_init(&ctx->key_length);
  EVP_MD_CTX_init(&ctx->md_ctx);
  ctx->md = 0;
}

void HMAC_Update(HMAC_CTX *ctx, const unsigned __int8 *data, size_t len)
{
  if (ctx->md)
  {
    EVP_DigestUpdate(&ctx->md_ctx, data, len);
  }
}

void HMAC_Final(HMAC_CTX *ctx, unsigned __int8 *md, unsigned int *len)
{
  v9 = *MEMORY[0x277D85DE8];
  if (ctx->md)
  {
    s = 0;
    if (EVP_DigestFinal_ex(&ctx->md_ctx, mda, &s))
    {
      if (EVP_MD_CTX_copy_ex(&ctx->md_ctx, &ctx->key_length) && EVP_DigestUpdate(&ctx->md_ctx, mda, s))
      {
        EVP_DigestFinal_ex(&ctx->md_ctx, md, len);
      }
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

HMAC_CTX *HMAC_CTX_new()
{
  v0 = malloc_type_calloc(1uLL, 0x130uLL, 0x10E0040A0318B61uLL);
  v1 = v0;
  if (v0)
  {
    HMAC_CTX_init(v0);
  }

  return v1;
}

void HMAC_CTX_free(HMAC_CTX *a1)
{
  if (a1)
  {
    HMAC_CTX_cleanup(a1);

    free(a1);
  }
}

void HMAC_CTX_cleanup(HMAC_CTX *ctx)
{
  EVP_MD_CTX_cleanup(&ctx->i_ctx.flags);
  EVP_MD_CTX_cleanup(&ctx->key_length);
  EVP_MD_CTX_cleanup(&ctx->md_ctx);

  explicit_bzero(ctx, 0x130uLL);
}

uint64_t HMAC_CTX_reset(HMAC_CTX *a1)
{
  HMAC_CTX_cleanup(a1);
  HMAC_CTX_init(a1);
  return 1;
}

uint64_t HMAC_CTX_copy(uint64_t a1, uint64_t a2)
{
  result = EVP_MD_CTX_copy((a1 + 56), (a2 + 56));
  if (result)
  {
    result = EVP_MD_CTX_copy((a1 + 104), (a2 + 104));
    if (result)
    {
      result = EVP_MD_CTX_copy((a1 + 8), (a2 + 8));
      if (result)
      {
        *(a1 + 156) = *(a2 + 156);
        v5 = *(a2 + 172);
        v6 = *(a2 + 188);
        v7 = *(a2 + 204);
        *(a1 + 220) = *(a2 + 220);
        *(a1 + 204) = v7;
        *(a1 + 188) = v6;
        *(a1 + 172) = v5;
        v8 = *(a2 + 236);
        v9 = *(a2 + 252);
        v10 = *(a2 + 284);
        *(a1 + 268) = *(a2 + 268);
        *(a1 + 284) = v10;
        *(a1 + 252) = v9;
        *(a1 + 236) = v8;
        *(a1 + 152) = *(a2 + 152);
        *a1 = *a2;
        return 1;
      }
    }
  }

  return result;
}

void HMAC_CTX_set_flags(HMAC_CTX *ctx, unint64_t flags)
{
  v2 = flags;
  EVP_MD_CTX_set_flags(&ctx->i_ctx.flags, flags);
  EVP_MD_CTX_set_flags(&ctx->key_length, v2);

  EVP_MD_CTX_set_flags(&ctx->md_ctx, v2);
}

unsigned __int8 *__cdecl HMAC(const EVP_MD *evp_md, const void *key, int key_len, const unsigned __int8 *d, size_t n, unsigned __int8 *md, unsigned int *md_len)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  memset(&ctx.md_ctx.md_data, 0, 208);
  if (md)
  {
    v11 = md;
  }

  else
  {
    v11 = &HMAC_m;
  }

  memset(&ctx, 0, 32);
  if (key)
  {
    v12 = key_len;
  }

  else
  {
    v12 = 0;
  }

  if (key)
  {
    v13 = key;
  }

  else
  {
    v13 = &v18;
  }

  v18 = 0;
  HMAC_CTX_init(&ctx);
  HMAC_Init_ex(&ctx, v13, v12, evp_md, 0);
  if (!v14 || !ctx.md || !EVP_DigestUpdate(&ctx.md_ctx, d, n) || (HMAC_Final(&ctx, v11, md_len), !v15))
  {
    v11 = 0;
  }

  HMAC_CTX_cleanup(&ctx);
  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

int EC_GROUP_get_basis_type(const EC_GROUP *a1)
{
  v2 = EC_GROUP_method_of(a1);
  if (EC_METHOD_get_field_type(v2) != 407)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *(a1 + v3 + 128);
    v3 += 4;
  }

  while (v4);
  if (v3 == 12)
  {
    v5 = 682;
  }

  else
  {
    v5 = 0;
  }

  if (v3 == 20)
  {
    return 683;
  }

  else
  {
    return v5;
  }
}

EC_GROUP *__cdecl d2i_ECPKParameters(EC_GROUP **a1, const unsigned __int8 **in, uint64_t len)
{
  v4 = ASN1_item_d2i(0, in, len, &ECPKPARAMETERS_it);
  v5 = v4;
  if (v4)
  {
    v6 = ec_asn1_pkparameters2group(v4);
    if (v6)
    {
      if (a1)
      {
        EC_GROUP_free(*a1);
        *a1 = v6;
      }
    }

    else
    {
      ERR_put_error(16, 4095, 127, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1107);
    }
  }

  else
  {
    ERR_put_error(16, 4095, 117, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1103);
    v6 = 0;
  }

  ASN1_item_free(v5, &ECPKPARAMETERS_it);
  return v6;
}

EC_GROUP *ec_asn1_pkparameters2group(const ASN1_OBJECT **a1)
{
  if (!a1)
  {
    v6 = 124;
    v7 = 1066;
LABEL_22:
    ERR_put_error(16, 4095, v6, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v7);
    return 0;
  }

  v1 = *a1;
  if (*a1 != 2)
  {
    if (v1 != 1)
    {
      if (!v1)
      {
        v2 = OBJ_obj2nid(a1[1]);
        v3 = EC_GROUP_new_by_curve_name(v2);
        v4 = v3;
        if (v3)
        {
          v5 = 1;
LABEL_33:
          EC_GROUP_set_asn1_flag(v3, v5);
          return v4;
        }

        v20 = 119;
        v21 = 1072;
        goto LABEL_35;
      }

      v6 = 115;
      v7 = 1087;
      goto LABEL_22;
    }

    v8 = a1[1];
    ln = v8->ln;
    if (ln && *ln && *(ln + 1))
    {
      v10 = *&v8->nid;
      if (v10)
      {
        v11 = *v10;
        if (*v10)
        {
          v12 = *(v11 + 8);
          if (v12)
          {
            v13 = v10[1];
            if (v13)
            {
              if (*(v13 + 8))
              {
                v14 = BN_bin2bn(v12, *v11, 0);
                if (v14)
                {
                  v15 = BN_bin2bn(*(*(*&v8->nid + 8) + 8), **(*&v8->nid + 8), 0);
                  if (v15)
                  {
                    v16 = OBJ_obj2nid(*v8->ln);
                    if (v16 != 406)
                    {
                      if (v16 == 407)
                      {
                        v17 = 147;
                        v18 = 957;
                      }

                      else
                      {
                        v17 = 103;
                        v18 = 983;
                      }

                      goto LABEL_46;
                    }

                    v25 = *(v8->ln + 1);
                    if (v25)
                    {
                      v26 = ASN1_INTEGER_to_BN(v25, 0);
                      v22 = v26;
                      if (!v26)
                      {
                        v27 = 13;
                        v28 = 968;
                        goto LABEL_48;
                      }

                      if (BN_is_negative(v26) || BN_is_zero(v22))
                      {
                        v27 = 103;
                        v28 = 972;
LABEL_48:
                        ERR_put_error(16, 4095, v27, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v28);
                        v4 = 0;
                        goto LABEL_29;
                      }

                      v40 = v8;
                      v29 = BN_num_bits(v22);
                      if (v29 >= 662)
                      {
                        v27 = 143;
                        v28 = 977;
                        goto LABEL_48;
                      }

                      v30 = v29;
                      v31 = EC_GROUP_new_curve_GFp(v22, v14, v15, 0);
                      v4 = v31;
                      if (v31)
                      {
                        if (*(*&v40->nid + 16))
                        {
                          free(*(v31 + 10));
                          v32 = malloc_type_malloc(**(*&v40->nid + 16), 0xBC848CE3uLL);
                          *(v4 + 10) = v32;
                          if (!v32)
                          {
                            v37 = 65;
                            v38 = 995;
                            goto LABEL_67;
                          }

                          memcpy(v32, *(*(*&v40->nid + 16) + 8), **(*&v40->nid + 16));
                          *(v4 + 11) = **(*&v40->nid + 16);
                        }

                        if (*&v40->flags)
                        {
                          data = v40->data;
                          if (data)
                          {
                            if (*(data + 1))
                            {
                              v23 = EC_POINT_new(v4);
                              if (!v23)
                              {
                                goto LABEL_30;
                              }

                              EC_GROUP_set_point_conversion_form(v4, (**(v40->data + 1) & 0xFE));
                              if (EC_POINT_oct2point(v4, v23, *(v40->data + 1), *v40->data, 0))
                              {
                                v34 = ASN1_INTEGER_to_BN(*&v40->flags, v14);
                                v14 = v34;
                                if (v34)
                                {
                                  if (BN_is_negative(v34) || BN_is_zero(v14))
                                  {
                                    v35 = 122;
                                    v36 = 1025;
                                  }

                                  else
                                  {
                                    if (BN_num_bits(v14) <= v30 + 1)
                                    {
                                      sn = v40[1].sn;
                                      if (sn)
                                      {
                                        v15 = ASN1_INTEGER_to_BN(sn, v15);
                                        if (!v15)
                                        {
                                          v35 = 13;
                                          v36 = 1037;
                                          goto LABEL_70;
                                        }
                                      }

                                      else
                                      {
                                        BN_free(v15);
                                        v15 = 0;
                                      }

                                      if (EC_GROUP_set_generator(v4, v23, v14, v15))
                                      {
                                        goto LABEL_31;
                                      }

                                      v35 = 16;
                                      v36 = 1042;
                                      goto LABEL_70;
                                    }

                                    v35 = 122;
                                    v36 = 1029;
                                  }
                                }

                                else
                                {
                                  v35 = 13;
                                  v36 = 1021;
                                }
                              }

                              else
                              {
                                v35 = 16;
                                v36 = 1016;
                              }

LABEL_70:
                              ERR_put_error(16, 4095, v35, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v36);
                              goto LABEL_30;
                            }
                          }
                        }

                        v37 = 115;
                        v38 = 1003;
                      }

                      else
                      {
                        v37 = 16;
                        v38 = 988;
                      }

LABEL_67:
                      ERR_put_error(16, 4095, v37, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v38);
                      goto LABEL_29;
                    }

                    v17 = 115;
                    v18 = 963;
                  }

                  else
                  {
                    v17 = 3;
                    v18 = 951;
                  }

LABEL_46:
                  ERR_put_error(16, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v18);
                  v4 = 0;
                  v22 = 0;
                  goto LABEL_29;
                }

                ERR_put_error(16, 4095, 3, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 946);
                v4 = 0;
                v22 = 0;
LABEL_28:
                v15 = 0;
LABEL_29:
                v23 = 0;
LABEL_30:
                EC_GROUP_free(v4);
                v4 = 0;
LABEL_31:
                BN_free(v22);
                BN_free(v14);
                BN_free(v15);
                EC_POINT_free(v23);
                if (v4)
                {
                  v3 = v4;
                  v5 = 0;
                  goto LABEL_33;
                }

                v20 = 16;
                v21 = 1080;
LABEL_35:
                ERR_put_error(16, 4095, v20, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v21);
                return v4;
              }
            }
          }
        }
      }

      v19 = 941;
    }

    else
    {
      v19 = 934;
    }

    ERR_put_error(16, 4095, 115, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v19);
    v4 = 0;
    v22 = 0;
    v14 = 0;
    goto LABEL_28;
  }

  return 0;
}

int i2d_ECPKParameters(const EC_GROUP *a1, unsigned __int8 **out)
{
  v3 = ec_asn1_group2pkparameters(a1, 0);
  if (v3)
  {
    v4 = v3;
    v5 = ASN1_item_i2d(v3, out, &ECPKPARAMETERS_it);
    if (!v5)
    {
      ERR_put_error(16, 4095, 121, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1131);
    }

    ASN1_item_free(v4, &ECPKPARAMETERS_it);
  }

  else
  {
    ERR_put_error(16, 4095, 120, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1127);
    return 0;
  }

  return v5;
}

ASN1_VALUE *ec_asn1_group2pkparameters(EC_GROUP *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    if (*a2 == 1)
    {
      v5 = *(a2 + 8);
      if (v5)
      {
        ASN1_item_free(v5, &ECPARAMETERS_it);
      }
    }

    else if (!*a2)
    {
      v4 = *(a2 + 8);
      if (v4)
      {
        ASN1_OBJECT_free(v4);
      }
    }
  }

  else
  {
    v3 = ASN1_item_new(&ECPKPARAMETERS_it);
    if (!v3)
    {
      ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 885);
      return v3;
    }
  }

  if (!EC_GROUP_get_asn1_flag(a1))
  {
    *v3 = 1;
    v9 = BN_new();
    if (!v9)
    {
      ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 794);
      v31 = 0;
LABEL_52:
      v11 = 0;
      goto LABEL_53;
    }

    v10 = ASN1_item_new(&ECPARAMETERS_it);
    v11 = v10;
    if (!v10)
    {
      ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 799);
      v31 = 0;
      goto LABEL_53;
    }

    *v10 = 1;
    if (!a1)
    {
      goto LABEL_49;
    }

    v12 = *(v10 + 1);
    if (!v12)
    {
      goto LABEL_49;
    }

    if (*v12)
    {
      ASN1_OBJECT_free(*v12);
    }

    v13 = *(v12 + 8);
    if (v13)
    {
      ASN1_TYPE_free(v13);
    }

    v14 = EC_GROUP_method_of(a1);
    field_type = EC_METHOD_get_field_type(v14);
    v16 = OBJ_nid2obj(field_type);
    *v12 = v16;
    if (v16)
    {
      if (field_type == 406)
      {
        v17 = BN_new();
        if (v17)
        {
          if (EC_GROUP_get_curve(a1, v17, 0, 0, 0))
          {
            v18 = BN_to_ASN1_INTEGER(v17, 0);
            *(v12 + 8) = v18;
            if (v18)
            {
              BN_free(v17);
              v19 = *(v11 + 2);
              v60 = 0;
              if (!v19 || !*v19 || !v19[1])
              {
                goto LABEL_59;
              }

              v20 = BN_new();
              if (v20 && (v21 = BN_new()) != 0)
              {
                v22 = v21;
                if (EC_GROUP_get_curve(a1, 0, v20, v21, 0))
                {
                  v23 = BN_num_bits(v20);
                  v24 = BN_num_bits(v22);
                  v25 = v24 + 14;
                  if (v24 >= -7)
                  {
                    v26 = v24 + 7;
                  }

                  else
                  {
                    v26 = v24 + 14;
                  }

                  v27 = v23 + 14;
                  if ((v23 + 14) < 0xF)
                  {
                    v28 = 0;
                    v29 = 1;
                    v30 = &v60;
                    goto LABEL_66;
                  }

                  if (v23 >= -7)
                  {
                    v27 = v23 + 7;
                  }

                  v28 = malloc_type_malloc(v27 >> 3, 0xF3DA7BDEuLL);
                  if (v28)
                  {
                    v39 = BN_bn2bin(v20, v28);
                    if (v39)
                    {
                      v29 = v39;
                      v30 = v28;
LABEL_66:
                      if (v25 < 0xF)
                      {
                        v38 = 0;
                        v40 = 1;
                        v59 = &v60;
LABEL_71:
                        if (ASN1_STRING_set(*v19, v30, v29) && ASN1_STRING_set(v19[1], v59, v40))
                        {
                          ASN1_BIT_STRING_free(v19[2]);
                          v19[2] = 0;
                          if (!*(a1 + 10))
                          {
                            goto LABEL_77;
                          }

                          v42 = ASN1_BIT_STRING_new();
                          v19[2] = v42;
                          if (v42)
                          {
                            if (ASN1_BIT_STRING_set(v42, *(a1 + 10), *(a1 + 22)))
                            {
                              if (asn1_abs_set_unused_bits(v19[2], 0))
                              {
LABEL_77:
                                free(v28);
                                free(v38);
                                BN_free(v20);
                                BN_free(v22);
                                v43 = EC_GROUP_get0_generator(a1);
                                if (v43)
                                {
                                  v44 = v43;
                                  point_conversion_form = EC_GROUP_get_point_conversion_form(a1);
                                  v46 = EC_POINT_point2oct(a1, v44, point_conversion_form, 0, 0, 0);
                                  if (v46)
                                  {
                                    v47 = v46;
                                    v31 = malloc_type_malloc(v46, 0xE8AF7EA3uLL);
                                    if (v31)
                                    {
                                      if (EC_POINT_point2oct(a1, v44, point_conversion_form, v31, v47, 0))
                                      {
                                        v48 = *(v11 + 3);
                                        if (v48 || (v48 = ASN1_OCTET_STRING_new(), (*(v11 + 3) = v48) != 0))
                                        {
                                          if (ASN1_OCTET_STRING_set(v48, v31, v47))
                                          {
                                            if (EC_GROUP_get_order(a1, v9, 0))
                                            {
                                              v49 = BN_to_ASN1_INTEGER(v9, *(v11 + 4));
                                              *(v11 + 4) = v49;
                                              if (v49)
                                              {
                                                if (!EC_GROUP_get_cofactor(a1, v9, 0) || (v50 = BN_to_ASN1_INTEGER(v9, *(v11 + 5)), (*(v11 + 5) = v50) != 0))
                                                {
LABEL_53:
                                                  BN_free(v9);
                                                  free(v31);
                                                  *(v3 + 1) = v11;
                                                  if (v11)
                                                  {
                                                    return v3;
                                                  }

                                                  goto LABEL_13;
                                                }

                                                v51 = 13;
                                                v52 = 860;
                                              }

                                              else
                                              {
                                                v51 = 13;
                                                v52 = 853;
                                              }
                                            }

                                            else
                                            {
                                              v51 = 16;
                                              v52 = 848;
                                            }
                                          }

                                          else
                                          {
                                            v51 = 13;
                                            v52 = 843;
                                          }
                                        }

                                        else
                                        {
                                          v51 = 65;
                                          v52 = 839;
                                        }
                                      }

                                      else
                                      {
                                        v51 = 16;
                                        v52 = 835;
                                      }
                                    }

                                    else
                                    {
                                      v51 = 65;
                                      v52 = 831;
                                    }

                                    ERR_put_error(16, 4095, v51, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v52);
                                    goto LABEL_51;
                                  }

                                  v36 = 16;
                                  v37 = 827;
                                }

                                else
                                {
                                  v36 = 113;
                                  v37 = 820;
                                }

LABEL_50:
                                ERR_put_error(16, 4095, v36, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v37);
                                v31 = 0;
LABEL_51:
                                ASN1_item_free(v11, &ECPARAMETERS_it);
                                goto LABEL_52;
                              }

                              v53 = 13;
                              v54 = 767;
                            }

                            else
                            {
                              v53 = 13;
                              v54 = 763;
                            }
                          }

                          else
                          {
                            v53 = 65;
                            v54 = 758;
                          }
                        }

                        else
                        {
                          v53 = 13;
                          v54 = 748;
                        }

                        goto LABEL_100;
                      }

                      data = v30;
                      len = v29;
                      v38 = malloc_type_malloc(v26 >> 3, 0xC2C326E2uLL);
                      if (v38)
                      {
                        v41 = BN_bn2bin(v22, v38);
                        if (v41)
                        {
                          v40 = v41;
                          v59 = v38;
                          v29 = len;
                          v30 = data;
                          goto LABEL_71;
                        }

                        v53 = 3;
                        v54 = 739;
                      }

                      else
                      {
                        v53 = 65;
                        v54 = 735;
                      }

LABEL_100:
                      ERR_put_error(16, 4095, v53, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v54);
                      goto LABEL_58;
                    }

                    v55 = 3;
                    v56 = 723;
                  }

                  else
                  {
                    v55 = 65;
                    v56 = 719;
                  }

                  ERR_put_error(16, 4095, v55, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v56);
LABEL_57:
                  v38 = 0;
LABEL_58:
                  free(v28);
                  free(v38);
                  BN_free(v20);
                  BN_free(v22);
LABEL_59:
                  v36 = 16;
                  v37 = 815;
                  goto LABEL_50;
                }

                ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 707);
              }

              else
              {
                ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 701);
                v22 = 0;
              }

              v28 = 0;
              goto LABEL_57;
            }

            v34 = 13;
            v35 = 672;
          }

          else
          {
            v34 = 16;
            v35 = 666;
          }
        }

        else
        {
          v34 = 65;
          v35 = 661;
        }

        ERR_put_error(16, 4095, v34, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v35);
        goto LABEL_48;
      }

      v32 = 147;
      v33 = 676;
    }

    else
    {
      v32 = 8;
      v33 = 656;
    }

    ERR_put_error(16, 4095, v32, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v33);
    v17 = 0;
LABEL_48:
    BN_free(v17);
LABEL_49:
    v36 = 16;
    v37 = 810;
    goto LABEL_50;
  }

  curve_name = EC_GROUP_get_curve_name(a1);
  if (!curve_name || (*v3 = 0, v7 = OBJ_nid2obj(curve_name), (*(v3 + 1) = v7) == 0))
  {
LABEL_13:
    ASN1_item_free(v3, &ECPKPARAMETERS_it);
    return 0;
  }

  return v3;
}

EC_KEY *__cdecl d2i_ECPrivateKey(EC_KEY **a, const unsigned __int8 **in, uint64_t len)
{
  v4 = ASN1_item_d2i(0, in, len, &EC_PRIVATEKEY_it);
  if (!v4)
  {
    ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1148);
    return 0;
  }

  v5 = v4;
  if (!a || (v6 = *a) == 0)
  {
    v6 = EC_KEY_new();
    if (!v6)
    {
      v18 = 65;
      v19 = 1153;
      goto LABEL_30;
    }
  }

  v7 = *(v6 + 3);
  if (*(v5 + 2))
  {
    EC_GROUP_free(v7);
    v7 = ec_asn1_pkparameters2group(*(v5 + 2));
    *(v6 + 3) = v7;
  }

  if (!v7)
  {
    v18 = 16;
    v19 = 1164;
    goto LABEL_30;
  }

  v8 = *(v5 + 1);
  *(v6 + 4) = *v5;
  if (!v8)
  {
    v18 = 125;
    v19 = 1179;
    goto LABEL_30;
  }

  v9 = ASN1_STRING_data(v8);
  v10 = ASN1_STRING_length(*(v5 + 1));
  v11 = BN_bin2bn(v9, v10, *(v6 + 5));
  *(v6 + 5) = v11;
  if (!v11)
  {
    v18 = 3;
    v19 = 1175;
    goto LABEL_30;
  }

  v12 = *(v6 + 4);
  if (v12)
  {
    EC_POINT_free(v12);
  }

  v13 = EC_POINT_new(*(v6 + 3));
  *(v6 + 4) = v13;
  if (!v13)
  {
    v18 = 16;
    v19 = 1187;
    goto LABEL_30;
  }

  v14 = v13;
  v15 = *(v5 + 3);
  if (!v15)
  {
    if (EC_POINT_mul(*(v6 + 3), v14, *(v6 + 5), 0, 0, 0))
    {
      *(v6 + 12) |= 2u;
      goto LABEL_26;
    }

    v18 = 16;
    v19 = 1212;
LABEL_30:
    ERR_put_error(16, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v19);
    if (!a || *a != v6)
    {
      EC_KEY_free(v6);
    }

    ASN1_item_free(v5, &EC_PRIVATEKEY_it);
    return 0;
  }

  v16 = ASN1_STRING_data(v15);
  v17 = ASN1_STRING_length(*(v5 + 3));
  if (!v16 || !v17)
  {
    v18 = 100;
    v19 = 1198;
    goto LABEL_30;
  }

  *(v6 + 13) = *v16 & 0xFE;
  if (!EC_POINT_oct2point(*(v6 + 3), *(v6 + 4), v16, v17, 0))
  {
    v18 = 16;
    v19 = 1206;
    goto LABEL_30;
  }

LABEL_26:
  ASN1_item_free(v5, &EC_PRIVATEKEY_it);
  if (a)
  {
    *a = v6;
  }

  return v6;
}

int i2d_ECPrivateKey(EC_KEY *a, unsigned __int8 **out)
{
  if (a && *(a + 3) && *(a + 5) && ((*(a + 48) & 2) != 0 || *(a + 4)))
  {
    v4 = ASN1_item_new(&EC_PRIVATEKEY_it);
    if (v4)
    {
      v5 = v4;
      *v4 = *(a + 4);
      v6 = BN_num_bits(*(a + 5));
      v7 = v6 + 7;
      if (v6 < -7)
      {
        v7 = v6 + 14;
      }

      v8 = v7 >> 3;
      v9 = malloc_type_malloc(v8, 0x16318CC1uLL);
      if (!v9)
      {
        v16 = 65;
        v17 = 1255;
        goto LABEL_30;
      }

      if (!BN_bn2bin(*(a + 5), v9))
      {
        v16 = 3;
        v17 = 1259;
        goto LABEL_30;
      }

      if (!ASN1_STRING_set(*(v5 + 1), v9, v8))
      {
        v16 = 13;
        v17 = 1263;
        goto LABEL_30;
      }

      v10 = *(a + 12);
      if ((v10 & 1) == 0)
      {
        v11 = ec_asn1_group2pkparameters(*(a + 3), *(v5 + 2));
        *(v5 + 2) = v11;
        if (!v11)
        {
          v16 = 16;
          v17 = 1269;
          goto LABEL_30;
        }

        v10 = *(a + 12);
      }

      if ((v10 & 2) == 0 && *(a + 4))
      {
        v12 = ASN1_BIT_STRING_new();
        *(v5 + 3) = v12;
        if (!v12)
        {
          v16 = 65;
          v17 = 1276;
          goto LABEL_30;
        }

        v13 = EC_POINT_point2oct(*(a + 3), *(a + 4), *(a + 13), 0, 0, 0);
        if (v13 <= v8)
        {
          v15 = v9;
        }

        else
        {
          v14 = v13;
          v15 = malloc_type_realloc(v9, v13, 0xFEBA2C52uLL);
          v8 = v14;
          if (!v15)
          {
            v16 = 65;
            v17 = 1285;
LABEL_30:
            ERR_put_error(16, 4095, v16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v17);
            v20 = 0;
LABEL_31:
            free(v9);
            ASN1_item_free(v5, &EC_PRIVATEKEY_it);
            return v20;
          }
        }

        if (EC_POINT_point2oct(*(a + 3), *(a + 4), *(a + 13), v15, v8, 0))
        {
          if (ASN1_STRING_set(*(v5 + 3), v15, v8))
          {
            if (asn1_abs_set_unused_bits(*(v5 + 3), 0))
            {
              v9 = v15;
              goto LABEL_37;
            }

            v22 = 13;
            v23 = 1301;
          }

          else
          {
            v22 = 13;
            v23 = 1297;
          }
        }

        else
        {
          v22 = 16;
          v23 = 1293;
        }

        ERR_put_error(16, 4095, v22, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v23);
        v20 = 0;
        v9 = v15;
        goto LABEL_31;
      }

LABEL_37:
      v20 = ASN1_item_i2d(v5, out, &EC_PRIVATEKEY_it);
      if (!v20)
      {
        ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1306);
      }

      goto LABEL_31;
    }

    v18 = 65;
    v19 = 1247;
  }

  else
  {
    v18 = 67;
    v19 = 1243;
  }

  ERR_put_error(16, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v19);
  return 0;
}

int i2d_ECParameters(EC_KEY *a, unsigned __int8 **out)
{
  if (a)
  {
    v3 = *(a + 3);

    return i2d_ECPKParameters(v3, out);
  }

  else
  {
    ERR_put_error(16, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1321);
    return 0;
  }
}

EC_KEY *__cdecl d2i_ECParameters(EC_KEY **a, const unsigned __int8 **in, uint64_t len)
{
  if (!in || !*in)
  {
    ERR_put_error(16, 4095, 67, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1333);
    return 0;
  }

  if (!a || (v6 = *a) == 0)
  {
    v8 = EC_KEY_new();
    v6 = v8;
    if (!v8)
    {
      ERR_put_error(16, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1338);
      return v6;
    }

    if (!d2i_ECPKParameters(v8 + 3, in, len))
    {
      ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1345);
      if (!a)
      {
LABEL_17:
        EC_KEY_free(v6);
        return 0;
      }

      goto LABEL_16;
    }

    if (!a)
    {
      return v6;
    }

LABEL_13:
    *a = v6;
    return v6;
  }

  if (d2i_ECPKParameters(v6 + 3, in, len))
  {
    goto LABEL_13;
  }

  ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1345);
LABEL_16:
  if (*a != v6)
  {
    goto LABEL_17;
  }

  return 0;
}

EC_KEY *__cdecl o2i_ECPublicKey(EC_KEY **a, const unsigned __int8 **in, uint64_t len)
{
  if (!a || (v3 = *a) == 0 || (v4 = *(v3 + 3)) == 0)
  {
    v10 = 67;
    v11 = 1363;
LABEL_10:
    ERR_put_error(16, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v11);
    return 0;
  }

  v7 = *(v3 + 4);
  if (!v7)
  {
    v8 = EC_POINT_new(v4);
    *(v3 + 4) = v8;
    if (!v8)
    {
      v10 = 65;
      v11 = 1369;
      goto LABEL_10;
    }

    v7 = v8;
    v4 = *(v3 + 3);
  }

  if (!EC_POINT_oct2point(v4, v7, *in, len, 0))
  {
    v10 = 16;
    v11 = 1373;
    goto LABEL_10;
  }

  v9 = *in;
  *(v3 + 13) = **in & 0xFE;
  *in = &v9[len];
  return v3;
}

int i2o_ECPublicKey(EC_KEY *a, unsigned __int8 **out)
{
  if (!a)
  {
    v8 = 67;
    v9 = 1389;
LABEL_10:
    ERR_put_error(16, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", v9);
LABEL_11:
    LODWORD(v5) = 0;
    return v5;
  }

  v4 = EC_POINT_point2oct(*(a + 3), *(a + 4), *(a + 13), 0, 0, 0);
  v5 = v4;
  if (!out || !v4)
  {
    return v5;
  }

  v6 = *out;
  v7 = *out;
  if (!*out)
  {
    v7 = malloc_type_malloc(v4, 0xFED819B0uLL);
    *out = v7;
    if (!v7)
    {
      v8 = 65;
      v9 = 1401;
      goto LABEL_10;
    }
  }

  if (!EC_POINT_point2oct(*(a + 3), *(a + 4), *(a + 13), v7, v5, 0))
  {
    ERR_put_error(16, 4095, 16, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/ec/ec_asn1.c", 1408);
    if (!v6)
    {
      free(*out);
      LODWORD(v5) = 0;
      *out = 0;
      return v5;
    }

    goto LABEL_11;
  }

  if (v6)
  {
    *out += v5;
  }

  return v5;
}

uint64_t asn1_abs_set_unused_bits(uint64_t a1, unsigned int a2)
{
  if (a2 > 7)
  {
    return 0;
  }

  *(a1 + 16) = *(a1 + 16) & 0xFFFFFFFFFFFFFFF0 | a2 | 8;
  return 1;
}

int ASN1_BIT_STRING_set_bit(ASN1_BIT_STRING *a, int n, int value)
{
  v3 = n + 7;
  if (n >= 0)
  {
    v3 = n;
  }

  v4 = 1 << (~n & 7);
  if (value)
  {
    v5 = 1 << (~n & 7);
  }

  else
  {
    v5 = 0;
  }

  if (a)
  {
    v6 = a;
    v7 = v3 >> 3;
    a->flags &= 0xFFFFFFFFFFFFFFF0;
    length = a->length;
    if (length > v3 >> 3)
    {
      data = a->data;
      if (data)
      {
LABEL_12:
        data[v7] = data[v7] & ~v4 | v5;
        v10 = v6->length;
        if (v6->length >= 1)
        {
          v11 = (v6->data - 1);
          do
          {
            if (*(v11 + v10))
            {
              break;
            }

            v12 = __OFSUB__(v10--, 1);
            v6->length = v10;
          }

          while (!((v10 < 0) ^ v12 | (v10 == 0)));
        }

        goto LABEL_17;
      }
    }

    if (!value)
    {
LABEL_17:
      LODWORD(a) = 1;
      return a;
    }

    data = recallocarray(v6->data, length, v7 + 1, 1uLL);
    if (data)
    {
      v6->data = data;
      v6->length = v7 + 1;
      goto LABEL_12;
    }

    ERR_put_error(13, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_bitstr.c", 135);
    LODWORD(a) = 0;
  }

  return a;
}

int ASN1_BIT_STRING_get_bit(ASN1_BIT_STRING *a, int n)
{
  v2 = n + 7;
  if (n >= 0)
  {
    v2 = n;
  }

  if (a)
  {
    v3 = v2 >> 3;
    if (a->length > v3 && (data = a->data) != 0)
    {
      LODWORD(a) = (data[v3] >> (~n & 7)) & 1;
    }

    else
    {
      LODWORD(a) = 0;
    }
  }

  return a;
}

BOOL ASN1_BIT_STRING_check(unsigned int *a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 1);
  if (!v3)
  {
    return 1;
  }

  v4 = *a1;
  if (v4 < 1)
  {
    return 1;
  }

  v5 = 0;
  do
  {
    if (v5 >= a3)
    {
      v6 = -1;
    }

    else
    {
      v6 = ~*(a2 + v5);
    }

    v7 = (v6 & *(v3 + v5++));
  }

  while (v5 < v4 && !v7);
  return v7 == 0;
}

int ASN1_BIT_STRING_name_print(BIO *out, ASN1_BIT_STRING *bs, BIT_STRING_BITNAME *tbl, int indent)
{
  BIO_printf(out, "%*s", indent, "");
  lname = tbl->lname;
  if (lname)
  {
    v8 = 1;
    do
    {
      bitnum = tbl->bitnum + 7;
      if (tbl->bitnum >= 0)
      {
        bitnum = tbl->bitnum;
      }

      if (bs)
      {
        v10 = bitnum >> 3;
        if (bs->length > v10)
        {
          data = bs->data;
          if (data)
          {
            if ((data[v10] >> (~tbl->bitnum & 7)))
            {
              if (!v8)
              {
                BIO_puts(out, ", ");
                lname = tbl->lname;
              }

              BIO_puts(out, lname);
              v8 = 0;
            }
          }
        }
      }

      lname = tbl[1].lname;
      ++tbl;
    }

    while (lname);
  }

  BIO_puts(out, "\n");
  return 1;
}

int ASN1_BIT_STRING_set_asc(ASN1_BIT_STRING *bs, char *name, int value, BIT_STRING_BITNAME *tbl)
{
  v6 = ASN1_BIT_STRING_num_asc(name, tbl);
  if (v6 < 0)
  {
    return 0;
  }

  if (!bs)
  {
    return 1;
  }

  result = ASN1_BIT_STRING_set_bit(bs, v6, value);
  if (result)
  {
    return 1;
  }

  return result;
}

int ASN1_BIT_STRING_num_asc(char *name, BIT_STRING_BITNAME *tbl)
{
  lname = tbl->lname;
  if (!lname)
  {
    return -1;
  }

  for (i = &tbl[1].lname; strcmp(*(i - 2), name) && strcmp(lname, name); i += 3)
  {
    v5 = *i;
    lname = v5;
    if (!v5)
    {
      return -1;
    }
  }

  return *(i - 8);
}

int i2c_ASN1_BIT_STRING(ASN1_BIT_STRING *a, unsigned __int8 **pp)
{
  if (a)
  {
    length = a->length;
    if (length != 0x7FFFFFFF)
    {
      v3 = length + 1;
      if (!pp)
      {
        return v3;
      }

      if (length <= 0)
      {
LABEL_11:
        v8 = *pp;
        *v8 = 0;
        v9 = v8 + 1;
LABEL_30:
        *pp = v9;
        return v3;
      }

      flags = a->flags;
      if ((flags & 8) != 0)
      {
        v10 = flags & 7;
      }

      else
      {
        v6 = a->data - 1;
        while (1)
        {
          length = length;
          if (v6[length])
          {
            break;
          }

          v7 = __OFSUB__(length, 1);
          LODWORD(length) = length - 1;
          if (((length & 0x80000000) != 0) ^ v7 | (length == 0))
          {
            goto LABEL_11;
          }
        }

        if (v6[length])
        {
          v10 = 0;
        }

        else if ((v6[length] & 2) != 0)
        {
          v10 = 1;
        }

        else if ((v6[length] & 4) != 0)
        {
          v10 = 2;
        }

        else if ((v6[length] & 8) != 0)
        {
          v10 = 3;
        }

        else if ((v6[length] & 0x10) != 0)
        {
          v10 = 4;
        }

        else if ((v6[length] & 0x20) != 0)
        {
          v10 = 5;
        }

        else
        {
          if ((v6[length] & 0x40) == 0)
          {
            v11 = *pp;
            v10 = 7;
LABEL_29:
            *v11 = v10;
            v12 = v11 + 1;
            memcpy(v11 + 1, a->data, length);
            v9 = &v12[length];
            v12[length - 1] &= -1 << v10;
            goto LABEL_30;
          }

          v10 = 6;
        }
      }

      v11 = *pp;
      goto LABEL_29;
    }
  }

  return 0;
}

uint64_t c2i_ASN1_BIT_STRING_cbs(ASN1_VALUE **a1, void *a2)
{
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (!a1)
  {
    goto LABEL_11;
  }

  v4 = *a1;
  if (v4)
  {
    ASN1_item_free(v4, &ASN1_BIT_STRING_it);
    *a1 = 0;
  }

  if (!CBS_get_u8(a2, &v13))
  {
    ERR_put_error(13, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_bitstr.c", 318);
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v5 = CBS_stow(a2, &v15, &v14);
  v6 = 0;
  v7 = 0;
  if (v5 && !(v14 >> 31))
  {
    v8 = ASN1_item_new(&ASN1_BIT_STRING_it);
    v7 = v8;
    if (!v8)
    {
LABEL_12:
      v6 = 0;
      goto LABEL_13;
    }

    v10 = v14;
    v9 = v15;
    *(v8 + 1) = v15;
    *v8 = v10;
    v15 = 0;
    v11 = v13;
    if (v13 >= 8u)
    {
      ERR_put_error(13, 4095, 220, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_bitstr.c", 339);
      goto LABEL_12;
    }

    *(v8 + 2) = v13 | *(v8 + 2) & 0xFFFFFFFFFFFFFFF0 | 8;
    if (v10 >= 1)
    {
      v9[(v10 & 0x7FFFFFFF) - 1] &= 255 << v11;
    }

    *a1 = v8;
    v6 = 1;
    v7 = 0;
  }

LABEL_13:
  ASN1_item_free(v7, &ASN1_BIT_STRING_it);
  freezero(v15, v14);
  return v6;
}

ASN1_BIT_STRING *__cdecl c2i_ASN1_BIT_STRING(ASN1_BIT_STRING **a, const unsigned __int8 **pp, uint64_t length)
{
  v8 = 0;
  if (a)
  {
    ASN1_item_free(*a, &ASN1_BIT_STRING_it);
    *a = 0;
  }

  if (length < 0)
  {
    ERR_put_error(13, 4095, 136, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_bitstr.c", 369);
    return 0;
  }

  memset(v7, 0, sizeof(v7));
  CBS_init(v7, *pp, length);
  if (!c2i_ASN1_BIT_STRING_cbs(&v8, v7))
  {
    return 0;
  }

  *pp = CBS_data(v7);
  result = v8;
  if (a)
  {
    *a = v8;
  }

  return result;
}

void ERR_load_RAND_strings(void)
{
  if (!ERR_func_error_string(RAND_str_functs))
  {
    ERR_load_strings(0, &RAND_str_functs);

    ERR_load_strings(0, &RAND_str_reasons);
  }
}

void ERR_load_PKCS7_strings(void)
{
  if (!ERR_func_error_string(PKCS7_str_functs))
  {
    ERR_load_strings(0, &PKCS7_str_functs);

    ERR_load_strings(0, &PKCS7_str_reasons);
  }
}

int d2i_ASN1_BOOLEAN(int *a, const unsigned __int8 **pp, uint64_t length)
{
  LODWORD(pval) = 0;
  v4 = -1;
  if (ASN1_item_ex_d2i(&pval, pp, length, &ASN1_BOOLEAN_it, -1, 0, 0, 0) >= 1)
  {
    v4 = pval;
    if (a)
    {
      *a = pval;
    }
  }

  return v4;
}

uint64_t pkey_hmac_init(uint64_t a1)
{
  result = malloc_type_calloc(1uLL, 0x150uLL, 0x10F00401018A6D6uLL);
  if (result)
  {
    v3 = result;
    *(result + 12) = 4;
    HMAC_CTX_init((result + 32));
    *(a1 + 40) = v3;
    *(a1 + 72) = 0;
    return 1;
  }

  return result;
}

uint64_t pkey_hmac_copy(uint64_t a1, uint64_t a2)
{
  result = pkey_hmac_init(a1);
  if (result)
  {
    v5 = *(a2 + 40);
    v6 = *(a1 + 40);
    *v6 = *v5;
    HMAC_CTX_init((v6 + 32));
    result = HMAC_CTX_copy(v6 + 32, v5 + 32);
    if (result)
    {
      v7 = *(v5 + 16);
      if (!v7)
      {
        return 1;
      }

      result = ASN1_OCTET_STRING_set((v6 + 8), v7, *(v5 + 8));
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

void pkey_hmac_cleanup(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    HMAC_CTX_cleanup((v1 + 32));
    freezero(*(v1 + 16), *(v1 + 8));

    free(v1);
  }
}

char *pkey_hmac_keygen(uint64_t a1, EVP_PKEY *a2)
{
  v2 = *(a1 + 40);
  if (!*(v2 + 16))
  {
    return 0;
  }

  result = ASN1_OCTET_STRING_dup((v2 + 8));
  if (result)
  {
    EVP_PKEY_assign(a2, 855, result);
    return 1;
  }

  return result;
}

uint64_t hmac_signctx_init(uint64_t a1, EVP_MD_CTX *a2)
{
  HMAC_CTX_set_flags((*(a1 + 40) + 32), a2->flags & 0xFFFFFFFFFFFFFEFFLL);
  EVP_MD_CTX_set_flags(a2, 256);
  a2[1].engine = int_update_0;
  return 1;
}

void hmac_signctx(uint64_t a1, unsigned __int8 *a2, void *a3, EVP_MD_CTX *ctx)
{
  v6 = *(a1 + 40);
  v7 = EVP_MD_CTX_md(ctx);
  v8 = EVP_MD_size(v7);
  if ((v8 & 0x80000000) == 0)
  {
    *a3 = v8;
    if (a2)
    {
      len = 0;
      HMAC_Final((v6 + 32), a2, &len);
      if (v9)
      {
        *a3 = len;
      }
    }
  }
}

uint64_t pkey_hmac_ctrl(uint64_t a1, int a2, int a3, unsigned __int8 *data)
{
  v5 = *(a1 + 40);
  if (a2 == 1)
  {
    *v5 = data;
    return 1;
  }

  if (a2 == 7)
  {
    HMAC_Init_ex((v5 + 32), *(*(*(a1 + 16) + 32) + 8), **(*(a1 + 16) + 32), *v5, *(a1 + 8));
    return v9 != 0;
  }

  if (a2 != 6)
  {
    return 4294967294;
  }

  v6 = 0;
  v8 = a3 > 0 && data == 0;
  if (a3 >= -1 && !v8)
  {
    return ASN1_OCTET_STRING_set((v5 + 8), data, a3) != 0;
  }

  return v6;
}

uint64_t pkey_hmac_ctrl_str(uint64_t a1, char *__s1, unsigned __int8 *a3)
{
  if (!a3)
  {
    return 0;
  }

  if (!strcmp(__s1, "key"))
  {
    return ASN1_OCTET_STRING_set((*(a1 + 40) + 8), a3, -1) != 0;
  }

  if (strcmp(__s1, "hexkey"))
  {
    return 4294967294;
  }

  len = 0;
  v7 = string_to_hex(a3, &len);
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v6 = len >= -1 && ASN1_OCTET_STRING_set((*(a1 + 40) + 8), v7, len) != 0;
  free(v8);
  return v6;
}

void DES_ede3_ofb64_encrypt(const unsigned __int8 *in, unsigned __int8 *out, uint64_t length, DES_key_schedule *ks1, DES_key_schedule *ks2, DES_key_schedule *ks3, DES_cblock *ivec, int *num)
{
  v34 = *MEMORY[0x277D85DE8];
  v8 = *num;
  v9 = (*ivec)[0];
  v10 = (*ivec)[1];
  v11 = (*ivec)[2];
  v12 = (*ivec)[3];
  v13 = v9 | (v10 << 8) | (v11 << 16) | (v12 << 24);
  v14 = (*ivec)[4];
  v15 = (*ivec)[5];
  v16 = (*ivec)[6];
  v17 = (*ivec)[7];
  v18 = v14 | (v15 << 8) | (v16 << 16) | (v17 << 24);
  data = v13;
  v31 = v18;
  LOBYTE(v32) = v9;
  BYTE1(v32) = v10;
  BYTE2(v32) = v11;
  HIBYTE(v32) = v12;
  LOBYTE(v33) = v14;
  BYTE1(v33) = v15;
  BYTE2(v33) = v16;
  HIBYTE(v33) = v17;
  if (length)
  {
    v23 = length;
    v29 = num;
    v26 = 0;
    do
    {
      if (!v8)
      {
        DES_encrypt3(&data, ks1, ks2, ks3);
        v13 = data;
        v18 = v31;
        v32 = data;
        v33 = v31;
        ++v26;
      }

      v27 = *in++;
      *out++ = *(&v32 + v8) ^ v27;
      v8 = (v8 + 1) & 7;
      --v23;
    }

    while (v23);
    if (v26)
    {
      *ivec = v13;
      *&(*ivec)[4] = v18;
    }

    num = v29;
  }

  *num = v8;
  v28 = *MEMORY[0x277D85DE8];
}