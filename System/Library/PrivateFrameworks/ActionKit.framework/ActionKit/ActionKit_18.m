uint64_t x509_issuer_tree_RB_MINMAX(uint64_t *a1, int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  do
  {
    result = v2;
    v2 = *(v2 + 8 * (a2 >= 0));
  }

  while (v2);
  return result;
}

uint64_t x509_issuer_cache_set_max(uint64_t a1)
{
  if (pthread_mutex_lock(&x509_issuer_tree_mutex))
  {
    return 0;
  }

  x509_issuer_cache_max = a1;
  pthread_mutex_unlock(&x509_issuer_tree_mutex);
  return 1;
}

void x509_issuer_cache_free_oldest()
{
  if (x509_issuer_cache_count)
  {
    v0 = &off_27E32FE30;
    v1 = **(off_27E32FE30 + 1);
    v2 = *(v1 + 32);
    v3 = *(v1 + 40);
    if (v2)
    {
      v0 = (v2 + 40);
    }

    *v0 = v3;
    *v3 = v2;
    x509_issuer_tree_RB_REMOVE(&x509_issuer_cache, v1);
    free(*(v1 + 48));
    free(*(v1 + 56));
    free(v1);
    --x509_issuer_cache_count;
  }
}

uint64_t x509_issuer_cache_free()
{
  result = pthread_mutex_lock(&x509_issuer_tree_mutex);
  if (!result)
  {
    while (x509_issuer_cache_count)
    {
      x509_issuer_cache_free_oldest();
    }

    return pthread_mutex_unlock(&x509_issuer_tree_mutex);
  }

  return result;
}

uint64_t x509_issuer_cache_find(uint64_t a1, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = a1;
  v13 = a2;
  v14 = 0;
  if (!x509_issuer_cache_max || pthread_mutex_lock(&x509_issuer_tree_mutex))
  {
    return 0xFFFFFFFFLL;
  }

  v3 = x509_issuer_tree_RB_FIND(&x509_issuer_cache, v11);
  if (v3)
  {
    v4 = v3 + 4;
    v5 = v3[4];
    v6 = v3[5];
    v7 = (v5 + 40);
    if (!v5)
    {
      v7 = &off_27E32FE30;
    }

    *v7 = v6;
    *v6 = v5;
    v8 = x509_issuer_lru;
    *v4 = x509_issuer_lru;
    if (v8)
    {
      v9 = v8 + 40;
    }

    else
    {
      v9 = &off_27E32FE30;
    }

    *v9 = v4;
    x509_issuer_lru = v3;
    v3[5] = &x509_issuer_lru;
    v2 = *(v3 + 16);
  }

  else
  {
    v2 = 0xFFFFFFFFLL;
  }

  pthread_mutex_unlock(&x509_issuer_tree_mutex);
  return v2;
}

void x509_issuer_cache_add(__int128 *a1, __int128 *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    return;
  }

  if (!x509_issuer_cache_max)
  {
    return;
  }

  v6 = malloc_type_calloc(1uLL, 0x48uLL, 0x10B004061D455DBuLL);
  if (!v6)
  {
    return;
  }

  v7 = v6;
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0xBA88279AuLL);
  *(v7 + 48) = v8;
  if (v8)
  {
    v9 = *a1;
    v10 = a1[1];
    v11 = a1[3];
    v8[2] = a1[2];
    v8[3] = v11;
    *v8 = v9;
    v8[1] = v10;
    v12 = malloc_type_calloc(1uLL, 0x40uLL, 0x85490099uLL);
    *(v7 + 56) = v12;
    if (v12)
    {
      v13 = *a2;
      v14 = a2[1];
      v15 = a2[3];
      v12[2] = a2[2];
      v12[3] = v15;
      *v12 = v13;
      v12[1] = v14;
      *(v7 + 64) = a3;
      if (!pthread_mutex_lock(&x509_issuer_tree_mutex))
      {
        while (1)
        {
          v16 = x509_issuer_cache_count;
          if (x509_issuer_cache_count < x509_issuer_cache_max)
          {
            break;
          }

          x509_issuer_cache_free_oldest();
        }

        if (!x509_issuer_tree_RB_INSERT(&x509_issuer_cache, v7))
        {
          v17 = x509_issuer_lru;
          *(v7 + 32) = x509_issuer_lru;
          x509_issuer_lru = v7;
          if (v17)
          {
            v18 = v17 + 40;
          }

          else
          {
            v18 = &off_27E32FE30;
          }

          *v18 = v7 + 32;
          *(v7 + 40) = &x509_issuer_lru;
          x509_issuer_cache_count = v16 + 1;
          pthread_mutex_unlock(&x509_issuer_tree_mutex);
          v7 = 0;
          goto LABEL_13;
        }

        pthread_mutex_unlock(&x509_issuer_tree_mutex);
      }
    }
  }

  free(*(v7 + 48));
  free(*(v7 + 56));
LABEL_13:

  free(v7);
}

uint64_t int_engine_module_init(const CONF_IMODULE *a1, const CONF *a2)
{
  value = CONF_imodule_get_value(a1);
  section = NCONF_get_section(a2, value);
  if (section)
  {
    v5 = section;
    if (sk_num(section) < 1)
    {
      return 1;
    }

    v6 = 0;
    v26 = v5;
    conf = a2;
    while (1)
    {
      v7 = sk_value(v5, v6);
      v8 = *(v7 + 1);
      v9 = *(v7 + 2);
      result = -1;
      v10 = strchr(v8, 46);
      v11 = NCONF_get_section(a2, v9);
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v28 = v6;
      if (sk_num(v11) < 1)
      {
        v13 = 0;
      }

      else
      {
        v29 = 0;
        v13 = 0;
        v14 = 0;
        if (v10)
        {
          v15 = v10 + 1;
        }

        else
        {
          v15 = v8;
        }

        do
        {
          v16 = sk_value(v12, v14);
          v17 = *(v16 + 1);
          v18 = strchr(v17, 46);
          if (v18)
          {
            v17 = v18 + 1;
          }

          v19 = *(v16 + 2);
          if (!strcmp(v17, "engine_id"))
          {
            v15 = v19;
          }

          else if (!strcmp(v17, "soft_load"))
          {
            v29 = 1;
          }

          else if (!strcmp(v17, "dynamic_path"))
          {
            v22 = ENGINE_by_id("dynamic");
            v13 = v22;
            if (!v22 || !ENGINE_ctrl_cmd_string(v22, "SO_PATH", v19, 0) || !ENGINE_ctrl_cmd_string(v13, "LIST_ADD", "2", 0) || !ENGINE_ctrl_cmd_string(v13, "LOAD", 0, 0))
            {
              goto LABEL_53;
            }
          }

          else
          {
            if (!v13)
            {
              v20 = ENGINE_by_id(v15);
              v13 = v20;
              if (!v20 && v29)
              {
                ERR_clear_error();
                v5 = v26;
                a2 = conf;
                goto LABEL_44;
              }

              if (!v20)
              {
                goto LABEL_53;
              }
            }

            if (!strcmp(v19, "EMPTY"))
            {
              v19 = 0;
            }

            if (!strcmp(v17, "init"))
            {
              if (!NCONF_get_number_e(conf, v9, "init", &result))
              {
                goto LABEL_53;
              }

              if (result)
              {
                if (result != 1)
                {
                  ERR_put_error(38, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_cnf.c", 177);
LABEL_53:
                  ERR_put_error(38, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_cnf.c", 197);
                  ERR_asprintf_error_data("section=%s, name=%s, value=%s", *v16, *(v16 + 1), *(v16 + 2));
LABEL_54:
                  ENGINE_free(v13);
                  return 0;
                }

                if (!int_engine_init(v13))
                {
                  goto LABEL_53;
                }
              }
            }

            else
            {
              if (!strcmp(v17, "default_algorithms"))
              {
                v21 = ENGINE_set_default_string(v13, v19);
              }

              else
              {
                v21 = ENGINE_ctrl_cmd_string(v13, v17, v19, 0);
              }

              if (!v21)
              {
                goto LABEL_53;
              }
            }
          }

          ++v14;
        }

        while (v14 < sk_num(v12));
        if (!v13)
        {
          v5 = v26;
          a2 = conf;
          goto LABEL_43;
        }

        v5 = v26;
        a2 = conf;
        if (result == -1 && !int_engine_init(v13))
        {
          ERR_put_error(38, 4095, 102, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_cnf.c", 197);
          goto LABEL_54;
        }
      }

LABEL_43:
      ENGINE_free(v13);
LABEL_44:
      ++v6;
      if (v28 + 1 >= sk_num(v5))
      {
        return 1;
      }
    }

    v23 = 149;
    v24 = 118;
  }

  else
  {
    v23 = 148;
    v24 = 223;
  }

  ERR_put_error(38, 4095, v23, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/engine/eng_cnf.c", v24);
  return 0;
}

void int_engine_module_finish()
{
  while (1)
  {
    v0 = sk_pop(initialized_engines);
    if (!v0)
    {
      break;
    }

    ENGINE_finish(v0);
  }

  sk_free(initialized_engines);
  initialized_engines = 0;
}

uint64_t int_engine_init(ENGINE *a1)
{
  result = ENGINE_init(a1);
  if (result)
  {
    v3 = initialized_engines;
    if ((initialized_engines || (v3 = sk_new_null(), (initialized_engines = v3) != 0)) && sk_push(v3, a1))
    {
      return 1;
    }

    else
    {
      ENGINE_finish(a1);
      return 0;
    }
  }

  return result;
}

ASN1_VALUE *__cdecl ASN1_item_d2i(ASN1_VALUE **val, const unsigned __int8 **in, uint64_t len, const ASN1_ITEM *it)
{
  v7 = 0;
  if (val)
  {
    v5 = val;
  }

  else
  {
    v5 = &v7;
  }

  if (ASN1_item_ex_d2i(v5, in, len, it, -1, 0, 0, v4) < 1)
  {
    return 0;
  }

  else
  {
    return *v5;
  }
}

uint64_t asn1_item_d2i(uint64_t pval, uint64_t *a2, ASN1_ITEM *it, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (!pval)
  {
    return pval;
  }

  v8 = pval;
  if (a7 >= 30)
  {
    v9 = 219;
    v10 = 948;
LABEL_4:
    ERR_put_error(13, 4095, v9, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v10);
LABEL_5:
    v11 = v8;
LABEL_6:
    ASN1_item_ex_free(v11, it);
LABEL_7:
    sname = it->sname;
    ERR_asprintf_error_data("Type=%s");
    return 0;
  }

  pval = 0;
  itype = it->itype;
  if (itype > 3)
  {
    if (itype == 4)
    {
      funcs = it->funcs;
      *pvala = 0u;
      v71 = 0u;
      if (CBS_len(a2) < 0)
      {
        return 0;
      }

      v78[0] = CBS_data(a2);
      v26 = funcs[4];
      v27 = CBS_len(a2);
      pval = v26(v8, v78, v27, it, a4, a5, a6, pvala);
      if (pval == 1)
      {
        v28 = v78[0];
        v29 = CBS_data(a2);
        if (!CBS_skip(a2, v28 - v29))
        {
          goto LABEL_5;
        }

        return 1;
      }

      return pval;
    }

    if (itype == 5)
    {
      *in = 0;
      LODWORD(v73) = 0;
      BYTE4(v74) = 0;
      tag[0] = 0;
      pvala[0] = 0;
      pvala[1] = 0;
      *&v71 = 0;
      v78[0] = 0;
      v30 = CBS_data(a2);
      v31 = CBS_len(a2);
      CBS_init(pvala, v30, v31);
      if (a4 == -1)
      {
        if (asn1_check_tag(pvala, v78, tag, &v74 + 4, &v73, in, -1, 0, 1) == 1)
        {
          if (BYTE4(v74))
          {
            if (a6)
            {
              return 0xFFFFFFFFLL;
            }

            v32 = 139;
            v33 = 590;
          }

          else
          {
            if ((it->utype & ASN1_tag2bit(tag[0])) != 0)
            {
              return asn1_d2i_primitive_content(v8, a2, pvala, tag[0], *in, v73, v78[0], it);
            }

            if (a6)
            {
              return 0xFFFFFFFFLL;
            }

            v32 = 140;
            v33 = 597;
          }
        }

        else
        {
          v32 = 58;
          v33 = 582;
        }
      }

      else
      {
        v32 = 230;
        v33 = 576;
      }

      ERR_put_error(13, 4095, v32, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v33);
      return 0;
    }

    if (itype != 6)
    {
      return pval;
    }

LABEL_19:
    pvala[0] = 0;
    pvala[1] = 0;
    *&v71 = 0;
    memset(v78, 0, sizeof(v78));
    *in = 0;
    v76 = 0;
    v77 = 0;
    v73 = 0;
    v74 = 0;
    *tag = 0;
    v20 = CBS_data(a2);
    v21 = CBS_len(a2);
    CBS_init(pvala, v20, v21);
    v22 = it->funcs;
    if (v22)
    {
      v23 = v22[3];
    }

    else
    {
      v23 = 0;
    }

    v34 = it->itype;
    if (v34 != 6 && v34 != 1)
    {
      goto LABEL_142;
    }

    if (*v8)
    {
      ASN1_item_ex_free(v8, it);
      *v8 = 0;
    }

    if (a4 == -1)
    {
      v35 = 0;
    }

    else
    {
      v35 = a5;
    }

    if (a4 == -1)
    {
      v36 = 16;
    }

    else
    {
      v36 = a4;
    }

    pval = asn1_check_tag(pvala, tag, 0, 0, &v74, &v74 + 1, v36, v35, a6);
    if (pval == -1)
    {
      return pval;
    }

    if (pval == 1)
    {
      if (HIDWORD(v74))
      {
        v37 = v74;
        if (v74)
        {
          v38 = CBS_data(pvala);
          v39 = CBS_len(pvala);
          CBS_init(v78, v38, v39);
        }

        else if (!CBS_get_bytes(pvala, v78, *tag))
        {
          goto LABEL_142;
        }

        if (ASN1_item_ex_new(&v73, it))
        {
          if (v23 && !v23(4, &v73, it, 0))
          {
            v40 = 100;
            v41 = 801;
            goto LABEL_141;
          }

          if (it->tcount >= 1)
          {
            v50 = 0;
            v51 = 0;
            while (1)
            {
              templates = it->templates;
              if (asn1_check_eoc(v78))
              {
                break;
              }

              if (!CBS_len(v78))
              {
                goto LABEL_109;
              }

              v53 = asn1_do_adb(&v73, &templates[v50], 1);
              if (!v53)
              {
                goto LABEL_142;
              }

              v54 = v53;
              field_ptr = asn1_get_field_ptr(&v73, v53);
              v56 = field_ptr;
              if (v51 == it->tcount - 1)
              {
                v57 = 0;
              }

              else
              {
                v57 = v54->flags & 1;
              }

              v58 = asn1_template_d2i(field_ptr, v78, v54, v57);
              if (v58 != 1)
              {
                if (v58 != -1)
                {
LABEL_137:
                  ASN1_item_ex_free(&v73, it);
                  field_name = v54->field_name;
                  goto LABEL_138;
                }

                ASN1_template_free(v56, v54);
              }

              ++v51;
              ++v50;
              if (it->tcount <= v51)
              {
                goto LABEL_109;
              }
            }

            if (v74)
            {
              goto LABEL_122;
            }

            v40 = 159;
            v41 = 810;
            goto LABEL_141;
          }

          LODWORD(v51) = 0;
LABEL_109:
          if (v37 && !asn1_check_eoc(v78))
          {
            v40 = 137;
            v41 = 848;
            goto LABEL_141;
          }

          if (v74)
          {
LABEL_122:
            v61 = CBS_offset(v78);
            if (!CBS_skip(pvala, v61))
            {
              goto LABEL_142;
            }
          }

          else if (CBS_len(v78))
          {
            v40 = 148;
            v41 = 856;
            goto LABEL_141;
          }

          if (it->tcount > v51)
          {
            v62 = v51;
            v63 = v51;
            do
            {
              v64 = asn1_do_adb(&v73, &it->templates[v63], 1);
              if (!v64)
              {
                goto LABEL_142;
              }

              v54 = v64;
              if ((v64->flags & 1) == 0)
              {
                ERR_put_error(13, 4095, 121, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", 871);
                goto LABEL_137;
              }

              v65 = asn1_get_field_ptr(&v73, v64);
              ASN1_template_free(v65, v54);
              ++v62;
              ++v63;
            }

            while (it->tcount > v62);
          }

          v66 = CBS_offset(pvala);
          if (CBS_get_bytes(a2, in, v66))
          {
            if (asn1_enc_save(&v73, in, it, v67))
            {
              if (!v23 || v23(5, &v73, it, 0))
              {
                v59 = v73;
LABEL_105:
                *v8 = v59;
                return 1;
              }

              v40 = 100;
              v41 = 890;
            }

            else
            {
              v40 = 65;
              v41 = 885;
            }

            goto LABEL_141;
          }

LABEL_142:
          v11 = &v73;
          goto LABEL_6;
        }

        v40 = 58;
        v41 = 796;
      }

      else
      {
        v40 = 149;
        v41 = 782;
      }
    }

    else
    {
      v40 = 58;
      v41 = 777;
    }

LABEL_141:
    ERR_put_error(13, 4095, v40, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v41);
    goto LABEL_142;
  }

  if (!it->itype)
  {
    v24 = it->templates;
    if (v24)
    {
      if (a4 != -1 || a6)
      {
        v9 = 170;
        v10 = 963;
        goto LABEL_4;
      }

      return asn1_template_d2i(v8, a2, v24, 0);
    }

    else
    {

      return asn1_d2i_primitive(v8, a2, it, a4, a5, a6);
    }
  }

  if (itype == 1)
  {
    goto LABEL_19;
  }

  if (itype == 2)
  {
    pvala[0] = 0;
    v18 = it->funcs;
    if (v18)
    {
      v19 = v18[3];
    }

    else
    {
      v19 = 0;
    }

    if (a4 != -1)
    {
      v42 = 230;
      v43 = 663;
LABEL_56:
      ERR_put_error(13, 4095, v42, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v43);
      v11 = pvala;
      goto LABEL_6;
    }

    if (*v8)
    {
      ASN1_item_ex_free(v8, it);
      *v8 = 0;
    }

    if (!ASN1_item_ex_new(pvala, it))
    {
      v42 = 58;
      v43 = 673;
      goto LABEL_56;
    }

    if (v19 && !v19(4, pvala, it, 0))
    {
      v42 = 100;
      v43 = 678;
      goto LABEL_56;
    }

    tcount = it->tcount;
    if (tcount < 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = 0;
      v46 = 24;
      while (1)
      {
        v47 = it->templates;
        v48 = asn1_get_field_ptr(pvala, (v47 + v46 - 24));
        v49 = asn1_template_d2i(v48, a2, v47 + v46 - 24, 1);
        if (v49 != -1)
        {
          break;
        }

        ++v45;
        tcount = it->tcount;
        v46 += 40;
        if (tcount <= v45)
        {
          goto LABEL_99;
        }
      }

      if (v49 != 1)
      {
        ERR_put_error(13, 4095, 58, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", 693);
        ASN1_item_ex_free(pvala, it);
        if (v47)
        {
          v60 = *(&v47->flags + v46);
LABEL_138:
          v69 = it->sname;
          ERR_asprintf_error_data("Field=%s, Type=%s");
          return 0;
        }

        goto LABEL_7;
      }

      asn1_set_choice_selector(pvala, v45, it);
      tcount = it->tcount;
    }

LABEL_99:
    if (tcount == v45)
    {
      if (!a6)
      {
        v42 = 143;
        v43 = 709;
        goto LABEL_56;
      }

      ASN1_item_ex_free(pvala, it);
      return 0xFFFFFFFFLL;
    }

    if (v19 && !v19(5, pvala, it, 0))
    {
      v42 = 100;
      v43 = 714;
      goto LABEL_56;
    }

    v59 = pvala[0];
    goto LABEL_105;
  }

  return pval;
}

int ASN1_template_d2i(ASN1_VALUE **pval, const unsigned __int8 **in, uint64_t len, const ASN1_TEMPLATE *tt)
{
  if (len < 0)
  {
    return 0;
  }

  memset(v8, 0, sizeof(v8));
  CBS_init(v8, *in, len);
  result = asn1_template_d2i(pval, v8, tt, 0);
  if (result == 1)
  {
    *in = CBS_data(v8);
    return 1;
  }

  return result;
}

uint64_t asn1_template_d2i(uint64_t result, void *a2, uint64_t a3, int a4)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  if ((*a3 & 0x10) != 0)
  {
    memset(v21, 0, sizeof(v21));
    v19 = 0;
    memset(v20, 0, sizeof(v20));
    v18 = 0;
    v8 = CBS_data(a2);
    v9 = CBS_len(a2);
    CBS_init(v21, v8, v9);
    result = asn1_check_tag(v21, &v18, 0, 0, &v19, &v19 + 1, *(a3 + 8), *a3 & 0xC0, a4);
    if (result == -1)
    {
      return result;
    }

    if (result == 1)
    {
      if (HIDWORD(v19))
      {
        if (v19)
        {
          v10 = CBS_data(v21);
          v11 = CBS_len(v21);
          CBS_init(v20, v10, v11);
        }

        else if (!CBS_get_bytes(v21, v20, v18))
        {
          goto LABEL_29;
        }

        if (asn1_template_noexp_d2i(v7, v20, a3, 0) == 1)
        {
          if (v19)
          {
            if (asn1_check_eoc(v20))
            {
              v14 = CBS_offset(v20);
              if (!CBS_skip(v21, v14))
              {
                goto LABEL_29;
              }

LABEL_25:
              v17 = CBS_offset(v21);
              if (CBS_skip(a2, v17))
              {
                return 1;
              }

              goto LABEL_29;
            }

            v15 = 137;
            v16 = 1207;
          }

          else
          {
            if (!CBS_len(v20))
            {
              goto LABEL_25;
            }

            v15 = 148;
            v16 = 1213;
          }

          ERR_put_error(13, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v16);
LABEL_29:
          ASN1_template_free(v7, a3);
          return 0;
        }

        v12 = 58;
        v13 = 1201;
      }

      else
      {
        v12 = 120;
        v13 = 1188;
      }
    }

    else
    {
      v12 = 58;
      v13 = 1183;
    }

    ERR_put_error(13, 4095, v12, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v13);
    return 0;
  }

  return asn1_template_noexp_d2i(result, a2, a3, a4);
}

uint64_t asn1_d2i_primitive(ASN1_TYPE **a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6)
{
  memset(v31, 0, sizeof(v31));
  v29 = 0;
  v30 = 0;
  v12 = *(a3 + 8);
  v13 = CBS_data(a2);
  v14 = CBS_len(a2);
  CBS_init(v31, v13, v14);
  result = 0;
  if (*a3 != 5)
  {
    if (*(a3 + 8) == -4)
    {
      v36 = 0;
      v35 = 0;
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      v32 = 0;
      v16 = CBS_data(a2);
      v17 = CBS_len(a2);
      CBS_init(v33, v16, v17);
      result = 0;
      if (*(a3 + 8) != -4)
      {
        return result;
      }

      if ((a4 & 0x80000000) == 0)
      {
        v18 = 127;
        v19 = 538;
LABEL_23:
        ERR_put_error(13, 4095, v18, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v19);
        return 0;
      }

      if (a6)
      {
        v18 = 126;
        v19 = 542;
        goto LABEL_23;
      }

      if (asn1_check_tag(v33, &v32, &v34, &v35, &v36, &v36 + 1, -1, 0, 0) != 1)
      {
        v18 = 58;
        v19 = 549;
        goto LABEL_23;
      }

      if (v35)
      {
        v28 = 4294967293;
        v34 = -3;
      }

      else
      {
        v28 = v34;
      }

      v23 = v36;
      v22 = HIDWORD(v36);
      v24 = v32;
      v25 = v33;
      v26 = a1;
      v27 = a2;
      return asn1_d2i_primitive_content(v26, v27, v25, v28, v22, v23, v24, a3);
    }

    if (a4 == -1)
    {
      v20 = 0;
    }

    else
    {
      v20 = a5;
    }

    if (a4 == -1)
    {
      v21 = *(a3 + 8);
    }

    else
    {
      v21 = a4;
    }

    result = asn1_check_tag(v31, &v29, 0, 0, &v30, &v30 + 1, v21, v20, a6);
    if (result != -1)
    {
      if (result != 1)
      {
        v18 = 58;
        v19 = 633;
        goto LABEL_23;
      }

      v23 = v30;
      v22 = HIDWORD(v30);
      v24 = v29;
      v25 = v31;
      v26 = a1;
      v27 = a2;
      v28 = v12;
      return asn1_d2i_primitive_content(v26, v27, v25, v28, v22, v23, v24, a3);
    }
  }

  return result;
}

uint64_t asn1_check_tag(void *a1, void *a2, _DWORD *a3, _BYTE *a4, _DWORD *a5, _DWORD *a6, int a7, int a8, int a9)
{
  if (a2)
  {
    *a2 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  if (!asn1_get_identifier_cbs(a1, 0, &v22, &v24 + 1, &v23))
  {
    v17 = 102;
    v18 = 127;
    goto LABEL_42;
  }

  if ((a7 & 0x80000000) == 0 && (v23 != a7 || a8 != v22 << 6))
  {
    if (a9)
    {
      return 0xFFFFFFFFLL;
    }

    v17 = 168;
    v18 = 137;
    goto LABEL_42;
  }

  if (!asn1_get_length_cbs(a1, 0, &v24, &v21))
  {
    v17 = 102;
    v18 = 142;
    goto LABEL_42;
  }

  if (v24 && !HIDWORD(v24))
  {
    v17 = 102;
    v18 = 148;
LABEL_42:
    ERR_put_error(13, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v18);
    return 0;
  }

  if (!v24)
  {
    v20 = CBS_len(a1);
    if (v20 < v21)
    {
      v17 = 155;
      v18 = 153;
      goto LABEL_42;
    }
  }

  if (v23 < 0)
  {
    v17 = 155;
    v18 = 158;
    goto LABEL_42;
  }

  if (v24)
  {
    v21 = CBS_len(a1);
  }

  if (a2)
  {
    *a2 = v21;
  }

  if (a3)
  {
    *a3 = v23;
  }

  if (a4)
  {
    *a4 = v22 << 6;
  }

  if (a5)
  {
    *a5 = v24;
  }

  if (a6)
  {
    *a6 = HIDWORD(v24);
  }

  return 1;
}

BOOL asn1_d2i_primitive_content(ASN1_TYPE **a1, void *a2, unsigned __int16 **a3, uint64_t a4, int a5, unsigned int a6, unint64_t a7, uint64_t a8)
{
  memset(v37, 0, sizeof(v37));
  memset(v36, 0, sizeof(v36));
  v34 = 0;
  v35 = 0;
  memset(v33, 0, sizeof(v33));
  CBS_dup(a2, v36);
  CBS_init(v37, 0, 0);
  must_be_constructed = asn1_must_be_constructed(a4);
  if (a5 || !must_be_constructed)
  {
    must_be_primitive = asn1_must_be_primitive(a4);
    if (a5 && must_be_primitive)
    {
      v17 = 231;
      v18 = 473;
      goto LABEL_7;
    }

    if ((a4 + 3) <= 0x14 && ((1 << (a4 + 3)) & 0x180001) != 0)
    {
      v39 = a7;
      v38 = a6;
      if (a6)
      {
        v22 = 1;
        while (CBS_len(a3))
        {
          if (asn1_check_eoc(a3))
          {
            if (!--v22)
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (!asn1_check_tag(a3, &v39, 0, 0, &v38, 0, -1, 0, 0))
            {
              v17 = 58;
              v18 = 257;
              goto LABEL_7;
            }

            if (v38)
            {
              ++v22;
            }

            else if (!CBS_skip(a3, v39))
            {
              goto LABEL_8;
            }
          }
        }

        if (!v22)
        {
          goto LABEL_32;
        }

        v17 = 137;
        v18 = 269;
        goto LABEL_7;
      }

      if (!CBS_skip(a3, a7))
      {
        v17 = 58;
        v18 = 241;
        goto LABEL_7;
      }

LABEL_32:
      v23 = CBS_offset(a3);
      v24 = v36;
    }

    else
    {
      if (a5)
      {
        if (!CBB_init(v33, 0) || !asn1_collect(v33, a3, a6, 0) || !CBB_finish(v33, &v35, &v34))
        {
          goto LABEL_8;
        }

        CBS_init(v37, v35, v34);
        goto LABEL_36;
      }

      v24 = a3;
      v23 = a7;
    }

    if (!CBS_get_bytes(v24, v37, v23))
    {
      goto LABEL_8;
    }

LABEL_36:
    if (CBS_len(v37) >> 31)
    {
      goto LABEL_8;
    }

    v25 = *(a8 + 32);
    if (v25)
    {
      LOBYTE(v39) = 0;
      v26 = *(v25 + 40);
      if (v26)
      {
        v27 = CBS_data(v37);
        v28 = CBS_len(v37);
        v29 = v26(a1, v27, v28, a4, &v39, a8);
      }

      else
      {
        v29 = 0;
      }
    }

    else
    {
      if (*(a8 + 8) == -4)
      {
        if (*a1)
        {
          ASN1_TYPE_free(*a1);
          *a1 = 0;
        }

        v30 = ASN1_TYPE_new();
        if (!v30)
        {
          goto LABEL_8;
        }

        v31 = v30;
        if (!asn1_c2i_primitive(&v30->value, v37, a4, a8))
        {
          ASN1_TYPE_free(v31);
          goto LABEL_8;
        }

        v31->type = a4;
        if (a4 == 5)
        {
          v31->value.ptr = 0;
        }

        *a1 = v31;
        goto LABEL_51;
      }

      v29 = asn1_c2i_primitive(a1, v37, a4, a8);
    }

    if (!v29)
    {
      goto LABEL_8;
    }

LABEL_51:
    v32 = CBS_offset(a3);
    v20 = CBS_skip(a2, v32) != 0;
    goto LABEL_9;
  }

  v17 = 156;
  v18 = 469;
LABEL_7:
  ERR_put_error(13, 4095, v17, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v18);
LABEL_8:
  v20 = 0;
LABEL_9:
  CBB_cleanup(v33);
  freezero(v35, v34);
  return v20;
}

uint64_t asn1_collect(char **a1, unsigned __int16 **a2, unsigned int a3, int a4)
{
  v16 = a3;
  if (a4 <= 5)
  {
    v15 = 0;
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    while (CBS_len(a2))
    {
      if (asn1_check_eoc(a2))
      {
        if (!a3)
        {
          v4 = 159;
          v5 = 199;
          goto LABEL_20;
        }

        return 1;
      }

      if (!asn1_check_tag(a2, &v14, 0, 0, &v16, &v15, -1, 0, 0))
      {
        v4 = 58;
        v5 = 206;
        goto LABEL_20;
      }

      if (v15)
      {
        result = asn1_collect(a1, a2, v16, (a4 + 1));
        if (!result)
        {
          return result;
        }
      }

      else
      {
        if (!CBS_get_bytes(a2, v13, v14))
        {
          v4 = 58;
          v5 = 218;
          goto LABEL_20;
        }

        v11 = CBS_data(v13);
        v12 = CBS_len(v13);
        result = CBB_add_bytes(a1, v11, v12);
        if (!result)
        {
          return result;
        }
      }
    }

    if (a3)
    {
      v4 = 137;
      v5 = 226;
      goto LABEL_20;
    }

    return 1;
  }

  v4 = 197;
  v5 = 190;
LABEL_20:
  ERR_put_error(13, 4095, v4, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v5);
  return 0;
}

uint64_t asn1_check_eoc(unsigned __int16 **a1)
{
  v4 = 0;
  v2 = CBS_peek_u16(a1, &v4);
  result = 0;
  if (v2)
  {
    if (!v4)
    {
      return CBS_skip(a1, 2uLL);
    }
  }

  return result;
}

uint64_t asn1_c2i_primitive(ASN1_STRING **a1, void *a2, int a3, uint64_t a4)
{
  if (*(a4 + 32))
  {
    return 0;
  }

  v17 = v4;
  v18 = v5;
  if (CBS_len(a2) >> 31)
  {
    return 0;
  }

  if (a3 > 5)
  {
    if (a3 > 27)
    {
      if (a3 == 28)
      {
        if ((CBS_len(a2) & 3) != 0)
        {
          v10 = 215;
          v11 = 353;
          goto LABEL_45;
        }

        goto LABEL_34;
      }

      if (a3 == 30)
      {
        if (CBS_len(a2))
        {
          v10 = 214;
          v11 = 349;
          goto LABEL_45;
        }

LABEL_34:
        if (*a1)
        {
          ASN1_STRING_free(*a1);
          *a1 = 0;
        }

        v12 = ASN1_STRING_type_new(a3);
        if (v12)
        {
          v13 = v12;
          v14 = CBS_data(a2);
          v15 = CBS_len(a2);
          if (ASN1_STRING_set(v13, v14, v15))
          {
            *a1 = v13;
            return 1;
          }

          ASN1_STRING_free(v13);
          return 0;
        }

        v10 = 65;
        v11 = 369;
LABEL_45:
        ERR_put_error(13, 4095, v10, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v11);
        return 0;
      }

LABEL_32:
      if ((a3 - 23) <= 1 && !asn1_time_parse_cbs(a2, a3 == 24, 0))
      {
        v10 = 132;
        v11 = 359;
        goto LABEL_45;
      }

      goto LABEL_34;
    }

    if (a3 == 6)
    {
      result = c2i_ASN1_OBJECT_cbs(a1, a2);
      if (result)
      {
        return 1;
      }
    }

    else
    {
      if (a3 != 10)
      {
        goto LABEL_32;
      }

      result = c2i_ASN1_ENUMERATED_cbs(a1, a2);
      if (result)
      {
        return 1;
      }
    }
  }

  else
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        if (CBS_len(a2) == 1)
        {
          v16 = 0;
          result = CBS_get_u8(a2, &v16);
          if (!result)
          {
            return result;
          }

          *a1 = v16;
          return 1;
        }

        v10 = 106;
        v11 = 307;
        goto LABEL_45;
      }

      if (a3 == 2)
      {
        result = c2i_ASN1_INTEGER_cbs(a1, a2);
        if (!result)
        {
          return result;
        }

        return 1;
      }

      goto LABEL_32;
    }

    if (a3 != 3)
    {
      if (a3 == 5)
      {
        if (!CBS_len(a2))
        {
          *a1 = 1;
          return 1;
        }

        v10 = 144;
        v11 = 298;
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    result = c2i_ASN1_BIT_STRING_cbs(a1, a2);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t asn1_template_noexp_d2i(ASN1_VALUE **pval, void *a2, uint64_t a3, int a4)
{
  if ((*a3 & 6) != 0)
  {
    memset(v29, 0, sizeof(v29));
    memset(v28, 0, sizeof(v28));
    data = 0;
    v26 = 0;
    v25 = 0;
    v8 = CBS_data(a2);
    v9 = CBS_len(a2);
    CBS_init(v29, v8, v9);
    asn1_template_stack_of_free(*pval, a3);
    *pval = 0;
    v10 = *a3;
    if ((*a3 & 2) != 0)
    {
      v11 = 17;
    }

    else
    {
      v11 = 16;
    }

    if ((v10 & 8) != 0)
    {
      v12 = *(a3 + 8);
    }

    else
    {
      v12 = v11;
    }

    if ((v10 & 8) != 0)
    {
      v13 = *a3 & 0xC0;
    }

    else
    {
      v13 = 0;
    }

    result = asn1_check_tag(v29, &v25, 0, 0, &v26, 0, v12, v13, a4);
    if (result != -1)
    {
      if (result == 1)
      {
        v15 = v26;
        if (v26)
        {
          v16 = CBS_data(v29);
          v17 = CBS_len(v29);
          CBS_init(v28, v16, v17);
        }

        else if (!CBS_get_bytes(v29, v28, v25))
        {
          v20 = 0;
LABEL_44:
          asn1_template_stack_of_free(v20, a3);
          ASN1_item_ex_free(&data, *(a3 + 32));
          return 0;
        }

        v20 = sk_new_null();
        if (v20)
        {
          while (1)
          {
            if (!CBS_len(v28))
            {
              if (v15)
              {
                v21 = 137;
                v22 = 1096;
                goto LABEL_43;
              }

              goto LABEL_36;
            }

            if (asn1_check_eoc(v28))
            {
              break;
            }

            if (!asn1_item_d2i(&data, v28, *(a3 + 32)))
            {
              v21 = 58;
              v22 = 1086;
              goto LABEL_43;
            }

            if (!sk_push(v20, data))
            {
              v21 = 65;
              v22 = 1090;
              goto LABEL_43;
            }

            data = 0;
          }

          if (!v15)
          {
            v21 = 159;
            v22 = 1078;
            goto LABEL_43;
          }

LABEL_36:
          if (!v26 || (v23 = CBS_offset(v28), CBS_skip(v29, v23)))
          {
            v24 = CBS_offset(v29);
            if (CBS_skip(a2, v24))
            {
              *pval = v20;
              return 1;
            }
          }
        }

        else
        {
          v21 = 65;
          v22 = 1070;
LABEL_43:
          ERR_put_error(13, 4095, v21, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", v22);
        }

        goto LABEL_44;
      }

      ERR_put_error(13, 4095, 58, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", 1054);
      return 0;
    }
  }

  else
  {
    if ((*a3 & 8) != 0)
    {
      v18 = *(a3 + 8);
    }

    result = asn1_item_d2i(pval, a2, *(a3 + 32));
    if (result != -1 && result != 1)
    {
      ERR_put_error(13, 4095, 58, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/tasn_dec.c", 1147);
      ASN1_template_free(pval, a3);
      return 0;
    }
  }

  return result;
}

void asn1_template_stack_of_free(STACK *a1, uint64_t a2)
{
  if (a1)
  {
    pval = 0;
    if (sk_num(a1) >= 1)
    {
      do
      {
        pval = sk_pop(a1);
        ASN1_item_ex_free(&pval, *(a2 + 32));
      }

      while (sk_num(a1) > 0);
    }

    sk_free(a1);
  }
}

int ASN1_mbstring_ncopy(ASN1_STRING **out, const unsigned __int8 *in, int len, int inform, unint64_t mask, uint64_t minsize, uint64_t maxsize)
{
  v11 = len;
  v34 = mask;
  v33 = 0;
  if (len < 0)
  {
    v11 = strlen(in);
    if (mask)
    {
      goto LABEL_3;
    }
  }

  else if (mask)
  {
    goto LABEL_3;
  }

  v34 = 10246;
LABEL_3:
  v32 = 0;
  if (inform > 4097)
  {
    if (inform == 4100)
    {
      if ((v11 & 3) != 0)
      {
        v15 = 133;
        v16 = 124;
        goto LABEL_40;
      }

      v14 = v11 >> 2;
    }

    else
    {
      if (inform != 4098)
      {
        goto LABEL_13;
      }

      if (v11)
      {
        v15 = 129;
        v16 = 116;
        goto LABEL_40;
      }

      v14 = v11 >> 1;
    }

    v31 = v14;
    goto LABEL_22;
  }

  if (inform != 4096)
  {
    if (inform == 4097)
    {
      v31 = v11;
      v14 = v11;
      goto LABEL_22;
    }

LABEL_13:
    v15 = 160;
    v16 = 145;
    goto LABEL_40;
  }

  v31 = 0;
  if ((traverse_string(in, v11, 4096, in_utf8, &v31) & 0x80000000) != 0)
  {
    v15 = 134;
    v16 = 135;
    goto LABEL_40;
  }

  v14 = v31;
LABEL_22:
  if (minsize >= 1 && v14 < minsize)
  {
    ERR_put_error(13, 4095, 152, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_mbstr.c", 150);
    ERR_asprintf_error_data("minsize=%ld");
    return -1;
  }

  if (maxsize >= 1 && v14 > maxsize)
  {
    ERR_put_error(13, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_mbstr.c", 156);
    ERR_asprintf_error_data("maxsize=%ld");
    return -1;
  }

  if ((traverse_string(in, v11, inform, type_str, &v34) & 0x80000000) != 0)
  {
    v15 = 124;
    v16 = 163;
    goto LABEL_40;
  }

  if ((v34 & 2) != 0)
  {
    v18 = 4097;
    v17 = 19;
  }

  else if ((v34 & 0x10) != 0)
  {
    v18 = 4097;
    v17 = 22;
  }

  else if ((v34 & 4) != 0)
  {
    v18 = 4097;
    v17 = 20;
  }

  else if ((v34 & 0x800) != 0)
  {
    v18 = 4098;
    v17 = 30;
  }

  else
  {
    if ((v34 & 0x100) != 0)
    {
      v17 = 28;
    }

    else
    {
      v17 = 12;
    }

    if ((v34 & 0x100) != 0)
    {
      v18 = 4100;
    }

    else
    {
      v18 = 4096;
    }
  }

  if (out)
  {
    v20 = *out;
    if (*out)
    {
      data = v20->data;
      if (data)
      {
        v20->length = 0;
        free(data);
        v20->data = 0;
      }

      v20->type = v17;
      v22 = v20;
LABEL_54:
      if (v18 == inform)
      {
        if (ASN1_STRING_set(v22, in, v11))
        {
          return v17;
        }

        v24 = 65;
        v25 = 209;
        goto LABEL_70;
      }

      if (v18 > 4097)
      {
        if (v18 == 4098)
        {
          v26 = 2 * v31;
          v33 = 2 * v31;
          v27 = cpy_bmp;
        }

        else
        {
          v26 = 4 * v31;
          v33 = 4 * v31;
          v27 = cpy_univ;
        }
      }

      else
      {
        if (v18 == 4096)
        {
          v33 = 0;
          if ((traverse_string(in, v11, inform, out_utf8, &v33) & 0x80000000) != 0)
          {
            v24 = 124;
            v25 = 235;
LABEL_70:
            ERR_put_error(13, 4095, v24, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_mbstr.c", v25);
            if (!v20)
            {
              ASN1_STRING_free(v22);
              *out = 0;
            }

            return -1;
          }

          v28 = cpy_utf8;
          v26 = v33;
LABEL_67:
          v29 = malloc_type_malloc(v26 + 1, 0x74463582uLL);
          v32 = v29;
          if (v29)
          {
            v30 = v33;
            v22->length = v33;
            v22->data = v29;
            v29[v30] = 0;
            traverse_string(in, v11, inform, v28, &v32);
            return v17;
          }

          v24 = 65;
          v25 = 242;
          goto LABEL_70;
        }

        v26 = v31;
        v33 = v31;
        v27 = cpy_asc;
      }

      v28 = v27;
      goto LABEL_67;
    }

    v23 = ASN1_STRING_type_new(v17);
    if (v23)
    {
      v22 = v23;
      *out = v23;
      goto LABEL_54;
    }

    v15 = 65;
    v16 = 201;
LABEL_40:
    ERR_put_error(13, 4095, v15, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/asn1/a_mbstr.c", v16);
    return -1;
  }

  return v17;
}

uint64_t traverse_string(unsigned __int8 *str, int len, int a3, uint64_t (*a4)(unint64_t, uint64_t), uint64_t a5)
{
  if (!len)
  {
    return 1;
  }

  v8 = len;
  val = 0;
  while (a3 != 4100)
  {
    if (a3 == 4098)
    {
      v11 = *str;
      val = *str << 8;
      val = str[1] | (v11 << 8);
      if ((v11 & 0xF8) == 0xD8)
      {
        return 0xFFFFFFFFLL;
      }

      str += 2;
      v8 -= 2;
      if (a4)
      {
        goto LABEL_19;
      }
    }

    else if (a3 == 4097)
    {
      v10 = *str++;
      val = v10;
      --v8;
      if (a4)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = UTF8_getc(str, v8, &val);
      if ((v16 & 0x80000000) != 0)
      {
        return 0xFFFFFFFFLL;
      }

      v8 -= v16;
      str += v16;
      if (a4)
      {
LABEL_19:
        result = a4(val, a5);
        if (result < 1)
        {
          return result;
        }
      }
    }

LABEL_20:
    if (!v8)
    {
      return 1;
    }
  }

  val = *str << 24;
  v12 = val | (str[1] << 16);
  val = v12;
  v13 = v12 | (str[2] << 8);
  val = v13;
  val = v13 | str[3];
  v14 = v13 & 0x1FF800;
  if (v12 >> 16 <= 0x10 && v14 != 55296)
  {
    str += 4;
    v8 -= 4;
    if (a4)
    {
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  return 0xFFFFFFFFLL;
}

uint64_t type_str(unint64_t __c, unint64_t *a2)
{
  v4 = *a2;
  if ((*a2 & 2) != 0 && (__c > 0x7F || __c != 32 && (__c & 0x5F) - 65 >= 0x1A && __c - 48 >= 0xA && !memchr("'()+,-./:=?", __c, 0xCuLL)))
  {
    v4 &= ~2uLL;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFEFLL;
  if (__c <= 0x7F)
  {
    v5 = v4;
  }

  if (__c > 0xFF)
  {
    v5 &= ~4uLL;
  }

  if (__c >> 16)
  {
    v5 &= ~0x800uLL;
  }

  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  *a2 = v5;
  return 1;
}

uint64_t out_utf8(unint64_t value, _DWORD *a2)
{
  result = UTF8_putc(0, -1, value);
  if ((result & 0x80000000) == 0)
  {
    *a2 += result;
    return 1;
  }

  return result;
}

LHASH *__cdecl lh_new(LHASH_HASH_FN_TYPE h, LHASH_COMP_FN_TYPE c)
{
  v4 = malloc_type_calloc(1uLL, 0xB0uLL, 0x1080040A9E2475DuLL);
  if (v4)
  {
    v5 = malloc_type_calloc(0x10uLL, 8uLL, 0x2004093837F09uLL);
    v4->b = v5;
    if (v5)
    {
      if (c)
      {
        v6 = c;
      }

      else
      {
        v6 = MEMORY[0x277D85E98];
      }

      if (h)
      {
        v7 = h;
      }

      else
      {
        v7 = lh_strhash;
      }

      v4->comp = v6;
      v4->hash = v7;
      *&v4->num_nodes = 0x1000000008;
      v4->pmax = 8;
      *&v4->up_load = xmmword_23E2377E0;
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

unint64_t lh_strhash(unint64_t c)
{
  if (c)
  {
    v1 = *c;
    if (*c)
    {
      v2 = 0;
      v3 = (c + 1);
      v4 = 256;
      do
      {
        v5 = v1 ^ (v1 >> 2);
        if ((v5 & 0xF) != 0)
        {
          v2 = (v2 >> (32 - (v5 & 0xFu))) | (v2 << (v5 & 0xF));
        }

        v2 = v2 ^ ((v4 | v1) * (v4 | v1));
        v6 = *v3++;
        v1 = v6;
        v4 += 256;
      }

      while (v6);
      return v2 ^ (v2 >> 16);
    }

    else
    {
      return 0;
    }
  }

  return c;
}

void lh_free(LHASH *lh)
{
  if (lh)
  {
    num_nodes = lh->num_nodes;
    if (num_nodes)
    {
      for (i = 0; i < num_nodes; ++i)
      {
        v4 = lh->b[i];
        if (v4)
        {
          do
          {
            next = v4->next;
            free(v4);
            v4 = next;
          }

          while (next);
          num_nodes = lh->num_nodes;
        }
      }
    }

    free(lh->b);

    free(lh);
  }
}

void *__cdecl lh_insert(LHASH *lh, void *data)
{
  v21 = 0;
  lh->error = 0;
  num_nodes = lh->num_nodes;
  if (lh->up_load <= (lh->num_items << 8) / num_nodes)
  {
    lh->num_nodes = num_nodes + 1;
    ++lh->num_expands;
    num_alloc_nodes = lh->num_alloc_nodes;
    p = lh->p;
    lh->p = p + 1;
    b = lh->b;
    p_next = &lh->b[p];
    pmax = lh->pmax;
    v10 = pmax + p;
    *(&lh->b[pmax] + p) = 0;
    while (1)
    {
      v11 = *p_next;
      if (!*p_next)
      {
        break;
      }

      if (v11->hash % num_alloc_nodes == p)
      {
        p_next = &v11->next;
      }

      else
      {
        *p_next = v11->next;
        v11->next = b[v10];
        b[v10] = v11;
      }
    }

    if (p + 1 >= pmax)
    {
      v12 = 2 * num_alloc_nodes;
      v13 = reallocarray(lh->b, (2 * num_alloc_nodes), 8uLL);
      if (v13)
      {
        v14 = v13;
        v15 = lh->num_alloc_nodes;
        if (v15 < v12)
        {
          bzero(&v13[v15], 8 * (v12 + ~v15) + 8);
        }

        lh->p = 0;
        lh->pmax = v15;
        ++lh->num_expand_reallocs;
        lh->num_alloc_nodes = v12;
        lh->b = v14;
      }

      else
      {
        ++lh->error;
        lh->p = 0;
      }
    }
  }

  v16 = getrn(lh, data, &v21);
  v17 = *v16;
  if (*v16)
  {
    result = *v17;
    *v17 = data;
    ++lh->num_replace;
  }

  else
  {
    v19 = v16;
    result = malloc_type_malloc(0x18uLL, 0x10A0040AFD1EA57uLL);
    if (result)
    {
      v20 = result;
      result = 0;
      *v20 = data;
      v20[1] = 0;
      v20[2] = v21;
      *v19 = v20;
      ++lh->num_insert;
      ++lh->num_items;
    }

    else
    {
      ++lh->error;
    }
  }

  return result;
}

void *getrn(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v6 = (*(a1 + 16))(a2);
  v7 = v6;
  ++*(a1 + 96);
  *a3 = v6;
  v8 = v6 % *(a1 + 36);
  if (v8 < *(a1 + 32))
  {
    v8 = v6 % *(a1 + 28);
  }

  v9 = (*a1 + 8 * v8);
  v10 = *v9;
  if (*v9)
  {
    v11 = *(a1 + 8);
    do
    {
      ++*(a1 + 160);
      if (v10[2] == v7)
      {
        ++*(a1 + 104);
        if (!v11(*v10, a2))
        {
          break;
        }
      }

      v9 = v10 + 1;
      v10 = v10[1];
    }

    while (v10);
  }

  return v9;
}

void *__cdecl lh_delete(LHASH *lh, const void *data)
{
  lh->error = 0;
  v3 = getrn(lh, data, &v19);
  v4 = *v3;
  if (*v3)
  {
    *v3 = *(v4 + 1);
    v5 = *v4;
    free(v4);
    ++lh->num_delete;
    v6 = lh->num_items - 1;
    lh->num_items = v6;
    num_nodes = lh->num_nodes;
    if (num_nodes >= 0x11 && lh->down_load >= (v6 << 8) / num_nodes)
    {
      p = lh->p;
      pmax = lh->pmax;
      v10 = p - 1;
      v11 = p - 1 + pmax;
      v12 = lh->b[v11];
      lh->b[v11] = 0;
      if (p)
      {
        lh->p = v10;
        b = lh->b;
      }

      else
      {
        b = reallocarray(lh->b, pmax, 8uLL);
        if (!b)
        {
          ++lh->error;
          return v5;
        }

        ++lh->num_contract_reallocs;
        LODWORD(num_nodes) = lh->num_nodes;
        v15 = lh->num_alloc_nodes >> 1;
        v16 = lh->pmax >> 1;
        lh->pmax = v16;
        v10 = v16 - 1;
        lh->num_alloc_nodes = v15;
        lh->p = v10;
        lh->b = b;
      }

      lh->num_nodes = num_nodes - 1;
      ++lh->num_contracts;
      v17 = b[v10];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = v17->next;
        }

        while (v17);
        v18->next = v12;
      }

      else
      {
        b[v10] = v12;
      }
    }
  }

  else
  {
    v5 = 0;
    ++lh->num_no_delete;
  }

  return v5;
}

void *__cdecl lh_retrieve(LHASH *lh, const void *data)
{
  lh->error = 0;
  v3 = getrn(lh, data, &v6);
  if (*v3)
  {
    result = **v3;
    v5 = 144;
  }

  else
  {
    result = 0;
    v5 = 152;
  }

  ++*(&lh->b + v5);
  return result;
}

void lh_doall(LHASH *lh, LHASH_DOALL_FN_TYPE func)
{
  if (lh)
  {
    num_nodes = lh->num_nodes;
    v4 = num_nodes - 1;
    if ((num_nodes - 1) >= 0)
    {
      do
      {
        v6 = lh->b[v4];
        if (v6)
        {
          do
          {
            next = v6->next;
            (func)(v6->data);
            v6 = next;
          }

          while (next);
        }
      }

      while (v4-- >= 1);
    }
  }
}

void lh_doall_arg(LHASH *lh, LHASH_DOALL_ARG_FN_TYPE func, void *arg)
{
  if (lh)
  {
    num_nodes = lh->num_nodes;
    v5 = num_nodes - 1;
    if ((num_nodes - 1) >= 0)
    {
      do
      {
        v8 = lh->b[v5];
        if (v8)
        {
          do
          {
            next = v8->next;
            (func)(v8->data, arg);
            v8 = next;
          }

          while (next);
        }
      }

      while (v5-- >= 1);
    }
  }
}

unint64_t lh_num_items(unint64_t lh)
{
  if (lh)
  {
    return *(lh + 56);
  }

  return lh;
}

uint64_t ENGINE_register_EC(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return engine_table_register(&ec_table, engine_unregister_all_EC, a1, dummy_nid_1, 1, 0);
  }

  else
  {
    return 1;
  }
}

ENGINE *ENGINE_register_all_EC()
{
  result = ENGINE_get_first();
  if (result)
  {
    v1 = result;
    do
    {
      if (*(v1 + 7))
      {
        engine_table_register(&ec_table, engine_unregister_all_EC, v1, dummy_nid_1, 1, 0);
      }

      result = ENGINE_get_next(v1);
      v1 = result;
    }

    while (result);
  }

  return result;
}

uint64_t ENGINE_set_default_EC(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return engine_table_register(&ec_table, engine_unregister_all_EC, a1, dummy_nid_1, 1, 1);
  }

  else
  {
    return 1;
  }
}

void EVP_set_pw_prompt(const char *prompt)
{
  if (prompt)
  {
    __strlcpy_chk();
  }

  else
  {
    prompt_string = 0;
  }
}

char *EVP_get_pw_prompt(void)
{
  if (prompt_string)
  {
    return &prompt_string;
  }

  else
  {
    return 0;
  }
}

uint64_t EVP_read_pw_string_min(char *a1, int a2, int a3, const char *a4, int a5)
{
  v17 = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) == 0)
  {
    v6 = a3 >= 1024 ? 1024 : a3;
    if (v6 > a2)
    {
      if (prompt_string)
      {
        v9 = a4 == 0;
      }

      else
      {
        v9 = 0;
      }

      if (v9)
      {
        v10 = &prompt_string;
      }

      else
      {
        v10 = a4;
      }

      v11 = UI_new();
      if (v11)
      {
        v12 = v11;
        v13 = v6 - 1;
        if ((UI_add_input_string(v11, v10, 0, a1, a2, v13) & 0x80000000) == 0 && (!a5 || (UI_add_verify_string(v12, v10, 0, result_buf, a2, v13, a1) & 0x80000000) == 0))
        {
          UI_process(v12);
          UI_free(v12);
          explicit_bzero(result_buf, 0x400uLL);
        }
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return 0xFFFFFFFFLL;
}

uint64_t EVP_PKEY_paramgen_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 40))
  {
    *(a1 + 8) = 2;
    v3 = *(v2 + 32);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 77);
    return 4294967294;
  }

  return result;
}

uint64_t EVP_PKEY_paramgen(_DWORD *a1, EVP_PKEY **a2)
{
  if (!a1 || !*a1 || (v3 = *(*a1 + 40)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 95);
    return 4294967294;
  }

  if (a1[8] != 2)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 100);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  if (!*a2)
  {
    *a2 = EVP_PKEY_new();
    v3 = *(*a1 + 40);
  }

  v6 = v3(a1);
  if (v6 <= 0)
  {
    EVP_PKEY_free(*a2);
    *a2 = 0;
  }

  return v6;
}

uint64_t EVP_PKEY_keygen_init(uint64_t *a1)
{
  if (a1 && (v2 = *a1) != 0 && *(v2 + 56))
  {
    *(a1 + 8) = 4;
    v3 = *(v2 + 48);
    if (v3)
    {
      result = v3(a1);
      if (result <= 0)
      {
        *(a1 + 8) = 0;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 124);
    return 4294967294;
  }

  return result;
}

uint64_t EVP_PKEY_keygen(_DWORD *a1, EVP_PKEY **a2)
{
  if (!a1 || !*a1 || (v3 = *(*a1 + 56)) == 0)
  {
    ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 142);
    return 4294967294;
  }

  if (a1[8] != 4)
  {
    ERR_put_error(6, 4095, 151, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 146);
    return 0xFFFFFFFFLL;
  }

  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *a2;
  if (!*a2)
  {
    *a2 = EVP_PKEY_new();
    v3 = *(*a1 + 56);
  }

  v6 = v3(a1);
  if (v6 <= 0)
  {
    EVP_PKEY_free(*a2);
    *a2 = 0;
  }

  return v6;
}

uint64_t trans_cb(int a1, int a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  v4 = *(v3 + 56);
  v5 = *(v3 + 64);
  *v5 = a1;
  v5[1] = a2;
  return v4(v3);
}

uint64_t EVP_PKEY_CTX_get_keygen_info(uint64_t a1, unsigned int a2)
{
  if (a2 == -1)
  {
    return *(a1 + 72);
  }

  if ((a2 & 0x80000000) != 0 || *(a1 + 72) < a2)
  {
    return 0;
  }

  return *(*(a1 + 64) + 4 * a2);
}

uint64_t *EVP_PKEY_new_mac_key(int a1, ENGINE *a2)
{
  v4 = 0;
  result = EVP_PKEY_CTX_new_id(a1, a2);
  if (result)
  {
    v3 = result;
    if (EVP_PKEY_keygen_init(result) >= 1 && EVP_PKEY_CTX_ctrl(v3, -1, 4) >= 1)
    {
      EVP_PKEY_keygen(v3, &v4);
    }

    EVP_PKEY_CTX_free(v3);
    return v4;
  }

  return result;
}

uint64_t EVP_PKEY_check(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(*a1 + 224);
    if (v3 || (v5 = *(v2 + 16)) != 0 && (v3 = *(v5 + 216)) != 0)
    {

      return v3();
    }

    else
    {
      ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 241);
      return 4294967294;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 154, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 233);
    return 0;
  }
}

uint64_t EVP_PKEY_public_check(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(*a1 + 232);
    if (v3 || (v5 = *(v2 + 16)) != 0 && (v3 = *(v5 + 224)) != 0)
    {

      return v3();
    }

    else
    {
      ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 262);
      return 4294967294;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 154, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 254);
    return 0;
  }
}

uint64_t EVP_PKEY_param_check(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *(*a1 + 240);
    if (v3 || (v5 = *(v2 + 16)) != 0 && (v3 = *(v5 + 232)) != 0)
    {

      return v3();
    }

    else
    {
      ERR_put_error(6, 4095, 150, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 283);
      return 4294967294;
    }
  }

  else
  {
    ERR_put_error(6, 4095, 154, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/evp/pmeth_gn.c", 275);
    return 0;
  }
}

void RC2_ecb_encrypt(const unsigned __int8 *in, unsigned __int8 *out, RC2_KEY *key, int enc)
{
  v9 = *MEMORY[0x277D85DE8];
  *&v5 = *in;
  *(&v5 + 1) = HIDWORD(*in);
  v8 = v5;
  if (enc)
  {
    RC2_encrypt(&v8, key);
  }

  else
  {
    RC2_decrypt(&v8, key);
  }

  v6 = DWORD2(v8);
  *out = v8;
  *(out + 1) = v6;
  v7 = *MEMORY[0x277D85DE8];
}

unint64_t *bn_mul_comba4(unint64_t *result, void *a2, void *a3)
{
  v3 = HIDWORD(*a2);
  v4 = *a3 * *a2;
  v5 = *a3 * v3;
  v6 = v4 | (v5 << 32);
  v7 = HIDWORD(*a3);
  v8 = HIDWORD(v5);
  v9 = v4 & (v5 << 32);
  v10 = (v5 << 32) + *a3 * *a2;
  v11 = v7 * *a2;
  v12 = v10 | (v11 << 32);
  v13 = v8 + v7 * v3;
  v14 = v6 & ~v10;
  v15 = v10 & (v11 << 32);
  v16 = v10 + (v11 << 32);
  v17 = v13 + HIDWORD(v11) + ((v14 | v9) >> 63) + ((v12 & ~v16 | v15) >> 63);
  *result = v16;
  v18 = a2[1];
  v19 = HIDWORD(*a2);
  LODWORD(v9) = *a2;
  v20 = a3[1];
  v21 = HIDWORD(v20);
  v22 = v20;
  v23 = v20 * v9;
  v24 = v20 * v19;
  v25 = HIDWORD(v24) + v21 * v19;
  v26 = v23 | (v24 << 32);
  v27 = v23 & (v24 << 32);
  v28 = (v24 << 32) + v22 * v9;
  v29 = v26 & ~v28 | v27;
  v30 = v21 * v9;
  v31 = v28 | (v30 << 32);
  v32 = v28 & (v30 << 32);
  v33 = v28 + (v30 << 32);
  v34 = v25 + HIDWORD(v30) + (v29 >> 63) + ((v31 & ~v33 | v32) >> 63);
  v35 = v17 | v33;
  v36 = v17 & v33;
  v37 = v17 + v33;
  v38 = v34 + ((v35 & ~v37 | v36) >> 63);
  v39 = HIDWORD(v18);
  LODWORD(v36) = v18;
  v40 = HIDWORD(*a3);
  LODWORD(v31) = *a3;
  v41 = v31 * v18;
  v42 = v31 * v39;
  v43 = HIDWORD(v42) + v40 * v39;
  v44 = v41 | (v42 << 32);
  v45 = v41 & (v42 << 32);
  v46 = (v42 << 32) + v31 * v36;
  v47 = v44 & ~v46 | v45;
  v48 = v40 * v36;
  v49 = v46 | (v48 << 32);
  v50 = v46 & (v48 << 32);
  v51 = v46 + (v48 << 32);
  v52 = v43 + HIDWORD(v48) + (v47 >> 63) + ((v49 & ~v51 | v50) >> 63);
  v53 = v51 + v37;
  v54 = v52 + (((v51 | v37) & ~(v51 + v37) | v51 & v37) >> 63);
  v55 = v54 + v38;
  v56 = (v54 | v38) & ~(v54 + v38) | v54 & v38;
  result[1] = v53;
  v57 = a2[2];
  v58 = HIDWORD(v57);
  LODWORD(v53) = v57;
  v59 = a3[1];
  v60 = HIDWORD(*a3);
  LODWORD(v32) = *a3;
  v61 = v32 * v57;
  v62 = v32 * v58;
  v63 = HIDWORD(v62) + v60 * v58;
  v64 = v61 | (v62 << 32);
  v65 = v61 & (v62 << 32);
  v66 = (v62 << 32) + v32 * v53;
  v67 = v64 & ~v66 | v65;
  v68 = v60 * v53;
  v69 = v66 | (v68 << 32);
  v70 = v66 & (v68 << 32);
  v71 = v66 + (v68 << 32);
  v72 = v63 + HIDWORD(v68) + (v67 >> 63) + ((v69 & ~v71 | v70) >> 63);
  v73 = v55 + v71;
  v74 = v72 + (((v55 | v71) & ~(v55 + v71) | v55 & v71) >> 63);
  v75 = v74 + (v56 >> 63);
  v76 = v74 & ~v75;
  v77 = a2[1];
  v78 = HIDWORD(v77);
  LODWORD(v69) = v77;
  v79 = HIDWORD(v59);
  LODWORD(v44) = v59;
  v80 = v59 * v77;
  v81 = v44 * HIDWORD(v77);
  v82 = HIDWORD(v81) + v79 * v78;
  v83 = v80 | (v81 << 32);
  v84 = v80 & (v81 << 32);
  v85 = (v81 << 32) + v44 * v69;
  v86 = v83 & ~v85 | v84;
  v87 = v79 * v69;
  v88 = v85 | (v87 << 32);
  v89 = v85 & (v87 << 32);
  v90 = v85 + (v87 << 32);
  v91 = v82 + HIDWORD(v87) + (v86 >> 63) + ((v88 & ~v90 | v89) >> 63);
  v92 = v73 | v90;
  v93 = v73 & v90;
  v94 = v73 + v90;
  v95 = v91 + ((v92 & ~v94 | v93) >> 63);
  v96 = v95 | v75;
  v97 = v95 & v75;
  v98 = v95 + v75;
  v99 = ((v96 & ~v98 | v97) >> 63) + (v76 >> 63);
  v100 = a3[2];
  v101 = HIDWORD(*a2);
  LODWORD(v97) = *a2;
  v102 = HIDWORD(v100);
  LODWORD(v88) = v100;
  v103 = v100 * v97;
  v104 = v88 * v101;
  v105 = HIDWORD(v104) + v102 * v101;
  v106 = v103 | (v104 << 32);
  v107 = v103 & (v104 << 32);
  v108 = (v104 << 32) + v88 * v97;
  v109 = v106 & ~v108 | v107;
  v110 = v102 * v97;
  v111 = v108 | (v110 << 32);
  v112 = v108 & (v110 << 32);
  v113 = v108 + (v110 << 32);
  v114 = v105 + HIDWORD(v110) + (v109 >> 63) + ((v111 & ~v113 | v112) >> 63);
  v115 = v94 | v113;
  v116 = v94 & v113;
  v117 = v94 + v113;
  v118 = v114 + ((v115 & ~v117 | v116) >> 63);
  v119 = v118 | v98;
  v120 = v118 & v98;
  v121 = v118 + v98;
  v122 = v99 + ((v119 & ~v121 | v120) >> 63);
  result[2] = v117;
  v123 = a2[1];
  v124 = HIDWORD(*a2);
  LODWORD(v120) = *a2;
  v126 = a3[2];
  v125 = a3[3];
  v127 = HIDWORD(v125);
  LODWORD(v89) = v125;
  v128 = v125 * v120;
  v129 = v125 * v124;
  v130 = HIDWORD(v129) + v127 * v124;
  v131 = v128 | (v129 << 32);
  v132 = v128 & (v129 << 32);
  v133 = (v129 << 32) + v89 * v120;
  v134 = v131 & ~v133 | v132;
  v135 = v127 * v120;
  v136 = v133 | (v135 << 32);
  v137 = v133 & (v135 << 32);
  v138 = v133 + (v135 << 32);
  v139 = v130 + HIDWORD(v135) + (v134 >> 63) + ((v136 & ~v138 | v137) >> 63);
  v140 = v121 | v138;
  v141 = v121 & v138;
  v142 = v121 + v138;
  v143 = v139 + ((v140 & ~v142 | v141) >> 63);
  v144 = v122 + v143;
  v145 = v143 & ~(v122 + v143);
  v146 = HIDWORD(v123);
  LODWORD(v141) = v123;
  v147 = HIDWORD(v126);
  LODWORD(v136) = v126;
  v148 = v126 * v123;
  v149 = v126 * v146;
  v150 = HIDWORD(v149) + v147 * v146;
  v151 = v148 | (v149 << 32);
  v152 = v148 & (v149 << 32);
  v153 = (v149 << 32) + v136 * v141;
  v154 = v151 & ~v153 | v152;
  v155 = v147 * v141;
  v156 = v153 | (v155 << 32);
  v157 = v153 & (v155 << 32);
  v158 = v153 + (v155 << 32);
  v159 = v150 + HIDWORD(v155) + (v154 >> 63) + ((v156 & ~v158 | v157) >> 63);
  v160 = v142 + v158;
  v161 = v159 + (((v142 | v158) & ~(v142 + v158) | v142 & v158) >> 63);
  v162 = v161 | v144;
  v163 = v161 & v144;
  v164 = v161 + v144;
  v165 = ((v162 & ~v164 | v163) >> 63) + (v145 >> 63);
  v166 = a2[2];
  v167 = a2[3];
  v168 = HIDWORD(v166);
  LODWORD(v156) = v166;
  v169 = a3[1];
  v170 = HIDWORD(v169);
  LODWORD(v151) = v169;
  v171 = v169 * v166;
  v172 = v169 * v168;
  v173 = HIDWORD(v172) + v170 * v168;
  v174 = v171 | (v172 << 32);
  v175 = v171 & (v172 << 32);
  v176 = (v172 << 32) + v151 * v156;
  v177 = v174 & ~v176 | v175;
  v178 = v170 * v156;
  v179 = v176 | (v178 << 32);
  v180 = v176 & (v178 << 32);
  v181 = v176 + (v178 << 32);
  v182 = v173 + HIDWORD(v178) + (v177 >> 63) + ((v179 & ~v181 | v180) >> 63);
  v183 = v160 | v181;
  v184 = v160 & v181;
  v185 = v160 + v181;
  v186 = v182 + ((v183 & ~v185 | v184) >> 63);
  v187 = v186 | v164;
  v188 = v186 & v164;
  v189 = v186 + v164;
  v190 = v165 + ((v187 & ~v189 | v188) >> 63);
  v191 = HIDWORD(v167);
  LODWORD(v187) = v167;
  v192 = HIDWORD(*a3);
  LODWORD(v181) = *a3;
  v193 = v181 * v167;
  v194 = v181 * v191;
  v195 = HIDWORD(v194) + v192 * v191;
  v196 = (v194 << 32) + v181 * v187;
  v197 = (v193 | (v194 << 32)) & ~v196 | v193 & (v194 << 32);
  v198 = v192 * v187;
  v199 = v196 | (v198 << 32);
  v200 = v196 & (v198 << 32);
  v201 = v196 + (v198 << 32);
  v202 = v195 + HIDWORD(v198) + (v197 >> 63) + ((v199 & ~v201 | v200) >> 63);
  v203 = v185 + v201;
  v204 = v202 + (((v185 | v201) & ~(v185 + v201) | v185 & v201) >> 63);
  v205 = v204 + v189;
  v206 = v190 + (((v204 | v189) & ~(v204 + v189) | v204 & v189) >> 63);
  result[3] = v203;
  v207 = a2[3];
  v208 = HIDWORD(v207);
  LODWORD(v198) = v207;
  v210 = a3[1];
  v209 = a3[2];
  v211 = HIDWORD(v210);
  LODWORD(v200) = v210;
  v212 = v210 * v207;
  v213 = v210 * v208;
  v214 = HIDWORD(v213) + v211 * v208;
  v215 = v212 | (v213 << 32);
  v216 = v212 & (v213 << 32);
  v217 = (v213 << 32) + v200 * v198;
  v218 = v215 & ~v217 | v216;
  v219 = v211 * v198;
  v220 = v217 | (v219 << 32);
  v221 = v217 & (v219 << 32);
  v222 = v217 + (v219 << 32);
  v223 = v214 + HIDWORD(v219) + (v218 >> 63) + ((v220 & ~v222 | v221) >> 63);
  v224 = v205 + v222;
  v225 = v223 + (((v205 | v222) & ~(v205 + v222) | v205 & v222) >> 63);
  v226 = v225 | v206;
  v227 = v225 + v206;
  v228 = v226 & ~v227;
  v230 = a2[1];
  v229 = a2[2];
  v231 = HIDWORD(v229);
  LODWORD(v220) = v229;
  v232 = HIDWORD(v209);
  LODWORD(v179) = v209;
  v233 = v209 * v229;
  v234 = v179 * HIDWORD(v229);
  v235 = HIDWORD(v234) + v232 * v231;
  v236 = v233 | (v234 << 32);
  v237 = v233 & (v234 << 32);
  v238 = (v234 << 32) + v179 * v220;
  v239 = v236 & ~v238 | v237;
  v240 = v232 * v220;
  v241 = v238 | (v240 << 32);
  v242 = v238 & (v240 << 32);
  v243 = v238 + (v240 << 32);
  v244 = v235 + HIDWORD(v240) + (v239 >> 63) + ((v241 & ~v243 | v242) >> 63);
  v245 = v224 | v243;
  v246 = v224 & v243;
  v247 = v224 + v243;
  v248 = v244 + ((v245 & ~v247 | v246) >> 63);
  v249 = v248 | v227;
  v250 = v248 & v227;
  v251 = v248 + v227;
  v252 = ((v249 & ~v251 | v250) >> 63) + (v228 >> 63);
  v253 = a3[3];
  v254 = HIDWORD(v230);
  LODWORD(v250) = v230;
  v255 = HIDWORD(v253);
  LODWORD(v241) = v253;
  v256 = v253 * v230;
  v257 = v241 * HIDWORD(v230);
  v258 = HIDWORD(v257) + v255 * v254;
  v259 = v256 | (v257 << 32);
  v260 = v256 & (v257 << 32);
  v261 = (v257 << 32) + v241 * v250;
  v262 = v259 & ~v261 | v260;
  v263 = v255 * v250;
  v264 = v261 | (v263 << 32);
  v265 = v261 & (v263 << 32);
  v266 = v261 + (v263 << 32);
  v267 = v258 + HIDWORD(v263) + (v262 >> 63) + ((v264 & ~v266 | v265) >> 63);
  v268 = v247 | v266;
  v269 = v247 & v266;
  v270 = v247 + v266;
  v271 = v267 + ((v268 & ~v270 | v269) >> 63);
  v272 = v271 | v251;
  v273 = v271 & v251;
  v274 = v271 + v251;
  v275 = v252 + ((v272 & ~v274 | v273) >> 63);
  result[4] = v270;
  v276 = a2[2];
  v277 = a2[3];
  v278 = HIDWORD(v276);
  LODWORD(v273) = v276;
  v280 = a3[2];
  v279 = a3[3];
  v281 = HIDWORD(v279);
  LODWORD(v242) = v279;
  v282 = v279 * v276;
  v283 = v279 * v278;
  v284 = HIDWORD(v283) + v281 * v278;
  v285 = v282 | (v283 << 32);
  v286 = v282 & (v283 << 32);
  v287 = (v283 << 32) + v242 * v273;
  v288 = v285 & ~v287 | v286;
  v289 = v281 * v273;
  v290 = v287 | (v289 << 32);
  v291 = v287 & (v289 << 32);
  v292 = v287 + (v289 << 32);
  v293 = v284 + HIDWORD(v289) + (v288 >> 63) + ((v290 & ~v292 | v291) >> 63);
  v294 = v274 | v292;
  v295 = v274 & v292;
  v296 = v274 + v292;
  v297 = v293 + ((v294 & ~v296 | v295) >> 63);
  v298 = v275 + v297;
  v299 = v297 & ~(v275 + v297);
  v300 = HIDWORD(v277);
  LODWORD(v295) = v277;
  v301 = HIDWORD(v280);
  LODWORD(v290) = v280;
  v302 = v280 * v277;
  v303 = v280 * v300;
  v304 = HIDWORD(v303) + v301 * v300;
  v305 = v302 | (v303 << 32);
  v306 = v302 & (v303 << 32);
  v307 = (v303 << 32) + v290 * v295;
  v308 = v305 & ~v307 | v306;
  v309 = v301 * v295;
  v310 = v307 | (v309 << 32);
  v311 = v307 & (v309 << 32);
  v312 = v307 + (v309 << 32);
  v313 = v304 + HIDWORD(v309) + (v308 >> 63) + ((v310 & ~v312 | v311) >> 63);
  v314 = v296 | v312;
  v315 = v296 & v312;
  v316 = v296 + v312;
  v317 = v313 + ((v314 & ~v316 | v315) >> 63);
  v318 = v317 | v298;
  v319 = v317 & v298;
  v320 = v317 + v298;
  v321 = v318 & ~v320 | v319;
  result[5] = v316;
  v322 = a2[3];
  v323 = a3[3];
  v324 = HIDWORD(v322);
  LODWORD(v310) = v322;
  v325 = HIDWORD(v323);
  LODWORD(v311) = v323;
  v326 = v323 * v322;
  v327 = v323 * v324;
  v328 = HIDWORD(v327) + v325 * v324;
  v329 = v326 | (v327 << 32);
  v330 = v326 & (v327 << 32);
  v331 = (v327 << 32) + v311 * v310;
  v332 = v329 & ~v331 | v330;
  v333 = v325 * v310;
  v334 = v331 | (v333 << 32);
  v335 = v331 & (v333 << 32);
  v336 = v331 + (v333 << 32);
  v337 = v328 + HIDWORD(v333) + (v332 >> 63) + ((v334 & ~v336 | v335) >> 63);
  v338 = v320 | v336;
  v339 = v320 & v336;
  v340 = v320 + v336;
  result[6] = v340;
  result[7] = v337 + (v299 >> 63) + (v321 >> 63) + ((v338 & ~v340 | v339) >> 63);
  return result;
}

unint64_t *bn_mul_comba8(unint64_t *result, void *a2, void *a3)
{
  v3 = HIDWORD(*a2);
  v4 = *a3 * *a2;
  v5 = *a3 * v3;
  v6 = v4 | (v5 << 32);
  v7 = HIDWORD(*a3);
  v8 = HIDWORD(v5);
  v9 = v4 & (v5 << 32);
  v10 = (v5 << 32) + *a3 * *a2;
  v11 = v7 * *a2;
  v12 = v10 | (v11 << 32);
  v13 = v8 + v7 * v3;
  v14 = v6 & ~v10;
  v15 = v10 & (v11 << 32);
  v16 = v10 + (v11 << 32);
  v17 = v13 + HIDWORD(v11) + ((v14 | v9) >> 63) + ((v12 & ~v16 | v15) >> 63);
  *result = v16;
  v18 = a2[1];
  v19 = HIDWORD(*a2);
  LODWORD(v9) = *a2;
  v20 = a3[1];
  v21 = HIDWORD(v20);
  v22 = v20;
  v23 = v20 * v9;
  v24 = v20 * v19;
  v25 = HIDWORD(v24) + v21 * v19;
  v26 = v23 | (v24 << 32);
  v27 = v23 & (v24 << 32);
  v28 = (v24 << 32) + v22 * v9;
  v29 = v26 & ~v28 | v27;
  v30 = v21 * v9;
  v31 = v28 | (v30 << 32);
  v32 = v28 & (v30 << 32);
  v33 = v28 + (v30 << 32);
  v34 = v25 + HIDWORD(v30) + (v29 >> 63) + ((v31 & ~v33 | v32) >> 63);
  v35 = v17 | v33;
  v36 = v17 & v33;
  v37 = v17 + v33;
  v38 = v34 + ((v35 & ~v37 | v36) >> 63);
  v39 = HIDWORD(v18);
  LODWORD(v36) = v18;
  v40 = HIDWORD(*a3);
  LODWORD(v31) = *a3;
  v41 = v31 * v18;
  v42 = v31 * v39;
  v43 = HIDWORD(v42) + v40 * v39;
  v44 = v41 | (v42 << 32);
  v45 = v41 & (v42 << 32);
  v46 = (v42 << 32) + v31 * v36;
  v47 = v44 & ~v46 | v45;
  v48 = v40 * v36;
  v49 = v46 | (v48 << 32);
  v50 = v46 & (v48 << 32);
  v51 = v46 + (v48 << 32);
  v52 = v43 + HIDWORD(v48) + (v47 >> 63) + ((v49 & ~v51 | v50) >> 63);
  v53 = v51 + v37;
  v54 = v52 + (((v51 | v37) & ~(v51 + v37) | v51 & v37) >> 63);
  v55 = v54 + v38;
  v56 = (v54 | v38) & ~(v54 + v38) | v54 & v38;
  result[1] = v53;
  v57 = a2[2];
  v58 = HIDWORD(v57);
  LODWORD(v53) = v57;
  v59 = a3[1];
  v60 = HIDWORD(*a3);
  LODWORD(v32) = *a3;
  v61 = v32 * v57;
  v62 = v32 * v58;
  v63 = HIDWORD(v62) + v60 * v58;
  v64 = v61 | (v62 << 32);
  v65 = v61 & (v62 << 32);
  v66 = (v62 << 32) + v32 * v53;
  v67 = v64 & ~v66 | v65;
  v68 = v60 * v53;
  v69 = v66 | (v68 << 32);
  v70 = v66 & (v68 << 32);
  v71 = v66 + (v68 << 32);
  v72 = v63 + HIDWORD(v68) + (v67 >> 63) + ((v69 & ~v71 | v70) >> 63);
  v73 = v55 + v71;
  v74 = v72 + (((v55 | v71) & ~(v55 + v71) | v55 & v71) >> 63);
  v75 = v74 + (v56 >> 63);
  v76 = v74 & ~v75;
  v77 = a2[1];
  v78 = HIDWORD(v77);
  LODWORD(v69) = v77;
  v79 = HIDWORD(v59);
  LODWORD(v44) = v59;
  v80 = v59 * v77;
  v81 = v44 * HIDWORD(v77);
  v82 = HIDWORD(v81) + v79 * v78;
  v83 = v80 | (v81 << 32);
  v84 = v80 & (v81 << 32);
  v85 = (v81 << 32) + v44 * v69;
  v86 = v83 & ~v85 | v84;
  v87 = v79 * v69;
  v88 = v85 | (v87 << 32);
  v89 = v85 & (v87 << 32);
  v90 = v85 + (v87 << 32);
  v91 = v82 + HIDWORD(v87) + (v86 >> 63) + ((v88 & ~v90 | v89) >> 63);
  v92 = v73 | v90;
  v93 = v73 & v90;
  v94 = v73 + v90;
  v95 = v91 + ((v92 & ~v94 | v93) >> 63);
  v96 = v95 | v75;
  v97 = v95 & v75;
  v98 = v95 + v75;
  v99 = ((v96 & ~v98 | v97) >> 63) + (v76 >> 63);
  v100 = a3[2];
  v101 = HIDWORD(*a2);
  LODWORD(v97) = *a2;
  v102 = HIDWORD(v100);
  LODWORD(v88) = v100;
  v103 = v100 * v97;
  v104 = v88 * v101;
  v105 = HIDWORD(v104) + v102 * v101;
  v106 = v103 | (v104 << 32);
  v107 = v103 & (v104 << 32);
  v108 = (v104 << 32) + v88 * v97;
  v109 = v106 & ~v108 | v107;
  v110 = v102 * v97;
  v111 = v108 | (v110 << 32);
  v112 = v108 & (v110 << 32);
  v113 = v108 + (v110 << 32);
  v114 = v105 + HIDWORD(v110) + (v109 >> 63) + ((v111 & ~v113 | v112) >> 63);
  v115 = v94 | v113;
  v116 = v94 & v113;
  v117 = v94 + v113;
  v118 = v114 + ((v115 & ~v117 | v116) >> 63);
  v119 = v118 | v98;
  v120 = v118 & v98;
  v121 = v118 + v98;
  v122 = v99 + ((v119 & ~v121 | v120) >> 63);
  result[2] = v117;
  v123 = a2[1];
  v124 = HIDWORD(*a2);
  LODWORD(v120) = *a2;
  v126 = a3[2];
  v125 = a3[3];
  v127 = HIDWORD(v125);
  LODWORD(v89) = v125;
  v128 = v125 * v120;
  v129 = v125 * v124;
  v130 = HIDWORD(v129) + v127 * v124;
  v131 = v128 | (v129 << 32);
  v132 = v128 & (v129 << 32);
  v133 = (v129 << 32) + v89 * v120;
  v134 = v131 & ~v133 | v132;
  v135 = v127 * v120;
  v136 = v133 | (v135 << 32);
  v137 = v133 & (v135 << 32);
  v138 = v133 + (v135 << 32);
  v139 = v130 + HIDWORD(v135) + (v134 >> 63) + ((v136 & ~v138 | v137) >> 63);
  v140 = v121 | v138;
  v141 = v121 & v138;
  v142 = v121 + v138;
  v143 = v139 + ((v140 & ~v142 | v141) >> 63);
  v144 = v122 + v143;
  v145 = v143 & ~(v122 + v143);
  v146 = HIDWORD(v123);
  LODWORD(v141) = v123;
  v147 = HIDWORD(v126);
  LODWORD(v136) = v126;
  v148 = v126 * v123;
  v149 = v126 * v146;
  v150 = HIDWORD(v149) + v147 * v146;
  v151 = v148 | (v149 << 32);
  v152 = v148 & (v149 << 32);
  v153 = (v149 << 32) + v136 * v141;
  v154 = v151 & ~v153 | v152;
  v155 = v147 * v141;
  v156 = v153 | (v155 << 32);
  v157 = v153 & (v155 << 32);
  v158 = v153 + (v155 << 32);
  v159 = v150 + HIDWORD(v155) + (v154 >> 63) + ((v156 & ~v158 | v157) >> 63);
  v160 = v142 + v158;
  v161 = v159 + (((v142 | v158) & ~(v142 + v158) | v142 & v158) >> 63);
  v162 = v161 | v144;
  v163 = v161 & v144;
  v164 = v161 + v144;
  v165 = ((v162 & ~v164 | v163) >> 63) + (v145 >> 63);
  v166 = a2[2];
  v167 = a2[3];
  v168 = HIDWORD(v166);
  LODWORD(v156) = v166;
  v169 = a3[1];
  v170 = HIDWORD(v169);
  LODWORD(v151) = v169;
  v171 = v169 * v166;
  v172 = v169 * v168;
  v173 = HIDWORD(v172) + v170 * v168;
  v174 = v171 | (v172 << 32);
  v175 = v171 & (v172 << 32);
  v176 = (v172 << 32) + v151 * v156;
  v177 = v174 & ~v176 | v175;
  v178 = v170 * v156;
  v179 = v176 | (v178 << 32);
  v180 = v176 & (v178 << 32);
  v181 = v176 + (v178 << 32);
  v182 = v173 + HIDWORD(v178) + (v177 >> 63) + ((v179 & ~v181 | v180) >> 63);
  v183 = v160 | v181;
  v184 = v160 & v181;
  v185 = v160 + v181;
  v186 = v182 + ((v183 & ~v185 | v184) >> 63);
  v187 = v186 | v164;
  v188 = v186 & v164;
  v189 = v186 + v164;
  v190 = v165 + ((v187 & ~v189 | v188) >> 63);
  v191 = HIDWORD(v167);
  LODWORD(v187) = v167;
  v192 = HIDWORD(*a3);
  LODWORD(v181) = *a3;
  v193 = v181 * v167;
  v194 = v181 * v191;
  v195 = HIDWORD(v194) + v192 * v191;
  v196 = (v194 << 32) + v181 * v187;
  v197 = (v193 | (v194 << 32)) & ~v196 | v193 & (v194 << 32);
  v198 = v192 * v187;
  v199 = v196 | (v198 << 32);
  v200 = v196 & (v198 << 32);
  v201 = v196 + (v198 << 32);
  v202 = v195 + HIDWORD(v198) + (v197 >> 63) + ((v199 & ~v201 | v200) >> 63);
  v203 = v185 + v201;
  v204 = v202 + (((v185 | v201) & ~(v185 + v201) | v185 & v201) >> 63);
  v205 = v204 | v189;
  v206 = v204 & v189;
  v207 = v204 + v189;
  v208 = v190 + ((v205 & ~v207 | v206) >> 63);
  result[3] = v203;
  v209 = a2[4];
  v210 = HIDWORD(v209);
  LODWORD(v198) = v209;
  v211 = a3[1];
  v212 = HIDWORD(*a3);
  LODWORD(v200) = *a3;
  v213 = v200 * v209;
  v214 = v200 * v210;
  v215 = HIDWORD(v214) + v212 * v210;
  v216 = v213 | (v214 << 32);
  v217 = v213 & (v214 << 32);
  v218 = (v214 << 32) + v200 * v198;
  v219 = v216 & ~v218 | v217;
  v220 = v212 * v198;
  v221 = v218 | (v220 << 32);
  v222 = v218 & (v220 << 32);
  v223 = v218 + (v220 << 32);
  v224 = v215 + HIDWORD(v220) + (v219 >> 63) + ((v221 & ~v223 | v222) >> 63);
  v225 = v207 + v223;
  v226 = v224 + (((v207 | v223) & ~(v207 + v223) | v207 & v223) >> 63);
  v227 = v226 + v208;
  v228 = (v226 | v208) & ~(v226 + v208);
  v229 = a2[2];
  v230 = a2[3];
  v231 = HIDWORD(v230);
  LODWORD(v221) = v230;
  v232 = HIDWORD(v211);
  LODWORD(v179) = v211;
  v233 = v211 * v230;
  v234 = v179 * HIDWORD(v230);
  v235 = HIDWORD(v234) + v232 * v231;
  v236 = v233 | (v234 << 32);
  v237 = v233 & (v234 << 32);
  v238 = (v234 << 32) + v179 * v221;
  v239 = v236 & ~v238 | v237;
  v240 = v232 * v221;
  v241 = v238 | (v240 << 32);
  v242 = v238 & (v240 << 32);
  v243 = v238 + (v240 << 32);
  v244 = v235 + HIDWORD(v240) + (v239 >> 63) + ((v241 & ~v243 | v242) >> 63);
  v245 = v225 + v243;
  v246 = v244 + (((v225 | v243) & ~(v225 + v243) | v225 & v243) >> 63);
  v247 = v246 | v227;
  v248 = v246 & v227;
  v249 = v246 + v227;
  v250 = ((v247 & ~v249 | v248) >> 63) + (v228 >> 63);
  v251 = HIDWORD(v229);
  LODWORD(v248) = v229;
  v253 = a3[2];
  v252 = a3[3];
  v254 = HIDWORD(v253);
  LODWORD(v242) = v253;
  v255 = v253 * v229;
  v256 = v253 * v251;
  v257 = HIDWORD(v256) + v254 * v251;
  v258 = v255 | (v256 << 32);
  v259 = v255 & (v256 << 32);
  v260 = (v256 << 32) + v242 * v248;
  v261 = v258 & ~v260 | v259;
  v262 = v254 * v248;
  v263 = v260 | (v262 << 32);
  v264 = v260 & (v262 << 32);
  v265 = v260 + (v262 << 32);
  v266 = v257 + HIDWORD(v262) + (v261 >> 63) + ((v263 & ~v265 | v264) >> 63);
  v267 = v245 + v265;
  v268 = v266 + (((v245 | v265) & ~(v245 + v265) | v245 & v265) >> 63);
  v269 = v268 | v249;
  v270 = v268 & v249;
  v271 = v268 + v249;
  v272 = v250 + ((v269 & ~v271 | v270) >> 63);
  v273 = a2[1];
  v274 = HIDWORD(v273);
  LODWORD(v265) = v273;
  v275 = HIDWORD(v252);
  LODWORD(v264) = v252;
  v276 = v252 * v273;
  v277 = v264 * HIDWORD(v273);
  v278 = HIDWORD(v277) + v275 * v274;
  v279 = v276 | (v277 << 32);
  v280 = v276 & (v277 << 32);
  v281 = (v277 << 32) + v264 * v265;
  v282 = v279 & ~v281 | v280;
  v283 = v275 * v265;
  v284 = v281 | (v283 << 32);
  v285 = v281 & (v283 << 32);
  v286 = v281 + (v283 << 32);
  v287 = v278 + HIDWORD(v283) + (v282 >> 63) + ((v284 & ~v286 | v285) >> 63);
  v288 = v267 | v286;
  v289 = v267 & v286;
  v290 = v267 + v286;
  v291 = v287 + ((v288 & ~v290 | v289) >> 63);
  v292 = v291 | v271;
  v293 = v291 & v271;
  v294 = v291 + v271;
  v295 = v272 + ((v292 & ~v294 | v293) >> 63);
  v296 = a3[4];
  v297 = HIDWORD(*a2);
  LODWORD(v293) = *a2;
  v298 = HIDWORD(v296);
  LODWORD(v284) = v296;
  v299 = v296 * v293;
  v300 = v284 * v297;
  v301 = HIDWORD(v300) + v298 * v297;
  v302 = v299 | (v300 << 32);
  v303 = v299 & (v300 << 32);
  v304 = (v300 << 32) + v284 * v293;
  v305 = v302 & ~v304 | v303;
  v306 = v298 * v293;
  v307 = v304 | (v306 << 32);
  v308 = v304 & (v306 << 32);
  v309 = v304 + (v306 << 32);
  v310 = v301 + HIDWORD(v306) + (v305 >> 63) + ((v307 & ~v309 | v308) >> 63);
  v311 = v309 | v290;
  v312 = v309 & v290;
  v313 = v309 + v290;
  v314 = v310 + ((v311 & ~v313 | v312) >> 63);
  v315 = v314 | v294;
  v316 = v314 & v294;
  v317 = v314 + v294;
  v318 = v295 + ((v315 & ~v317 | v316) >> 63);
  result[4] = v313;
  v319 = a2[1];
  v320 = HIDWORD(*a2);
  LODWORD(v313) = *a2;
  v322 = a3[4];
  v321 = a3[5];
  v323 = HIDWORD(v321);
  LODWORD(v285) = v321;
  v324 = v321 * v313;
  v325 = v321 * v320;
  v326 = HIDWORD(v325) + v323 * v320;
  v327 = v324 | (v325 << 32);
  v328 = v324 & (v325 << 32);
  v329 = (v325 << 32) + v285 * v313;
  v330 = v327 & ~v329 | v328;
  v331 = v323 * v313;
  v332 = v329 | (v331 << 32);
  v333 = v329 & (v331 << 32);
  v334 = v329 + (v331 << 32);
  v335 = v326 + HIDWORD(v331) + (v330 >> 63) + ((v332 & ~v334 | v333) >> 63);
  v336 = v317 | v334;
  v337 = v317 & v334;
  v338 = v317 + v334;
  v339 = v335 + ((v336 & ~v338 | v337) >> 63);
  v340 = v339 | v318;
  v341 = v339 + v318;
  v342 = HIDWORD(v319);
  LODWORD(v337) = v319;
  v343 = HIDWORD(v322);
  LODWORD(v332) = v322;
  v344 = v322 * v319;
  v345 = v322 * v342;
  v346 = HIDWORD(v345) + v343 * v342;
  v347 = v344 | (v345 << 32);
  v348 = v344 & (v345 << 32);
  v349 = (v345 << 32) + v332 * v337;
  v350 = v347 & ~v349 | v348;
  v351 = v343 * v337;
  v352 = v349 | (v351 << 32);
  v353 = v349 & (v351 << 32);
  v354 = v349 + (v351 << 32);
  v355 = v346 + HIDWORD(v351) + (v350 >> 63) + ((v352 & ~v354 | v353) >> 63);
  v356 = v338 + v354;
  v357 = v355 + (((v338 | v354) & ~(v338 + v354) | v338 & v354) >> 63);
  v358 = v357 | v341;
  v359 = v357 & v341;
  v360 = v357 + v341;
  v361 = ((v358 & ~v360 | v359) >> 63) + ((v340 & ~v341) >> 63);
  v362 = a2[2];
  v363 = a2[3];
  v364 = HIDWORD(v362);
  LODWORD(v352) = v362;
  v366 = a3[2];
  v365 = a3[3];
  v367 = HIDWORD(v365);
  LODWORD(v347) = v365;
  v368 = v365 * v362;
  v369 = v365 * v364;
  v370 = HIDWORD(v369) + v367 * v364;
  v371 = v368 | (v369 << 32);
  v372 = v368 & (v369 << 32);
  v373 = (v369 << 32) + v347 * v352;
  v374 = v371 & ~v373 | v372;
  v375 = v367 * v352;
  v376 = v373 | (v375 << 32);
  v377 = v373 & (v375 << 32);
  v378 = v373 + (v375 << 32);
  v379 = v370 + HIDWORD(v375) + (v374 >> 63) + ((v376 & ~v378 | v377) >> 63);
  v380 = v356 | v378;
  v381 = v356 & v378;
  v382 = v356 + v378;
  v383 = v379 + ((v380 & ~v382 | v381) >> 63);
  v384 = v383 | v360;
  v385 = v383 & v360;
  v386 = v383 + v360;
  v387 = v361 + ((v384 & ~v386 | v385) >> 63);
  v388 = HIDWORD(v363);
  LODWORD(v384) = v363;
  v389 = HIDWORD(v366);
  LODWORD(v378) = v366;
  v390 = v366 * v363;
  v391 = v366 * v388;
  v392 = HIDWORD(v391) + v389 * v388;
  v393 = (v391 << 32) + v378 * v384;
  v394 = (v390 | (v391 << 32)) & ~v393 | v390 & (v391 << 32);
  v395 = v389 * v384;
  v396 = v393 | (v395 << 32);
  v397 = v393 & (v395 << 32);
  v398 = v393 + (v395 << 32);
  v399 = v392 + HIDWORD(v395) + (v394 >> 63) + ((v396 & ~v398 | v397) >> 63);
  v400 = v398 | v382;
  v401 = v398 & v382;
  v402 = v398 + v382;
  v403 = v399 + ((v400 & ~v402 | v401) >> 63);
  v404 = v403 | v386;
  v405 = v403 & v386;
  v406 = v403 + v386;
  v407 = v387 + ((v404 & ~v406 | v405) >> 63);
  v408 = a2[4];
  v409 = a2[5];
  v410 = HIDWORD(v408);
  LODWORD(v396) = v408;
  v411 = a3[1];
  v412 = HIDWORD(v411);
  LODWORD(v377) = v411;
  v413 = v411 * v408;
  v414 = v411 * v410;
  v415 = HIDWORD(v414) + v412 * v410;
  v416 = v413 | (v414 << 32);
  v417 = v413 & (v414 << 32);
  v418 = (v414 << 32) + v377 * v396;
  v419 = v416 & ~v418 | v417;
  v420 = v412 * v396;
  v421 = v418 | (v420 << 32);
  v422 = v418 & (v420 << 32);
  v423 = v418 + (v420 << 32);
  v424 = v415 + HIDWORD(v420) + (v419 >> 63) + ((v421 & ~v423 | v422) >> 63);
  v425 = v423 | v402;
  v426 = v423 & v402;
  v427 = v423 + v402;
  v428 = v424 + ((v425 & ~v427 | v426) >> 63);
  v429 = v428 | v406;
  v430 = v428 & v406;
  v431 = v428 + v406;
  v432 = v407 + ((v429 & ~v431 | v430) >> 63);
  v433 = HIDWORD(v409);
  LODWORD(v429) = v409;
  v434 = HIDWORD(*a3);
  LODWORD(v423) = *a3;
  v435 = v423 * v409;
  v436 = v423 * v433;
  v437 = HIDWORD(v436) + v434 * v433;
  v438 = (v436 << 32) + v423 * v429;
  v439 = (v435 | (v436 << 32)) & ~v438 | v435 & (v436 << 32);
  v440 = v434 * v429;
  v441 = v438 | (v440 << 32);
  v442 = v438 & (v440 << 32);
  v443 = v438 + (v440 << 32);
  v444 = v437 + HIDWORD(v440) + (v439 >> 63) + ((v441 & ~v443 | v442) >> 63);
  v445 = v443 + v427;
  v446 = v444 + (((v443 | v427) & ~(v443 + v427) | v443 & v427) >> 63);
  v447 = v446 | v431;
  v448 = v446 & v431;
  v449 = v446 + v431;
  v450 = v432 + ((v447 & ~v449 | v448) >> 63);
  result[5] = v445;
  v451 = a2[6];
  v452 = HIDWORD(v451);
  LODWORD(v440) = v451;
  v453 = a3[1];
  v454 = HIDWORD(*a3);
  LODWORD(v442) = *a3;
  v455 = v442 * v451;
  v456 = v442 * v452;
  v457 = HIDWORD(v456) + v454 * v452;
  v458 = v455 | (v456 << 32);
  v459 = v455 & (v456 << 32);
  v460 = (v456 << 32) + v442 * v440;
  v461 = v458 & ~v460 | v459;
  v462 = v454 * v440;
  v463 = v460 | (v462 << 32);
  v464 = v460 & (v462 << 32);
  v465 = v460 + (v462 << 32);
  v466 = v457 + HIDWORD(v462) + (v461 >> 63) + ((v463 & ~v465 | v464) >> 63);
  v467 = v449 + v465;
  v468 = v466 + (((v449 | v465) & ~(v449 + v465) | v449 & v465) >> 63);
  v469 = v468 + v450;
  v470 = (v468 | v450) & ~(v468 + v450);
  v471 = a2[4];
  v472 = a2[5];
  v473 = HIDWORD(v472);
  LODWORD(v463) = v472;
  v474 = HIDWORD(v453);
  LODWORD(v421) = v453;
  v475 = v453 * v472;
  v476 = v421 * HIDWORD(v472);
  v477 = HIDWORD(v476) + v474 * v473;
  v478 = v475 | (v476 << 32);
  v479 = v475 & (v476 << 32);
  v480 = (v476 << 32) + v421 * v463;
  v481 = v478 & ~v480 | v479;
  v482 = v474 * v463;
  v483 = v480 | (v482 << 32);
  v484 = v480 & (v482 << 32);
  v485 = v480 + (v482 << 32);
  v486 = v477 + HIDWORD(v482) + (v481 >> 63) + ((v483 & ~v485 | v484) >> 63);
  v487 = v467 + v485;
  v488 = v486 + (((v467 | v485) & ~(v467 + v485) | v467 & v485) >> 63);
  v489 = v488 | v469;
  v490 = v488 & v469;
  v491 = v488 + v469;
  v492 = ((v489 & ~v491 | v490) >> 63) + (v470 >> 63);
  v493 = HIDWORD(v471);
  LODWORD(v490) = v471;
  v495 = a3[2];
  v494 = a3[3];
  v496 = HIDWORD(v495);
  LODWORD(v484) = v495;
  v497 = v495 * v471;
  v498 = v495 * v493;
  v499 = HIDWORD(v498) + v496 * v493;
  v500 = v497 | (v498 << 32);
  v501 = v497 & (v498 << 32);
  v502 = (v498 << 32) + v484 * v490;
  v503 = v500 & ~v502 | v501;
  v504 = v496 * v490;
  v505 = v502 | (v504 << 32);
  v506 = v502 & (v504 << 32);
  v507 = v502 + (v504 << 32);
  v508 = v499 + HIDWORD(v504) + (v503 >> 63) + ((v505 & ~v507 | v506) >> 63);
  v509 = v487 | v507;
  v510 = v487 & v507;
  v511 = v487 + v507;
  v512 = v508 + ((v509 & ~v511 | v510) >> 63);
  v513 = v512 | v491;
  v514 = v512 & v491;
  v515 = v512 + v491;
  v516 = v492 + ((v513 & ~v515 | v514) >> 63);
  v517 = a2[2];
  v518 = a2[3];
  v519 = HIDWORD(v518);
  LODWORD(v507) = v518;
  v520 = HIDWORD(v494);
  LODWORD(v506) = v494;
  v521 = v494 * v518;
  v522 = v506 * HIDWORD(v518);
  v523 = HIDWORD(v522) + v520 * v519;
  v524 = v521 | (v522 << 32);
  v525 = v521 & (v522 << 32);
  v526 = (v522 << 32) + v506 * v507;
  v527 = v524 & ~v526 | v525;
  v528 = v520 * v507;
  v529 = v526 | (v528 << 32);
  v530 = v526 & (v528 << 32);
  v531 = v526 + (v528 << 32);
  v532 = v523 + HIDWORD(v528) + (v527 >> 63) + ((v529 & ~v531 | v530) >> 63);
  v533 = v531 | v511;
  v534 = v531 & v511;
  v535 = v531 + v511;
  v536 = v532 + ((v533 & ~v535 | v534) >> 63);
  v537 = v536 | v515;
  v538 = v536 & v515;
  v539 = v536 + v515;
  v540 = v516 + ((v537 & ~v539 | v538) >> 63);
  v541 = HIDWORD(v517);
  LODWORD(v538) = v517;
  v543 = a3[4];
  v542 = a3[5];
  v544 = HIDWORD(v543);
  LODWORD(v530) = v543;
  v545 = v543 * v517;
  v546 = v543 * v541;
  v547 = HIDWORD(v546) + v544 * v541;
  v548 = v545 | (v546 << 32);
  v549 = v545 & (v546 << 32);
  v550 = (v546 << 32) + v530 * v538;
  v551 = v548 & ~v550 | v549;
  v552 = v544 * v538;
  v553 = v550 | (v552 << 32);
  v554 = v550 & (v552 << 32);
  v555 = v550 + (v552 << 32);
  v556 = v547 + HIDWORD(v552) + (v551 >> 63) + ((v553 & ~v555 | v554) >> 63);
  v557 = v555 + v535;
  v558 = v556 + (((v555 | v535) & ~(v555 + v535) | v555 & v535) >> 63);
  v559 = v558 | v539;
  v560 = v558 & v539;
  v561 = v558 + v539;
  v562 = v540 + ((v559 & ~v561 | v560) >> 63);
  v563 = a2[1];
  v564 = HIDWORD(v563);
  LODWORD(v555) = v563;
  v565 = HIDWORD(v542);
  LODWORD(v554) = v542;
  v566 = v542 * v563;
  v567 = v554 * HIDWORD(v563);
  v568 = HIDWORD(v567) + v565 * v564;
  v569 = v566 | (v567 << 32);
  v570 = v566 & (v567 << 32);
  v571 = (v567 << 32) + v554 * v555;
  v572 = v569 & ~v571 | v570;
  v573 = v565 * v555;
  v574 = v571 | (v573 << 32);
  v575 = v571 & (v573 << 32);
  v576 = v571 + (v573 << 32);
  v577 = v568 + HIDWORD(v573) + (v572 >> 63) + ((v574 & ~v576 | v575) >> 63);
  v578 = v576 | v557;
  v579 = v576 & v557;
  v580 = v576 + v557;
  v581 = v577 + ((v578 & ~v580 | v579) >> 63);
  v582 = v581 | v561;
  v583 = v581 & v561;
  v584 = v581 + v561;
  v585 = v562 + ((v582 & ~v584 | v583) >> 63);
  v586 = a3[6];
  v587 = HIDWORD(*a2);
  LODWORD(v583) = *a2;
  v588 = HIDWORD(v586);
  LODWORD(v574) = v586;
  v589 = v586 * v583;
  v590 = v574 * v587;
  v591 = HIDWORD(v590) + v588 * v587;
  v592 = v589 | (v590 << 32);
  v593 = v589 & (v590 << 32);
  v594 = (v590 << 32) + v574 * v583;
  v595 = v592 & ~v594 | v593;
  v596 = v588 * v583;
  v597 = v594 | (v596 << 32);
  v598 = v594 & (v596 << 32);
  v599 = v594 + (v596 << 32);
  v600 = v591 + HIDWORD(v596) + (v595 >> 63) + ((v597 & ~v599 | v598) >> 63);
  v601 = v599 | v580;
  v602 = v599 & v580;
  v603 = v599 + v580;
  v604 = v600 + ((v601 & ~v603 | v602) >> 63);
  v605 = v604 | v584;
  v606 = v604 & v584;
  v607 = v604 + v584;
  v608 = v585 + ((v605 & ~v607 | v606) >> 63);
  result[6] = v603;
  v609 = a2[1];
  v610 = HIDWORD(*a2);
  LODWORD(v603) = *a2;
  v612 = a3[6];
  v611 = a3[7];
  v613 = HIDWORD(v611);
  LODWORD(v575) = v611;
  v614 = v611 * v603;
  v615 = v611 * v610;
  v616 = HIDWORD(v615) + v613 * v610;
  v617 = v614 | (v615 << 32);
  v618 = v614 & (v615 << 32);
  v619 = (v615 << 32) + v575 * v603;
  v620 = v617 & ~v619 | v618;
  v621 = v613 * v603;
  v622 = v619 | (v621 << 32);
  v623 = v619 & (v621 << 32);
  v624 = v619 + (v621 << 32);
  v625 = v616 + HIDWORD(v621) + (v620 >> 63) + ((v622 & ~v624 | v623) >> 63);
  v626 = v607 | v624;
  v627 = v607 & v624;
  v628 = v607 + v624;
  v629 = v625 + ((v626 & ~v628 | v627) >> 63);
  v630 = v629 | v608;
  v631 = v629 & v608;
  v632 = v629 + v608;
  v633 = v630 & ~v632 | v631;
  v634 = HIDWORD(v609);
  LODWORD(v631) = v609;
  v635 = HIDWORD(v612);
  LODWORD(v622) = v612;
  v636 = v612 * v609;
  v637 = v612 * v634;
  v638 = HIDWORD(v637) + v635 * v634;
  v639 = v636 | (v637 << 32);
  v640 = v636 & (v637 << 32);
  v641 = (v637 << 32) + v622 * v631;
  v642 = v639 & ~v641 | v640;
  v643 = v635 * v631;
  v644 = v641 | (v643 << 32);
  v645 = v641 & (v643 << 32);
  v646 = v641 + (v643 << 32);
  v647 = v638 + HIDWORD(v643) + (v642 >> 63) + ((v644 & ~v646 | v645) >> 63);
  v648 = v628 + v646;
  v649 = v647 + (((v628 | v646) & ~(v628 + v646) | v628 & v646) >> 63);
  v650 = v649 | v632;
  v651 = v649 & v632;
  v652 = v649 + v632;
  v653 = ((v650 & ~v652 | v651) >> 63) + (v633 >> 63);
  v654 = a2[2];
  v655 = a2[3];
  v656 = HIDWORD(v654);
  LODWORD(v644) = v654;
  v658 = a3[4];
  v657 = a3[5];
  v659 = HIDWORD(v657);
  LODWORD(v639) = v657;
  v660 = v657 * v654;
  v661 = v657 * v656;
  v662 = HIDWORD(v661) + v659 * v656;
  v663 = v660 | (v661 << 32);
  v664 = v660 & (v661 << 32);
  v665 = (v661 << 32) + v639 * v644;
  v666 = v663 & ~v665 | v664;
  v667 = v659 * v644;
  v668 = v665 | (v667 << 32);
  v669 = v665 & (v667 << 32);
  v670 = v665 + (v667 << 32);
  v671 = v662 + HIDWORD(v667) + (v666 >> 63) + ((v668 & ~v670 | v669) >> 63);
  v672 = v648 | v670;
  v673 = v648 & v670;
  v674 = v648 + v670;
  v675 = v671 + ((v672 & ~v674 | v673) >> 63);
  v676 = v675 | v652;
  v677 = v675 & v652;
  v678 = v675 + v652;
  v679 = v653 + ((v676 & ~v678 | v677) >> 63);
  v680 = HIDWORD(v655);
  LODWORD(v676) = v655;
  v681 = HIDWORD(v658);
  LODWORD(v670) = v658;
  v682 = v658 * v655;
  v683 = v658 * v680;
  v684 = HIDWORD(v683) + v681 * v680;
  v685 = (v683 << 32) + v670 * v676;
  v686 = (v682 | (v683 << 32)) & ~v685 | v682 & (v683 << 32);
  v687 = v681 * v676;
  v688 = v685 | (v687 << 32);
  v689 = v685 & (v687 << 32);
  v690 = v685 + (v687 << 32);
  v691 = v684 + HIDWORD(v687) + (v686 >> 63) + ((v688 & ~v690 | v689) >> 63);
  v692 = v690 | v674;
  v693 = v690 & v674;
  v694 = v690 + v674;
  v695 = v691 + ((v692 & ~v694 | v693) >> 63);
  v696 = v695 | v678;
  v697 = v695 & v678;
  v698 = v695 + v678;
  v699 = v679 + ((v696 & ~v698 | v697) >> 63);
  v700 = a2[4];
  v701 = a2[5];
  v702 = HIDWORD(v700);
  LODWORD(v688) = v700;
  v704 = a3[2];
  v703 = a3[3];
  v705 = HIDWORD(v703);
  LODWORD(v669) = v703;
  v706 = v703 * v700;
  v707 = v703 * v702;
  v708 = HIDWORD(v707) + v705 * v702;
  v709 = v706 | (v707 << 32);
  v710 = v706 & (v707 << 32);
  v711 = (v707 << 32) + v669 * v688;
  v712 = v709 & ~v711 | v710;
  v713 = v705 * v688;
  v714 = v711 | (v713 << 32);
  v715 = v711 & (v713 << 32);
  v716 = v711 + (v713 << 32);
  v717 = v708 + HIDWORD(v713) + (v712 >> 63) + ((v714 & ~v716 | v715) >> 63);
  v718 = v716 | v694;
  v719 = v716 & v694;
  v720 = v716 + v694;
  v721 = v717 + ((v718 & ~v720 | v719) >> 63);
  v722 = v721 | v698;
  v723 = v721 & v698;
  v724 = v721 + v698;
  v725 = v699 + ((v722 & ~v724 | v723) >> 63);
  v726 = HIDWORD(v701);
  LODWORD(v722) = v701;
  v727 = HIDWORD(v704);
  LODWORD(v716) = v704;
  v728 = v704 * v701;
  v729 = v704 * v726;
  v730 = HIDWORD(v729) + v727 * v726;
  v731 = (v729 << 32) + v716 * v722;
  v732 = (v728 | (v729 << 32)) & ~v731 | v728 & (v729 << 32);
  v733 = v727 * v722;
  v734 = v731 | (v733 << 32);
  v735 = v731 & (v733 << 32);
  v736 = v731 + (v733 << 32);
  v737 = v730 + HIDWORD(v733) + (v732 >> 63) + ((v734 & ~v736 | v735) >> 63);
  v738 = v736 | v720;
  v739 = v736 & v720;
  v740 = v736 + v720;
  v741 = v737 + ((v738 & ~v740 | v739) >> 63);
  v742 = v741 | v724;
  v743 = v741 & v724;
  v744 = v741 + v724;
  v745 = v725 + ((v742 & ~v744 | v743) >> 63);
  v746 = a2[6];
  v747 = a2[7];
  v748 = HIDWORD(v746);
  LODWORD(v734) = v746;
  v749 = a3[1];
  v750 = HIDWORD(v749);
  LODWORD(v715) = v749;
  v751 = v749 * v746;
  v752 = v749 * v748;
  v753 = HIDWORD(v752) + v750 * v748;
  v754 = v751 | (v752 << 32);
  v755 = v751 & (v752 << 32);
  v756 = (v752 << 32) + v715 * v734;
  v757 = v754 & ~v756 | v755;
  v758 = v750 * v734;
  v759 = v756 | (v758 << 32);
  v760 = v756 & (v758 << 32);
  v761 = v756 + (v758 << 32);
  v762 = v753 + HIDWORD(v758) + (v757 >> 63) + ((v759 & ~v761 | v760) >> 63);
  v763 = v761 | v740;
  v764 = v761 & v740;
  v765 = v761 + v740;
  v766 = v762 + ((v763 & ~v765 | v764) >> 63);
  v767 = v766 | v744;
  v768 = v766 & v744;
  v769 = v766 + v744;
  v770 = v745 + ((v767 & ~v769 | v768) >> 63);
  v771 = HIDWORD(v747);
  LODWORD(v767) = v747;
  v772 = HIDWORD(*a3);
  LODWORD(v761) = *a3;
  v773 = v761 * v747;
  v774 = v761 * v771;
  v775 = HIDWORD(v774) + v772 * v771;
  v776 = (v774 << 32) + v761 * v767;
  v777 = (v773 | (v774 << 32)) & ~v776 | v773 & (v774 << 32);
  v778 = v772 * v767;
  v779 = v776 | (v778 << 32);
  v780 = v776 & (v778 << 32);
  v781 = v776 + (v778 << 32);
  v782 = v775 + HIDWORD(v778) + (v777 >> 63) + ((v779 & ~v781 | v780) >> 63);
  v783 = v781 + v765;
  v784 = v782 + (((v781 | v765) & ~(v781 + v765) | v781 & v765) >> 63);
  v785 = v784 + v769;
  v786 = v770 + (((v784 | v769) & ~(v784 + v769) | v784 & v769) >> 63);
  result[7] = v783;
  v787 = a2[7];
  v788 = HIDWORD(v787);
  LODWORD(v778) = v787;
  v790 = a3[1];
  v789 = a3[2];
  v791 = HIDWORD(v790);
  LODWORD(v780) = v790;
  v792 = v790 * v787;
  v793 = v790 * v788;
  v794 = HIDWORD(v793) + v791 * v788;
  v795 = v792 | (v793 << 32);
  v796 = v792 & (v793 << 32);
  v797 = (v793 << 32) + v780 * v778;
  v798 = v795 & ~v797 | v796;
  v799 = v791 * v778;
  v800 = v797 | (v799 << 32);
  v801 = v797 & (v799 << 32);
  v802 = v797 + (v799 << 32);
  v803 = v794 + HIDWORD(v799) + (v798 >> 63) + ((v800 & ~v802 | v801) >> 63);
  v804 = v785 + v802;
  v805 = v803 + (((v785 | v802) & ~(v785 + v802) | v785 & v802) >> 63);
  v806 = v805 + v786;
  v807 = (v805 | v786) & ~(v805 + v786) | v805 & v786;
  v808 = a2[5];
  v809 = a2[6];
  v810 = HIDWORD(v809);
  LODWORD(v800) = v809;
  v811 = HIDWORD(v789);
  LODWORD(v759) = v789;
  v812 = v789 * v809;
  v813 = v759 * HIDWORD(v809);
  v814 = HIDWORD(v813) + v811 * v810;
  v815 = v812 | (v813 << 32);
  v816 = v812 & (v813 << 32);
  v817 = (v813 << 32) + v759 * v800;
  v818 = v815 & ~v817 | v816;
  v819 = v811 * v800;
  v820 = v817 | (v819 << 32);
  v821 = v817 & (v819 << 32);
  v822 = v817 + (v819 << 32);
  v823 = v814 + HIDWORD(v819) + (v818 >> 63) + ((v820 & ~v822 | v821) >> 63);
  v824 = v804 | v822;
  v825 = v804 & v822;
  v826 = v804 + v822;
  v827 = v823 + ((v824 & ~v826 | v825) >> 63);
  v828 = v827 | v806;
  v829 = v827 & v806;
  v830 = v827 + v806;
  v831 = ((v828 & ~v830 | v829) >> 63) + (v807 >> 63);
  v832 = HIDWORD(v808);
  LODWORD(v829) = v808;
  v834 = a3[3];
  v833 = a3[4];
  v835 = HIDWORD(v834);
  LODWORD(v821) = v834;
  v836 = v834 * v808;
  v837 = v834 * v832;
  v838 = HIDWORD(v837) + v835 * v832;
  v839 = v836 | (v837 << 32);
  v840 = v836 & (v837 << 32);
  v841 = (v837 << 32) + v821 * v829;
  v842 = v839 & ~v841 | v840;
  v843 = v835 * v829;
  v844 = v841 | (v843 << 32);
  v845 = v841 & (v843 << 32);
  v846 = v841 + (v843 << 32);
  v847 = v838 + HIDWORD(v843) + (v842 >> 63) + ((v844 & ~v846 | v845) >> 63);
  v848 = v826 | v846;
  v849 = v826 & v846;
  v850 = v826 + v846;
  v851 = v847 + ((v848 & ~v850 | v849) >> 63);
  v852 = v851 | v830;
  v853 = v851 & v830;
  v854 = v851 + v830;
  v855 = v831 + ((v852 & ~v854 | v853) >> 63);
  v856 = a2[3];
  v857 = a2[4];
  v858 = HIDWORD(v857);
  LODWORD(v846) = v857;
  v859 = HIDWORD(v833);
  LODWORD(v845) = v833;
  v860 = v833 * v857;
  v861 = v845 * HIDWORD(v857);
  v862 = HIDWORD(v861) + v859 * v858;
  v863 = v860 | (v861 << 32);
  v864 = v860 & (v861 << 32);
  v865 = (v861 << 32) + v845 * v846;
  v866 = v863 & ~v865 | v864;
  v867 = v859 * v846;
  v868 = v865 | (v867 << 32);
  v869 = v865 & (v867 << 32);
  v870 = v865 + (v867 << 32);
  v871 = v862 + HIDWORD(v867) + (v866 >> 63) + ((v868 & ~v870 | v869) >> 63);
  v872 = v870 | v850;
  v873 = v870 & v850;
  v874 = v870 + v850;
  v875 = v871 + ((v872 & ~v874 | v873) >> 63);
  v876 = v875 | v854;
  v877 = v875 & v854;
  v878 = v875 + v854;
  v879 = v855 + ((v876 & ~v878 | v877) >> 63);
  v880 = HIDWORD(v856);
  LODWORD(v877) = v856;
  v882 = a3[5];
  v881 = a3[6];
  v883 = HIDWORD(v882);
  LODWORD(v869) = v882;
  v884 = v882 * v856;
  v885 = v882 * v880;
  v886 = HIDWORD(v885) + v883 * v880;
  v887 = v884 | (v885 << 32);
  v888 = v884 & (v885 << 32);
  v889 = (v885 << 32) + v869 * v877;
  v890 = v887 & ~v889 | v888;
  v891 = v883 * v877;
  v892 = v889 | (v891 << 32);
  v893 = v889 & (v891 << 32);
  v894 = v889 + (v891 << 32);
  v895 = v886 + HIDWORD(v891) + (v890 >> 63) + ((v892 & ~v894 | v893) >> 63);
  v896 = v894 + v874;
  v897 = v895 + (((v894 | v874) & ~(v894 + v874) | v894 & v874) >> 63);
  v898 = v897 | v878;
  v899 = v897 & v878;
  v900 = v897 + v878;
  v901 = v879 + ((v898 & ~v900 | v899) >> 63);
  v903 = a2[1];
  v902 = a2[2];
  v904 = HIDWORD(v902);
  LODWORD(v894) = v902;
  v905 = HIDWORD(v881);
  LODWORD(v893) = v881;
  v906 = v881 * v902;
  v907 = v893 * HIDWORD(v902);
  v908 = HIDWORD(v907) + v905 * v904;
  v909 = v906 | (v907 << 32);
  v910 = v906 & (v907 << 32);
  v911 = (v907 << 32) + v893 * v894;
  v912 = v909 & ~v911 | v910;
  v913 = v905 * v894;
  v914 = v911 | (v913 << 32);
  v915 = v911 & (v913 << 32);
  v916 = v911 + (v913 << 32);
  v917 = v908 + HIDWORD(v913) + (v912 >> 63) + ((v914 & ~v916 | v915) >> 63);
  v918 = v916 | v896;
  v919 = v916 & v896;
  v920 = v916 + v896;
  v921 = v917 + ((v918 & ~v920 | v919) >> 63);
  v922 = v921 | v900;
  v923 = v921 & v900;
  v924 = v921 + v900;
  v925 = v901 + ((v922 & ~v924 | v923) >> 63);
  v926 = a3[7];
  v927 = HIDWORD(v903);
  LODWORD(v923) = v903;
  v928 = HIDWORD(v926);
  LODWORD(v914) = v926;
  v929 = v926 * v903;
  v930 = v914 * HIDWORD(v903);
  v931 = HIDWORD(v930) + v928 * v927;
  v932 = v929 | (v930 << 32);
  v933 = v929 & (v930 << 32);
  v934 = (v930 << 32) + v914 * v923;
  v935 = v932 & ~v934 | v933;
  v936 = v928 * v923;
  v937 = v934 | (v936 << 32);
  v938 = v934 & (v936 << 32);
  v939 = v934 + (v936 << 32);
  v940 = v931 + HIDWORD(v936) + (v935 >> 63) + ((v937 & ~v939 | v938) >> 63);
  v941 = v939 | v920;
  v942 = v939 & v920;
  v943 = v939 + v920;
  v944 = v940 + ((v941 & ~v943 | v942) >> 63);
  v945 = v944 | v924;
  v946 = v944 & v924;
  v947 = v944 + v924;
  v948 = v925 + ((v945 & ~v947 | v946) >> 63);
  result[8] = v943;
  v949 = a2[2];
  v950 = a2[3];
  v951 = HIDWORD(v949);
  LODWORD(v943) = v949;
  v953 = a3[6];
  v952 = a3[7];
  v954 = HIDWORD(v952);
  LODWORD(v915) = v952;
  v955 = v952 * v949;
  v956 = v952 * v951;
  v957 = HIDWORD(v956) + v954 * v951;
  v958 = v955 | (v956 << 32);
  v959 = v955 & (v956 << 32);
  v960 = (v956 << 32) + v915 * v943;
  v961 = v958 & ~v960 | v959;
  v962 = v954 * v943;
  v963 = v960 | (v962 << 32);
  v964 = v960 & (v962 << 32);
  v965 = v960 + (v962 << 32);
  v966 = v957 + HIDWORD(v962) + (v961 >> 63) + ((v963 & ~v965 | v964) >> 63);
  v967 = v947 | v965;
  v968 = v947 & v965;
  v969 = v947 + v965;
  v970 = v966 + ((v967 & ~v969 | v968) >> 63);
  v971 = v970 | v948;
  v972 = v970 & v948;
  v973 = v970 + v948;
  v974 = v971 & ~v973 | v972;
  v975 = HIDWORD(v950);
  LODWORD(v972) = v950;
  v976 = HIDWORD(v953);
  LODWORD(v963) = v953;
  v977 = v953 * v950;
  v978 = v953 * v975;
  v979 = HIDWORD(v978) + v976 * v975;
  v980 = v977 | (v978 << 32);
  v981 = v977 & (v978 << 32);
  v982 = (v978 << 32) + v963 * v972;
  v983 = v980 & ~v982 | v981;
  v984 = v976 * v972;
  v985 = v982 | (v984 << 32);
  v986 = v982 & (v984 << 32);
  v987 = v982 + (v984 << 32);
  v988 = v979 + HIDWORD(v984) + (v983 >> 63) + ((v985 & ~v987 | v986) >> 63);
  v989 = v969 + v987;
  v990 = v988 + (((v969 | v987) & ~(v969 + v987) | v969 & v987) >> 63);
  v991 = v990 | v973;
  v992 = v990 & v973;
  v993 = v990 + v973;
  v994 = ((v991 & ~v993 | v992) >> 63) + (v974 >> 63);
  v995 = a2[4];
  v996 = a2[5];
  v997 = HIDWORD(v995);
  LODWORD(v985) = v995;
  v999 = a3[4];
  v998 = a3[5];
  v1000 = HIDWORD(v998);
  LODWORD(v980) = v998;
  v1001 = v998 * v995;
  v1002 = v998 * v997;
  v1003 = HIDWORD(v1002) + v1000 * v997;
  v1004 = v1001 | (v1002 << 32);
  v1005 = v1001 & (v1002 << 32);
  v1006 = (v1002 << 32) + v980 * v985;
  v1007 = v1004 & ~v1006 | v1005;
  v1008 = v1000 * v985;
  v1009 = v1006 | (v1008 << 32);
  v1010 = v1006 & (v1008 << 32);
  v1011 = v1006 + (v1008 << 32);
  v1012 = v1003 + HIDWORD(v1008) + (v1007 >> 63) + ((v1009 & ~v1011 | v1010) >> 63);
  v1013 = v989 | v1011;
  v1014 = v989 & v1011;
  v1015 = v989 + v1011;
  v1016 = v1012 + ((v1013 & ~v1015 | v1014) >> 63);
  v1017 = v1016 | v993;
  v1018 = v1016 & v993;
  v1019 = v1016 + v993;
  v1020 = v994 + ((v1017 & ~v1019 | v1018) >> 63);
  v1021 = HIDWORD(v996);
  LODWORD(v1017) = v996;
  v1022 = HIDWORD(v999);
  LODWORD(v1011) = v999;
  v1023 = v999 * v996;
  v1024 = v999 * v1021;
  v1025 = HIDWORD(v1024) + v1022 * v1021;
  v1026 = (v1024 << 32) + v1011 * v1017;
  v1027 = (v1023 | (v1024 << 32)) & ~v1026 | v1023 & (v1024 << 32);
  v1028 = v1022 * v1017;
  v1029 = v1026 | (v1028 << 32);
  v1030 = v1026 & (v1028 << 32);
  v1031 = v1026 + (v1028 << 32);
  v1032 = v1025 + HIDWORD(v1028) + (v1027 >> 63) + ((v1029 & ~v1031 | v1030) >> 63);
  v1033 = v1031 | v1015;
  v1034 = v1031 & v1015;
  v1035 = v1031 + v1015;
  v1036 = v1032 + ((v1033 & ~v1035 | v1034) >> 63);
  v1037 = v1036 | v1019;
  v1038 = v1036 & v1019;
  v1039 = v1036 + v1019;
  v1040 = v1020 + ((v1037 & ~v1039 | v1038) >> 63);
  v1041 = a2[6];
  v1042 = a2[7];
  v1043 = HIDWORD(v1041);
  LODWORD(v1029) = v1041;
  v1045 = a3[2];
  v1044 = a3[3];
  v1046 = HIDWORD(v1044);
  LODWORD(v1010) = v1044;
  v1047 = v1044 * v1041;
  v1048 = v1044 * v1043;
  v1049 = HIDWORD(v1048) + v1046 * v1043;
  v1050 = v1047 | (v1048 << 32);
  v1051 = v1047 & (v1048 << 32);
  v1052 = (v1048 << 32) + v1010 * v1029;
  v1053 = v1050 & ~v1052 | v1051;
  v1054 = v1046 * v1029;
  v1055 = v1052 | (v1054 << 32);
  v1056 = v1052 & (v1054 << 32);
  v1057 = v1052 + (v1054 << 32);
  v1058 = v1049 + HIDWORD(v1054) + (v1053 >> 63) + ((v1055 & ~v1057 | v1056) >> 63);
  v1059 = v1057 | v1035;
  v1060 = v1057 & v1035;
  v1061 = v1057 + v1035;
  v1062 = v1058 + ((v1059 & ~v1061 | v1060) >> 63);
  v1063 = v1062 | v1039;
  v1064 = v1062 & v1039;
  v1065 = v1062 + v1039;
  v1066 = v1040 + ((v1063 & ~v1065 | v1064) >> 63);
  v1067 = HIDWORD(v1042);
  LODWORD(v1063) = v1042;
  v1068 = HIDWORD(v1045);
  LODWORD(v1057) = v1045;
  v1069 = v1045 * v1042;
  v1070 = v1045 * v1067;
  v1071 = HIDWORD(v1070) + v1068 * v1067;
  v1072 = (v1070 << 32) + v1057 * v1063;
  v1073 = (v1069 | (v1070 << 32)) & ~v1072 | v1069 & (v1070 << 32);
  v1074 = v1068 * v1063;
  v1075 = v1072 | (v1074 << 32);
  v1076 = v1072 & (v1074 << 32);
  v1077 = v1072 + (v1074 << 32);
  v1078 = v1071 + HIDWORD(v1074) + (v1073 >> 63) + ((v1075 & ~v1077 | v1076) >> 63);
  v1079 = v1077 + v1061;
  v1080 = v1078 + (((v1077 | v1061) & ~(v1077 + v1061) | v1077 & v1061) >> 63);
  v1081 = v1080 | v1065;
  v1082 = v1080 & v1065;
  v1083 = v1080 + v1065;
  v1084 = v1066 + ((v1081 & ~v1083 | v1082) >> 63);
  result[9] = v1079;
  v1085 = a2[7];
  v1086 = HIDWORD(v1085);
  LODWORD(v1074) = v1085;
  v1088 = a3[3];
  v1087 = a3[4];
  v1089 = HIDWORD(v1088);
  LODWORD(v1076) = v1088;
  v1090 = v1088 * v1085;
  v1091 = v1088 * v1086;
  v1092 = HIDWORD(v1091) + v1089 * v1086;
  v1093 = v1090 | (v1091 << 32);
  v1094 = v1090 & (v1091 << 32);
  v1095 = (v1091 << 32) + v1076 * v1074;
  v1096 = v1093 & ~v1095 | v1094;
  v1097 = v1089 * v1074;
  v1098 = v1095 | (v1097 << 32);
  v1099 = v1095 & (v1097 << 32);
  v1100 = v1095 + (v1097 << 32);
  v1101 = v1092 + HIDWORD(v1097) + (v1096 >> 63) + ((v1098 & ~v1100 | v1099) >> 63);
  v1102 = v1083 + v1100;
  v1103 = v1101 + (((v1083 | v1100) & ~(v1083 + v1100) | v1083 & v1100) >> 63);
  v1104 = v1103 + v1084;
  v1105 = (v1103 | v1084) & ~(v1103 + v1084);
  v1106 = a2[5];
  v1107 = a2[6];
  v1108 = HIDWORD(v1107);
  LODWORD(v1098) = v1107;
  v1109 = HIDWORD(v1087);
  LODWORD(v1055) = v1087;
  v1110 = v1087 * v1107;
  v1111 = v1055 * HIDWORD(v1107);
  v1112 = HIDWORD(v1111) + v1109 * v1108;
  v1113 = v1110 | (v1111 << 32);
  v1114 = v1110 & (v1111 << 32);
  v1115 = (v1111 << 32) + v1055 * v1098;
  v1116 = v1113 & ~v1115 | v1114;
  v1117 = v1109 * v1098;
  v1118 = v1115 | (v1117 << 32);
  v1119 = v1115 & (v1117 << 32);
  v1120 = v1115 + (v1117 << 32);
  v1121 = v1112 + HIDWORD(v1117) + (v1116 >> 63) + ((v1118 & ~v1120 | v1119) >> 63);
  v1122 = v1102 + v1120;
  v1123 = v1121 + (((v1102 | v1120) & ~(v1102 + v1120) | v1102 & v1120) >> 63);
  v1124 = v1123 | v1104;
  v1125 = v1123 & v1104;
  v1126 = v1123 + v1104;
  v1127 = ((v1124 & ~v1126 | v1125) >> 63) + (v1105 >> 63);
  v1128 = HIDWORD(v1106);
  LODWORD(v1125) = v1106;
  v1130 = a3[5];
  v1129 = a3[6];
  v1131 = HIDWORD(v1130);
  LODWORD(v1119) = v1130;
  v1132 = v1130 * v1106;
  v1133 = v1130 * v1128;
  v1134 = HIDWORD(v1133) + v1131 * v1128;
  v1135 = v1132 | (v1133 << 32);
  v1136 = v1132 & (v1133 << 32);
  v1137 = (v1133 << 32) + v1119 * v1125;
  v1138 = v1135 & ~v1137 | v1136;
  v1139 = v1131 * v1125;
  v1140 = v1137 | (v1139 << 32);
  v1141 = v1137 & (v1139 << 32);
  v1142 = v1137 + (v1139 << 32);
  v1143 = v1134 + HIDWORD(v1139) + (v1138 >> 63) + ((v1140 & ~v1142 | v1141) >> 63);
  v1144 = v1122 + v1142;
  v1145 = v1143 + (((v1122 | v1142) & ~(v1122 + v1142) | v1122 & v1142) >> 63);
  v1146 = v1145 | v1126;
  v1147 = v1145 & v1126;
  v1148 = v1145 + v1126;
  v1149 = v1127 + ((v1146 & ~v1148 | v1147) >> 63);
  v1151 = a2[3];
  v1150 = a2[4];
  v1152 = HIDWORD(v1150);
  LODWORD(v1142) = v1150;
  v1153 = HIDWORD(v1129);
  LODWORD(v1141) = v1129;
  v1154 = v1129 * v1150;
  v1155 = v1141 * HIDWORD(v1150);
  v1156 = HIDWORD(v1155) + v1153 * v1152;
  v1157 = v1154 | (v1155 << 32);
  v1158 = v1154 & (v1155 << 32);
  v1159 = (v1155 << 32) + v1141 * v1142;
  v1160 = v1157 & ~v1159 | v1158;
  v1161 = v1153 * v1142;
  v1162 = v1159 | (v1161 << 32);
  v1163 = v1159 & (v1161 << 32);
  v1164 = v1159 + (v1161 << 32);
  v1165 = v1156 + HIDWORD(v1161) + (v1160 >> 63) + ((v1162 & ~v1164 | v1163) >> 63);
  v1166 = v1164 | v1144;
  v1167 = v1164 & v1144;
  v1168 = v1164 + v1144;
  v1169 = v1165 + ((v1166 & ~v1168 | v1167) >> 63);
  v1170 = v1169 | v1148;
  v1171 = v1169 & v1148;
  v1172 = v1169 + v1148;
  v1173 = v1149 + ((v1170 & ~v1172 | v1171) >> 63);
  v1174 = a3[7];
  v1175 = HIDWORD(v1151);
  LODWORD(v1171) = v1151;
  v1176 = HIDWORD(v1174);
  LODWORD(v1162) = v1174;
  v1177 = v1174 * v1151;
  v1178 = v1162 * HIDWORD(v1151);
  v1179 = HIDWORD(v1178) + v1176 * v1175;
  v1180 = v1177 | (v1178 << 32);
  v1181 = v1177 & (v1178 << 32);
  v1182 = (v1178 << 32) + v1162 * v1171;
  v1183 = v1180 & ~v1182 | v1181;
  v1184 = v1176 * v1171;
  v1185 = v1182 | (v1184 << 32);
  v1186 = v1182 & (v1184 << 32);
  v1187 = v1182 + (v1184 << 32);
  v1188 = v1179 + HIDWORD(v1184) + (v1183 >> 63) + ((v1185 & ~v1187 | v1186) >> 63);
  v1189 = v1187 | v1168;
  v1190 = v1187 & v1168;
  v1191 = v1187 + v1168;
  v1192 = v1188 + ((v1189 & ~v1191 | v1190) >> 63);
  v1193 = v1192 | v1172;
  v1194 = v1192 & v1172;
  v1195 = v1192 + v1172;
  v1196 = v1173 + ((v1193 & ~v1195 | v1194) >> 63);
  result[10] = v1191;
  v1197 = a2[4];
  v1198 = a2[5];
  v1199 = HIDWORD(v1197);
  LODWORD(v1191) = v1197;
  v1201 = a3[6];
  v1200 = a3[7];
  v1202 = HIDWORD(v1200);
  LODWORD(v1163) = v1200;
  v1203 = v1200 * v1197;
  v1204 = v1200 * v1199;
  v1205 = HIDWORD(v1204) + v1202 * v1199;
  v1206 = v1203 | (v1204 << 32);
  v1207 = v1203 & (v1204 << 32);
  v1208 = (v1204 << 32) + v1163 * v1191;
  v1209 = v1206 & ~v1208 | v1207;
  v1210 = v1202 * v1191;
  v1211 = v1208 | (v1210 << 32);
  v1212 = v1208 & (v1210 << 32);
  v1213 = v1208 + (v1210 << 32);
  v1214 = v1205 + HIDWORD(v1210) + (v1209 >> 63) + ((v1211 & ~v1213 | v1212) >> 63);
  v1215 = v1195 | v1213;
  v1216 = v1195 & v1213;
  v1217 = v1195 + v1213;
  v1218 = v1214 + ((v1215 & ~v1217 | v1216) >> 63);
  v1219 = v1218 | v1196;
  v1220 = v1218 + v1196;
  v1221 = HIDWORD(v1198);
  LODWORD(v1216) = v1198;
  v1222 = HIDWORD(v1201);
  LODWORD(v1211) = v1201;
  v1223 = v1201 * v1198;
  v1224 = v1201 * v1221;
  v1225 = HIDWORD(v1224) + v1222 * v1221;
  v1226 = v1223 | (v1224 << 32);
  v1227 = v1223 & (v1224 << 32);
  v1228 = (v1224 << 32) + v1211 * v1216;
  v1229 = v1226 & ~v1228 | v1227;
  v1230 = v1222 * v1216;
  v1231 = v1228 | (v1230 << 32);
  v1232 = v1228 & (v1230 << 32);
  v1233 = v1228 + (v1230 << 32);
  v1234 = v1225 + HIDWORD(v1230) + (v1229 >> 63) + ((v1231 & ~v1233 | v1232) >> 63);
  v1235 = v1217 + v1233;
  v1236 = v1234 + (((v1217 | v1233) & ~(v1217 + v1233) | v1217 & v1233) >> 63);
  v1237 = v1236 | v1220;
  v1238 = v1236 & v1220;
  v1239 = v1236 + v1220;
  v1240 = ((v1237 & ~v1239 | v1238) >> 63) + ((v1219 & ~v1220) >> 63);
  v1241 = a2[6];
  v1242 = a2[7];
  v1243 = HIDWORD(v1241);
  LODWORD(v1231) = v1241;
  v1245 = a3[4];
  v1244 = a3[5];
  v1246 = HIDWORD(v1244);
  LODWORD(v1226) = v1244;
  v1247 = v1244 * v1241;
  v1248 = v1244 * v1243;
  v1249 = HIDWORD(v1248) + v1246 * v1243;
  v1250 = v1247 | (v1248 << 32);
  v1251 = v1247 & (v1248 << 32);
  v1252 = (v1248 << 32) + v1226 * v1231;
  v1253 = v1250 & ~v1252 | v1251;
  v1254 = v1246 * v1231;
  v1255 = v1252 | (v1254 << 32);
  v1256 = v1252 & (v1254 << 32);
  v1257 = v1252 + (v1254 << 32);
  v1258 = v1249 + HIDWORD(v1254) + (v1253 >> 63) + ((v1255 & ~v1257 | v1256) >> 63);
  v1259 = v1235 | v1257;
  v1260 = v1235 & v1257;
  v1261 = v1235 + v1257;
  v1262 = v1258 + ((v1259 & ~v1261 | v1260) >> 63);
  v1263 = v1262 | v1239;
  v1264 = v1262 & v1239;
  v1265 = v1262 + v1239;
  v1266 = v1240 + ((v1263 & ~v1265 | v1264) >> 63);
  v1267 = HIDWORD(v1242);
  LODWORD(v1263) = v1242;
  v1268 = HIDWORD(v1245);
  LODWORD(v1257) = v1245;
  v1269 = v1245 * v1242;
  v1270 = v1245 * v1267;
  v1271 = HIDWORD(v1270) + v1268 * v1267;
  v1272 = (v1270 << 32) + v1257 * v1263;
  v1273 = (v1269 | (v1270 << 32)) & ~v1272 | v1269 & (v1270 << 32);
  v1274 = v1268 * v1263;
  v1275 = v1272 | (v1274 << 32);
  v1276 = v1272 & (v1274 << 32);
  v1277 = v1272 + (v1274 << 32);
  v1278 = v1271 + HIDWORD(v1274) + (v1273 >> 63) + ((v1275 & ~v1277 | v1276) >> 63);
  v1279 = v1277 + v1261;
  v1280 = v1278 + (((v1277 | v1261) & ~(v1277 + v1261) | v1277 & v1261) >> 63);
  v1281 = v1280 + v1265;
  v1282 = v1266 + (((v1280 | v1265) & ~(v1280 + v1265) | v1280 & v1265) >> 63);
  result[11] = v1279;
  v1283 = a2[7];
  v1284 = HIDWORD(v1283);
  LODWORD(v1274) = v1283;
  v1286 = a3[5];
  v1285 = a3[6];
  v1287 = HIDWORD(v1286);
  LODWORD(v1276) = v1286;
  v1288 = v1286 * v1283;
  v1289 = v1286 * v1284;
  v1290 = HIDWORD(v1289) + v1287 * v1284;
  v1291 = v1288 | (v1289 << 32);
  v1292 = v1288 & (v1289 << 32);
  v1293 = (v1289 << 32) + v1276 * v1274;
  v1294 = v1291 & ~v1293 | v1292;
  v1295 = v1287 * v1274;
  v1296 = v1293 | (v1295 << 32);
  v1297 = v1293 & (v1295 << 32);
  v1298 = v1293 + (v1295 << 32);
  v1299 = v1290 + HIDWORD(v1295) + (v1294 >> 63) + ((v1296 & ~v1298 | v1297) >> 63);
  v1300 = v1281 + v1298;
  v1301 = v1299 + (((v1281 | v1298) & ~(v1281 + v1298) | v1281 & v1298) >> 63);
  v1302 = v1301 | v1282;
  v1303 = v1301 + v1282;
  v1304 = v1302 & ~v1303;
  v1306 = a2[5];
  v1305 = a2[6];
  v1307 = HIDWORD(v1305);
  LODWORD(v1296) = v1305;
  v1308 = HIDWORD(v1285);
  LODWORD(v1255) = v1285;
  v1309 = v1285 * v1305;
  v1310 = v1255 * HIDWORD(v1305);
  v1311 = HIDWORD(v1310) + v1308 * v1307;
  v1312 = v1309 | (v1310 << 32);
  v1313 = v1309 & (v1310 << 32);
  v1314 = (v1310 << 32) + v1255 * v1296;
  v1315 = v1312 & ~v1314 | v1313;
  v1316 = v1308 * v1296;
  v1317 = v1314 | (v1316 << 32);
  v1318 = v1314 & (v1316 << 32);
  v1319 = v1314 + (v1316 << 32);
  v1320 = v1311 + HIDWORD(v1316) + (v1315 >> 63) + ((v1317 & ~v1319 | v1318) >> 63);
  v1321 = v1300 | v1319;
  v1322 = v1300 & v1319;
  v1323 = v1300 + v1319;
  v1324 = v1320 + ((v1321 & ~v1323 | v1322) >> 63);
  v1325 = v1324 | v1303;
  v1326 = v1324 & v1303;
  v1327 = v1324 + v1303;
  v1328 = ((v1325 & ~v1327 | v1326) >> 63) + (v1304 >> 63);
  v1329 = a3[7];
  v1330 = HIDWORD(v1306);
  LODWORD(v1326) = v1306;
  v1331 = HIDWORD(v1329);
  LODWORD(v1317) = v1329;
  v1332 = v1329 * v1306;
  v1333 = v1317 * HIDWORD(v1306);
  v1334 = HIDWORD(v1333) + v1331 * v1330;
  v1335 = v1332 | (v1333 << 32);
  v1336 = v1332 & (v1333 << 32);
  v1337 = (v1333 << 32) + v1317 * v1326;
  v1338 = v1335 & ~v1337 | v1336;
  v1339 = v1331 * v1326;
  v1340 = v1337 | (v1339 << 32);
  v1341 = v1337 & (v1339 << 32);
  v1342 = v1337 + (v1339 << 32);
  v1343 = v1334 + HIDWORD(v1339) + (v1338 >> 63) + ((v1340 & ~v1342 | v1341) >> 63);
  v1344 = v1323 | v1342;
  v1345 = v1323 & v1342;
  v1346 = v1323 + v1342;
  v1347 = v1343 + ((v1344 & ~v1346 | v1345) >> 63);
  v1348 = v1347 | v1327;
  v1349 = v1347 & v1327;
  v1350 = v1347 + v1327;
  v1351 = v1328 + ((v1348 & ~v1350 | v1349) >> 63);
  result[12] = v1346;
  v1352 = a2[6];
  v1353 = a2[7];
  v1354 = HIDWORD(v1352);
  LODWORD(v1349) = v1352;
  v1356 = a3[6];
  v1355 = a3[7];
  v1357 = HIDWORD(v1355);
  LODWORD(v1318) = v1355;
  v1358 = v1355 * v1352;
  v1359 = v1355 * v1354;
  v1360 = HIDWORD(v1359) + v1357 * v1354;
  v1361 = v1358 | (v1359 << 32);
  v1362 = v1358 & (v1359 << 32);
  v1363 = (v1359 << 32) + v1318 * v1349;
  v1364 = v1361 & ~v1363 | v1362;
  v1365 = v1357 * v1349;
  v1366 = v1363 | (v1365 << 32);
  v1367 = v1363 & (v1365 << 32);
  v1368 = v1363 + (v1365 << 32);
  v1369 = v1360 + HIDWORD(v1365) + (v1364 >> 63) + ((v1366 & ~v1368 | v1367) >> 63);
  v1370 = v1350 | v1368;
  v1371 = v1350 & v1368;
  v1372 = v1350 + v1368;
  v1373 = v1369 + ((v1370 & ~v1372 | v1371) >> 63);
  v1374 = v1351 + v1373;
  v1375 = v1373 & ~(v1351 + v1373);
  v1376 = HIDWORD(v1353);
  LODWORD(v1371) = v1353;
  v1377 = HIDWORD(v1356);
  LODWORD(v1366) = v1356;
  v1378 = v1356 * v1353;
  v1379 = v1356 * v1376;
  v1380 = HIDWORD(v1379) + v1377 * v1376;
  v1381 = v1378 | (v1379 << 32);
  v1382 = v1378 & (v1379 << 32);
  v1383 = (v1379 << 32) + v1366 * v1371;
  v1384 = v1381 & ~v1383 | v1382;
  v1385 = v1377 * v1371;
  v1386 = v1383 | (v1385 << 32);
  v1387 = v1383 & (v1385 << 32);
  v1388 = v1383 + (v1385 << 32);
  v1389 = v1380 + HIDWORD(v1385) + (v1384 >> 63) + ((v1386 & ~v1388 | v1387) >> 63);
  v1390 = v1372 | v1388;
  v1391 = v1372 & v1388;
  v1392 = v1372 + v1388;
  v1393 = v1389 + ((v1390 & ~v1392 | v1391) >> 63);
  v1394 = v1393 | v1374;
  v1395 = v1393 & v1374;
  v1396 = v1393 + v1374;
  v1397 = v1394 & ~v1396 | v1395;
  result[13] = v1392;
  v1398 = a2[7];
  v1399 = a3[7];
  v1400 = HIDWORD(v1398);
  LODWORD(v1386) = v1398;
  v1401 = HIDWORD(v1399);
  LODWORD(v1387) = v1399;
  v1402 = v1399 * v1398;
  v1403 = v1399 * v1400;
  v1404 = HIDWORD(v1403) + v1401 * v1400;
  v1405 = v1402 | (v1403 << 32);
  v1406 = v1402 & (v1403 << 32);
  v1407 = (v1403 << 32) + v1387 * v1386;
  v1408 = v1405 & ~v1407 | v1406;
  v1409 = v1401 * v1386;
  v1410 = v1407 | (v1409 << 32);
  v1411 = v1407 & (v1409 << 32);
  v1412 = v1407 + (v1409 << 32);
  v1413 = v1404 + HIDWORD(v1409) + (v1408 >> 63) + ((v1410 & ~v1412 | v1411) >> 63);
  v1414 = v1396 | v1412;
  v1415 = v1396 & v1412;
  v1416 = v1396 + v1412;
  result[14] = v1416;
  result[15] = v1413 + (v1375 >> 63) + (v1397 >> 63) + ((v1414 & ~v1416 | v1415) >> 63);
  return result;
}

unint64_t bn_mul_words(unint64_t *rp, const unint64_t *ap, int num, unint64_t w)
{
  if (num < 0)
  {
    bn_mul_words_cold_1();
  }

  if (!num)
  {
    return 0;
  }

  if (num < 4)
  {
    v4 = 0;
    do
    {
LABEL_9:
      v72 = *ap++;
      v73 = v72 * w;
      v74 = HIDWORD(v72) * w;
      v75 = HIDWORD(v74) + HIDWORD(v72) * HIDWORD(w);
      v76 = v73 | (v74 << 32);
      v77 = v73 & (v74 << 32);
      v78 = (v74 << 32) + v72 * w;
      v79 = v76 & ~v78 | v77;
      v80 = v72 * HIDWORD(w);
      v81 = v78 | (v80 << 32);
      v82 = v78 & (v80 << 32);
      v83 = v78 + (v80 << 32);
      v84 = v75 + HIDWORD(v80) + (v79 >> 63) + ((v81 & ~v83 | v82) >> 63);
      v85 = v83 | v4;
      v86 = v83 & v4;
      v87 = v83 + v4;
      v4 = v84 + ((v85 & ~v87 | v86) >> 63);
      *rp++ = v87;
      --num;
    }

    while (num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = HIDWORD(*ap);
    v6 = *ap * w;
    v7 = v5 * w;
    v8 = HIDWORD(v7) + v5 * HIDWORD(w);
    v9 = v6 | (v7 << 32);
    v10 = v6 & (v7 << 32);
    v11 = (v7 << 32) + *ap * w;
    v12 = v9 & ~v11 | v10;
    v13 = *ap * HIDWORD(w);
    v14 = v11 | (v13 << 32);
    v15 = v11 & (v13 << 32);
    v16 = v11 + (v13 << 32);
    v17 = v8 + HIDWORD(v13) + (v12 >> 63) + ((v14 & ~v16 | v15) >> 63);
    v18 = v16 | v4;
    v19 = v16 & v4;
    v20 = v16 + v4;
    v21 = v17 + ((v18 & ~v20 | v19) >> 63);
    *rp = v20;
    v22 = ap[1];
    v23 = v22 * w;
    v24 = HIDWORD(v22) * w;
    v25 = HIDWORD(v24) + HIDWORD(v22) * HIDWORD(w);
    v26 = v23 | (v24 << 32);
    v27 = v23 & (v24 << 32);
    v28 = (v24 << 32) + v22 * w;
    v29 = v26 & ~v28 | v27;
    v30 = v22 * HIDWORD(w);
    v31 = v28 | (v30 << 32);
    v32 = v28 & (v30 << 32);
    v33 = v28 + (v30 << 32);
    v34 = v25 + HIDWORD(v30) + (v29 >> 63) + ((v31 & ~v33 | v32) >> 63);
    v35 = v21 | v33;
    v36 = v21 & v33;
    v37 = v21 + v33;
    v38 = v34 + ((v35 & ~v37 | v36) >> 63);
    rp[1] = v37;
    v39 = ap[2];
    v40 = v39 * w;
    v41 = HIDWORD(v39) * w;
    v42 = HIDWORD(v41) + HIDWORD(v39) * HIDWORD(w);
    v43 = v40 | (v41 << 32);
    v44 = v40 & (v41 << 32);
    v45 = (v41 << 32) + v39 * w;
    v46 = v43 & ~v45 | v44;
    v47 = v39 * HIDWORD(w);
    v48 = v45 | (v47 << 32);
    v49 = v45 & (v47 << 32);
    v50 = v45 + (v47 << 32);
    v51 = v42 + HIDWORD(v47) + (v46 >> 63) + ((v48 & ~v50 | v49) >> 63);
    v52 = v38 | v50;
    v53 = v38 & v50;
    v54 = v38 + v50;
    v55 = v51 + ((v52 & ~v54 | v53) >> 63);
    rp[2] = v54;
    v56 = ap[3];
    v57 = v56 * w;
    v58 = HIDWORD(v56) * w;
    v59 = HIDWORD(v58) + HIDWORD(v56) * HIDWORD(w);
    v60 = v57 | (v58 << 32);
    v61 = v57 & (v58 << 32);
    v62 = (v58 << 32) + v56 * w;
    v63 = v60 & ~v62 | v61;
    v64 = v56 * HIDWORD(w);
    v65 = v62 | (v64 << 32);
    v66 = v62 & (v64 << 32);
    v67 = v62 + (v64 << 32);
    v68 = v59 + HIDWORD(v64) + (v63 >> 63) + ((v65 & ~v67 | v66) >> 63);
    v69 = v55 | v67;
    v70 = v55 & v67;
    v71 = v55 + v67;
    v4 = v68 + ((v69 & ~v71 | v70) >> 63);
    rp[3] = v71;
    ap += 4;
    rp += 4;
    num -= 4;
  }

  while (num >= 4);
  if (num)
  {
    goto LABEL_9;
  }

  return v4;
}

unint64_t bn_mul_add_words(unint64_t *rp, const unint64_t *ap, int num, unint64_t w)
{
  if (num < 0)
  {
    bn_mul_add_words_cold_1();
  }

  if (!num)
  {
    return 0;
  }

  if (num < 4)
  {
    v4 = 0;
    do
    {
LABEL_9:
      v89 = *ap++;
      v90 = v89 * w;
      v91 = HIDWORD(v89) * w;
      v92 = HIDWORD(v91) + HIDWORD(v89) * HIDWORD(w);
      v93 = v90 | (v91 << 32);
      v94 = v90 & (v91 << 32);
      v95 = (v91 << 32) + v89 * w;
      v96 = v93 & ~v95 | v94;
      v97 = v89 * HIDWORD(w);
      v98 = v95 | (v97 << 32);
      v99 = v95 & (v97 << 32);
      v100 = v95 + (v97 << 32);
      v101 = v100 + *rp;
      v102 = v92 + HIDWORD(v97) + (v96 >> 63) + ((v98 & ~v100 | v99) >> 63) + (((v100 | *rp) & ~v101 | v100 & *rp) >> 63);
      v103 = v101 | v4;
      v104 = v101 & v4;
      v105 = v101 + v4;
      v4 = v102 + ((v103 & ~v105 | v104) >> 63);
      *rp++ = v105;
      --num;
    }

    while (num);
    return v4;
  }

  v4 = 0;
  do
  {
    v5 = HIDWORD(*ap);
    v6 = *ap * w;
    v7 = v5 * w;
    v8 = HIDWORD(v7) + v5 * HIDWORD(w);
    v9 = v6 | (v7 << 32);
    v10 = v6 & (v7 << 32);
    v11 = (v7 << 32) + *ap * w;
    v12 = v9 & ~v11 | v10;
    v13 = *ap * HIDWORD(w);
    v14 = v11 | (v13 << 32);
    v15 = v11 & (v13 << 32);
    v16 = v11 + (v13 << 32);
    v17 = v8 + HIDWORD(v13) + (v12 >> 63) + ((v14 & ~v16 | v15) >> 63);
    v18 = rp[1];
    v19 = v16 + *rp;
    v20 = v17 + (((v16 | *rp) & ~v19 | v16 & *rp) >> 63);
    v21 = v19 | v4;
    v22 = v19 & v4;
    v23 = v19 + v4;
    v24 = v20 + ((v21 & ~v23 | v22) >> 63);
    *rp = v23;
    v25 = ap[1];
    v26 = v25 * w;
    v27 = HIDWORD(v25) * w;
    v28 = HIDWORD(v27) + HIDWORD(v25) * HIDWORD(w);
    v29 = v26 | (v27 << 32);
    v30 = v26 & (v27 << 32);
    v31 = (v27 << 32) + v25 * w;
    v32 = v29 & ~v31 | v30;
    v33 = v25 * HIDWORD(w);
    v34 = v31 | (v33 << 32);
    v35 = v31 & (v33 << 32);
    v36 = v31 + (v33 << 32);
    v37 = v28 + HIDWORD(v33) + (v32 >> 63) + ((v34 & ~v36 | v35) >> 63);
    v38 = v36 | v18;
    v39 = v36 & v18;
    v40 = v36 + v18;
    v41 = v37 + ((v38 & ~v40 | v39) >> 63);
    v42 = v24 | v40;
    v43 = v24 & v40;
    v44 = v24 + v40;
    v45 = v41 + ((v42 & ~v44 | v43) >> 63);
    rp[1] = v44;
    v46 = ap[2];
    v47 = v46 * w;
    v48 = HIDWORD(v46) * w;
    v49 = HIDWORD(v48) + HIDWORD(v46) * HIDWORD(w);
    v50 = v47 | (v48 << 32);
    v51 = v47 & (v48 << 32);
    v52 = (v48 << 32) + v46 * w;
    v53 = v50 & ~v52 | v51;
    v54 = v46 * HIDWORD(w);
    v55 = v52 | (v54 << 32);
    v56 = v52 & (v54 << 32);
    v57 = v52 + (v54 << 32);
    v58 = v49 + HIDWORD(v54) + (v53 >> 63) + ((v55 & ~v57 | v56) >> 63);
    v59 = rp[2];
    v60 = rp[3];
    v61 = v57 | v59;
    v62 = v57 & v59;
    v63 = v57 + v59;
    v64 = v58 + ((v61 & ~v63 | v62) >> 63);
    v65 = v45 | v63;
    v66 = v45 & v63;
    v67 = v45 + v63;
    v68 = v64 + ((v65 & ~v67 | v66) >> 63);
    rp[2] = v67;
    v69 = ap[3];
    v70 = v69 * w;
    v71 = HIDWORD(v69) * w;
    v72 = HIDWORD(v71) + HIDWORD(v69) * HIDWORD(w);
    v73 = v70 | (v71 << 32);
    v74 = v70 & (v71 << 32);
    v75 = (v71 << 32) + v69 * w;
    v76 = v73 & ~v75 | v74;
    v77 = v69 * HIDWORD(w);
    v78 = v75 | (v77 << 32);
    v79 = v75 & (v77 << 32);
    v80 = v75 + (v77 << 32);
    v81 = v72 + HIDWORD(v77) + (v76 >> 63) + ((v78 & ~v80 | v79) >> 63);
    v82 = v80 | v60;
    v83 = v80 & v60;
    v84 = v80 + v60;
    v85 = v81 + ((v82 & ~v84 | v83) >> 63);
    v86 = v68 | v84;
    v87 = v68 & v84;
    v88 = v68 + v84;
    v4 = v85 + ((v86 & ~v88 | v87) >> 63);
    rp[3] = v88;
    ap += 4;
    rp += 4;
    num -= 4;
  }

  while (num >= 4);
  if (num)
  {
    goto LABEL_9;
  }

  return v4;
}

unint64_t bn_mul_normal(unint64_t *rp, unint64_t *a2, int a3, unint64_t *a4, int a5)
{
  if (a3 < a5)
  {
    v6 = a5;
  }

  else
  {
    v6 = a3;
  }

  if (a3 < a5)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  if (a3 < a5)
  {
    v8 = a3;
  }

  else
  {
    v8 = a5;
  }

  if (a3 < a5)
  {
    v9 = a4;
  }

  else
  {
    v9 = a2;
  }

  if (v8 <= 0)
  {

    return bn_mul_words(rp, v9, v6, 0);
  }

  else
  {
    v10 = &rp[v6];
    result = bn_mul_words(rp, v9, v6, *v7);
    *v10 = result;
    if (v8 != 1)
    {
      v12 = 0;
      v13 = v7 + 2;
      do
      {
        result = bn_mul_add_words(&rp[v12 + 1], v9, v6, v13[v12 - 1]);
        v10[v12 + 1] = result;
        if (v8 == 2)
        {
          break;
        }

        result = bn_mul_add_words(&rp[v12 + 2], v9, v6, v13[v12]);
        v10[v12 + 2] = result;
        if (v8 < 4)
        {
          break;
        }

        v14 = &v13[v12];
        result = bn_mul_add_words(&rp[v12 + 3], v9, v6, v13[v12 + 1]);
        v15 = &v10[v12];
        v10[v12 + 3] = result;
        v8 -= 4;
        if (!v8)
        {
          break;
        }

        v12 += 4;
        result = bn_mul_add_words(&rp[v12], v9, v6, v14[2]);
        v15[4] = result;
      }

      while (v8 > 1);
    }
  }

  return result;
}

int BN_mul(BIGNUM *r, const BIGNUM *a, const BIGNUM *b, BN_CTX *ctx)
{
  BN_CTX_start(ctx);
  if (!BN_is_zero(a) && !BN_is_zero(b))
  {
    if (r == a || (v10 = r, r == b))
    {
      v10 = BN_CTX_get(ctx);
    }

    if (!v10)
    {
      goto LABEL_20;
    }

    top = b->top;
    if (top < 0)
    {
      goto LABEL_20;
    }

    v12 = top + a->top;
    if (!bn_wexpand(v10, v12))
    {
      goto LABEL_20;
    }

    v13 = a->top;
    v14 = b->top;
    if (v13 == 8)
    {
      if (v14 == 8)
      {
        bn_mul_comba8(v10->d, a->d, b->d);
        goto LABEL_19;
      }
    }

    else if (v13 == 4 && v14 == 4)
    {
      bn_mul_comba4(v10->d, a->d, b->d);
      goto LABEL_19;
    }

    bn_mul_normal(v10->d, a->d, v13, b->d, v14);
LABEL_19:
    v10->top = v12;
    bn_correct_top(v10);
    BN_set_negative(v10, b->neg ^ a->neg);
    if (bn_copy(r, v10))
    {
      goto LABEL_4;
    }

LABEL_20:
    v8 = 0;
    goto LABEL_5;
  }

  BN_zero(r);
LABEL_4:
  v8 = 1;
LABEL_5:
  BN_CTX_end(ctx);
  return v8;
}

X509_VERIFY_PARAM *X509_VERIFY_PARAM_new(void)
{
  v0 = malloc_type_calloc(1uLL, 0x40uLL, 0x103004012F0C6E0uLL);
  if (v0)
  {
    v1 = malloc_type_calloc(1uLL, 0x40uLL, 0x10300402D538A19uLL);
    if (v1)
    {
      v0[1].name = v1;
      x509_verify_param_zero(v0);
    }

    else
    {
      free(v0);
      return 0;
    }
  }

  return v0;
}

void x509_verify_param_zero(uint64_t a1)
{
  free(*a1);
  *a1 = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  *(a1 + 40) = -1;
  v2 = *(a1 + 48);
  if (v2)
  {
    sk_pop_free(v2, ASN1_OBJECT_free);
    *(a1 + 48) = 0;
  }

  v3 = *(a1 + 56);
  if (*v3)
  {
    sk_pop_free(*v3, str_free);
    *v3 = 0;
  }

  free(*(v3 + 16));
  *(v3 + 16) = 0;
  free(*(v3 + 24));
  *(v3 + 24) = 0;
  *(v3 + 32) = 0;
  free(*(v3 + 40));
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
}

void X509_VERIFY_PARAM_free(X509_VERIFY_PARAM *param)
{
  if (param)
  {
    x509_verify_param_zero(param);
    free(param[1].name);

    free(param);
  }
}

int X509_VERIFY_PARAM_inherit(X509_VERIFY_PARAM *to, const X509_VERIFY_PARAM *from)
{
  if (!from)
  {
    return 1;
  }

  name = from[1].name;
  inh_flags = to->inh_flags;
  v6 = from->inh_flags;
  v7 = v6 | inh_flags;
  if (((v6 | inh_flags) & 0x10) != 0)
  {
    to->inh_flags = 0;
  }

  if (((v6 | inh_flags) & 8) != 0)
  {
    return 1;
  }

  purpose = from->purpose;
  if ((v7 & 2) != 0)
  {
    to->purpose = purpose;
    *&to->trust = *&from->trust;
    flags = to->flags;
LABEL_23:
    to->check_time = from->check_time;
    flags &= ~2uLL;
    to->flags = flags;
    goto LABEL_24;
  }

  if (purpose)
  {
    if ((v7 & 1) == 0 && to->purpose)
    {
      trust = from->trust;
      if (!trust)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    to->purpose = purpose;
  }

  trust = from->trust;
  if (!trust)
  {
    goto LABEL_18;
  }

  if (v7)
  {
LABEL_17:
    to->trust = trust;
    goto LABEL_18;
  }

LABEL_16:
  if (!to->trust)
  {
    goto LABEL_17;
  }

LABEL_18:
  depth = from->depth;
  if (depth != -1 && ((v7 & 1) != 0 || to->depth == -1))
  {
    to->depth = depth;
  }

  flags = to->flags;
  if ((flags & 2) == 0)
  {
    goto LABEL_23;
  }

LABEL_24:
  if ((v7 & 4) != 0)
  {
    flags = 0;
    to->flags = 0;
  }

  to->flags = flags | from->flags;
  policies = from->policies;
  if ((v7 & 2) != 0)
  {
    result = X509_VERIFY_PARAM_set1_policies(to, policies);
    if (!result)
    {
      return result;
    }

    v15 = to[1].name;
    *(v15 + 2) = *(name + 2);
    goto LABEL_47;
  }

  v14 = name;
  if (!policies)
  {
LABEL_36:
    if (!*(v14 + 2))
    {
      goto LABEL_42;
    }

    if (v7)
    {
      v16 = to[1].name;
LABEL_41:
      *(v16 + 2) = *(name + 2);
      goto LABEL_42;
    }

LABEL_38:
    v16 = to[1].name;
    if (*(v16 + 2))
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if ((v7 & 1) != 0 || !to->policies)
  {
    result = X509_VERIFY_PARAM_set1_policies(to, policies);
    if (!result)
    {
      return result;
    }

    v14 = from[1].name;
    goto LABEL_36;
  }

  v14 = name;
  if (*(name + 2))
  {
    goto LABEL_38;
  }

LABEL_42:
  if (!*v14)
  {
    goto LABEL_59;
  }

  v17 = to + 1;
  v15 = to[1].name;
  if ((v7 & 1) == 0)
  {
    if (*v15)
    {
      if (!*(v14 + 3))
      {
        goto LABEL_65;
      }

      goto LABEL_61;
    }

    goto LABEL_49;
  }

LABEL_47:
  v17 = to + 1;
  if (*v15)
  {
    sk_pop_free(*v15, str_free);
    v15 = v17->name;
    *v17->name = 0;
  }

LABEL_49:
  if (*name)
  {
    v18 = sk_dup(*name);
    if (!v18)
    {
LABEL_78:
      result = 0;
      *v17->name = 0;
      return result;
    }

    v19 = v18;
    num = v18->num;
    if (num)
    {
      v21 = 0;
      data = v18->data;
      while (1)
      {
        v23 = data[v21];
        if (v23)
        {
          data[v21] = strdup(v23);
          data = v19->data;
          if (!data[v21])
          {
            break;
          }
        }

        if (num == ++v21)
        {
          goto LABEL_56;
        }
      }

      if (v21)
      {
        for (i = 0; i != v21; ++i)
        {
          v25 = v19->data[i];
          if (v25)
          {
            free(v25);
          }
        }
      }

      sk_free(v19);
      goto LABEL_78;
    }

LABEL_56:
    v15 = v17->name;
    *v17->name = v19;
  }

  if ((v7 & 2) != 0)
  {
LABEL_62:
    result = x509_param_set1_internal(v15 + 3, v15 + 4, *(name + 3), *(name + 4), 1);
    if (!result)
    {
      *(to[1].name + 14) = 1;
      return result;
    }

    if ((v7 & 2) != 0)
    {
LABEL_68:
      result = X509_VERIFY_PARAM_set1_ip(to, *(name + 5), *(name + 6));
      if (!result)
      {
        return result;
      }

      return 1;
    }

    v14 = from[1].name;
    goto LABEL_65;
  }

  v14 = from[1].name;
LABEL_59:
  if (!*(v14 + 3))
  {
    goto LABEL_65;
  }

  v15 = to[1].name;
  if (v7)
  {
    goto LABEL_62;
  }

LABEL_61:
  if (!*(v15 + 3))
  {
    goto LABEL_62;
  }

LABEL_65:
  if (*(v14 + 5) && ((v7 & 1) != 0 || !*(to[1].name + 5)))
  {
    goto LABEL_68;
  }

  return 1;
}

int X509_VERIFY_PARAM_set1_policies(X509_VERIFY_PARAM *param, STACK *policies)
{
  if (!param)
  {
    return param;
  }

  v3 = param;
  v4 = param->policies;
  if (v4)
  {
    sk_pop_free(v4, ASN1_OBJECT_free);
  }

  if (!policies)
  {
    v3->policies = 0;
    goto LABEL_13;
  }

  param = sk_new_null();
  v3->policies = param;
  if (!param)
  {
    return param;
  }

  if (sk_num(policies) < 1)
  {
LABEL_13:
    LODWORD(param) = 1;
    return param;
  }

  v5 = 0;
  while (1)
  {
    v6 = sk_value(policies, v5);
    param = OBJ_dup(v6);
    if (!param)
    {
      return param;
    }

    v7 = param;
    if (!sk_push(v3->policies, param))
    {
      ASN1_OBJECT_free(v7);
      LODWORD(param) = 0;
      return param;
    }

    if (++v5 >= sk_num(policies))
    {
      goto LABEL_13;
    }
  }
}

uint64_t X509_VERIFY_PARAM_set1_email(uint64_t a1, char *__s, size_t __n)
{
  v4 = 1;
  if (!x509_param_set1_internal((*(a1 + 56) + 24), (*(a1 + 56) + 32), __s, __n, 1))
  {
    *(*(a1 + 56) + 56) = 1;
    return 0;
  }

  return v4;
}

uint64_t X509_VERIFY_PARAM_set1_ip(uint64_t a1, char *__s, size_t __n)
{
  if ((__n == 16 || __n == 4) && x509_param_set1_internal((*(a1 + 56) + 40), (*(a1 + 56) + 48), __s, __n, 0))
  {
    return 1;
  }

  result = 0;
  *(*(a1 + 56) + 56) = 1;
  return result;
}

int X509_VERIFY_PARAM_set1(X509_VERIFY_PARAM *to, const X509_VERIFY_PARAM *from)
{
  inh_flags = to->inh_flags;
  to->inh_flags = inh_flags | 1;
  result = X509_VERIFY_PARAM_inherit(to, from);
  to->inh_flags = inh_flags;
  return result;
}

int X509_VERIFY_PARAM_set1_name(X509_VERIFY_PARAM *param, const char *name)
{
  free(param->name);
  param->name = 0;
  if (!name)
  {
    return 1;
  }

  v4 = strdup(name);
  param->name = v4;
  return v4 != 0;
}

int X509_VERIFY_PARAM_add0_policy(X509_VERIFY_PARAM *param, ASN1_OBJECT *policy)
{
  policies = param->policies;
  if (policies || (policies = sk_new_null(), (param->policies = policies) != 0))
  {
    LODWORD(policies) = sk_push(policies, policy) != 0;
  }

  return policies;
}

uint64_t X509_VERIFY_PARAM_set1_host(uint64_t a1, char *__s1, size_t __n)
{
  v4 = x509_param_set_hosts_internal(*(a1 + 56), 0, __s1, __n);
  result = 1;
  if (!v4)
  {
    *(*(a1 + 56) + 56) = 1;
    return 0;
  }

  return result;
}

uint64_t x509_param_set_hosts_internal(STACK **a1, int a2, char *__s1, size_t __n)
{
  v4 = __n;
  if (!__s1 || __n)
  {
    if (!__s1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v4 = strlen(__s1);
  }

  if (memchr(__s1, 0, v4))
  {
    return 0;
  }

LABEL_8:
  if (!a2 && *a1)
  {
    sk_pop_free(*a1, str_free);
    *a1 = 0;
  }

  result = 1;
  if (__s1)
  {
    if (v4)
    {
      result = strndup(__s1, v4);
      if (result)
      {
        v9 = result;
        v10 = *a1;
        if (*a1 || (v10 = sk_new_null(), (*a1 = v10) != 0))
        {
          if (sk_push(v10, v9))
          {
            return 1;
          }

          free(v9);
          if (!sk_num(*a1))
          {
            sk_free(*a1);
            result = 0;
            *a1 = 0;
            return result;
          }
        }

        else
        {
          free(v9);
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t X509_VERIFY_PARAM_add1_host(uint64_t a1, char *__s1, size_t __n)
{
  v4 = 1;
  if (!x509_param_set_hosts_internal(*(a1 + 56), 1, __s1, __n))
  {
    *(*(a1 + 56) + 56) = 1;
    return 0;
  }

  return v4;
}

uint64_t x509_param_set1_internal(void **a1, size_t *a2, char *__s, size_t __n, int a5)
{
  if (!__s)
  {
    return 0;
  }

  v5 = __n;
  if (!__n)
  {
    result = strlen(__s);
    if (!result)
    {
      return result;
    }

    v5 = result;
    result = strdup(__s);
    if (!result)
    {
      return result;
    }

    v10 = result;
    goto LABEL_12;
  }

  if (a5 && memchr(__s, 0, __n))
  {
    return 0;
  }

  result = malloc_type_malloc(v5, 0x618D4D6DuLL);
  if (result)
  {
    v10 = result;
    memcpy(result, __s, v5);
LABEL_12:
    if (*a1)
    {
      free(*a1);
    }

    *a1 = v10;
    if (a2)
    {
      *a2 = v5;
    }

    return 1;
  }

  return result;
}

uint64_t X509_VERIFY_PARAM_set1_ip_asc(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2i_ipadd(ipout, a2);
  result = X509_VERIFY_PARAM_set1_ip(a1, ipout, v3);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

int X509_VERIFY_PARAM_add0_table(X509_VERIFY_PARAM *param)
{
  if (param_table)
  {
    v2 = sk_find(param_table, param);
    v3 = param_table;
    if (v2 != -1)
    {
      v4 = sk_value(param_table, v2);
      X509_VERIFY_PARAM_free(v4);
      sk_delete(param_table, v2);
      v3 = param_table;
    }

    goto LABEL_5;
  }

  v3 = sk_new(param_cmp);
  param_table = v3;
  if (v3)
  {
LABEL_5:
    LODWORD(v3) = sk_push(v3, param) != 0;
  }

  return v3;
}

uint64_t X509_VERIFY_PARAM_get_count()
{
  if (param_table)
  {
    return (sk_num(param_table) + 5);
  }

  else
  {
    return 5;
  }
}

char *X509_VERIFY_PARAM_get0(int a1)
{
  if (a1 > 4)
  {
    return sk_value(param_table, a1 - 5);
  }

  else
  {
    return &(&default_table)[8 * a1];
  }
}

const X509_VERIFY_PARAM *__cdecl X509_VERIFY_PARAM_lookup(const char *name)
{
  v10 = 0;
  v9 = 0u;
  v8 = 0u;
  v7 = 0u;
  v6 = name;
  if (param_table)
  {
    v2 = sk_find(param_table, &v6);
    if (v2 != -1)
    {
      return sk_value(param_table, v2);
    }
  }

  v3 = &default_table;
  v4 = 5;
  while (strcmp(v3->name, name))
  {
    v3 = (v3 + 64);
    if (!--v4)
    {
      return 0;
    }
  }

  return v3;
}

void X509_VERIFY_PARAM_table_cleanup(void)
{
  if (param_table)
  {
    sk_pop_free(param_table, X509_VERIFY_PARAM_free);
  }

  param_table = 0;
}

int X509_CERT_AUX_print(BIO *bp, X509_CERT_AUX *x, int indent)
{
  v21 = *MEMORY[0x277D85DE8];
  if (x)
  {
    if (x->trust)
    {
      BIO_printf(bp, "%*sTrusted Uses:\n%*s", indent, "", indent + 2, "");
      if (sk_num(x->trust) >= 1)
      {
        v6 = 0;
        v7 = 0;
        do
        {
          if (v7)
          {
            BIO_puts(bp, ", ");
          }

          v8 = sk_value(x->trust, v6);
          OBJ_obj2txt(buf, 80, v8, 0);
          BIO_puts(bp, buf);
          ++v6;
          v9 = sk_num(x->trust);
          v7 = 1;
        }

        while (v6 < v9);
      }

      BIO_puts(bp, "\n");
    }

    else
    {
      BIO_printf(bp, "%*sNo Trusted Uses.\n", indent, "");
    }

    if (x->reject)
    {
      BIO_printf(bp, "%*sRejected Uses:\n%*s", indent, "", indent + 2, "");
      if (sk_num(x->reject) >= 1)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (v11)
          {
            BIO_puts(bp, ", ");
          }

          v12 = sk_value(x->reject, v10);
          OBJ_obj2txt(buf, 80, v12, 0);
          BIO_puts(bp, buf);
          ++v10;
          v13 = sk_num(x->reject);
          v11 = 1;
        }

        while (v10 < v13);
      }

      BIO_puts(bp, "\n");
    }

    else
    {
      BIO_printf(bp, "%*sNo Rejected Uses.\n", indent, "");
    }

    alias = x->alias;
    if (alias)
    {
      BIO_printf(bp, "%*sAlias: %.*s\n", indent, "", alias->length, alias->data);
    }

    if (x->keyid)
    {
      BIO_printf(bp, "%*sKey Id: ", indent, "");
      keyid = x->keyid;
      if (keyid->length >= 1)
      {
        v16 = 0;
        do
        {
          if (v16)
          {
            v17 = ":";
          }

          else
          {
            v17 = "";
          }

          BIO_printf(bp, "%s%02X", v17, keyid->data[v16++]);
          keyid = x->keyid;
        }

        while (v16 < keyid->length);
      }

      BIO_write(bp, "\n", 1);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return 1;
}

int RSA_padding_add_PKCS1_type_1(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  if (tlen - 11 >= fl)
  {
    *to = 256;
    v7 = to + 2;
    v8 = tlen - fl - 3;
    memset(to + 2, 255, v8);
    v9 = &v7[v8];
    *v9 = 0;
    memcpy(v9 + 1, f, fl);
    return 1;
  }

  else
  {
    ERR_put_error(4, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pk1.c", 75);
    return 0;
  }
}

int RSA_padding_check_PKCS1_type_1(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl, int rsa_len)
{
  if (fl + 1 != rsa_len || *f != 1)
  {
    v8 = 106;
    v9 = 103;
    goto LABEL_9;
  }

  v5 = fl - 2;
  if (fl < 2)
  {
    if (fl != 1)
    {
LABEL_12:
      v8 = 103;
      v9 = 129;
      goto LABEL_9;
    }

LABEL_18:
    v8 = 113;
    v9 = 124;
    goto LABEL_9;
  }

  v6 = f + 2;
  v7 = 1;
  while (*(v6 - 1) == 255)
  {
    ++v6;
    ++v7;
    if (--v5 == -1)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 - 1))
  {
    v8 = 102;
    v9 = 116;
    goto LABEL_9;
  }

  if (v5 == -1)
  {
    goto LABEL_18;
  }

  if ((v7 - 1) <= 7)
  {
    goto LABEL_12;
  }

  if (v5 <= tlen)
  {
    memcpy(to, v6, v5);
    return v5;
  }

  v8 = 109;
  v9 = 135;
LABEL_9:
  ERR_put_error(4, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pk1.c", v9);
  return -1;
}

int RSA_padding_add_PKCS1_type_2(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl)
{
  if (tlen - 11 >= fl)
  {
    *to = 512;
    v7 = to + 2;
    v8 = tlen - fl - 3;
    arc4random_buf(to + 2, v8);
    if (v8 >= 1)
    {
      for (i = 0; i != v8; ++i)
      {
        while (!*v7)
        {
          arc4random_buf(v7, 1uLL);
        }

        ++v7;
      }
    }

    *v7 = 0;
    memcpy(v7 + 1, f, fl);
    return 1;
  }

  else
  {
    ERR_put_error(4, 4095, 110, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pk1.c", 151);
    return 0;
  }
}

int RSA_padding_check_PKCS1_type_2(unsigned __int8 *to, int tlen, const unsigned __int8 *f, int fl, int rsa_len)
{
  if (fl + 1 != rsa_len || *f != 2)
  {
    v8 = 107;
    v9 = 185;
    goto LABEL_9;
  }

  v5 = fl - 2;
  if (fl < 2)
  {
    if (fl != 1)
    {
LABEL_15:
      v8 = 103;
      v9 = 201;
      goto LABEL_9;
    }

LABEL_16:
    v8 = 113;
    v9 = 196;
    goto LABEL_9;
  }

  v6 = f + 2;
  v7 = 1;
  while (*(v6 - 1))
  {
    ++v6;
    ++v7;
    if (--v5 == -1)
    {
      goto LABEL_16;
    }
  }

  if (v5 == -1)
  {
    goto LABEL_16;
  }

  if ((v7 - 1) <= 7)
  {
    goto LABEL_15;
  }

  if (v5 <= tlen)
  {
    memcpy(to, v6, v5);
    return v5;
  }

  v8 = 109;
  v9 = 207;
LABEL_9:
  ERR_put_error(4, 4095, v8, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/rsa/rsa_pk1.c", v9);
  return -1;
}

uint64_t mac_ctrl_gost(uint64_t a1, int a2, uint64_t a3, _DWORD *a4)
{
  if (a2 != 3)
  {
    return 4294967294;
  }

  *a4 = 815;
  return 2;
}

uint64_t ASN1_bn_print(BIO *a1, const char *a2, const BIGNUM *a3, unsigned __int8 *a4, int a5)
{
  if (!a3)
  {
    return 1;
  }

  if (BN_is_negative(a3))
  {
    v10 = "-";
  }

  else
  {
    v10 = "";
  }

  result = BIO_indent(a1, a5, 128);
  if (result)
  {
    if (BN_is_zero(a3))
    {
      return BIO_printf(a1, "%s 0\n", a2) > 0;
    }

    if (BN_num_bits(a3) > 64)
    {
      *a4 = 0;
      if (*v10 == 45)
      {
        v13 = " (Negative)";
      }

      else
      {
        v13 = "";
      }

      if (BIO_printf(a1, "%s%s", a2, v13) < 1)
      {
        return 0;
      }

      v14 = BN_bn2bin(a3, a4 + 1);
      v15 = 0;
      v16 = 0;
      v17 = a4[1];
      if ((v17 & 0x80u) != 0)
      {
        v18 = a4;
      }

      else
      {
        v18 = a4 + 1;
      }

      v19 = v14 + (v17 >> 7);
      v20 = v19 & ~(v19 >> 31);
      v21 = v19 - 1;
      while (v20)
      {
        if (v16 - v15 / 0xF + 16 * (v15 / 0xF))
        {
          goto LABEL_34;
        }

        if (BIO_puts(a1, "\n") < 1)
        {
          return 0;
        }

        result = BIO_indent(a1, a5 + 4, 128);
        if (result)
        {
LABEL_34:
          v23 = *v18++;
          v22 = v23;
          v24 = ":";
          if (!v21)
          {
            v24 = "";
          }

          v25 = BIO_printf(a1, "%02x%s", v22, v24);
          result = 0;
          --v20;
          --v16;
          ++v15;
          --v21;
          if (v25 >= 1)
          {
            continue;
          }
        }

        return result;
      }

      v12 = BIO_write(a1, "\n", 1);
    }

    else
    {
      v12 = BIO_printf(a1, "%s %s%lu (%s0x%lx)\n", a2, v10, *a3->d, v10, *a3->d);
    }

    return v12 >= 1;
  }

  return result;
}

uint64_t ASN1_buf_print(BIO *b, uint64_t a2, uint64_t a3, int indent)
{
  if (!a3)
  {
    return BIO_write(b, "\n", 1) > 0;
  }

  v6 = a3;
  for (i = 0; ; ++i)
  {
    if (15 * (i / 0xF) == i)
    {
      if (i && BIO_puts(b, "\n") < 1)
      {
        return 0;
      }

      result = BIO_indent(b, indent, 64);
      if (!result)
      {
        return result;
      }
    }

    v10 = *(a2 + i);
    v11 = v6 == 1 ? "" : ":";
    if (BIO_printf(b, "%02x%s", *(a2 + i), v11) < 1)
    {
      break;
    }

    if (!--v6)
    {
      return BIO_write(b, "\n", 1) > 0;
    }
  }

  return 0;
}

BOOL bn_new(BIGNUM **a1)
{
  v2 = BN_new();
  *a1 = v2;
  return v2 != 0;
}

void bn_free(BIGNUM **a1)
{
  v2 = *a1;
  if (v2)
  {
    BN_free(v2);
    *a1 = 0;
  }
}

uint64_t bn_c2i(BIGNUM **a1, uint64_t a2, unsigned int a3)
{
  ai = 0;
  memset(v9, 0, sizeof(v9));
  BN_free(*a1);
  *a1 = 0;
  if ((a3 & 0x80000000) == 0 && (CBS_init(v9, a2, a3), c2i_ASN1_INTEGER_cbs(&ai, v9)) && (v6 = ASN1_INTEGER_to_BN(ai, 0)) != 0)
  {
    *a1 = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  ASN1_INTEGER_free(ai);
  return v7;
}

uint64_t bn_i2c(BIGNUM **a1, uint64_t a2)
{
  v9 = a2;
  v2 = *a1;
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = BN_to_ASN1_INTEGER(v2, 0);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  if (a2)
  {
    v6 = &v9;
  }

  else
  {
    v6 = 0;
  }

  v7 = i2c_ASN1_INTEGER(v4, v6);
  ASN1_INTEGER_free(v5);
  return v7;
}

uint64_t bn_print(BIO *a1, const BIGNUM **a2)
{
  result = BN_print(a1, *a2);
  if (result)
  {
    return BIO_printf(a1, "\n") > 0;
  }

  return result;
}

int **X509v3_addr_get_afi(int **result)
{
  if (result)
  {
    if (*result)
    {
      if (*(*result + 1))
      {
        v1 = 0;
        result = IPAddressFamily_afi_safi(result, &v1, 0, 0);
        if (result)
        {
          return v1;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t X509v3_addr_add_inherit(STACK *a1, unsigned int a2, unsigned int *a3)
{
  result = make_IPAddressFamily(a1, a2, a3);
  if (result)
  {
    v4 = result;
    v5 = *(result + 8);
    if (v5)
    {
      if (*v5)
      {
        if (*v5 == 1 && *(v5 + 8))
        {
          return 0;
        }
      }

      else if (*(v5 + 8))
      {
        return 1;
      }
    }

    result = ASN1_NULL_new();
    *(*(v4 + 8) + 8) = result;
    if (!result)
    {
      return result;
    }

    **(v4 + 8) = 0;
    return 1;
  }

  return result;
}

char *make_IPAddressFamily(STACK *a1, unsigned int a2, unsigned int *a3)
{
  memset(v13, 0, sizeof(v13));
  memset(v12, 0, sizeof(v12));
  *len = 0;
  data = 0;
  if (!CBB_init(v13, 0) || !CBB_add_u16(v13, a2) || a3 && !CBB_add_u8(v13, *a3) || !CBB_finish(v13, &data, len))
  {
    v7 = 0;
    goto LABEL_15;
  }

  if (sk_num(a1) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = sk_value(a1, v6);
      CBS_init(v12, *(*v7 + 8), **v7);
      if (CBS_mem_equal(v12, data, *len))
      {
        goto LABEL_13;
      }
    }

    while (++v6 < sk_num(a1));
  }

  v8 = ASN1_item_new(&IPAddressFamily_it);
  v7 = v8;
  if (!v8 || !ASN1_OCTET_STRING_set(*v8, data, len[0]) || !sk_push(a1, v7))
  {
LABEL_15:
    CBB_cleanup(v13);
    free(data);
    ASN1_item_free(v7, &IPAddressFamily_it);
    return 0;
  }

LABEL_13:
  free(data);
  return v7;
}

uint64_t X509v3_addr_add_prefix(STACK *a1, unsigned int a2, unsigned int *a3, unsigned __int8 *a4, unsigned int a5)
{
  result = make_prefix_or_range(a1, a2, a3);
  if (result)
  {
    v9 = result;
    data = 0;
    result = make_addressPrefix(&data, a4, a2, a5);
    if (result)
    {
      v10 = data;
      if (sk_push(v9, data) <= 0)
      {
        ASN1_item_free(v10, &IPAddressOrRange_it);
        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

STACK *make_prefix_or_range(STACK *a1, unsigned int a2, unsigned int *a3)
{
  IPAddressFamily = make_IPAddressFamily(a1, a2, a3);
  if (!IPAddressFamily)
  {
    return 0;
  }

  v5 = IPAddressFamily;
  v6 = *(IPAddressFamily + 1);
  if (!v6)
  {
LABEL_9:
    v8 = sk_new_null();
    v7 = v8;
    if (!v8)
    {
      return v7;
    }

    v9 = v4IPAddressOrRange_cmp;
    if (a2 != 1)
    {
      if (a2 != 2)
      {
LABEL_14:
        v10 = *(v5 + 1);
        *v10 = 1;
        *(v10 + 8) = v7;
        return v7;
      }

      v9 = v6IPAddressOrRange_cmp;
    }

    sk_set_cmp_func(v8, v9);
    goto LABEL_14;
  }

  if (*v6 == 1)
  {
    v7 = *(v6 + 8);
    if (v7)
    {
      return v7;
    }

    goto LABEL_9;
  }

  if (*v6 || !*(v6 + 8))
  {
    goto LABEL_9;
  }

  return 0;
}

uint64_t make_addressPrefix(ASN1_VALUE **a1, unsigned __int8 *a2, int a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0)
  {
    goto LABEL_8;
  }

  v5 = 16 * (a3 == 2);
  if (a3 == 1)
  {
    v5 = 4;
  }

  v6 = v5 ? 8 * v5 : 128;
  if (v6 < a4)
  {
LABEL_8:
    v7 = 0;
LABEL_9:
    ASN1_item_free(v7, &IPAddressOrRange_it);
    return 0;
  }

  if ((a4 & 7) != 0)
  {
    v11 = 8 - (a4 & 7);
  }

  else
  {
    v11 = 0;
  }

  v12 = ASN1_item_new(&IPAddressOrRange_it);
  v7 = v12;
  if (!v12)
  {
    goto LABEL_9;
  }

  *v12 = 0;
  v13 = ASN1_BIT_STRING_new();
  *(v7 + 1) = v13;
  if (!v13 || !ASN1_BIT_STRING_set(v13, a2, (a4 + 7) >> 3) || !asn1_abs_set_unused_bits(*(v7 + 1), v11))
  {
    goto LABEL_9;
  }

  *a1 = v7;
  return 1;
}

uint64_t X509v3_addr_add_range(STACK *a1, unsigned int a2, unsigned int *a3, void *a4, void *a5)
{
  result = make_prefix_or_range(a1, a2, a3);
  if (result)
  {
    v9 = result;
    data = 0;
    if (a2 == 1)
    {
      v10 = 4;
    }

    else
    {
      v10 = 16 * (a2 == 2);
    }

    result = make_addressRange(&data, a4, a5, a2, v10);
    if (result)
    {
      v11 = data;
      if (sk_push(v9, data) <= 0)
      {
        ASN1_item_free(v11, &IPAddressOrRange_it);
        return 0;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t make_addressRange(ASN1_VALUE **a1, void *__s1, void *__s2, int a4, size_t __n)
{
  v5 = __n;
  memset(v27, 0, sizeof(v27));
  v26 = 0;
  v10 = __n;
  if (memcmp(__s1, __s2, __n) > 0)
  {
    goto LABEL_2;
  }

  should_be_prefix = range_should_be_prefix(__s1, __s2, v5);
  if ((should_be_prefix & 0x80000000) != 0)
  {
    CBS_init(v27, __s1, v10);
    if (trim_end_u8(v27, 0))
    {
      v14 = CBS_len(v27);
      v15 = v14;
      if (v14)
      {
        if (!CBS_peek_last_u8(v27, &v26))
        {
          goto LABEL_2;
        }

        if (v26)
        {
          v16 = 0;
          do
          {
            v17 = v16++;
          }

          while (((v26 >> v17) & 1) == 0);
        }

        else
        {
          v17 = 8;
        }
      }

      else
      {
        v17 = 0;
      }

      CBS_init(v27, __s2, v10);
      if (trim_end_u8(v27, 255))
      {
        v18 = CBS_len(v27);
        v19 = v18;
        if (!v18)
        {
          v21 = 0;
          goto LABEL_26;
        }

        if (CBS_peek_last_u8(v27, &v26))
        {
          v20 = (v26 + 1);
          if (v20 == v26 + 1)
          {
            v22 = 0;
            do
            {
              v21 = v22++;
            }

            while (((v20 >> v21) & 1) == 0);
          }

          else
          {
            v21 = 8;
          }

LABEL_26:
          v23 = ASN1_item_new(&IPAddressOrRange_it);
          v11 = v23;
          if (v23)
          {
            *v23 = 1;
            v24 = ASN1_item_new(&IPAddressRange_it);
            *(v11 + 1) = v24;
            if (v24)
            {
              v25 = v24;
              if (ASN1_BIT_STRING_set(*v24, __s1, v15))
              {
                if (asn1_abs_set_unused_bits(*v25, v17) && ASN1_BIT_STRING_set(v25[1], __s2, v19) && asn1_abs_set_unused_bits(v25[1], v21))
                {
                  *a1 = v11;
                  return 1;
                }
              }
            }
          }

          goto LABEL_3;
        }
      }
    }

LABEL_2:
    v11 = 0;
LABEL_3:
    ASN1_item_free(v11, &IPAddressOrRange_it);
    return 0;
  }

  return make_addressPrefix(a1, __s1, a4, should_be_prefix);
}

uint64_t X509v3_addr_get_range(uint64_t a1, int a2, char *__dst, char *a4, int a5)
{
  if (a2 == 1)
  {
    v5 = 4;
  }

  else
  {
    v5 = 16 * (a2 == 2);
  }

  if (v5)
  {
    v6 = v5 <= a5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  if (extract_min_max(a1, __dst, a4, v5))
  {
    return v5;
  }

  return 0;
}

uint64_t extract_min_max(uint64_t a1, char *__dst, char *a3, int a4)
{
  if (!a1 || !__dst || !a3)
  {
    return 0;
  }

  if (*a1 == 1)
  {
    v8 = *(a1 + 8);
    v6 = *v8;
    v7 = v8[1];
  }

  else
  {
    if (*a1)
    {
      return 0;
    }

    v6 = *(a1 + 8);
    v7 = v6;
  }

  if (!addr_expand(__dst, v6, a4, 0))
  {
    return 0;
  }

  return addr_expand(a3, v7, a4, 1);
}

uint64_t X509v3_addr_is_canonical(STACK *a1)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_46;
  }

  v2 = 0;
  while (v2 < sk_num(a1) - 1)
  {
    v3 = sk_value(a1, v2);
    v4 = sk_value(a1, v2 + 1);
    result = IPAddressFamily_afi_safi(v3, 0, 0, 0);
    if (!result)
    {
      goto LABEL_47;
    }

    result = IPAddressFamily_afi_safi(v4, 0, 0, 0);
    if (!result)
    {
      goto LABEL_47;
    }

    v6 = *v3;
    v7 = **v3;
    v8 = **v4;
    v9 = v7 - v8;
    if (v7 >= v8)
    {
      v7 = **v4;
    }

    v10 = memcmp(*(v6 + 1), *(*v4 + 8), v7);
    if (v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = v9;
    }

    ++v2;
    if ((v11 & 0x80000000) == 0)
    {
LABEL_12:
      result = 0;
      goto LABEL_47;
    }
  }

  if (sk_num(a1) >= 1)
  {
    v12 = 0;
    v29 = 0;
    do
    {
      v13 = sk_value(a1, v12);
      v14 = IPAddressFamily_afi_length(v13, &v29);
      result = 0;
      if (!v13 || !v14)
      {
        break;
      }

      v15 = *(v13 + 1);
      if (!v15)
      {
        goto LABEL_12;
      }

      if (*v15 == 1)
      {
        v16 = *(v15 + 8);
        if (!v16)
        {
          goto LABEL_12;
        }

        result = sk_num(*(v15 + 8));
        if (!result)
        {
          break;
        }

        if (sk_num(v16) >= 2)
        {
          v17 = 0;
          v18 = v29;
          v19 = v29;
          while (1)
          {
            v20 = sk_value(v16, v17);
            v21 = sk_value(v16, ++v17);
            result = extract_min_max(v20, __s1, v32, v19);
            if (!result)
            {
              goto LABEL_47;
            }

            result = extract_min_max(v21, __s2, v30, v18);
            if (!result)
            {
              goto LABEL_47;
            }

            if ((memcmp(__s1, __s2, v19) & 0x80000000) == 0 || memcmp(__s1, v32, v19) > 0 || memcmp(__s2, v30, v19) > 0)
            {
              goto LABEL_12;
            }

            v22 = v18;
            do
            {
              if (v22 < 1)
              {
                break;
              }

              v23 = &__s2[v22--];
              v24 = *(v23 - 1);
              *(v23 - 1) = v24 - 1;
            }

            while (!v24);
            if ((memcmp(v32, __s2, v19) & 0x80000000) == 0 || *v20 && (range_should_be_prefix(__s1, v32, v19) & 0x80000000) == 0)
            {
              goto LABEL_12;
            }

            if (v17 >= sk_num(v16) - 1)
            {
              goto LABEL_40;
            }
          }
        }

        v17 = 0;
LABEL_40:
        v25 = sk_value(v16, v17);
        if (*v25 == 1)
        {
          v26 = v29;
          result = extract_min_max(v25, __s1, v32, v29);
          if (!result)
          {
            break;
          }

          if (memcmp(__s1, v32, v26) > 0 || (range_should_be_prefix(__s1, v32, v26) & 0x80000000) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else if (*v15 || !*(v15 + 8))
      {
        goto LABEL_12;
      }

      ++v12;
      v27 = sk_num(a1);
      result = 1;
    }

    while (v12 < v27);
  }

  else
  {
LABEL_46:
    result = 1;
  }

LABEL_47:
  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t IPAddressFamily_cmp(const void ****a1, const void ****a2)
{
  v2 = **a1;
  v3 = **a2;
  v4 = *v2;
  v5 = *v2 - *v3;
  if (*v2 >= *v3)
  {
    v4 = *v3;
  }

  LODWORD(result) = memcmp(v2[1], v3[1], v4);
  if (result)
  {
    return result;
  }

  else
  {
    return v5;
  }
}

uint64_t IPAddressFamily_afi_length(int **a1, int *a2)
{
  v5 = 0;
  *a2 = 0;
  result = IPAddressFamily_afi_safi(a1, &v5, 0, 0);
  if (result)
  {
    if (v5 == 1)
    {
      v4 = 4;
    }

    else
    {
      v4 = 16 * (v5 == 2);
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

uint64_t range_should_be_prefix(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 1)
  {
    LODWORD(v3) = 0;
  }

  else
  {
    v3 = 0;
    while (*(a1 + v3) == *(a2 + v3))
    {
      if (a3 == ++v3)
      {
        LODWORD(v3) = a3;
        break;
      }
    }
  }

  v4 = a3 & (a3 >> 31);
  v5 = a3 - 1;
  while (1)
  {
    v6 = a3;
    v7 = __OFSUB__(a3--, 1);
    if (a3 < 0 != v7)
    {
      break;
    }

    if (!*(a1 + v5))
    {
      v8 = *(a2 + v5--);
      if (v8 == 255)
      {
        continue;
      }
    }

    goto LABEL_13;
  }

  v6 = v4;
  a3 = v4 - 1;
LABEL_13:
  if (v3 < a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v3 >= v6)
  {
    return (8 * v3);
  }

  v10 = *(a1 + v3);
  v11 = *(a2 + v3);
  v12 = v11 ^ v10;
  result = 0xFFFFFFFFLL;
  if ((v11 ^ v10) <= 14)
  {
    switch(v12)
    {
      case 1:
        v13 = 7;
        break;
      case 3:
        v13 = 6;
        break;
      case 7:
        v13 = 5;
        break;
      default:
        return result;
    }
  }

  else if (v12 > 62)
  {
    if (v12 == 63)
    {
      v13 = 2;
    }

    else
    {
      if (v12 != 127)
      {
        return result;
      }

      v13 = 1;
    }
  }

  else if (v12 == 15)
  {
    v13 = 4;
  }

  else
  {
    if (v12 != 31)
    {
      return result;
    }

    v13 = 3;
  }

  if ((v12 & v10) == 0)
  {
    v14 = v13 | (8 * v3);
    if ((v12 & v11) == v12)
    {
      return v14;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t X509v3_addr_canonize(STACK *a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = 0;
  if (sk_num(a1) < 1)
  {
LABEL_33:
    sk_set_cmp_func(a1, IPAddressFamily_cmp);
    sk_sort(a1);
    result = X509v3_addr_is_canonical(a1);
  }

  else
  {
    v2 = 0;
    while (1)
    {
      v3 = sk_value(a1, v2);
      result = IPAddressFamily_afi_safi(v3, &v18, 0, 0);
      if (!result)
      {
        break;
      }

      if (v3)
      {
        v5 = *(v3 + 1);
        if (v5)
        {
          if (*v5 == 1)
          {
            v6 = *(v5 + 8);
            if (v6)
            {
              v7 = v18;
              v19 = 0;
              if (v18 == 1)
              {
                v8 = 4;
              }

              else
              {
                v8 = 16 * (v18 == 2);
              }

              sk_sort(v6);
              if (sk_num(v6) >= 2)
              {
                v9 = 0;
                while (1)
                {
                  v10 = sk_value(v6, v9);
                  v11 = sk_value(v6, v9 + 1);
                  if (!extract_min_max(v10, __s1, __s2, v8) || !extract_min_max(v11, __dst, v20, v8) || memcmp(__s1, __s2, v8) > 0 || memcmp(__dst, v20, v8) > 0 || (memcmp(__s2, __dst, v8) & 0x80000000) == 0)
                  {
                    break;
                  }

                  v12 = v8;
                  do
                  {
                    v13 = v12 - 1;
                    if (v12 < 1)
                    {
                      break;
                    }

                    v14 = &__dst[v12];
                    v15 = *(v14 - 1);
                    *(v14 - 1) = v15 - 1;
                    v12 = v13;
                  }

                  while (!v15);
                  if (!memcmp(__s2, __dst, v8))
                  {
                    if (!make_addressRange(&v19, __s1, v20, v7, v8))
                    {
                      break;
                    }

                    sk_set(v6, v9, v19);
                    sk_delete(v6, v9 + 1);
                    ASN1_item_free(v10, &IPAddressOrRange_it);
                    ASN1_item_free(v11, &IPAddressOrRange_it);
                  }

                  else
                  {
                    ++v9;
                  }

                  if (v9 >= sk_num(v6) - 1)
                  {
                    goto LABEL_28;
                  }
                }

LABEL_34:
                result = 0;
                break;
              }

              v9 = 0;
LABEL_28:
              v16 = sk_value(v6, v9);
              if (v16 && *v16 == 1 && (!extract_min_max(v16, __s1, __s2, v8) || memcmp(__s1, __s2, v8) >= 1))
              {
                goto LABEL_34;
              }
            }
          }
        }
      }

      if (++v2 >= sk_num(a1))
      {
        goto LABEL_33;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

STACK *v2i_IPAddrBlocks(uint64_t a1, uint64_t a2, const STACK *a3)
{
  v41 = *MEMORY[0x277D85DE8];
  __n_4 = sk_new(IPAddressFamily_cmp);
  if (!__n_4)
  {
    ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_addr.c", 1507);
LABEL_58:
    __n_4 = 0;
    goto LABEL_59;
  }

  __endptr = 0;
  if (sk_num(a3) >= 1)
  {
    v4 = 0;
    v33 = a3;
    while (1)
    {
      v5 = sk_value(a3, v4);
      v37 = 0;
      __errstrp = 0;
      if (!name_cmp(v5[1], "IPv4"))
      {
        break;
      }

      if (!name_cmp(v5[1], "IPv6"))
      {
        v6 = 2;
        __n = 16;
        v8 = "0123456789.:abcdefABCDEF";
LABEL_11:
        v9 = strdup(v5[2]);
        v10 = 0;
        if (!v9)
        {
          goto LABEL_41;
        }

        goto LABEL_20;
      }

      if (name_cmp(v5[1], "IPv4-SAFI"))
      {
        if (name_cmp(v5[1], "IPv6-SAFI"))
        {
          v26 = 115;
          v27 = 1530;
LABEL_49:
          ERR_put_error(34, 4095, v26, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_addr.c", v27);
          ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v5, v5[1], v5[2]);
          goto LABEL_50;
        }

        v6 = 2;
        __n = 16;
        v7 = "0123456789.:abcdefABCDEF";
      }

      else
      {
        v6 = 1;
        __n = 4;
        v7 = "0123456789.";
      }

      v11 = *__error();
      *__error() = 0;
      v12 = strtoul(v5[2], &__endptr, 0);
      if (!*v5[2] || (v13 = __endptr, v14 = *__endptr, v14 > 0x3A) || ((1 << v14) & 0x400000100000200) == 0)
      {
        v26 = 164;
        v27 = 1560;
        goto LABEL_49;
      }

      v15 = v12;
      __error();
      if (v15 >= 0x100)
      {
        v26 = 164;
        v27 = 1567;
        goto LABEL_49;
      }

      *__error() = v11;
      v37 = v15;
      v16 = &v13[strspn(v13, " \t")];
      __endptr = v16;
      if (*v16 != 58)
      {
        v26 = 164;
        v27 = 1578;
        goto LABEL_49;
      }

      __endptr = &v16[strspn(v16 + 1, " \t") + 1];
      v9 = strdup(__endptr);
      v10 = &v37;
      v8 = v7;
      if (!v9)
      {
LABEL_41:
        v30 = 1594;
        goto LABEL_42;
      }

LABEL_20:
      if (!strcmp(v9, "inherit"))
      {
        if (!X509v3_addr_add_inherit(__n_4, v6, v10))
        {
          v28 = 165;
          v29 = 1604;
          goto LABEL_56;
        }
      }

      else
      {
        v17 = v8;
        v18 = strspn(v9, v8);
        v19 = &v9[v18];
        v20 = strspn(v19, " \t") + v18;
        v21 = v9[v20];
        *v19 = 0;
        if (a2i_ipadd(ipout, v9) != __n)
        {
          v28 = 166;
          v29 = 1619;
          goto LABEL_56;
        }

        if (v21)
        {
          v22 = v20 + 1;
          if (v21 == 45)
          {
            v24 = v22 + strspn(&v9[v22], " \t");
            v25 = strspn(&v9[v24], v17);
            if (!v25 || v9[v24 + v25])
            {
              v28 = 116;
              v29 = 1645;
              goto LABEL_56;
            }

            if (a2i_ipadd(__s2, &v9[v24]) != __n)
            {
              v28 = 166;
              v29 = 1650;
LABEL_56:
              ERR_put_error(34, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_addr.c", v29);
              ERR_asprintf_error_data("section:%s,name:%s,value:%s", *v5, v5[1], v5[2]);
              goto LABEL_57;
            }

            if (memcmp(ipout, __s2, __n) >= 1)
            {
              v28 = 116;
              v29 = 1655;
              goto LABEL_56;
            }

            a3 = v33;
            if (!X509v3_addr_add_range(__n_4, v6, v10, ipout, __s2))
            {
              v30 = 1660;
              goto LABEL_42;
            }
          }

          else
          {
            if (v21 != 47)
            {
              v28 = 116;
              v29 = 1672;
              goto LABEL_56;
            }

            v23 = strtonum(&v9[v22], 0, 8 * __n, &__errstrp);
            if (__errstrp)
            {
              v28 = 116;
              v29 = 1631;
              goto LABEL_56;
            }

            a3 = v33;
            if (!X509v3_addr_add_prefix(__n_4, v6, v10, ipout, v23))
            {
              v30 = 1637;
LABEL_42:
              ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_addr.c", v30);
              goto LABEL_57;
            }
          }
        }

        else
        {
          a3 = v33;
          if (!X509v3_addr_add_prefix(__n_4, v6, v10, ipout, 8 * __n))
          {
            v30 = 1667;
            goto LABEL_42;
          }
        }
      }

      free(v9);
      if (++v4 >= sk_num(a3))
      {
        goto LABEL_38;
      }
    }

    v6 = 1;
    __n = 4;
    v8 = "0123456789.";
    goto LABEL_11;
  }

LABEL_38:
  if (!X509v3_addr_canonize(__n_4))
  {
LABEL_50:
    v9 = 0;
LABEL_57:
    free(v9);
    sk_pop_free(__n_4, IPAddressFamily_free);
    goto LABEL_58;
  }

LABEL_59:
  v31 = *MEMORY[0x277D85DE8];
  return __n_4;
}

uint64_t i2r_IPAddrBlocks(int a1, STACK *a2, BIO *a3, int a4)
{
  v24 = 0;
  v23 = 0;
  if (sk_num(a2) >= 1)
  {
    v7 = 0;
    v8 = a4 + 2;
    v22 = 0;
    do
    {
      v9 = sk_value(a2, v7);
      if (!IPAddressFamily_afi_safi(v9, &v24, &v23, &v22))
      {
        goto LABEL_31;
      }

      if (v24 == 2)
      {
        BIO_printf(a3, "%*sIPv6");
      }

      else if (v24 == 1)
      {
        BIO_printf(a3, "%*sIPv4");
      }

      else
      {
        BIO_printf(a3, "%*sUnknown AFI %u");
      }

      if (!v22)
      {
        goto LABEL_31;
      }

      if (v23 > 0x3Fu)
      {
        if (v23 > 0x41u)
        {
          if (v23 == 66)
          {
            BIO_puts(a3, " (BGP MDT)");
LABEL_31:
            if (v9)
            {
              goto LABEL_32;
            }

            goto LABEL_51;
          }

          if (v23 == 128)
          {
            v10 = a3;
            v11 = " (MPLS-labeled VPN)";
            goto LABEL_28;
          }
        }

        else
        {
          if (v23 == 64)
          {
            v10 = a3;
            v11 = " (Tunnel)";
            goto LABEL_28;
          }

          if (v23 == 65)
          {
            v10 = a3;
            v11 = " (VPLS)";
            goto LABEL_28;
          }
        }
      }

      else if (v23 > 2u)
      {
        if (v23 == 3)
        {
          v10 = a3;
          v11 = " (Unicast/Multicast)";
LABEL_28:
          BIO_puts(v10, v11);
          if (v9)
          {
            goto LABEL_32;
          }

          goto LABEL_51;
        }

        if (v23 == 4)
        {
          v10 = a3;
          v11 = " (MPLS)";
          goto LABEL_28;
        }
      }

      else
      {
        if (v23 == 1)
        {
          v10 = a3;
          v11 = " (Unicast)";
          goto LABEL_28;
        }

        if (v23 == 2)
        {
          v10 = a3;
          v11 = " (Multicast)";
          goto LABEL_28;
        }
      }

      BIO_printf(a3, " (Unknown SAFI %u)", v23);
      if (v9)
      {
LABEL_32:
        v12 = *(v9 + 1);
        if (v12)
        {
          v13 = *v12;
          if (v13 <= 1)
          {
            if (v13)
            {
              BIO_puts(a3, ":\n");
              v14 = *(v9 + 1);
              if (v14 && *v14 == 1)
              {
                v15 = *(v14 + 8);
              }

              else
              {
                v15 = 0;
              }

              v16 = v24;
              if (sk_num(v15) >= 1)
              {
                v17 = 0;
                do
                {
                  v18 = sk_value(v15, v17);
                  BIO_printf(a3, "%*s", v8, "");
                  if (*v18 == 1)
                  {
                    v21 = *(v18 + 1);
                    result = i2r_address(a3, v16, 0, *v21);
                    if (!result)
                    {
                      return result;
                    }

                    BIO_puts(a3, "-");
                    result = i2r_address(a3, v16, 255, v21[1]);
                    if (!result)
                    {
                      return result;
                    }

                    BIO_puts(a3, "\n");
                  }

                  else if (!*v18)
                  {
                    v19 = *(v18 + 1);
                    result = i2r_address(a3, v16, 0, v19);
                    if (!result)
                    {
                      return result;
                    }

                    BIO_printf(a3, "/%d\n", 8 * *v19 - (v19[4] & 7));
                  }
                }

                while (++v17 < sk_num(v15));
              }
            }

            else
            {
              BIO_puts(a3, ": inherit\n");
            }
          }
        }
      }

LABEL_51:
      ++v7;
    }

    while (v7 < sk_num(a2));
  }

  return 1;
}

const STACK *X509v3_addr_inherits(const STACK *result)
{
  if (result)
  {
    v1 = result;
    if (sk_num(result) < 1)
    {
      return 0;
    }

    else
    {
      v2 = 0;
      while (1)
      {
        v3 = sk_value(v1, v2);
        if (v3)
        {
          v4 = *(v3 + 1);
          if (v4)
          {
            if (!*v4 && *(v4 + 8))
            {
              break;
            }
          }
        }

        if (++v2 >= sk_num(v1))
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

uint64_t X509v3_addr_subset(const STACK *a1, STACK *a2)
{
  result = 1;
  if (a1 && a1 != a2)
  {
    if (!a2 || X509v3_addr_inherits(a1) || X509v3_addr_inherits(a2))
    {
      return 0;
    }

    else if (sk_num(a1) < 1)
    {
      return 1;
    }

    else
    {
      v5 = 0;
      v13 = 0;
      do
      {
        v6 = sk_value(a1, v5);
        result = IPAddressFamily_find_in_parent(a2, v6);
        if (!result)
        {
          break;
        }

        v7 = result;
        result = IPAddressFamily_afi_length(result, &v13);
        if (!result)
        {
          break;
        }

        if (v6 && (v8 = *(v6 + 1)) != 0 && *v8 == 1)
        {
          v9 = *(v8 + 8);
        }

        else
        {
          v9 = 0;
        }

        v10 = *(v7 + 8);
        if (v10 && *v10 == 1)
        {
          v11 = *(v10 + 8);
        }

        else
        {
          v11 = 0;
        }

        result = addr_contains(v11, v9, v13);
        if (!result)
        {
          break;
        }

        ++v5;
        v12 = sk_num(a1);
        result = 1;
      }

      while (v5 < v12);
    }
  }

  return result;
}

char *IPAddressFamily_find_in_parent(STACK *a1, char *a2)
{
  sk_set_cmp_func(a1, IPAddressFamily_cmp);
  v4 = sk_find(a1, a2);
  if (v4 < 0)
  {
    return 0;
  }

  return sk_value(a1, v4);
}

uint64_t addr_contains(STACK *a1, STACK *a2, int a3)
{
  v17 = *MEMORY[0x277D85DE8];
  result = 1;
  if (a2 && a1 != a2)
  {
    if (!a1)
    {
LABEL_14:
      result = 0;
      goto LABEL_16;
    }

    if (sk_num(a2) < 1)
    {
      result = 1;
      goto LABEL_16;
    }

    v7 = 0;
    v8 = 0;
LABEL_6:
    v9 = sk_value(a2, v7);
    result = extract_min_max(v9, __dst, __s2, a3);
    if (result)
    {
      while (v8 < sk_num(a1))
      {
        v10 = sk_value(a1, v8);
        result = extract_min_max(v10, v16, __s1, a3);
        if (!result)
        {
          goto LABEL_16;
        }

        if ((memcmp(__s1, __s2, a3) & 0x80000000) == 0)
        {
          if (memcmp(v16, __dst, a3) > 0)
          {
            goto LABEL_14;
          }

          ++v7;
          v11 = sk_num(a2);
          result = 1;
          if (v7 < v11)
          {
            goto LABEL_6;
          }

          goto LABEL_16;
        }

        ++v8;
      }

      goto LABEL_14;
    }
  }

LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t X509v3_addr_validate_path(uint64_t a1)
{
  if (sk_num(*(a1 + 160)) >= 1 && *(a1 + 64))
  {
    v2 = *(a1 + 160);

    return addr_validate_path_internal(a1, v2, 0);
  }

  else
  {
    *(a1 + 176) = 1;
    return 0;
  }
}

uint64_t addr_validate_path_internal(uint64_t a1, STACK *a2, STACK *a3)
{
  v4 = a2;
  v35 = 0;
  if (sk_num(a2) < 1)
  {
    v6 = 0;
LABEL_5:
    sk_free(v6);
    if (!a1)
    {
      return 0;
    }

    goto LABEL_77;
  }

  if (a1 | a3)
  {
    if (!a1 || *(a1 + 64))
    {
      if (a3)
      {
        if (!X509v3_addr_is_canonical(a3))
        {
          if (!a1)
          {
            goto LABEL_84;
          }

          *(a1 + 184) = 0;
          *(a1 + 172) = 0x29FFFFFFFFLL;
          v9 = (*(a1 + 64))(0, a1);
          v8 = 0;
          v7 = 0;
          v6 = 0;
          if (!v9)
          {
            goto LABEL_87;
          }

LABEL_15:
          sk_set_cmp_func(a3, IPAddressFamily_cmp);
          v10 = sk_dup(a3);
          if (v10)
          {
            v6 = v10;
            if (v7 < sk_num(v4))
            {
              v33 = v4;
              do
              {
                v8 = sk_value(v4, v7);
                if ((X509_get_extension_flags(v8) & 0x80) != 0)
                {
                  if (!a1)
                  {
                    goto LABEL_85;
                  }

                  *(a1 + 184) = v8;
                  *(a1 + 172) = v7;
                  *(a1 + 176) = 41;
                  LODWORD(v9) = (*(a1 + 64))(0, a1);
                  if (!v9)
                  {
                    goto LABEL_85;
                  }
                }

                v11 = *(v8 + 16);
                v12 = sk_num(v6);
                if (v11)
                {
                  v34 = v9;
                  if (v12 >= 1)
                  {
                    for (i = 0; i < sk_num(v6); ++i)
                    {
                      v14 = sk_value(v6, i);
                      v15 = IPAddressFamily_find_in_parent(v11, v14);
                      if (!v15)
                      {
                        if (!v14)
                        {
                          goto LABEL_61;
                        }

                        v23 = *(v14 + 1);
                        if (!v23 || *v23 || !*(v23 + 8))
                        {
                          goto LABEL_61;
                        }

                        continue;
                      }

                      v16 = v15;
                      v17 = *(v15 + 1);
                      if (v17 && !*v17 && *(v17 + 8))
                      {
                        continue;
                      }

                      if (v14)
                      {
                        v18 = *(v14 + 1);
                        if (v18)
                        {
                          if (*v18 == 1)
                          {
                            v19 = *(v18 + 8);
                            goto LABEL_35;
                          }

                          if (!*v18 && *(v18 + 8))
                          {
                            goto LABEL_41;
                          }
                        }
                      }

                      v19 = 0;
LABEL_35:
                      if (!v17)
                      {
                        goto LABEL_5;
                      }

                      if (*v17 != 1)
                      {
                        goto LABEL_5;
                      }

                      if (!v19)
                      {
                        goto LABEL_5;
                      }

                      v20 = v8;
                      v21 = *(v17 + 8);
                      if (!v21 || !IPAddressFamily_afi_length(v14, &v35))
                      {
                        goto LABEL_5;
                      }

                      v22 = addr_contains(v21, v19, v35);
                      v8 = v20;
                      if (v22)
                      {
LABEL_41:
                        sk_set(v6, i, v16);
                        continue;
                      }

                      if (!a1)
                      {
                        goto LABEL_85;
                      }

                      *(a1 + 184) = v20;
                      *(a1 + 172) = v7;
                      *(a1 + 176) = 46;
                      v34 = (*(a1 + 64))(0, a1);
                      if (!v34)
                      {
                        goto LABEL_85;
                      }
                    }
                  }
                }

                else if (v12 < 1)
                {
LABEL_60:
                  v34 = v9;
                }

                else
                {
                  v24 = 0;
                  while (1)
                  {
                    v25 = sk_value(v6, v24);
                    if (!v25)
                    {
                      break;
                    }

                    v26 = *(v25 + 1);
                    if (!v26 || *v26 || !*(v26 + 8))
                    {
                      break;
                    }

                    if (++v24 >= sk_num(v6))
                    {
                      goto LABEL_60;
                    }
                  }

LABEL_61:
                  if (!a1)
                  {
                    goto LABEL_85;
                  }

                  *(a1 + 184) = v8;
                  *(a1 + 172) = v7;
                  *(a1 + 176) = 46;
                  v27 = (*(a1 + 64))(0, a1);
                  if (!v27)
                  {
                    goto LABEL_85;
                  }

                  v34 = v27;
                }

                LODWORD(v7) = v7 + 1;
                v4 = v33;
                v9 = v34;
              }

              while (v7 < sk_num(v33));
            }

            v28 = *(v8 + 16);
            if (v28 && sk_num(*(v8 + 16)) >= 1)
            {
              v29 = 0;
              do
              {
                v30 = sk_value(v28, v29);
                if (v30)
                {
                  v31 = *(v30 + 1);
                  if (v31)
                  {
                    if (!*v31)
                    {
                      if (*(v31 + 8))
                      {
                        if (!a1)
                        {
                          goto LABEL_85;
                        }

                        *(a1 + 184) = v8;
                        *(a1 + 172) = v7;
                        *(a1 + 176) = 46;
                        v9 = (*(a1 + 64))(0, a1);
                        if (!v9)
                        {
                          goto LABEL_85;
                        }
                      }
                    }
                  }
                }
              }

              while (++v29 < sk_num(v28));
            }

            v7 = v9;
LABEL_87:
            sk_free(v6);
            return v7;
          }

          ERR_put_error(34, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/x509/x509_addr.c", 1885);
          if (a1)
          {
            v6 = 0;
            v7 = 0;
            *(a1 + 176) = 17;
            goto LABEL_87;
          }

LABEL_84:
          v6 = 0;
LABEL_85:
          v7 = 0;
          goto LABEL_87;
        }

        v8 = 0;
        LODWORD(v7) = 0;
      }

      else
      {
        v8 = sk_value(v4, 0);
        if ((X509_get_extension_flags(v8) & 0x80) != 0)
        {
          v6 = 0;
          v7 = 1;
          goto LABEL_87;
        }

        a3 = *(v8 + 16);
        v7 = 1;
        if (!a3)
        {
          v6 = 0;
          goto LABEL_87;
        }
      }

      v9 = 1;
      goto LABEL_15;
    }

    sk_free(0);
LABEL_77:
    v7 = 0;
    *(a1 + 176) = 1;
    return v7;
  }

  sk_free(0);
  return 0;
}

uint64_t X509v3_addr_validate_resource_set(STACK *a1, STACK *a2, int a3)
{
  if (!a2)
  {
    return 1;
  }

  if (sk_num(a1) < 1 || !a3 && X509v3_addr_inherits(a2))
  {
    return 0;
  }

  return addr_validate_path_internal(0, a1, a2);
}

uint64_t IPAddressFamily_afi_safi(int **a1, _WORD *a2, _BYTE *a3, int *a4)
{
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  v9 = 0;
  CBS_init(v11, *(*a1 + 1), **a1);
  result = CBS_get_u16(v11, &v10);
  if (result)
  {
    if (CBS_len(v11))
    {
      result = CBS_get_u8(v11, &v9);
      if (!result)
      {
        return result;
      }

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }

    if (CBS_len(v11))
    {
      return 0;
    }

    else
    {
      if (a2)
      {
        *a2 = v10;
      }

      if (a3)
      {
        *a3 = v9;
        *a4 = v8;
      }

      return 1;
    }
  }

  return result;
}

uint64_t IPAddressOrRange_cmp(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*a1 == 1)
  {
    if (!addr_expand(__s1, **(a1 + 8), a3, 0))
    {
      goto LABEL_14;
    }

    v6 = 8 * a3;
  }

  else if (*a1)
  {
    v6 = 0;
  }

  else
  {
    if (!addr_expand(__s1, *(a1 + 8), a3, 0))
    {
      goto LABEL_14;
    }

    v6 = 8 * **(a1 + 8) - (*(*(a1 + 8) + 16) & 7);
  }

  if (*a2 == 1)
  {
    if (!addr_expand(__s2, **(a2 + 8), a3, 0))
    {
      goto LABEL_14;
    }

    v7 = 8 * a3;
  }

  else
  {
    if (!*a2)
    {
      if (addr_expand(__s2, *(a2 + 8), a3, 0))
      {
        v7 = 8 * **(a2 + 8) - (*(*(a2 + 8) + 16) & 7);
        goto LABEL_16;
      }

LABEL_14:
      result = 0xFFFFFFFFLL;
      goto LABEL_19;
    }

    v7 = 0;
  }

LABEL_16:
  LODWORD(result) = memcmp(__s1, __s2, a3);
  if (result)
  {
    result = result;
  }

  else
  {
    result = (v6 - v7);
  }

LABEL_19:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t addr_expand(char *__dst, unsigned int *a2, int a3, int a4)
{
  result = 0;
  v7 = *a2;
  if ((v7 & 0x80000000) == 0 && v7 <= a3)
  {
    if (v7)
    {
      v10 = -1 << (a2[4] & 7);
      memcpy(__dst, *(a2 + 1), v7);
      v11 = &__dst[*a2];
      if (a4)
      {
        v12 = *(v11 - 1) | ~v10;
      }

      else
      {
        v12 = *(v11 - 1) & v10;
      }

      *(v11 - 1) = v12;
    }

    if (a4)
    {
      v13 = -1;
    }

    else
    {
      v13 = 0;
    }

    memset(&__dst[*a2], v13, a3 - *a2);
    return 1;
  }

  return result;
}

uint64_t trim_end_u8(void *a1, int a2)
{
  v5 = 0;
  while (CBS_len(a1))
  {
    result = CBS_peek_last_u8(a1, &v5);
    if (!result)
    {
      return result;
    }

    if (v5 != a2)
    {
      break;
    }

    result = CBS_get_last_u8(a1, &v5);
    if (!result)
    {
      return result;
    }
  }

  return 1;
}

uint64_t i2r_address(BIO *bio, int a2, int a3, unsigned int *a4)
{
  *&v25[1] = *MEMORY[0x277D85DE8];
  if ((*a4 & 0x80000000) != 0)
  {
    result = 0;
    goto LABEL_31;
  }

  if (a2 == 1)
  {
    result = addr_expand(&__dst, a4, 4, a3);
    if (!result)
    {
      goto LABEL_31;
    }

    BIO_printf(bio, "%d.%d.%d.%d");
LABEL_30:
    result = 1;
    goto LABEL_31;
  }

  if (a2 != 2)
  {
    if (*a4)
    {
      v19 = 0;
      do
      {
        if (v19)
        {
          v20 = ":";
        }

        else
        {
          v20 = "";
        }

        BIO_printf(bio, "%s%02x", v20, *(*(a4 + 1) + v19++));
      }

      while (v19 < *a4);
    }

    v21 = a4[4] & 7;
    BIO_printf(bio, "[%d]");
    goto LABEL_30;
  }

  result = addr_expand(&__dst, a4, 16, a3);
  if (result)
  {
    v7 = v25;
    v8 = -16;
    do
    {
      if (!v8)
      {
        goto LABEL_28;
      }

      v9 = v8;
      if (*v7)
      {
        break;
      }

      v10 = *(v7 - 1);
      v8 += 2;
      v7 -= 2;
    }

    while (!v10);
    v11 = -v9;
    if (v11 < 1)
    {
LABEL_28:
      BIO_puts(bio, ":");
      v18 = bio;
      goto LABEL_29;
    }

    v12 = 0;
    v13 = v11 & 0xFFFFFFFE;
    v14 = &v24;
    do
    {
      v15 = v12;
      v16 = __rev16(*(v14 - 1));
      if (v15 >= 0xE)
      {
        v17 = "";
      }

      else
      {
        v17 = ":";
      }

      BIO_printf(bio, "%x%s", v16, v17);
      v12 = v15 + 2;
      v14 += 2;
    }

    while (v15 + 2 < v13);
    if (v15 <= 0xD)
    {
      v18 = bio;
LABEL_29:
      BIO_puts(v18, ":");
      goto LABEL_30;
    }

    goto LABEL_30;
  }

LABEL_31:
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t CMS_RecipientInfo_set0_password(uint64_t a1, char *__s, size_t a3)
{
  if (*a1 == 3)
  {
    v3 = *(a1 + 8);
    *(v3 + 32) = __s;
    if (__s)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        a3 = strlen(__s);
      }
    }

    *(v3 + 40) = a3;
    return 1;
  }

  else
  {
    ERR_put_error(46, 4095, 177, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", 75);
    return 0;
  }
}

EVP_CIPHER_CTX *CMS_add0_recipient_password(uint64_t a1, int a2, int a3, uint64_t a4, char *a5, size_t a6, const EVP_CIPHER *a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v12 = cms_get0_enveloped(a1);
  if (!v12)
  {
    goto LABEL_33;
  }

  v13 = v12;
  if (!a7)
  {
    a7 = *(*(v12 + 24) + 24);
    if (!a7)
    {
      v14 = 126;
      v15 = 116;
      goto LABEL_26;
    }
  }

  if (a3 >= 1 && a3 != 893)
  {
    v14 = 179;
    v15 = 120;
LABEL_26:
    ERR_put_error(46, 4095, v14, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", v15);
LABEL_33:
    v18 = 0;
    goto LABEL_34;
  }

  v16 = X509_ALGOR_new();
  if (!v16)
  {
    v18 = 0;
    goto LABEL_23;
  }

  v17 = EVP_CIPHER_CTX_new();
  v18 = v17;
  if (!v17)
  {
    goto LABEL_23;
  }

  if (EVP_EncryptInit_ex(v17, a7, 0, 0, 0) <= 0)
  {
    v28 = 6;
    v29 = 134;
    goto LABEL_31;
  }

  v19 = EVP_CIPHER_CTX_iv_length(v18);
  if (v19 >= 1)
  {
    arc4random_buf(__buf, v19);
    if (EVP_EncryptInit_ex(v18, 0, 0, 0, __buf) <= 0)
    {
      v28 = 6;
      v29 = 143;
    }

    else
    {
      v20 = ASN1_TYPE_new();
      v16->parameter = v20;
      if (v20)
      {
        if (EVP_CIPHER_param_to_asn1(v18, v20) > 0)
        {
          goto LABEL_14;
        }

        v28 = 102;
        v29 = 152;
      }

      else
      {
        v28 = 65;
        v29 = 148;
      }
    }

LABEL_31:
    ERR_put_error(46, 4095, v28, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", v29);
    EVP_CIPHER_CTX_free(v18);
    goto LABEL_32;
  }

LABEL_14:
  v21 = EVP_CIPHER_CTX_cipher(v18);
  v22 = EVP_CIPHER_type(v21);
  v16->algorithm = OBJ_nid2obj(v22);
  EVP_CIPHER_CTX_free(v18);
  v18 = ASN1_item_new(&CMS_RecipientInfo_it);
  if (!v18)
  {
    goto LABEL_23;
  }

  v23 = ASN1_item_new(&CMS_PasswordRecipientInfo_it);
  v18->engine = v23;
  if (!v23)
  {
    goto LABEL_23;
  }

  v24 = v23;
  LODWORD(v18->cipher) = 3;
  X509_ALGOR_free(*(v23 + 2));
  v25 = X509_ALGOR_new();
  *(v24 + 2) = v25;
  if (!v25 || (**(v24 + 2) = OBJ_nid2obj(893), v26 = ASN1_TYPE_new(), (*(*(v24 + 2) + 8) = v26) == 0) || !ASN1_item_pack(v16, &X509_ALGOR_it, &v26->value))
  {
LABEL_23:
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", 207);
    EVP_CIPHER_CTX_free(0);
    if (!v18)
    {
LABEL_32:
      X509_ALGOR_free(v16);
      goto LABEL_33;
    }

LABEL_24:
    ASN1_item_free(v18, &CMS_RecipientInfo_it);
    goto LABEL_32;
  }

  **(*(v24 + 2) + 8) = 16;
  X509_ALGOR_free(v16);
  v27 = PKCS5_pbkdf2_set(a2, 0, 0, -1, -1);
  *(v24 + 1) = v27;
  if (!v27)
  {
    EVP_CIPHER_CTX_free(0);
    v16 = 0;
    goto LABEL_24;
  }

  CMS_RecipientInfo_set0_password(v18, a5, a6);
  *v24 = 0;
  if (!sk_push(*(v13 + 16), v18))
  {
    v16 = 0;
    goto LABEL_23;
  }

LABEL_34:
  v30 = *MEMORY[0x277D85DE8];
  return v18;
}

EVP_CIPHER_CTX *cms_RecipientInfo_pwri_crypt(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 8);
  if (!*(v3 + 32))
  {
    v24 = 178;
    v25 = 342;
    goto LABEL_22;
  }

  v4 = *(v3 + 16);
  if (!v4 || (v6 = *(*(a1 + 8) + 24), OBJ_obj2nid(*v4) != 893))
  {
    v24 = 179;
    v25 = 348;
LABEL_22:
    ERR_put_error(46, 4095, v24, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", v25);
    return 0;
  }

  v7 = *(v4 + 8);
  if (!v7 || *v7 != 16 || (v8 = *(v7 + 8)) == 0 || (v9 = ASN1_item_unpack(v8, &X509_ALGOR_it)) == 0)
  {
    v24 = 176;
    v25 = 359;
    goto LABEL_22;
  }

  v10 = v9;
  v11 = OBJ_obj2nid(*v9);
  v12 = OBJ_nid2sn(v11);
  cipherbyname = EVP_get_cipherbyname(v12);
  if (!cipherbyname)
  {
    v24 = 148;
    v25 = 365;
    goto LABEL_22;
  }

  v14 = cipherbyname;
  v15 = EVP_CIPHER_CTX_new();
  v16 = v15;
  if (v15)
  {
    if (EVP_CipherInit_ex(v15, v14, 0, 0, 0, a3))
    {
      EVP_CIPHER_CTX_set_padding(v16, 0);
      if (EVP_CIPHER_asn1_to_param(v16, v10->parameter) <= 0)
      {
        v27 = 102;
        v28 = 379;
      }

      else
      {
        if ((EVP_PBE_CipherInit(**(v3 + 8), *(v3 + 32), *(v3 + 40), *(*(v3 + 8) + 8), v16, a3) & 0x80000000) == 0)
        {
          v33 = 0;
          if (a3)
          {
            v17 = *(v6 + 40);
            v18 = EVP_CIPHER_CTX_block_size(v16);
            v19 = 0;
            if (v17 <= 0xFF)
            {
              v20 = v18;
              v21 = (v17 + v18 + 3) / v18 * v18;
              if (v21 >= 2 * v20)
              {
                v33 = v21;
                v22 = malloc_type_malloc(v21, 0xED9282CFuLL);
                v19 = v22;
                if (v22)
                {
                  if (kek_wrap_key(v22, &v33, *(v6 + 32), *(v6 + 40), v16))
                  {
                    v23 = *(v3 + 24);
                    *(v23 + 8) = v19;
                    *v23 = v33;
LABEL_35:
                    EVP_CIPHER_CTX_free(v16);
                    v16 = 1;
                    goto LABEL_31;
                  }
                }
              }
            }
          }

          else
          {
            v29 = malloc_type_malloc(**(v3 + 24), 0x9EFB996BuLL);
            v19 = v29;
            if (v29)
            {
              if (kek_unwrap_key(v29, &v33, *(*(v3 + 24) + 8), **(v3 + 24), v16))
              {
                freezero(*(v6 + 32), *(v6 + 40));
                v30 = v33;
                *(v6 + 32) = v19;
                *(v6 + 40) = v30;
                goto LABEL_35;
              }

              v31 = 180;
              v32 = 415;
            }

            else
            {
              v31 = 65;
              v32 = 410;
            }

            ERR_put_error(46, 4095, v31, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", v32);
          }

LABEL_30:
          EVP_CIPHER_CTX_free(v16);
          free(v19);
          v16 = 0;
LABEL_31:
          X509_ALGOR_free(v10);
          return v16;
        }

        v27 = 6;
        v28 = 389;
      }

      ERR_put_error(46, 4095, v27, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", v28);
    }

    v19 = 0;
    goto LABEL_30;
  }

  ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", 371);
  return v16;
}

uint64_t kek_wrap_key(unsigned __int8 *a1, unint64_t *a2, _BYTE *a3, size_t a4, EVP_CIPHER_CTX *ctx)
{
  v10 = EVP_CIPHER_CTX_block_size(ctx);
  result = 0;
  if (a4 <= 0xFF)
  {
    v12 = (a4 + v10 + 3) / v10 * v10;
    if (v12 >= 2 * v10)
    {
      if (!a1)
      {
        goto LABEL_8;
      }

      *a1 = a4;
      a1[1] = ~*a3;
      a1[2] = ~a3[1];
      a1[3] = ~a3[2];
      memcpy(a1 + 4, a3, a4);
      if (v12 > a4 + 4)
      {
        arc4random_buf(&a1[a4 + 4], v12 - a4 - 4);
      }

      outl = 0;
      result = EVP_EncryptUpdate(ctx, a1, &outl, a1, v12);
      if (result)
      {
        result = EVP_EncryptUpdate(ctx, a1, &outl, a1, v12);
        if (result)
        {
LABEL_8:
          *a2 = v12;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t kek_unwrap_key(void *a1, size_t *a2, const unsigned __int8 *a3, unint64_t a4, EVP_CIPHER_CTX *ctx)
{
  v10 = EVP_CIPHER_CTX_block_size(ctx);
  v11 = 2 * v10;
  if (v11 > a4)
  {
    return 0;
  }

  v12 = v10;
  if (a4 % v10)
  {
    return 0;
  }

  v15 = malloc_type_malloc(a4, 0x6EC49D1AuLL);
  if (!v15)
  {
    ERR_put_error(46, 4095, 65, "/Library/Caches/com.apple.xbs/Sources/Shortcuts/ShortcutsActions/ActionKit/External/libressl/libressl/crypto/cms/cms_pwri.c", 239);
    return 0;
  }

  v16 = v15;
  outl = 0;
  v17 = &v15[a4];
  if (EVP_DecryptUpdate(ctx, &v15[a4 - v11], &outl, &a3[a4 - v11], v11) && EVP_DecryptUpdate(ctx, v16, &outl, &v17[-v12], v12) && EVP_DecryptUpdate(ctx, v16, &outl, a3, a4 - v12) && EVP_DecryptInit_ex(ctx, 0, 0, 0, 0) && EVP_DecryptUpdate(ctx, v16, &outl, v16, a4) && ((v16[5] ^ v16[2]) & (v16[4] ^ v16[1]) & (v16[6] ^ v16[3])) == 0xFF && (v18 = *v16, v18 - 4 <= a4))
  {
    *a2 = v18;
    memcpy(a1, v16 + 4, v18);
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  freezero(v16, a4);
  return v13;
}

void ERR_load_ENGINE_strings(void)
{
  if (!ERR_func_error_string(ENGINE_str_functs))
  {
    ERR_load_strings(0, &ENGINE_str_functs);

    ERR_load_strings(0, &ENGINE_str_reasons);
  }
}

const char *DES_options(void)
{
  if ((DES_options_init & 1) == 0)
  {
    snprintf(DES_options_buf, 0x20uLL, "des(%s,%s,%s,%s)", "idx", "cisc", "16", "int");
    DES_options_init = 1;
  }

  return DES_options_buf;
}

void DES_ecb_encrypt(const_DES_cblock *input, DES_cblock *output, DES_key_schedule *ks, int enc)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = *input;
  DES_encrypt1(v7, ks, enc);
  v5 = HIDWORD(v7[0]);
  *output = v7[0];
  *&(*output)[4] = v5;
  v6 = *MEMORY[0x277D85DE8];
}

time_t x509_verify_asn1_time_to_time_t(int *a1, int a2)
{
  memset(&v5, 0, sizeof(v5));
  v3 = ASN1_time_parse(*(a1 + 1), *a1, &v5, a1[1]);
  if (v3 != -1 && (v3 == 23 || v5.tm_year >= 150) && (v3 == 24 || v5.tm_year <= 149) && (!a2 || ASN1_time_tm_clamp_notafter()))
  {
    return timegm(&v5);
  }

  else
  {
    return -1;
  }
}

time_t x509_verify_cert_info_populate(uint64_t a1)
{
  v2 = X509_getm_notBefore(a1);
  *(a1 + 208) = x509_verify_asn1_time_to_time_t(v2, 0);
  v3 = X509_getm_notAfter(a1);
  result = x509_verify_asn1_time_to_time_t(v3, 1);
  *(a1 + 216) = result;
  return result;
}

void *x509_verify_chain_new()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x30040275E93A9uLL);
  if (!v0 || (v1 = sk_new_null(), (*v0 = v1) == 0) || (v2 = malloc_type_calloc(0x20uLL, 4uLL, 0x100004052888210uLL), (v0[1] = v2) == 0) || (v3 = x509_constraints_names_new(512), (v0[2] = v3) == 0))
  {
    x509_verify_chain_free(v0);
    return 0;
  }

  return v0;
}

void x509_verify_chain_free(uint64_t a1)
{
  if (a1)
  {
    sk_pop_free(*a1, X509_free);
    *a1 = 0;
    free(*(a1 + 8));
    *(a1 + 8) = 0;
    x509_constraints_names_free(*(a1 + 16));

    free(a1);
  }
}

char *x509_verify_chain_leaf(char **a1)
{
  result = *a1;
  if (result)
  {
    return sk_value(result, 0);
  }

  return result;
}

uint64_t x509_verify_ctx_new_from_xsc(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = x509_verify_ctx_new(0);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v4 = *(a1 + 24);
    if (!v4 || (v5 = X509_chain_up_ref(v4), (*(v3 + 48) = v5) != 0))
    {
      LODWORD(v6) = *(*(a1 + 48) + 40);
      v6 = (v6 - 1) >= 0x1F ? 32 : v6;
      if ((v6 - 33) >= 0xFFFFFFFFFFFFFFE0)
      {
        *(v3 + 80) = v6;
        return v3;
      }
    }

    x509_verify_ctx_free(v3);
    return 0;
  }

  return v3;
}

char *x509_verify_ctx_new(STACK *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x78uLL, 0x10B0040622242DAuLL);
  if (v2)
  {
    if (a1)
    {
      v3 = X509_chain_up_ref(a1);
    }

    else
    {
      v3 = sk_new_null();
    }

    *(v2 + 5) = v3;
    if (!v3 || (*(v2 + 72) = xmmword_23E237860, *(v2 + 11) = 256, v4 = malloc_type_calloc(8uLL, 8uLL, 0x2004093837F09uLL), (*(v2 + 1) = v4) == 0))
    {
      x509_verify_ctx_free(v2);
      return 0;
    }
  }

  return v2;
}

uint64_t x509_verify_ctx_set_max_depth(uint64_t a1, uint64_t a2)
{
  if ((a2 - 33) < 0xFFFFFFFFFFFFFFE0)
  {
    return 0;
  }

  *(a1 + 80) = a2;
  return 1;
}

void x509_verify_ctx_free(uint64_t a1)
{
  if (a1)
  {
    sk_pop_free(*(a1 + 40), X509_free);
    if (*(a1 + 32))
    {
      v2 = 0;
      do
      {
        x509_verify_chain_free(*(*(a1 + 8) + 8 * v2++));
      }

      while (v2 < *(a1 + 32));
    }

    sk_pop_free(*(a1 + 16), X509_free);
    *(a1 + 56) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    sk_pop_free(*(a1 + 48), X509_free);
    free(*(a1 + 8));

    free(a1);
  }
}

uint64_t x509_verify_ctx_set_max_chains(uint64_t a1, uint64_t a2)
{
  if ((a2 - 9) < 0xFFFFFFFFFFFFFFF8)
  {
    return 0;
  }

  *(a1 + 72) = a2;
  return 1;
}

uint64_t x509_verify_ctx_set_max_signatures(uint64_t a1, uint64_t a2)
{
  if ((a2 - 100001) < 0xFFFFFFFFFFFE7960)
  {
    return 0;
  }

  *(a1 + 88) = a2;
  return 1;
}

uint64_t x509_verify_ctx_set_purpose(uint64_t a1, int a2)
{
  if ((a2 - 10) < 0xFFFFFFF7)
  {
    return 0;
  }

  *(a1 + 64) = a2;
  return 1;
}

BOOL x509_verify_ctx_set_intermediates(uint64_t a1, STACK *a2)
{
  v3 = X509_chain_up_ref(a2);
  *(a1 + 48) = v3;
  return v3 != 0;
}

uint64_t x509_verify_ctx_chain(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 32) <= a2)
  {
    return 0;
  }

  else
  {
    return **(*(a1 + 8) + 8 * a2);
  }
}

uint64_t x509_verify(void **a1, uint64_t a2, const char *a3)
{
  if (!a1[5] || !a1[10])
  {
    goto LABEL_5;
  }

  v5 = a2;
  v6 = *a1;
  if (!*a1)
  {
    v11 = 0;
    goto LABEL_14;
  }

  if (a2 | a3)
  {
LABEL_5:
    v7 = 65;
LABEL_6:
    *(a1 + 28) = v7;
    goto LABEL_7;
  }

  v5 = *(v6 + 2);
  v11 = (*(*(v6 + 6) + 24) & 0x80000) == 0;
  v20 = sk_new_null();
  (*a1)[20] = v20;
  if (!v20 || !X509_up_ref(v5))
  {
LABEL_41:
    v7 = 17;
    goto LABEL_6;
  }

  if (!sk_push((*a1)[20], v5))
  {
    X509_free(v5);
    goto LABEL_41;
  }

  v21 = *a1;
  *(v21 + 43) = 0;
  *(v21 + 23) = v5;
LABEL_14:
  v12 = x509_verify_chain_new();
  if (!v12)
  {
    *(a1 + 28) = 17;
    goto LABEL_7;
  }

  v13 = v12;
  if (!x509_verify_chain_append(v12, v5, a1 + 28))
  {
LABEL_48:
    x509_verify_chain_free(v13);
    goto LABEL_7;
  }

  while (1)
  {
    if (!x509v3_cache_extensions(v5))
    {
      goto LABEL_27;
    }

    if (!*a1)
    {
      break;
    }

    v14 = x509_vfy_lookup_cert_match(*a1, v5);
    if (v14)
    {
      X509_free(v14);
      goto LABEL_20;
    }

LABEL_27:
    x509_verify_build_chains(a1, v5, v13, v11, a3);
    if (!v11)
    {
      goto LABEL_43;
    }

LABEL_28:
    if (a1[4])
    {
      goto LABEL_43;
    }

    v11 = 0;
    v17 = *a1;
    *(v17 + 43) = a1[13];
    if (*(v17 + 20))
    {
      sk_pop_free(a1[2], X509_free);
      v18 = X509_chain_up_ref((*a1)[20]);
      a1[2] = &v18->num;
      if (v18)
      {
        v11 = 0;
        a1[3] = vrev64_s32(*(*a1 + 172));
      }

      else
      {
        *(a1 + 28) = 17;
        a1[13] = 0;
        v19 = *a1;
        if (!*a1)
        {
          goto LABEL_48;
        }

        *(v19 + 172) = 0x1100000000;
        *(v19 + 23) = 0;
        v11 = 0;
        if (!(*(v19 + 8))(0))
        {
          goto LABEL_48;
        }
      }
    }
  }

  if (sk_num(a1[5]) < 1)
  {
    goto LABEL_27;
  }

  v15 = 0;
  while (1)
  {
    v16 = sk_value(a1[5], v15);
    if (!X509_cmp(v16, v5))
    {
      break;
    }

    if (++v15 >= sk_num(a1[5]))
    {
      goto LABEL_27;
    }
  }

LABEL_20:
  if (v11 && (*(v5 + 57) & 0x20) == 0)
  {
    x509_verify_build_chains(a1, v5, v13, v11, a3);
    goto LABEL_28;
  }

  if (!x509_verify_ctx_add_chain(a1, v13, a3))
  {
    goto LABEL_48;
  }

LABEL_43:
  x509_verify_chain_free(v13);
  result = a1[4];
  if (!*a1)
  {
    if (result)
    {
      *(a1 + 28) = 0;
      return result;
    }

    if (!*(a1 + 28))
    {
      result = 0;
      *(a1 + 28) = 1;
      return result;
    }

    return 0;
  }

  if (result)
  {
    if (x509_verify_ctx_set_xsc_chain(a1, *a1[1], 1, 1) && x509_vfy_callback_indicate_completion(*a1))
    {
      return 1;
    }

LABEL_7:
    if (!*(a1 + 28))
    {
      *(a1 + 28) = 1;
    }

    v8 = *a1;
    if (*a1)
    {
      v9 = *(v8 + 176);
      if (!v9)
      {
        v9 = 1;
        *(v8 + 176) = 1;
      }

      result = 0;
      *(a1 + 28) = v9;
      return result;
    }

    return 0;
  }

  if (!x509_verify_ctx_restore_xsc_error(a1))
  {
    goto LABEL_7;
  }

  v22 = *a1;
  if (!*(*a1 + 44))
  {
    v23 = *(a1 + 28);
    if (!v23)
    {
      v23 = 1;
      *(a1 + 28) = 1;
    }

    *(v22 + 176) = v23;
  }

  return (*(v22 + 64))(0);
}