uint64_t attest_verify(uint64_t a1, uint64_t a2)
{
  v9[140] = *MEMORY[0x1E69E9840];
  bzero(v9, 0x460uLL);
  v4 = OUTLINED_FUNCTION_27_2();
  result = aks_attest_context_init(v4, v5, v6);
  if (!result)
  {
    result = aks_attest_context_verify(v9, a1, a2);
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_attest_context_init(uint64_t a1, uint64_t a2, void *a3)
{
  result = 4294967285;
  if (a1 && a2 && a3)
  {
    bzero(a3, 0x460uLL);
    *(a3 + 2) = a1;
    *(a3 + 3) = a1 + a2;
    if (OUTLINED_FUNCTION_16_2())
    {
      if (ccder_blob_decode_uint64())
      {
        v7 = 0;
        *(a3 + 1) = 0;
      }

      else
      {
        v7 = *(a3 + 1);
      }

      if (v7 == 3)
      {
        if (OUTLINED_FUNCTION_15_2())
        {
          ccder_blob_decode_uint64();
        }

        return 4294967272;
      }

      if (!v7)
      {
        if (OUTLINED_FUNCTION_15_2())
        {
          if (OUTLINED_FUNCTION_16_2())
          {
            *(a3 + 4) = v8;
            *(a3 + 5) = v9;
            ccder_blob_decode_uint64();
          }
        }

        return 4294967272;
      }

      return 4294967284;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t aks_attest_context_verify(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  result = 4294967285;
  if (a2 && a3)
  {
    if (a1 && (*a1 & 1) != 0)
    {
      if (a3 == 65)
      {
        v5 = MEMORY[0x1E12E84B0](4294967285);
LABEL_9:
        v6 = 24 * *v5 + 31;
        MEMORY[0x1EEE9AC00](v5);
        v8 = &v13 - v7;
        bzero(&v13 - v7, v7);
        v9 = OUTLINED_FUNCTION_27_2();
        if (MEMORY[0x1E12E84F0](v9))
        {
          result = 0xFFFFFFFFLL;
          goto LABEL_13;
        }

        v10 = a1[1];
        if (v10 == 3)
        {
          result = verify_simple_request(v8, a1);
          if (result)
          {
            goto LABEL_13;
          }
        }

        else
        {
          if (v10)
          {
            result = 4294967284;
            goto LABEL_13;
          }

          result = verify_certificate_request(v8, a1);
          if (result)
          {
            goto LABEL_13;
          }
        }

        result = 0;
        goto LABEL_13;
      }

      if (a3 == 97)
      {
        v5 = MEMORY[0x1E12E84C0](4294967285);
        goto LABEL_9;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v13 = 136317954;
        v14 = "aks.fw";
        v15 = 2080;
        v16 = "";
        v17 = 1024;
        v18 = -1;
        v19 = 2080;
        v20 = "";
        v21 = 2080;
        v22 = "";
        v23 = 2080;
        v24 = "";
        v25 = 2080;
        v26 = "";
        v27 = 2080;
        v28 = "aks_attest_context_verify";
        v29 = 2080;
        v30 = ":";
        v31 = 1024;
        v32 = 1096;
        v33 = 2080;
        v34 = "";
        v35 = 2080;
        v36 = "";
        OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", &v13);
      }

      result = 4294967282;
    }
  }

LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t attest_get(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, size_t *a5)
{
  v13 = *MEMORY[0x1E69E9840];
  bzero(v12, 0x460uLL);
  result = aks_attest_context_init(a1, a2, v12);
  if (!result)
  {
    result = aks_attest_context_get(v12, a3, a4, a5);
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_attest_context_get_uint64_internal(void *a1, unsigned int a2)
{
  v3 = 0;
  v4 = 0;
  result = aks_attest_context_get_internal(a1, a2, &v3, &v4);
  if (!result)
  {
    return ccder_blob_decode_uint64() - 1;
  }

  return result;
}

uint64_t aks_attest_context_get_header_version(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
LABEL_8:
    result = 4294967285;
    goto LABEL_5;
  }

  if (!a1 || (*a1 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v5, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v6, v7, v8, v9, 2u);
    }

    goto LABEL_8;
  }

  result = 0;
  *a2 = *(a1 + 8);
LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_attest_context_get_blob(void *__src, int a2, void *__dst)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!__dst)
  {
    goto LABEL_17;
  }

  if (!__src || (*__src & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_2_0();
      OUTLINED_FUNCTION_0();
      OUTLINED_FUNCTION_5();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_25();
      OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v7, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v8, v9, v10, v11, 2u);
    }

    goto LABEL_17;
  }

  if (a2 == 1)
  {
    v5 = (__src + 11);
    if (__src[11])
    {
      v4 = __dst;
      v3 = v5;
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (a2 == 3)
  {
    if (__src[97])
    {
      v3 = (__src + 97);
      goto LABEL_11;
    }

LABEL_19:
    result = 4294967293;
    goto LABEL_18;
  }

  if (a2 != 2)
  {
LABEL_17:
    result = 4294967285;
    goto LABEL_18;
  }

  if (!__src[54])
  {
    goto LABEL_19;
  }

  v3 = (__src + 54);
LABEL_11:
  v4 = __dst;
LABEL_14:
  memcpy(v4, v3, 0x158uLL);
  result = 0;
LABEL_18:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_attest_context_get_info(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6)
{
  v18 = *MEMORY[0x1E69E9840];
  result = 4294967285;
  if (a2 && a3 && a4 && a5 && a6)
  {
    if (a1 && (*a1 & 1) != 0)
    {
      result = 0;
      v8 = *(a1 + 32);
      *a2 = v8;
      v9 = *(a1 + 48);
      *a3 = *(a1 + 40) - v8;
      *a4 = v9;
      v11 = a1 + 56;
      v10 = *(a1 + 56);
      *a5 = *(v11 + 8);
      *a6 = v10;
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_2_0();
        OUTLINED_FUNCTION_0();
        OUTLINED_FUNCTION_5();
        OUTLINED_FUNCTION_3();
        OUTLINED_FUNCTION_25();
        OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v14, v15, v16, v17, 2u);
      }

      result = 4294967285;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t verify_certificate_request(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  if (_verify_ec_attest_blob(a1, a2 + 11) || a2[97] && _verify_ec_attest_blob(a1, a2 + 97))
  {
LABEL_8:
    result = 0xFFFFFFFFLL;
    goto LABEL_9;
  }

  memset(v24, 0, sizeof(v24));
  v22 = 48;
  v23 = 0;
  v4 = OUTLINED_FUNCTION_12_3();
  result = _calculate_digest(v4, v5, v6, a2, v24, &v22);
  if (!result)
  {
    result = aks_get_pub_key_cp(a2[17], &v23);
    if (!result)
    {
      v8 = v23;
      v9 = 24 * *v23 + 31;
      v10 = MEMORY[0x1EEE9AC00](result);
      OUTLINED_FUNCTION_29_1(v10, v11, v12, v13, v14, v15, v16, v17, v21);
      if (!MEMORY[0x1E12E84F0](v8, a2[18], a2[19], a1))
      {
        v18 = a2[7];
        v19 = a2[8];
        ccec_verify();
      }

      goto LABEL_8;
    }
  }

LABEL_9:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t verify_simple_request(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  memset(__s1, 0, sizeof(__s1));
  v4 = ccsha256_di();
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16.i8[-v8];
  bzero(&v16 - v8, v10);
  ccdigest_init();
  if (_verify_ec_attest_blob(a1, (a2 + 776)))
  {
    goto LABEL_11;
  }

  v16 = *(a2 + 32);
  v11 = 0xA000000000000000;
  v12 = 32;
  do
  {
    v17 = v16;
    if (ccder_blob_decode_range())
    {
      ccdigest_update();
      v16 = v17;
    }

    ++v11;
    --v12;
  }

  while (v12);
  if ((vmovn_s64(vceqq_s64(v16, vdupq_laneq_s64(v16, 1))).u32[0] & 1) == 0)
  {
LABEL_11:
    result = 0xFFFFFFFFLL;
  }

  else if (*(a2 + 56) != 32 || ((*(v4 + 56))(v4, v9, __s1), v13 = *(v4 + 8) + *(v4 + 16), cc_clear(), result = memcmp(__s1, *(a2 + 64), 0x20uLL), result))
  {
    result = 4294967290;
  }

  else
  {
    *(a2 + 1) = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_attest_context_get_sealed_hash(_BYTE *a1, const void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v21 = 0;
  v22 = 0;
  v3 = 4294967285;
  if (a2 && a3)
  {
    if (!a1 || (*a1 & 1) == 0)
    {
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      LODWORD(v30) = 136317954;
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_21_2();
      v31 = -1;
      OUTLINED_FUNCTION_5_5();
      v32 = "aks_attest_context_get_sealed_hash";
      v33 = v19;
      v34 = ":";
      v35 = v20;
      OUTLINED_FUNCTION_9_3();
      v17 = MEMORY[0x1E69E9C10];
      v18 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n";
      goto LABEL_28;
    }

    v6 = aks_attest_context_get(a1, 7u, &v21, &v22);
    if (v6)
    {
      v3 = v6;
      goto LABEL_24;
    }

    v25 = v21;
    v26 = v21 + v22;
    __s1[0] = 0;
    __s1[1] = 0;
    v23 = 0;
    if (OUTLINED_FUNCTION_16_2())
    {
      while (1)
      {
        if (v25)
        {
          v7 = v25 == v26;
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          v3 = 4294967293;
          goto LABEL_24;
        }

        if (v25 > v26)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v30) = 136317954;
            OUTLINED_FUNCTION_22_2();
            OUTLINED_FUNCTION_21_2();
            v31 = -1;
            OUTLINED_FUNCTION_5_5();
            v32 = "_find_sealed_data_hash";
            v33 = v9;
            v34 = ":";
            v35 = v10;
            OUTLINED_FUNCTION_9_3();
            OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s incorrect attestation data%s\n", &v30);
          }

          v3 = 4294967272;
          goto LABEL_24;
        }

        if (!OUTLINED_FUNCTION_16_2())
        {
          goto LABEL_25;
        }

        v28 = 0;
        v29 = 0;
        v30 = *__s1;
        v27 = 0;
        if (!ccder_blob_decode_range() || ccn_read_uint())
        {
          goto LABEL_25;
        }

        *__s1 = v30;
        if (v29)
        {
          break;
        }

        v3 = 0xFFFFFFFFLL;
        if (!ccder_blob_decode_tl() || v23 < 0x56)
        {
          goto LABEL_24;
        }

        v8 = __s1[0];
        if (!memcmp(__s1[0], a2, 0x10uLL))
        {
          memcpy(a3, v8, 0x56uLL);
          v3 = 0;
          goto LABEL_24;
        }
      }

      v3 = 0xFFFFFFFFLL;
      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      LODWORD(v30) = 136317954;
      OUTLINED_FUNCTION_22_2();
      OUTLINED_FUNCTION_21_2();
      v31 = -1;
      OUTLINED_FUNCTION_5_5();
      v32 = "_find_sealed_data_hash";
      v33 = v14;
      v34 = ":";
      v35 = v15;
      OUTLINED_FUNCTION_9_3();
      v17 = MEMORY[0x1E69E9C10];
      v18 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s version mis-match during load%s\n";
LABEL_28:
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, v17, v16, v18, &v30);
      goto LABEL_24;
    }

LABEL_25:
    v3 = 0xFFFFFFFFLL;
  }

LABEL_24:
  v12 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t aks_validate_certificate(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, size_t *a7)
{
  v53 = *MEMORY[0x1E69E9840];
  v36 = 0;
  __count = 0;
  v34 = 0;
  v35 = 0;
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  result = 4294967285;
  if (!a1 || !a2)
  {
    goto LABEL_28;
  }

  v51 = 0uLL;
  v52 = 0uLL;
  v50 = 0uLL;
  if (CTParseCertificateSet(a1, a1 + a2, &v50, 3, &v31))
  {
    goto LABEL_40;
  }

  if (v31 != 2)
  {
    result = 4294967285;
    goto LABEL_28;
  }

  v12 = CTGetBAASubCAType(v51, *(&v51 + 1));
  result = 4294967272;
  if (v12 <= 4 && ((1 << v12) & 0x16) != 0)
  {
    v13 = CTEvaluateBAA(v12, a1, a2, 0, 0, &v36, &__count, &v34, &v35, v32);
    if (!v13)
    {
      result = 4294967286;
      if (!v36 || !__count)
      {
        goto LABEL_28;
      }

      v30 = 0;
      if (get_oid_property_integer(5u, 1u, v50, *(&v50 + 1), &v30))
      {
        goto LABEL_40;
      }

      v14 = (v30 & 0x1F000000) != 0 ? "ssca" : "acss";
      v15 = v50;
      exention_prop_by_id = _get_exention_prop_by_id(6u, 6u);
      v39 = 0;
      v40 = 0;
      v38 = 0;
      if (exention_prop_by_id[4])
      {
        goto LABEL_40;
      }

      if (_get_oid_property_value(6u, *(exention_prop_by_id + 1), v15, *(&v15 + 1), &v39, &v40))
      {
        goto LABEL_40;
      }

      if (!v39)
      {
        goto LABEL_40;
      }

      *buf = v39;
      v42 = v39 + v40;
      if ((ccder_blob_decode_tl() & 1) == 0)
      {
        goto LABEL_40;
      }

      if (v38 == 4 && *v14 == **buf)
      {
        v29 = 0;
        if (get_oid_property_integer(6u, 2u, v50, *(&v50 + 1), &v29))
        {
          goto LABEL_40;
        }

        if (v29 == 1)
        {
          v28 = 0;
          if (!get_oid_property_integer(6u, 8u, v50, *(&v50 + 1), &v28))
          {
            if (v28 == 6)
            {
              result = 0;
              if (a6 && a7)
              {
                v17 = calloc(__count, 1uLL);
                if (v17)
                {
                  *a6 = v17;
                  v18 = v36;
                  v19 = __count;
                  *a7 = __count;
                  memcpy(v17, v18, v19);
                  result = 0;
                }

                else
                {
                  result = 4294967279;
                }
              }

              goto LABEL_28;
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136317954;
              OUTLINED_FUNCTION_13_2("aks.fw");
              OUTLINED_FUNCTION_3_4();
              OUTLINED_FUNCTION_26_2();
              OUTLINED_FUNCTION_25_2();
              OUTLINED_FUNCTION_8_2();
              v22 = MEMORY[0x1E69E9C10];
              v23 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: incorrect key type%s\n";
              goto LABEL_39;
            }
          }

LABEL_40:
          result = 4294967286;
          goto LABEL_28;
        }

        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        *buf = 136317954;
        OUTLINED_FUNCTION_13_2("aks.fw");
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_26_2();
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_8_2();
        v22 = MEMORY[0x1E69E9C10];
        v23 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: not attestion only key%s\n";
      }

      else
      {
        if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_40;
        }

        *buf = 136317954;
        OUTLINED_FUNCTION_13_2("aks.fw");
        OUTLINED_FUNCTION_3_4();
        OUTLINED_FUNCTION_26_2();
        OUTLINED_FUNCTION_25_2();
        OUTLINED_FUNCTION_8_2();
        v22 = MEMORY[0x1E69E9C10];
        v23 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: invalid namespace, expected ssca%s\n";
      }

LABEL_39:
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, v22, v21, v23, buf);
      goto LABEL_40;
    }

    v24 = v13;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136318210;
      OUTLINED_FUNCTION_13_2("aks.fw");
      OUTLINED_FUNCTION_3_4();
      OUTLINED_FUNCTION_26_2();
      OUTLINED_FUNCTION_25_2();
      v43 = 1741;
      v44 = v25;
      v45 = v26;
      v46 = v27;
      v47 = v24;
      v48 = v25;
      v49 = v26;
      _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s error: CTEvaluateBAA returned %x%s\n", buf, 0x78u);
    }

    result = 4294967274;
  }

LABEL_28:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t get_oid_property_integer(unsigned int a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  exention_prop_by_id = _get_exention_prop_by_id(a1, a2);
  v19 = 0;
  v20 = 0;
  if ((exention_prop_by_id[4] - 3) < 0xFFFFFFFE)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = exention_prop_by_id;
  oid_property_value = _get_oid_property_value(a1, *(exention_prop_by_id + 1), a3, a4, &v19, &v20);
  result = 0xFFFFFFFFLL;
  if (!oid_property_value)
  {
    if (v19)
    {
      v17 = v19;
      v18 = &v19[v20];
      v13 = ccder_blob_decode_tl();
      result = 0xFFFFFFFFLL;
      if (v13)
      {
        v14 = v17;
        if (v10[4] == 1)
        {
          v15 = *v17 >> 7;
        }

        else
        {
          v15 = 0;
        }

        while (v14 != v18)
        {
          v16 = *v14++;
          v15 = v16 | (v15 << 8);
        }

        result = 0;
        *a5 = v15;
      }
    }
  }

  return result;
}

uint64_t aks_attest_context_dump()
{
  v64 = *MEMORY[0x1E69E9840];
  memset(v63, 0, 64);
  OUTLINED_FUNCTION_24_2();
  if (!v0 || (v1 = v0, (*v0 & 1) == 0))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v39 = 136317954;
      v40 = "aks.fw";
      v41 = 2080;
      v42 = "";
      v43 = 1024;
      v44 = -1;
      v45 = 2080;
      v46 = "";
      v47 = 2080;
      v48 = "";
      v49 = 2080;
      v50 = "";
      v51 = 2080;
      v52 = "";
      v53 = 2080;
      v54 = "aks_attest_context_dump";
      v55 = 2080;
      v56 = ":";
      v57 = 1024;
      v58 = 1787;
      v59 = 2080;
      v60 = "";
      v61 = 2080;
      v62 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", &v39);
    }

    result = 4294967285;
    goto LABEL_17;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s dumping attestation info:%s\n", &v39);
  }

  if (v1[11])
  {
    OUTLINED_FUNCTION_12_3();
    OUTLINED_FUNCTION_23_2();
    result = _calculate_digest(v9, v10, v11, v1, v12, v13);
    if (result)
    {
      goto LABEL_17;
    }

    dump_bytes_internal("osk pub", v1[19], v1[18]);
    dump_bytes_internal("request digest", v63, v38);
    dump_bytes_internal("request sig", v1[16], v1[15]);
    OUTLINED_FUNCTION_24_2();
    v14 = v1[14];
    v15 = v1[17];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_23_2();
    result = _calculate_digest(v16, v17, v18, (v1 + 11), v19, v20);
    if (result)
    {
      goto LABEL_17;
    }

    dump_bytes_internal("osk digest", v63, v38);
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v3, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s \x1B[38;5;112mno osk detected\x1B[0m%s\n", &v39);
  }

  dump_bytes_internal("osk sig", v1[16], v1[15]);
  if (v1[54])
  {
    OUTLINED_FUNCTION_24_2();
    dump_bytes_internal("self pub", v1[62], v1[61]);
    if (v1[59])
    {
      v29 = v1[57];
      v30 = v1[60];
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_23_2();
      result = _calculate_digest(v31, v32, v33, v34, v35, v36);
      if (result)
      {
        goto LABEL_17;
      }

      dump_bytes_internal("self digest", v63, v38);
      dump_bytes_internal("self sig", v1[59], v1[58]);
      goto LABEL_15;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_1_4();
      OUTLINED_FUNCTION_6_5();
      v5 = MEMORY[0x1E69E9C10];
      v6 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s self has no sig%s\n";
LABEL_14:
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, v5, v4, v6, &v39);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_4();
    OUTLINED_FUNCTION_6_5();
    v5 = MEMORY[0x1E69E9C10];
    v6 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s \x1B[38;5;112mno self detected\x1B[0m%s\n";
    goto LABEL_14;
  }

LABEL_15:
  if (v1[97])
  {
    OUTLINED_FUNCTION_24_2();
    v21 = v1[100];
    v22 = v1[103];
    OUTLINED_FUNCTION_2_6();
    OUTLINED_FUNCTION_23_2();
    result = _calculate_digest(v23, v24, v25, v26, v27, v28);
    if (result)
    {
      goto LABEL_17;
    }

    dump_bytes_internal("aa digest", v63, v38);
    dump_bytes_internal("aa sig", v1[102], v1[101]);
  }

  result = 0;
LABEL_17:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _calculate_digest(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t), uint64_t a4, uint64_t a5, unint64_t *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30[0] = 0;
  v12 = ccsha384_di();
  result = aks_get_digest_info(a1, v30);
  if (!result)
  {
    v14 = v30[0];
    if (v14 == ccsha256_di())
    {
      v15 = 32;
    }

    else if (v14 == ccsha384_di())
    {
      v15 = 48;
    }

    else
    {
      if (v14 != ccsha512_di())
      {
        result = 4294967272;
        goto LABEL_22;
      }

      v15 = 64;
    }

    if (*a6 < v15)
    {
      result = 0xFFFFFFFFLL;
      goto LABEL_22;
    }

    v16 = v14;
    if ((ccoid_equal() & 1) == 0)
    {
      result = aks_get_pub_key_cp(a2, &v29);
      if (result)
      {
        goto LABEL_22;
      }

      v17 = v29;
      v16 = v12;
      if (v17 == MEMORY[0x1E12E84B0]())
      {
        v16 = ccsha256_di();
      }
    }

    v18 = *(v16 + 8);
    v19 = *(v16 + 16);
    OUTLINED_FUNCTION_18_2();
    MEMORY[0x1EEE9AC00](v20);
    v22 = &v28 - v21;
    bzero(&v28 - v21, v23);
    ccdigest_init();
    result = a3(v16, v22, a4);
    if (!result)
    {
      (*(v16 + 56))(v16, v22, a5);
      v24 = *(v16 + 8) + *(v16 + 16);
      cc_clear();
      if (v16 == ccsha256_di() && v14 != ccsha256_di())
      {
        v25 = *(a5 + 16);
        *(a5 + 16) = *a5;
        *(a5 + 32) = v25;
        *a5 = 0;
        *(a5 + 8) = 0;
      }

      if (v16 == ccsha384_di() && v14 != ccsha384_di())
      {
        v26 = *(a5 + 32);
        *a5 = *(a5 + 16);
        *(a5 + 16) = v26;
        *(a5 + 32) = 0;
        *(a5 + 40) = 0;
      }

      result = 0;
      *a6 = v15;
    }
  }

LABEL_22:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _osk_digest_update(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[3];
  if (!v3)
  {
    return 4294967285;
  }

  v4 = a3[4];
  if (!v4)
  {
    return 4294967285;
  }

  v5 = a3[5];
  if (v4 >= v3 || v5 == 0)
  {
    return 4294967285;
  }

  if (v5 >= v3 || v5 <= v4)
  {
    return 4294967285;
  }

  ccdigest_update();
  return 0;
}

uint64_t _parse_attest_blob(__int128 *a1, char a2)
{
  v4 = a1 + 1;
  v241 = *a1;
  v5 = ccder_blob_decode_uint64();
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_28_1(v5, v6, v7, v8, v9, v10, v11, v12, v174, v191, v207, v224, v241);
  if (!OUTLINED_FUNCTION_16_2() || !ccder_blob_decode_oid())
  {
    return 0xFFFFFFFFLL;
  }

  v13 = *(a1 + 3);
  v14 = ccoid_equal();
  if (!v14)
  {
    OUTLINED_FUNCTION_28_1(v14, v15, v16, v17, v18, v19, v20, v21, v175, v192, v208, v225, v242);
    ccder_blob_decode_range();
    return 0xFFFFFFFFLL;
  }

  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  OUTLINED_FUNCTION_28_1(v14, v15, v16, v17, v18, v19, v20, v21, v175, v192, 0, 0, v242);
  if (!OUTLINED_FUNCTION_16_2())
  {
    return 0xFFFFFFFFLL;
  }

  if (!OUTLINED_FUNCTION_16_2())
  {
    return 0xFFFFFFFFLL;
  }

  if (!ccder_blob_decode_oid())
  {
    return 0xFFFFFFFFLL;
  }

  if (!ccder_blob_decode_range())
  {
    return 0xFFFFFFFFLL;
  }

  if (!ccder_blob_decode_oid())
  {
    return 0xFFFFFFFFLL;
  }

  v22 = ccder_blob_decode_range();
  if (!v22)
  {
    return 0xFFFFFFFFLL;
  }

  if (v226 - v209 < 1)
  {
    return 0xFFFFFFFFLL;
  }

  v30 = v226 - (v209 + 1);
  *(a1 + 7) = v30;
  *(a1 + 8) = v209 + 1;
  if (v226 == v209 + 1)
  {
    return 0xFFFFFFFFLL;
  }

  v32 = 0;
  if (*v4 == 2)
  {
    v31 = *(a1 + 6);
    v22 = ccoid_equal();
    if ((v22 & 1) != 0 || (v22 = ccoid_equal(), v22))
    {
      v32 = 1;
    }
  }

  *(a1 + 10) = v209 + 1 + v32;
  *(a1 + 11) = v30 - v32;
  if (v243 == *(a1 + 1))
  {
    return 0;
  }

  OUTLINED_FUNCTION_28_1(v22, v23, v24, v25, v26, v27, v28, v29, v176, 0, 0, v226, v243);
  if (!ccder_blob_decode_range())
  {
    return 0xFFFFFFFFLL;
  }

  v33 = ccder_blob_decode_tl();
  if (!v33)
  {
    return 0xFFFFFFFFLL;
  }

  if (v210 != 8)
  {
    return 0xFFFFFFFFLL;
  }

  *(a1 + 84) = MEMORY[0];
  *(a1 + 18) = MEMORY[4];
  *(a1 + 12) = 0;
  *(a1 + 13) = 8;
  v41 = OUTLINED_FUNCTION_11_2(v33, v34, v35, v36, v37, v38, v39, v40, v177, v193, 8, v227, v244);
  v43 = _parse_digest_value(v41, v42, 2u);
  if (!v43)
  {
    return 0xFFFFFFFFLL;
  }

  v51 = OUTLINED_FUNCTION_11_2(v43, v44, v45, v46, v47, v48, v49, v50, v178, v194, v211, v228, v245);
  v53 = _parse_digest_value(v51, v52, 3u);
  if (!v53)
  {
    return 0xFFFFFFFFLL;
  }

  v61 = OUTLINED_FUNCTION_11_2(v53, v54, v55, v56, v57, v58, v59, v60, v179, v195, v212, v229, v246);
  v63 = _parse_digest_value(v61, v62, 5u);
  if (!v63)
  {
    return 0xFFFFFFFFLL;
  }

  v71 = OUTLINED_FUNCTION_11_2(v63, v64, v65, v66, v67, v68, v69, v70, v180, v196, v213, v230, v247);
  v73 = _parse_digest_value(v71, v72, 6u);
  if (!v73)
  {
    return 0xFFFFFFFFLL;
  }

  v81 = OUTLINED_FUNCTION_11_2(v73, v74, v75, v76, v77, v78, v79, v80, v181, v197, v214, v231, v248);
  v83 = _parse_digest_value(v81, v82, 4u);
  if (!v83)
  {
    return 0xFFFFFFFFLL;
  }

  v91 = OUTLINED_FUNCTION_11_2(v83, v84, v85, v86, v87, v88, v89, v90, v182, v198, v215, v232, v249);
  v93 = _parse_digest_value(v91, v92, 9u);
  if (!v93)
  {
    return 0xFFFFFFFFLL;
  }

  v101 = OUTLINED_FUNCTION_11_2(v93, v94, v95, v96, v97, v98, v99, v100, v183, v199, v216, v233, v250);
  v103 = _parse_digest_value(v101, v102, 0xAu);
  if (!v103)
  {
    return 0xFFFFFFFFLL;
  }

  v111 = OUTLINED_FUNCTION_11_2(v103, v104, v105, v106, v107, v108, v109, v110, v184, v200, v217, v234, v251);
  v113 = _parse_digest_value(v111, v112, 7u);
  if (!v113)
  {
    return 0xFFFFFFFFLL;
  }

  v121 = OUTLINED_FUNCTION_11_2(v113, v114, v115, v116, v117, v118, v119, v120, v185, v201, v218, v235, v252);
  v123 = _parse_digest_value(v121, v122, 8u);
  if (!v123)
  {
    return 0xFFFFFFFFLL;
  }

  v131 = OUTLINED_FUNCTION_11_2(v123, v124, v125, v126, v127, v128, v129, v130, v186, v202, v219, v236, v253);
  v133 = _parse_digest_value(v131, v132, 0xBu);
  if (!v133)
  {
    return 0xFFFFFFFFLL;
  }

  v141 = OUTLINED_FUNCTION_11_2(v133, v134, v135, v136, v137, v138, v139, v140, v187, v203, v220, v237, v254);
  v143 = _parse_digest_value(v141, v142, 0xCu);
  if (!v143)
  {
    return 0xFFFFFFFFLL;
  }

  v151 = OUTLINED_FUNCTION_11_2(v143, v144, v145, v146, v147, v148, v149, v150, v188, v204, v221, v238, v255);
  v153 = _parse_digest_value(v151, v152, 0xDu);
  if (!v153)
  {
    return 0xFFFFFFFFLL;
  }

  v161 = OUTLINED_FUNCTION_11_2(v153, v154, v155, v156, v157, v158, v159, v160, v189, v205, v222, v239, v256);
  v163 = _parse_digest_value(v161, v162, 0xEu);
  if (!v163)
  {
    return 0xFFFFFFFFLL;
  }

  v171 = OUTLINED_FUNCTION_11_2(v163, v164, v165, v166, v167, v168, v169, v170, v190, v206, v223, v240, v257);
  if (!_parse_digest_value(v171, v172, 0xFu))
  {
    return 0xFFFFFFFFLL;
  }

  if (v241 == *(&v241 + 1))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t _get_param_data(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 72);
  v5 = *(a1 + 80);
  v15 = v4;
  v16 = v5;
  v14 = 0;
  if (v4)
  {
    v6 = v4 == v5;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    while (1)
    {
      if (v4 > v5)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 136317954;
          *&v17[4] = "aks.fw";
          v18 = 2080;
          v19 = "";
          v20 = 1024;
          v21 = -1;
          v22 = 2080;
          v23 = "";
          v24 = 2080;
          v25 = "";
          v26 = 2080;
          v27 = "";
          v28 = 2080;
          v29 = "";
          v30 = 2080;
          v31 = "_get_param_data";
          v32 = 2080;
          v33 = ":";
          v34 = 1024;
          v35 = 761;
          v36 = 2080;
          v37 = "";
          v38 = 2080;
          v39 = "";
          OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s incorrect attestation data%s\n", v17);
        }

        result = 4294967272;
        goto LABEL_21;
      }

      if (!ccder_blob_decode_tag() || !ccder_blob_decode_len())
      {
        result = 0xFFFFFFFFLL;
        goto LABEL_21;
      }

      if (!*(a2 + 8))
      {
        break;
      }

      v4 = v15;
      result = 4294967293;
      if (v15)
      {
        v5 = v16;
        if (v15 != v16)
        {
          continue;
        }
      }

      goto LABEL_21;
    }

    *v17 = 0;
    v12 = v15;
    if (ccder_blob_decode_tl())
    {
      v12 = v15;
      v14 = *v17;
    }

    if (v12)
    {
      result = 0;
      *a3 = v12;
      *a4 = v14;
      goto LABEL_21;
    }
  }

  result = 4294967293;
LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _verify_ec_attest_blob(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2[6];
  if ((ccoid_equal() & 1) != 0 || ccoid_equal()) && ((v4 = a2[3], (ccoid_equal()) || ccoid_equal()) && *a2 && a2[5] && a2[4])
  {
    OUTLINED_FUNCTION_2_6();
    v5 = OUTLINED_FUNCTION_27_2();
    result = _calculate_digest(v5, v6, v7, a2, v8, v9);
    if (!result)
    {
      v11 = a2[4];
      v12 = a2[5];
      if (ccec_verify())
      {
        result = 0xFFFFFFFFLL;
      }

      else
      {
        result = 0xFFFFFFFFLL;
      }
    }
  }

  else
  {
    result = 4294967272;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void aks_attest_context_get_cold_1(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v3, v4, v5, v6, 2u);
  }

  *a1 = -11;
  v7 = *MEMORY[0x1E69E9840];
}

void aks_attest_context_get_uint64_cold_1(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s context not initialized%s\n", v3, v4, v5, v6, 2u);
  }

  *a1 = -11;
  v7 = *MEMORY[0x1E69E9840];
}

void _get_oid_property_value_cold_1(_DWORD *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 136318210;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    v6 = v2;
    v7 = v3;
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s extension error %s%s\n", v5, 0x7Cu);
  }

  *a1 = -1;
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t aks_migrate_user_fs(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = *MEMORY[0x1E69E9840];
  v10 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21[0]);
  bzero(v10, v11);
  v12 = 0xFFFFFFFFLL;
  HIDWORD(v20) = -1;
  if (realpath_DARWIN_EXTSN(a1, v21))
  {
    if (aks_migrate_fs_required(v21, a2, ".aks_migrate", &v20 + 1, v13, v14, v15, v16) && ((v17 = aks_migrate_fs_with_map(v21, a2, &userPathMap, *"H"), v17) || (v17 = _aks_version_commit(SHIDWORD(v20), 49), v17)))
    {
      v12 = v17;
    }

    else
    {
      v12 = 0;
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t aks_migrate_fs_required(const char *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v36 = *MEMORY[0x1E69E9840];
  v12 = OUTLINED_FUNCTION_0_7(a1, a2, a3, a4, a5, a6, a7, a8, v30, v31, v32, v34);
  bzero(v12, v13);
  if ((v10 & 2) != 0 || (result = _data_protection_enabled(a1), result))
  {
    v21 = OUTLINED_FUNCTION_0_7(result, v15, "%s/%s", v16, v17, v18, v19, v20, a1, a3, v33, v35);
    v24 = snprintf(v21, v22, v23);
    v27 = OUTLINED_FUNCTION_2_7(v24, v25, v26);
    if (v27 != -1)
    {
      v28 = v27;
      if ((v10 & 2) != 0 || !_aks_version_check(v27, 49))
      {
        *a4 = v28;
        result = 1;
        goto LABEL_7;
      }

      close(v28);
    }

    result = 0;
  }

LABEL_7:
  v29 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_migrate_fs(const char *a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  bzero(v37, 0x400uLL);
  v12 = OUTLINED_FUNCTION_0_7(v4, v5, v6, v7, v8, v9, v10, v11, v32, v33, v35, v36[0]);
  bzero(v12, v13);
  v14 = 0xFFFFFFFFLL;
  HIDWORD(v35) = -1;
  v15 = realpath_DARWIN_EXTSN(a1, v37);
  if (v15)
  {
    v22 = OUTLINED_FUNCTION_0_7(v15, v16, "%s/mobile", v17, v18, v19, v20, v21, v37, v34, v35, v36[0]);
    snprintf(v22, v23, v24);
    if (aks_migrate_fs_required(v37, a2, "root/.aks_migrate", &v35 + 1, v25, v26, v27, v28) && ((v29 = aks_migrate_fs_with_map(v37, a2, &sharedPathMap, *"$"), v29) || (aks_fs_supports_enhanced_apfs() & 1) == 0 && (v29 = aks_migrate_fs_with_map(v36, a2, &userPathMap, *"H"), v29) || (v29 = _aks_version_commit(SHIDWORD(v35), 49), v29)))
    {
      v14 = v29;
    }

    else
    {
      v14 = 0;
    }
  }

  v30 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t aks_bootstrap_shared_fs(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = 22;
    goto LABEL_6;
  }

  v8 = a2;
  v10 = OUTLINED_FUNCTION_3_5(a1, a2, a3, a4, a5, a6, a7, a8, v14, v15[0]);
  bzero(v10, v11);
  if (!realpath_DARWIN_EXTSN(a1, v15))
  {
    goto LABEL_7;
  }

  result = aks_bootstrap_fs_required(v15, "root/.bootstrapped", v8);
  if (result)
  {
    if (!aks_bootstrap_fs_with_map(v15))
    {
      aks_bootstrap_fs_done(v15, "root/.bootstrapped");
      result = 0;
      goto LABEL_6;
    }

LABEL_7:
    result = 0xFFFFFFFFLL;
  }

LABEL_6:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_bootstrap_fs_required(const char *a1, uint64_t a2, char a3)
{
  v34 = *MEMORY[0x1E69E9840];
  result = _data_protection_enabled(a1);
  if (result)
  {
    v14 = OUTLINED_FUNCTION_0_7(result, v7, v8, v9, v10, v11, v12, v13, v29, v30, v31, v33[0]);
    bzero(v14, v15);
    v23 = OUTLINED_FUNCTION_0_7(v16, v17, "%s/%s", v18, v19, v20, v21, v22, a1, a2, v32, v33[0]);
    snprintf(v23, v24, v25);
    v26 = MEMORY[0x1E69E9858];
    if (a3)
    {
      fprintf(*MEMORY[0x1E69E9858], "checking path: %s\n", v33);
    }

    v27 = access(v33, 4) | a3 & 2;
    result = v27 != 0;
    if ((a3 & 1) != 0 && !v27)
    {
      fprintf(*v26, "%s has already been bootstrapped\n", a1);
      result = 0;
    }
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_bootstrap_user_fs(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = 22;
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_4_5();
  v11 = OUTLINED_FUNCTION_3_5(v3, v4, v5, v6, v7, v8, v9, v10, v15, v16[0]);
  bzero(v11, v12);
  if (!realpath_DARWIN_EXTSN(v2, v16))
  {
    goto LABEL_7;
  }

  result = aks_bootstrap_fs_required(v16, ".bootstrapped", v1);
  if (result)
  {
    if (!aks_bootstrap_fs_with_map(v16))
    {
      aks_bootstrap_fs_done(v16, ".bootstrapped");
      result = 0;
      goto LABEL_6;
    }

LABEL_7:
    result = 0xFFFFFFFFLL;
  }

LABEL_6:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_bootstrap_fs(const char *a1, char a2)
{
  v29 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    result = 22;
    goto LABEL_8;
  }

  bzero(v28, 0x400uLL);
  v4 = realpath_DARWIN_EXTSN(a1, v28);
  if (!v4)
  {
    goto LABEL_9;
  }

  v12 = OUTLINED_FUNCTION_3_5(v4, v5, v6, v7, v8, v9, v10, v11, v26, v27[0]);
  bzero(v12, v13);
  v21 = OUTLINED_FUNCTION_3_5(v14, v15, "%s/mobile", v16, v17, v18, v19, v20, v28, v27[0]);
  snprintf(v21, v22, v23);
  result = aks_bootstrap_fs_required(v28, "root/.bootstrapped", a2);
  if (result)
  {
    if (!aks_bootstrap_fs_with_map(v28) && ((aks_fs_supports_enhanced_apfs() & 1) != 0 || !aks_bootstrap_fs_with_map(v27)))
    {
      aks_bootstrap_fs_done(v28, "root/.bootstrapped");
      result = 0;
      goto LABEL_8;
    }

LABEL_9:
    result = 0xFFFFFFFFLL;
  }

LABEL_8:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_setupallowlist_user_fs(const char *a1, uint64_t a2)
{
  v19 = -1;
  v4 = fopen("/var/logs/AKSSetup.log", "w+");
  v5 = v4;
  v6 = MEMORY[0x1E69E9858];
  v7 = *MEMORY[0x1E69E9858];
  if (v4)
  {
    v7 = v4;
  }

  __logfd = v7;
  aks_bootstrap_user_fs(a1);
  if (aks_setupallowlist_fs_required(a1, a2, ".aks_allowlist", &v19, v8, v9, v10, v11))
  {
    aks_setupallowlist_fs_with_map(a1, a2, &userPathMap, *"H");
    v12 = v19;
    v13 = *v6;
    v14 = OUTLINED_FUNCTION_1_5(__logfd);
    fprintf(v14, "%s has been allow listed with version:%c\n", a1, v15);
    v16 = _aks_version_commit(v12, 52);
    if (v16)
    {
      v17 = v16;
      if (!v5)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  v17 = 0;
  if (v5)
  {
LABEL_6:
    fclose(v5);
  }

LABEL_7:
  __logfd = *v6;
  return v17;
}

uint64_t aks_setupallowlist_fs_required(const char *a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = a2;
  v40 = *MEMORY[0x1E69E9840];
  v12 = OUTLINED_FUNCTION_0_7(a1, a2, a3, a4, a5, a6, a7, a8, v34, v35, v36, v38);
  bzero(v12, v13);
  v21 = OUTLINED_FUNCTION_0_7(v14, v15, "%s/%s", v16, v17, v18, v19, v20, a1, a3, v37, v39);
  v24 = snprintf(v21, v22, v23);
  v27 = OUTLINED_FUNCTION_2_7(v24, v25, v26);
  if (v27 == -1)
  {
    goto LABEL_8;
  }

  v28 = v27;
  if ((v10 & 2) == 0)
  {
    if (!_aks_version_check(v27, 52))
    {
      v29 = *MEMORY[0x1E69E9858];
      v30 = OUTLINED_FUNCTION_1_5(__logfd);
      fprintf(v30, "%s has different allowlist needed=%c\n", a1, v31);
      goto LABEL_5;
    }

    close(v28);
LABEL_8:
    result = 0;
    goto LABEL_6;
  }

LABEL_5:
  *a4 = v28;
  result = 1;
LABEL_6:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_setupallowlist_fs(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v4 = v1;
  v50 = *MEMORY[0x1E69E9840];
  HIDWORD(v45) = -1;
  bzero(&__to, 0x400uLL);
  bzero(&__from, 0x400uLL);
  bzero(__str, 0x400uLL);
  v13 = OUTLINED_FUNCTION_0_7(v5, v6, v7, v8, v9, v10, v11, v12, v42, v43, v45, v46[0]);
  bzero(v13, v14);
  v22 = OUTLINED_FUNCTION_0_7(v15, v16, "%s/mobile", v17, v18, v19, v20, v21, v4, v44, v45, v46[0]);
  snprintf(v22, v23, v24);
  snprintf(__str, 0x400uLL, "%s/tmp", v4);
  if (_set_path_class(__str, -1, 4, 0))
  {
    fprintf(*MEMORY[0x1E69E9848], "Unable to set %s to class D!", __str);
  }

  v25 = fopen("/var/logs/AKSSetup.log", "w+");
  v26 = v25;
  v27 = MEMORY[0x1E69E9858];
  v28 = *MEMORY[0x1E69E9858];
  if (v25)
  {
    v28 = v25;
  }

  __logfd = v28;
  aks_bootstrap_fs(v4, v3 | 3);
  snprintf(&__from, 0x400uLL, "%s/root/.aks_whitelist", v4);
  snprintf(&__to, 0x400uLL, "%s/root/.aks_allowlist", v4);
  rename(&__from, &__to, v29);
  if (aks_setupallowlist_fs_required(v4, v3, "root/.aks_allowlist", &v45 + 1, v30, v31, v32, v33))
  {
    aks_setupallowlist_fs_with_map(v4, v3, &sharedPathMap, *"$");
    if ((aks_fs_supports_enhanced_apfs() & 1) == 0)
    {
      aks_setupallowlist_fs_with_map(v46, v3, &userPathMap, *"H");
    }

    v34 = HIDWORD(v45);
    v35 = *v27;
    v36 = OUTLINED_FUNCTION_1_5(__logfd);
    fprintf(v36, "%s has been allow listed with version:%c\n", v4, v37);
    v38 = _aks_version_commit(v34, 52);
    if (v38)
    {
      v39 = v38;
      if (!v26)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  v39 = 0;
  if (v26)
  {
LABEL_10:
    fclose(v26);
  }

LABEL_11:
  __logfd = *v27;
  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t aks_migrate_path(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a1 && (OUTLINED_FUNCTION_4_5(), bzero(v16, 0x400uLL), realpath_DARWIN_EXTSN(v4, v16)))
  {
    v5 = v3 | 0x18;
    if ((v3 & 0x1C) != 0)
    {
      v5 = v3;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = __aks_migrate_path_block_invoke;
    v12[3] = &__block_descriptor_tmp_1;
    v13 = v5;
    v14 = v2;
    v15 = v1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __aks_migrate_path_block_invoke_2;
    v8[3] = &__block_descriptor_tmp_16;
    v9 = v2;
    v10 = v5;
    v11 = v1;
    _iterate_path(v16, v12, v8);
    result = 0;
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_bootstrap_fs_with_map_cold_1(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (!*__error())
  {
    return 1;
  }

  v5 = *MEMORY[0x1E69E9848];
  v6 = *a4;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v5, "failed to get uid for user '%s'(%s)\n", v6, v8);
  return 0;
}

uint64_t aks_bootstrap_fs_with_map_cold_2(uint64_t a1, uint64_t a2, uint64_t a3, const char **a4)
{
  if (!*__error())
  {
    return 1;
  }

  v5 = *MEMORY[0x1E69E9848];
  v6 = *a4;
  v7 = __error();
  v8 = strerror(*v7);
  fprintf(v5, "failed to get gid for group '%s' (%s)\n", v6, v8);
  return 0;
}

void aks_stash_create_for_bag_and_kek()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  bzero(v40, 0x1000uLL);
  v26 = v40;
  v27 = &v41;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v12 = aks_client_connection;
    if (der_utils_encode_fv_data(&v26))
    {
      OUTLINED_FUNCTION_17();
      if (ccder_blob_encode_tl())
      {
        v28 = v10;
        v29 = v9;
        v30 = v5;
        v31 = v3;
        v32 = v7;
        v33 = v27;
        v34 = (&v41 - v27);
        OUTLINED_FUNCTION_50_0();
        OUTLINED_FUNCTION_5_2(v12, 0x21u, v13, 7u, v14, v15, v16, v17, v24, v25);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_11_3();
    *(v19 + 60) = v20;
    v36 = v21;
    *(v19 + 70) = "aks_stash_create_for_bag_and_kek";
    v37 = v21;
    v38 = ":";
    v39 = v22;
    OUTLINED_FUNCTION_92(v19);
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v35);
  }

  v18 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_13_0();
}

uint64_t _aks_stash_load(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (get_aks_client_connection())
  {
    OUTLINED_FUNCTION_47_0();
    v13 = IOConnectCallMethod(v5, v6, v7, v8, v9, v10, v11, v12, 0, 0);
    if (v13)
    {
      a2 = v13;
    }

    else
    {
      a2 = 0;
      if (a3)
      {
        *a3 = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v16, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v17, v18, v19, v20, outputStruct, v22, v23, v24, v25, v26, 2u);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t aks_prederived_free(void **a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  OUTLINED_FUNCTION_81();
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  free(a1[1]);
  free(a1);
  return 0;
}

uint64_t aks_prederived_create(int a1, uint64_t a2, unint64_t a3, int a4, void *a5)
{
  v14 = 0;
  if (!a2 && a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (_aks_prederived_create_ctx(a4, &v14) || (v9 = calloc(0x20uLL, 1uLL)) == 0)
  {
    v12 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = v9;
    v11 = _aks_prederive_passcode(v14);
    v12 = 0xFFFFFFFFLL;
    if (a3 <= 0x7FFFFFFE && !v11 && !_set_prederived_configuration(a1, a2, a3, v10, v14))
    {
      v12 = 0;
      if (a5)
      {
        *a5 = v14;
        v14 = 0;
      }
    }

    OUTLINED_FUNCTION_74(v10);
    free(v10);
  }

  if (v14)
  {
    aks_prederived_free(v14);
  }

  return v12;
}

uint64_t _aks_prederived_create_ctx(int a1, void *a2)
{
  if ((a1 - 1) > 2 || a2 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = calloc(0x20uLL, 1uLL);
  if (!v6)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = v6;
  *(v6 + 2) = 20;
  v8 = calloc(0x14uLL, 1uLL);
  *(v7 + 1) = v8;
  if (!v8)
  {
LABEL_19:
    free(v7);
    return 0xFFFFFFFFLL;
  }

  *v7 = 1634431856;
  v7[6] = a1;
  v9 = *MEMORY[0x1E69E94D8];
  v10 = *(v7 + 2);
  result = CCRandomCopyBytes();
  if (result)
  {
    v12 = *(v7 + 1);
    if (v12)
    {
      free(v12);
    }

    goto LABEL_19;
  }

  if (a1 == 3)
  {
    v11 = 2000;
  }

  else
  {
    v11 = 10000000;
  }

  if (a1 == 2)
  {
    v11 = 1000;
  }

  v7[1] = v11;
  *a2 = v7;
  return result;
}

uint64_t _aks_prederive_passcode(unsigned int *a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = *a1;
  OUTLINED_FUNCTION_81();
  if (!v6 || !v3 && v4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (v5 && a1[6] - 4 >= 0xFFFFFFFD)
  {
    ccsha256_di();
    v9 = *(a1 + 1);
    v8 = *(a1 + 2);
    v10 = a1[1];
    if (ccpbkdf2_hmac())
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _set_prederived_configuration(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_107();
  if ((v10 || !a3) && a4 && a5)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v12 = aks_client_connection;
      v13 = *(a5 + 8);
      v14 = *(a5 + 16);
      if (!encode_list_add_data() && !encode_list_add_data() && !encode_list_add_number(&v30, der_key_config_prederived_iterations, *(a5 + 4)) && !encode_list_add_number(&v30, der_key_config_prederived_type, *(a5 + 24)) && (a3 < 1 || !encode_list_add_data()) && !encode_list_is_empty(&v30) && !encode_list_dict(&v30, &v32, &__n))
      {
        v33 = a1;
        v34 = v32;
        v35 = __n;
        OUTLINED_FUNCTION_50_0();
        v5 = OUTLINED_FUNCTION_5_2(v12, 0x1Eu, v15, 3u, v16, v17, v18, v19, v28, v29);
      }
    }

    else
    {
      v5 = (v5 - 6);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_27_3();
        OUTLINED_FUNCTION_3_6();
        OUTLINED_FUNCTION_65();
        OUTLINED_FUNCTION_64();
        OUTLINED_FUNCTION_16_3(v22);
        OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v24, v25, v26, v27, v28, v29, v30, __n, v32, v33, v34, v35, v36);
      }
    }
  }

  encode_list_free(&v30);
  if (v32)
  {
    OUTLINED_FUNCTION_22_1(v32, __n);
    free(v32);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

void aks_prederived_is_enabled()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  v36 = *MEMORY[0x1E69E9840];
  if (v3)
  {
    OUTLINED_FUNCTION_70();
    v4 = calloc(0x20uLL, 1uLL);
    if (v4)
    {
      v5 = v4;
      *v4 = 1634431856;
      aks_client_connection = get_aks_client_connection();
      if (!aks_client_connection)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          v35[0] = 136317954;
          OUTLINED_FUNCTION_37_0(v35);
          OUTLINED_FUNCTION_5_6(v19);
          OUTLINED_FUNCTION_79(v20);
          OUTLINED_FUNCTION_76(v21);
          OUTLINED_FUNCTION_15_3(v22);
          OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v23, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v35);
        }

        goto LABEL_17;
      }

      v7 = aks_client_connection;
      bzero(v34, 0x8000uLL);
      v24[0] = 0x8000;
      v33 = v1;
      if (OUTLINED_FUNCTION_18_3(v7, 0x1Fu, &v33, v8, v9, v10, v11, v12, v34, v24) || v24[0] > 0x8000)
      {
LABEL_17:
        aks_prederived_free(v5);
        goto LABEL_14;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v29 = 0;
      v25 = 0u;
      v26 = 0u;
      v28 = 0u;
      v31 = 0u;
      v32 = 0u;
      v24[1] = der_key_config_prederived_salt;
      v27 = der_key_config_prederived_iterations;
      v30 = der_key_config_prederived_type;
      OUTLINED_FUNCTION_13_3();
      der_dict_iterate();
      v14 = ccder_decode_tl();
      if (v14)
      {
        v15 = v14;
        v16 = calloc(*(v5 + 2), 1uLL);
        *(v5 + 1) = v16;
        if (!v16)
        {
          v17 = 0;
          if (!Mutable)
          {
            goto LABEL_11;
          }

          goto LABEL_10;
        }

        memcpy(v16, v15, *(v5 + 2));
        v5[1] = der_get_number();
        v5[6] = der_get_number();
      }

      v17 = 1;
      if (!Mutable)
      {
LABEL_11:
        if (v17 && *(v5 + 2))
        {
          *v0 = v5;
          goto LABEL_14;
        }

        goto LABEL_17;
      }

LABEL_10:
      CFRelease(Mutable);
      goto LABEL_11;
    }
  }

LABEL_14:
  v18 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_prederived_unlock_keybag(int a1, uint64_t a2, int a3, unsigned int *a4)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  if (a3)
  {
    v4 = a2 == 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 || a4 == 0;
  if (v5 || *a4 != 1634431856 || _aks_prederive_passcode(a4))
  {
    v7 = 0xFFFFFFFFLL;
  }

  else
  {
    v7 = _aks_unlock_bag(a1, v10, 32, 0);
  }

  OUTLINED_FUNCTION_74(v10);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t aks_prederived_change_secret(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int **a6)
{
  v25 = *MEMORY[0x1E69E9840];
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v22 = 0;
  if (!a6)
  {
    goto LABEL_18;
  }

  v7 = *a6;
  if (!*a6)
  {
    goto LABEL_18;
  }

  v8 = *v7;
  OUTLINED_FUNCTION_81();
  if (!v14)
  {
    goto LABEL_18;
  }

  v15 = v9;
  if (!v10)
  {
    if (v11)
    {
      goto LABEL_18;
    }
  }

  if (!v12 && v13 || _aks_prederive_passcode(v7))
  {
    goto LABEL_18;
  }

  v16 = _aks_prederived_create_ctx(v7[6], &v22);
  v17 = v22;
  if (v16 || (v18 = _aks_prederive_passcode(v22), v17 = v22, v18))
  {
LABEL_16:
    if (v17)
    {
      aks_prederived_free(v17);
    }

LABEL_18:
    v19 = 0xFFFFFFFFLL;
    goto LABEL_14;
  }

  if (_set_prederived_configuration(v15, v24, 32, v23, v22))
  {
    v17 = v22;
    goto LABEL_16;
  }

  aks_prederived_free(v7);
  v19 = 0;
  *a6 = v22;
LABEL_14:
  OUTLINED_FUNCTION_74(v24);
  OUTLINED_FUNCTION_74(v23);
  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t _aks_unlock_with_sync_bag(const void *a1, int a2, uint64_t a3, int a4, unsigned int a5, int a6)
{
  v29 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (a1)
    {
      v25 = a6;
      v26 = a3;
      v27 = a4;
      v28 = a5;
      v6 = OUTLINED_FUNCTION_19_0(aks_client_connection, 0x43u, &v25, 4u, a1, a2, v14, v15, 0, 0);
    }

    else
    {
      v6 = (v6 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, 2u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t aks_load_bag(const void *a1, int a2, _DWORD *a3)
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v3 = (v3 + 6);
    if (a1)
    {
      if (a3)
      {
        output = 0;
        HIDWORD(v17) = 1;
        v3 = IOConnectCallMethod(aks_client_connection, 6u, 0, 0, a1, a2, &output, &v17 + 1, 0, 0);
        if (!v3)
        {
          *a3 = output;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v11, v12, v13, v14, outputStruct, v16, v17, output, 2u);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t aks_invalidate_bag(const void *a1, int a2)
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (!aks_client_connection)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136317954;
      v15 = "aks.fw";
      v16 = 2080;
      OUTLINED_FUNCTION_0_6();
      v17 = "aks_invalidate_bag";
      v18 = v10;
      v19 = ":";
      v20 = v11;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v14);
    }

    goto LABEL_8;
  }

  if (!a1)
  {
    v2 = (v2 + 6);
LABEL_8:
    v13 = *MEMORY[0x1E69E9840];
    return v2;
  }

  result = OUTLINED_FUNCTION_19_0(aks_client_connection, 0x57u, 0, 0, a1, a2, v6, v7, 0, 0);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_save_bag(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v5 = v4;
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v7 = aks_client_connection;
    result = (v3 + 6);
    if (v2)
    {
      if (v1)
      {
        bzero(__src, 0x8000uLL);
        __count = 0x8000;
        v22 = v5;
        result = OUTLINED_FUNCTION_18_3(v7, 3u, &v22, v9, v10, v11, v12, v13, __src, &__count);
        if (!result)
        {
          v14 = calloc(__count, 1uLL);
          *v2 = v14;
          if (v14)
          {
            memcpy(v14, __src, __count);
            result = 0;
            *v1 = __count;
          }

          else
          {
            result = (v3 + 1);
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v24[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v24);
      OUTLINED_FUNCTION_5_6(v16);
      OUTLINED_FUNCTION_79(v17);
      OUTLINED_FUNCTION_76(v18);
      OUTLINED_FUNCTION_15_3(v19);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v24);
    }

    result = OUTLINED_FUNCTION_51_0();
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_get_bag_uuid()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  v20 = 0uLL;
  v18 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v1)
    {
      v19 = v2;
      v0 = OUTLINED_FUNCTION_18_3(aks_client_connection, 0x17u, &v19, v4, v5, v6, v7, v8, &v20, &v18);
      if (!v0)
      {
        *v1 = v20;
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v12, v13, v14, v15, v16, v17, v18, v19, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_copy_volume_cookie_persona(int a1, uint64_t a2, void *a3, size_t *a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = buf;
  v46 = 0;
  memset(__src, 0, sizeof(__src));
  v36 = 0;
  __count = 34;
  HIDWORD(v34) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v8 = 3758097090;
    if (a3 && a4)
    {
      v17 = aks_client_connection;
      v38 = a1;
      OUTLINED_FUNCTION_98(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, a2, 16, v34, 0, 0);
      if (!v36)
      {
        goto LABEL_9;
      }

      v21 = OUTLINED_FUNCTION_54_0(v17, 0x44u, &v38, v18, v36, v35, v19, v20, __src, &__count);
      if (v21)
      {
        v8 = v21;
        goto LABEL_8;
      }

      v22 = calloc(__count, 1uLL);
      *a3 = v22;
      if (v22)
      {
        memcpy(v22, __src, __count);
        v8 = 0;
        *a4 = __count;
      }

      else
      {
LABEL_9:
        v8 = 3758097085;
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136317954;
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_45_0();
      v40 = 813;
      v41 = v25;
      v42 = v26;
      v43 = v25;
      v44 = v26;
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v28, v29, v30, v31, v32, v33, v34, 0, __count, v38, buf[0]);
    }

    OUTLINED_FUNCTION_68();
  }

LABEL_8:
  free(v36);
  v23 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t aks_get_system()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      HIDWORD(v30) = 1;
      OUTLINED_FUNCTION_50_0();
      OUTLINED_FUNCTION_47_0();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v25, v27);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v29, v30, v31);
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v27, v29, v30, v31, v32, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_set_keybag_for_volume_with_cookie_persona(int a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  HIDWORD(v40) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v21 = aks_client_connection;
    v43[0] = a1;
    v43[1] = a3;
    v22 = OUTLINED_FUNCTION_101(aks_client_connection, v14, v15, v16, v17, v18, v19, v20, v38, v39, a4, a5, a6, 16, v40, 0);
    aks_pack_data(v22, v23, 3, v24, v25, v26, v27, v28, a2);
    if (v42)
    {
      v6 = OUTLINED_FUNCTION_19_0(v21, 0x41u, v43, 2u, v42, v41, v29, v30, 0, 0);
      v31 = v42;
    }

    else
    {
      v31 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v44[0] = 136317954;
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_0_4();
      v45 = "aks_set_keybag_for_volume_with_cookie_persona";
      v46 = v34;
      v47 = ":";
      v48 = v35;
      v49 = 1074;
      OUTLINED_FUNCTION_55_0(v36);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v37, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v44);
    }

    v31 = 0;
  }

  free(v31);
  v32 = *MEMORY[0x1E69E9840];
  return v6;
}

void _aks_backup_enable_volume()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  v36 = 0;
  HIDWORD(v35) = 0;
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v21 = aks_client_connection;
    v37 = v11;
    v38 = v9;
    v39 = v7;
    OUTLINED_FUNCTION_96(aks_client_connection, v14, v15, v16, v17, v18, v19, v20, v12, 16, __count, v35, HIDWORD(v35), v36);
    if (v36)
    {
      if (!OUTLINED_FUNCTION_19_0(v21, 0x6Eu, &v37, 3u, v36, SHIDWORD(v35), v22, v23, __src, &__count))
      {
        v24 = calloc(__count, 1uLL);
        *v5 = v24;
        if (v24)
        {
          memcpy(v24, __src, __count);
          *v3 = __count;
        }
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_27_3();
    OUTLINED_FUNCTION_3_6();
    OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_16_3(v26);
    OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v28, v29, v30, v31, v32, v33, __count, v35, v36, v37, v38, v39, v40);
  }

  free(v36);
  v25 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_backup_disable_volume()
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  HIDWORD(v25) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_98(v3, v4, v5, v6, v7, v8, v9, v10, v23, v24, v25, 0, 0);
    if (v27)
    {
      v0 = OUTLINED_FUNCTION_49_0(v2, 0x6Fu, v11, v12, v27, v26, v13, v14, 0, 0);
      v15 = v27;
    }

    else
    {
      v15 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, 0, 2u);
    }

    v15 = 0;
  }

  free(v15);
  v16 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_backup_copy_current_bag_uuid(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  v29 = 0;
  HIDWORD(v28) = 0;
  v27 = 16;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    aks_pack_data(&v29, &v28 + 1, 1, v6, v7, v8, v9, v10, a1);
    if (v29)
    {
      v2 = OUTLINED_FUNCTION_49_0(v11, 0x70u, v12, v13, v29, SHIDWORD(v28), v14, v15, a2, &v27);
      v16 = v29;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, 2u);
    }

    v16 = 0;
  }

  free(v16);
  v17 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t aks_backup_rewrap_key(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, unsigned int a6, void *a7)
{
  OUTLINED_FUNCTION_26_3(*MEMORY[0x1E69E9840]);
  v43 = 0;
  HIDWORD(v42) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v23 = aks_client_connection;
    v24 = 0;
    v7 = (v7 + 6);
    if (a2 && a7)
    {
      v44[0] = a4;
      v44[1] = a5;
      v44[2] = a6;
      v25 = OUTLINED_FUNCTION_109(0, v16, v17, v18, v19, v20, v21, v22, a1, 16, a2, a3, v41, v42, v43);
      aks_pack_data(v25, v26, 2, v27, v28, v29, v30, v31, v40);
      v41 = 108;
      v7 = OUTLINED_FUNCTION_19_0(v23, 0x71u, v44, 3u, v43, SHIDWORD(v42), v32, v33, a7, &v41);
      v24 = v43;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v45[0] = 136317954;
      OUTLINED_FUNCTION_6_2();
      OUTLINED_FUNCTION_0_4();
      v46 = "aks_backup_rewrap_key";
      v47 = v36;
      v48 = ":";
      v49 = v37;
      *(v38 + 90) = 1186;
      OUTLINED_FUNCTION_55_0(v38);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v39, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v45);
    }

    v24 = 0;
  }

  free(v24);
  v34 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t aks_backup_rewrap_ek(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, unsigned int a8, void *a9)
{
  v44 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  v35 = 0;
  v34 = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v22 = aks_client_connection;
    v23 = 0;
    v9 = (v9 + 6);
    if (a2 && a4 && a9)
    {
      v36[0] = a6;
      v36[1] = a7;
      v36[2] = a8;
      aks_pack_data(&v35, &v34, 3, v17, v18, v19, v20, v21, a1);
      v33 = 108;
      v9 = OUTLINED_FUNCTION_19_0(v22, 0x71u, v36, 3u, v35, v34, v24, v25, a9, &v33);
      v23 = v35;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_104();
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_11_3();
      v38 = v28;
      v39 = v29;
      v40 = "aks_backup_rewrap_ek";
      v41 = v29;
      v42 = ":";
      v43 = v30;
      OUTLINED_FUNCTION_92(v31);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v37);
    }

    v23 = 0;
  }

  free(v23);
  v26 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t aks_backup_unwrap_bag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  OUTLINED_FUNCTION_95();
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  v28 = 0u;
  __s = 0u;
  v26 = 0u;
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v10 = decode_backup_bag(v8, v9, v23);
  if (v10)
  {
    v18 = v10;
  }

  else
  {
    v10 = unwrap_backup_bag(v23, v6, v5, &__s, v14, v15, v16, v17);
    v18 = v10;
    if (!v10)
    {
      v19 = v26;
      *a5 = __s;
      a5[1] = v19;
      v20 = v28;
      a5[2] = v27;
      a5[3] = v20;
    }
  }

  OUTLINED_FUNCTION_118(v10, v11, v12, v13, v14, v15, v16, v17, *&v23[0]);
  memset_s(&__s, 0x40uLL, 0, 0x40uLL);
  result = err_sks_to_aks(v18);
  v22 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_backup_copy_bag_uuid(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v4 = decode_backup_bag(a1, a2, v15);
  v12 = v4;
  if (!v4)
  {
    uuid_copy(a3, v15 + 8);
  }

  OUTLINED_FUNCTION_118(v4, v5, v6, v7, v8, v9, v10, v11, *&v15[0]);
  result = err_sks_to_aks(v12);
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_kc_backup_unwrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_86();
  v10 = v9;
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v25 = v10;
      v26 = 64;
      v5 = OUTLINED_FUNCTION_48_0(aks_client_connection, 0x82u, &v25, 2u, v12, v13, v14, v15, v7, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, v26, 2u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t aks_kc_backup_wrap_key(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, size_t *a5)
{
  OUTLINED_FUNCTION_86();
  v10 = v9;
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v5 = (v5 + 6);
    if (v6 && v7)
    {
      v26 = v10;
      v5 = OUTLINED_FUNCTION_48_0(aks_client_connection, 0x81u, &v26, 1u, v12, v13, v14, v15, v7, a5);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, v26, 2u);
  }

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t aks_kc_backup_get_handle()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_2();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v25, v27);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v29, v30, v31);
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v27, v29, v30, v31, v32, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_kc_backup_get_uuid()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      v18 = 16;
      *src = 0;
      v8 = OUTLINED_FUNCTION_18_3(v2, 0x84u, &v21, v3, v4, v5, v6, v7, src, &v18);
      if (v8)
      {
        v0 = v8;
      }

      else if (v18 == 16)
      {
        uuid_copy(v1, src);
        v0 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_45();
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v12, v13, v14, v15, v16, v17, v18, *src, v20, v21, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_kc_backup_open_keybag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    v20 = 3758097090;
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_95();
  v9 = v8;
  v11 = v10;
  *a5 = -1;
  v15 = aks_backup_unwrap_bag(v10, v8, v12, v13, v14);
  v16 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
  if (!v15)
  {
    if (v16)
    {
      *buf = 136317954;
      v33 = "aks.fw";
      v34 = 2080;
      OUTLINED_FUNCTION_0_6();
      v35 = "aks_kc_backup_open_keybag";
      v36 = v17;
      v37 = ":";
      v38 = v18;
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Unwrapped DER backup bag%s\n", buf);
    }

    v20 = 0;
    goto LABEL_14;
  }

  if (v16)
  {
    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_103();
    v39 = 1389;
    v40 = v21;
    v41 = "";
    v42 = v22;
    v43 = v15;
    v44 = v21;
    v45 = "";
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unwrap backup bag as DER: 0x%08x%s\n", buf, 0x78u);
  }

  bag = aks_load_bag(v11, v9, a5);
  if (bag)
  {
    v20 = bag;
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_10_4();
    OUTLINED_FUNCTION_103();
    OUTLINED_FUNCTION_31_1();
    v28 = MEMORY[0x1E69E9C10];
    v29 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to load in-kernel backup bag: 0x%08x%s\n";
  }

  else
  {
    v24 = *a5;
    aks_prederived_is_enabled();
    v26 = v25;
    v27 = *a5;
    if (v26)
    {
      v20 = aks_prederived_unlock_keybag(v27, v6, v5, 0);
      if (!v20)
      {
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_31_1();
      v28 = MEMORY[0x1E69E9C10];
      v29 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag with prederived secret: 0x%08x%s\n";
    }

    else
    {
      v20 = _aks_unlock_bag(v27, v6, v5, 0);
      if (!v20)
      {
        goto LABEL_14;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      OUTLINED_FUNCTION_10_4();
      OUTLINED_FUNCTION_103();
      OUTLINED_FUNCTION_31_1();
      v28 = MEMORY[0x1E69E9C10];
      v29 = "%s:%spid:%d,%s:%s%s%s%s%s%u:%s Failed to unlock in-kernel backup bag: 0x%08x%s\n";
    }
  }

  _os_log_impl(&dword_1E0B50000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x78u);
LABEL_21:
  if (*a5 != -1)
  {
    aks_unload_bag(*a5);
    *a5 = -1;
  }

LABEL_14:
  aks_prederived_free(0);
  v30 = *MEMORY[0x1E69E9840];
  return v20;
}

uint64_t aks_keybag_persona_create()
{
  OUTLINED_FUNCTION_95();
  v36 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  HIDWORD(v30) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_96(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v30, 0, 0);
    if (v31)
    {
      OUTLINED_FUNCTION_50_0();
      v0 = OUTLINED_FUNCTION_19_0(v2, 0x60u, v11, 3u, v12, v13, v14, v15, v26, v28);
      v16 = v31;
    }

    else
    {
      v16 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_102(v19);
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v27, v29, v30, 0, v32, v33, v34, v35);
    }

    v16 = 0;
  }

  free(v16);
  v17 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_keybag_persona_create_with_flags(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v41 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  HIDWORD(v33) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v11 = aks_client_connection;
    v36 = a1;
    v37 = a2;
    v38 = a3;
    v39 = a5;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_98(v12, v13, v14, v15, v16, v17, v18, v19, v31, v32, v33, 0, 0);
    if (v35)
    {
      v5 = OUTLINED_FUNCTION_19_0(v11, 0x75u, &v36, 4u, v35, v34, v20, v21, 0, 0);
      v22 = v35;
    }

    else
    {
      v22 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_64();
      *(v25 + 90) = 1445;
      OUTLINED_FUNCTION_102(v25);
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v26, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v27, v28, v29, v30, v31, v32, v33, 0, v36, v37, v38, v39, v40);
    }

    v22 = 0;
  }

  free(v22);
  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t aks_keybag_persona_list(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  OUTLINED_FUNCTION_70();
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_77();
  bzero(__src, 0x2000uLL);
  v5 = (v2 + 6);
  if (v1 && v4)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_105();
      v13 = OUTLINED_FUNCTION_18_3(v6, 0x61u, v7, v8, v9, v10, v11, v12, v22, v23);
      if (v13)
      {
        v5 = v13;
      }

      else
      {
        v14 = calloc(0x2000uLL, 1uLL);
        *v1 = v14;
        if (v14)
        {
          memcpy(v14, __src, 0x2000uLL);
          v5 = 0;
          *v4 = 0x2000;
        }

        else
        {
          v5 = (v2 + 1);
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, 0x2000, 2u);
      }

      OUTLINED_FUNCTION_68();
    }
  }

  memset_s(__src, 0x2000uLL, 0, 0x2000uLL);
  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t aks_keybag_persona_delete()
{
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  HIDWORD(v30) = 0;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v2 = aks_client_connection;
    OUTLINED_FUNCTION_111();
    OUTLINED_FUNCTION_96(v3, v4, v5, v6, v7, v8, v9, v10, v25, v27, v29, v30, 0, 0);
    if (v31)
    {
      OUTLINED_FUNCTION_50_0();
      v0 = OUTLINED_FUNCTION_54_0(v2, 0x62u, v11, v12, v13, v14, v15, v16, v26, v28);
      v17 = v31;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_73();
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_22_3();
      OUTLINED_FUNCTION_2_8();
      OUTLINED_FUNCTION_46_0();
      OUTLINED_FUNCTION_45_0();
      OUTLINED_FUNCTION_9_4();
      OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v27, v29, v30, 0, v32, 2u);
    }

    v17 = 0;
  }

  free(v17);
  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t aks_auth_token_create(int a1, uint64_t a2, int a3, unsigned int a4, void *a5, size_t *a6)
{
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v6 + 6);
    if (a5 && a6)
    {
      v27 = a1;
      v28 = a4;
      v29 = a2;
      v30 = a3;
      v6 = OUTLINED_FUNCTION_5_2(aks_client_connection, 0x26u, &v27, 4u, v14, v15, v16, v17, a5, a6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v6;
}

void aks_fdr_hmac_data()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_108();
  bzero(__src, 0x8000uLL);
  __count = 0x8000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (v8)
    {
      if (v5)
      {
        if (v3)
        {
          if (!OUTLINED_FUNCTION_19_0(aks_client_connection, 0x29u, 0, 0, v8, v7, v10, v11, __src, &__count))
          {
            v12 = calloc(__count, 1uLL);
            *v5 = v12;
            if (v12)
            {
              memcpy(v12, __src, __count);
              *v3 = __count;
            }
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v14, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v15, v16, v17, v18, v19, v20, v21, __count, 2u);
    }

    OUTLINED_FUNCTION_68();
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

void aks_create_signing_key_with_params()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_110();
  if (v3)
  {
    v5 = v4;
    if (v4)
    {
      v6 = v3;
      OUTLINED_FUNCTION_95();
      bzero(__src, 0x8000uLL);
      aks_client_connection = get_aks_client_connection();
      if (aks_client_connection)
      {
        if (!OUTLINED_FUNCTION_19_0(aks_client_connection, 0x31u, v22, 2u, v1, v0, v8, v9, __src, &__count) && __count <= 0x8000)
        {
          v10 = calloc(__count, 1uLL);
          *v6 = v10;
          if (v10)
          {
            memcpy(v10, __src, __count);
            OUTLINED_FUNCTION_100();
            *v5 = v11;
          }
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v13, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v14, v15, v16, v17, v18, v19, v20, __count, 2u);
        }

        OUTLINED_FUNCTION_51_0();
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

void remote_session_operate()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v4;
  OUTLINED_FUNCTION_82();
  v7 = v6;
  v9 = v8;
  v31 = *MEMORY[0x1E69E9840];
  bzero(__src, 0x3C00uLL);
  __count = 15360;
  v27 = v9;
  v28 = v2;
  v29 = v1;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (OUTLINED_FUNCTION_5_2(aks_client_connection, v7, &v27, 3u, v11, v12, v13, v14, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x3C00)
    {
      OUTLINED_FUNCTION_45();
    }

    else if (v0 && v5)
    {
      if (__count)
      {
        v15 = calloc(__count, 1uLL);
        *v0 = v15;
        if (!v15)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        memcpy(v15, __src, __count);
        v16 = __count;
      }

      else
      {
        v16 = 0;
      }

      *v5 = v16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, __count, 2u);
    }
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_drain_backup_keys(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v7 = v6;
  OUTLINED_FUNCTION_59_0(*MEMORY[0x1E69E9840]);
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v14 = aks_client_connection;
    result = (v3 + 6);
    if (v2)
    {
      if (v1)
      {
        OUTLINED_FUNCTION_119(result, v9, v10, v11, v12, v13);
        __count = v4;
        v29[0] = v7;
        v29[1] = 0;
        result = OUTLINED_FUNCTION_5_2(v14, 0x14u, v29, 2u, v16, v17, v18, v19, v5, &__count);
        if (!result)
        {
          if (__count)
          {
            v20 = calloc(__count, 1uLL);
            *v2 = v20;
            if (v20)
            {
              memcpy(v20, __src, __count);
              result = OUTLINED_FUNCTION_100();
              *v1 = v21;
            }

            else
            {
              result = (v3 + 1);
            }
          }

          else
          {
            result = (v3 + 52);
          }
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v31[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v31);
      OUTLINED_FUNCTION_5_6(v23);
      OUTLINED_FUNCTION_79(v24);
      OUTLINED_FUNCTION_76(v25);
      OUTLINED_FUNCTION_15_3(v26);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v31);
    }

    result = OUTLINED_FUNCTION_51_0();
  }

  v22 = *MEMORY[0x1E69E9840];
  return result;
}

void aks_set_backup_bag()
{
  OUTLINED_FUNCTION_14_0();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v1;
  v34 = *MEMORY[0x1E69E9840];
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v14 = aks_client_connection;
    if (v5)
    {
      if (!v3)
      {
        goto LABEL_10;
      }

      v15 = __src;
      p_count = &__count;
      v17 = 1;
    }

    else
    {
      p_count = 0;
      v15 = 0;
      v17 = 0;
    }

    bzero(__src, 0x8000uLL);
    __count = 0x8000;
    v31[0] = v12;
    v31[1] = v11;
    v31[2] = v17;
    v31[3] = v9;
    v31[4] = v7;
    v22 = OUTLINED_FUNCTION_5_2(v14, 0x15u, v31, 5u, v18, v19, v20, v21, v15, p_count);
    if (v5 && !v22)
    {
      v23 = calloc(__count, 1uLL);
      *v5 = v23;
      if (v23)
      {
        memcpy(v23, __src, __count);
        *v3 = __count;
      }

      else
      {
        OUTLINED_FUNCTION_30_2();
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      v33[0] = 136317954;
      OUTLINED_FUNCTION_37_0(v33);
      OUTLINED_FUNCTION_5_6(v25);
      OUTLINED_FUNCTION_79(v26);
      OUTLINED_FUNCTION_76(v27);
      OUTLINED_FUNCTION_15_3(v28);
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v29, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v33);
    }

    OUTLINED_FUNCTION_51_0();
  }

LABEL_10:
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_make_public_backup_bag()
{
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_24_3(*MEMORY[0x1E69E9840]);
  if (get_aks_client_connection())
  {
    if (v1)
    {
      OUTLINED_FUNCTION_91();
      OUTLINED_FUNCTION_25_3();
      OUTLINED_FUNCTION_19_2();
      v10 = IOConnectCallMethod(v2, v3, v4, v5, v6, v7, v8, v9, v25, v27);
      v0 = v10;
      if (!v10)
      {
        OUTLINED_FUNCTION_94(v10, v11, v12, v13, v14, v15, v16, v17, v26, v28, v29, v30, v31);
      }
    }

    else
    {
      v0 = (v0 + 6);
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_22_3();
    OUTLINED_FUNCTION_2_8();
    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_45_0();
    OUTLINED_FUNCTION_9_4();
    OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v20, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v21, v22, v23, v24, v25, v27, v29, v30, v31, v32, 2u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v0;
}

void aks_smartcard_register()
{
  OUTLINED_FUNCTION_117();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v28[4] = *MEMORY[0x1E69E9840];
  v28[0] = v8;
  v28[1] = v9;
  v28[2] = v10;
  v28[3] = v11;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (OUTLINED_FUNCTION_19_0(aks_client_connection, 0x3Bu, v28, 4u, v7, v5, v13, v14, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_45();
    }

    else if (v3 && v1)
    {
      if (__count)
      {
        v15 = calloc(__count, 1uLL);
        *v3 = v15;
        if (!v15)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        memcpy(v15, __src, __count);
        v16 = __count;
      }

      else
      {
        v16 = 0;
      }

      *v1 = v16;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, __count, 2u);
    }
  }

LABEL_11:
  v17 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

void aks_smartcard_request_unlock()
{
  OUTLINED_FUNCTION_117();
  OUTLINED_FUNCTION_99();
  v21[1] = *MEMORY[0x1E69E9840];
  v21[0] = v4;
  bzero(__src, 0x800uLL);
  __count = 2048;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (OUTLINED_FUNCTION_19_0(aks_client_connection, 0x3Du, v21, 1u, v3, v0, v6, v7, __src, &__count))
    {
      goto LABEL_11;
    }

    if (__count > 0x800)
    {
      OUTLINED_FUNCTION_45();
    }

    else if (v2 && v1)
    {
      if (__count)
      {
        v8 = calloc(__count, 1uLL);
        *v2 = v8;
        if (!v8)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        memcpy(v8, __src, __count);
        v9 = __count;
      }

      else
      {
        v9 = 0;
      }

      *v1 = v9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v12, v13, v14, v15, v16, v17, v18, __count, 2u);
    }
  }

LABEL_11:
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

void aks_smartcard_unlock()
{
  OUTLINED_FUNCTION_14_0();
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_82();
  v8 = v7;
  v48[1] = *MEMORY[0x1E69E9840];
  v48[0] = v9;
  bzero(__src, 0x800uLL);
  v18 = OUTLINED_FUNCTION_101(v10, v11, v12, v13, v14, v15, v16, v17, v37, v39, v1, v0, v42, 2048, v45, 0);
  aks_pack_data(v18, v19, 2, v20, v21, v22, v23, v24, v8);
  if (v46)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      if (!OUTLINED_FUNCTION_54_0(aks_client_connection, 0x3Eu, v48, v26, v46, SHIDWORD(v45), v27, v28, __src, &__count) && __count <= 0x800 && v6 && v4)
      {
        if (__count)
        {
          v29 = calloc(__count, 1uLL);
          *v6 = v29;
          if (!v29)
          {
            goto LABEL_12;
          }

          memcpy(v29, __src, __count);
          v30 = __count;
        }

        else
        {
          v30 = 0;
        }

        *v4 = v30;
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_42_0();
        OUTLINED_FUNCTION_8_3();
        OUTLINED_FUNCTION_89();
        OUTLINED_FUNCTION_88();
        OUTLINED_FUNCTION_23_3();
        OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v33, v34, v35, v36, v38, v2, v40, v41, v43, __count, v45, v46, 2u);
      }

      OUTLINED_FUNCTION_68();
    }
  }

LABEL_12:
  free(v46);
  v31 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_smartcard_get_sc_usk(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_enc_sc_usk, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_foo(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v14 = *MEMORY[0x1E69E9840];
  result = 0xFFFFFFFFLL;
  if (a3 && a4 && a5 && a6 && a4 >= 1)
  {
    OUTLINED_FUNCTION_13_3();
    der_dict_iterate();
    if (a2)
    {
      if (*a6 == 8)
      {
        number = der_get_number();
        result = 0;
        *a5 = number;
        goto LABEL_11;
      }
    }

    else
    {
      v11 = ccder_decode_tl();
      if (v11)
      {
        v12 = v11;
        result = 0;
        *a5 = v12;
        *a6 = 0;
        goto LABEL_11;
      }
    }

    result = 0xFFFFFFFFLL;
  }

LABEL_11:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t aks_smartcard_get_ec_pub(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  result = 0xFFFFFFFFLL;
  if (a3 && a4)
  {
    if (aks_smartcard_get_foo(der_key_sc_auth_eph_pub, 0, a1, a2, a3, a4))
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t aks_smartcard_get_mode(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_mode, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

uint64_t aks_smartcard_get_version(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v5 = 8;
  if (!a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = 0;
  result = aks_smartcard_get_foo(der_key_sc_auth_version, 1, a1, a2, &v6, &v5);
  if (result)
  {
    return 0xFFFFFFFFLL;
  }

  *a3 = v6;
  return result;
}

void _aks_se_get_reset_token_for_memento_secret()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v49[4] = *MEMORY[0x1E69E9840];
  v49[0] = v1;
  v49[1] = v6;
  v49[2] = v7;
  v49[3] = v8;
  bzero(v48, 0x1000uLL);
  __n[0] = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x48u, v49, 4u, v10, v11, v12, v13, v48, __n) && __n[0] - 4097 >= 0xFFFFFFFFFFFFF000)
    {
      v24 = 0;
      v23 = 0u;
      v21 = 0u;
      v20 = 0u;
      __n[1] = der_key_config_se_reset_token;
      v22 = der_key_config_se_slot;
      OUTLINED_FUNCTION_13_3();
      der_dict_iterate();
      v14 = *(&v22 + 1);
      if (v20)
      {
        *v25 = 0;
        ccder_decode_tl();
        if (*v25 != 16)
        {
          goto LABEL_11;
        }

        v15 = calloc(0x10uLL, 1uLL);
        *v5 = v15;
        if (!v15)
        {
          OUTLINED_FUNCTION_30_2();
          goto LABEL_11;
        }

        __memcpy_chk();
      }

      if (v14)
      {
        number = der_get_number();
        if (number <= 0xFF)
        {
          *v3 = number;
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_68();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *v25 = 136317954;
      *&v25[4] = "aks.fw";
      v26 = 2080;
      v27 = "";
      v28 = 1024;
      v29 = -1;
      v30 = 2080;
      v31 = "";
      v32 = 2080;
      v33 = "";
      v34 = 2080;
      v35 = "";
      v36 = 2080;
      v37 = "";
      v38 = 2080;
      v39 = "_aks_se_get_reset_token_for_memento_secret";
      v40 = 2080;
      v41 = ":";
      v42 = 1024;
      v43 = 2923;
      v44 = 2080;
      v45 = "";
      v46 = 2080;
      v47 = "";
      OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v25);
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_22_1(v48, __n[0]);
  v17 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

void aks_se_get_reset_sig()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_75();
  v57 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_108();
  *&v56[4091] = v7;
  OUTLINED_FUNCTION_120(v7, v8, v9, v10, v11, v12, v13, v14, v30, v32, v34, __n, buf, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
  __na = 4096;
  if (v1 && v0 && v6 && v4)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_84();
      if (!OUTLINED_FUNCTION_18_3(v15, 0x5Au, &v56[4091], v16, v17, v18, v19, v20, v31, v33))
      {
        v21 = calloc(5uLL, 1uLL);
        *v6 = v21;
        if (v21)
        {
          *v4 = 5;
          v22 = v54;
          v21[4] = v55;
          *v21 = v22;
          v23 = calloc(0xFFBuLL, 1uLL);
          *v1 = v23;
          if (v23)
          {
            *v0 = 4091;
            memcpy(v23, v56, 0x1000uLL);
          }
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v25, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v26, v27, v28, v29, v31, v33, v35, 4096, 2u);
      }

      OUTLINED_FUNCTION_77();
    }
  }

  OUTLINED_FUNCTION_22_1(&v54, __na);
  v24 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

uint64_t aks_se_get_reset_pubkey(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v51[1] = *MEMORY[0x1E69E9840];
  v51[0] = v1;
  OUTLINED_FUNCTION_120(v1, v4, v2, v6, v7, v8, v9, v10, v27, v29, v31, __count, buf, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, __src[0]);
  v11 = 3758097090;
  if (v5 && v3)
  {
    if (get_aks_client_connection())
    {
      OUTLINED_FUNCTION_84();
      v18 = OUTLINED_FUNCTION_18_3(v12, 0x59u, v51, v13, v14, v15, v16, v17, v28, v30);
      if (v18)
      {
        v11 = v18;
      }

      else
      {
        v19 = calloc(0x1000uLL, 1uLL);
        *v5 = v19;
        if (v19)
        {
          *v3 = 4096;
          memcpy(v19, __src, 0x1000uLL);
          v11 = 0;
        }

        else
        {
          v11 = 3758097085;
        }
      }
    }

    else
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v22, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v23, v24, v25, v26, v28, v30, v32, 4096, 2u);
      }

      OUTLINED_FUNCTION_77();
    }
  }

  memset_s(__src, 0x1000uLL, 0, 0x1000uLL);
  v20 = *MEMORY[0x1E69E9840];
  return v11;
}

void aks_se_get_passcode_derivation()
{
  OUTLINED_FUNCTION_14_0();
  v29 = v1;
  v30 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v58 = *MEMORY[0x1E69E9840];
  memset(v57, 0, 128);
  v31 = 128;
  v14 = se_derivation_request_serialization_len();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v28 - v15;
  bzero(&v28 - v15, v14);
  if (!se_derivation_request_serialize(v11, v9, v7, v5, v3, v16, v14))
  {
    OUTLINED_FUNCTION_77();
    v56[0] = v13;
    v56[1] = v16;
    v56[2] = v14;
    v17 = v30;
    if (v30)
    {
      v18 = v29;
      if (v29)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x9Bu, v56, 3u, v20, v21, v22, v23, v57, &v31))
          {
            v24 = calloc(v31, 1uLL);
            *v17 = v24;
            if (v24)
            {
              v25 = v31;
              *v18 = v31;
              memcpy(v24, v57, v25);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v32 = 136317954;
            v33 = "aks.fw";
            v34 = 2080;
            v35 = "";
            v36 = 1024;
            v37 = -1;
            v38 = 2080;
            v39 = "";
            v40 = 2080;
            v41 = "";
            v42 = 2080;
            v43 = "";
            v44 = 2080;
            v45 = "";
            v46 = 2080;
            v47 = "aks_se_get_passcode_derivation";
            v48 = 2080;
            v49 = ":";
            v50 = 1024;
            v51 = 3152;
            v52 = 2080;
            v53 = "";
            v54 = 2080;
            v55 = "";
            OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v32);
          }

          OUTLINED_FUNCTION_108();
        }
      }
    }
  }

  memset_s(v16, v14, 0, v14);
  OUTLINED_FUNCTION_22_1(v57, v31);
  v26 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void aks_get_icsc_srp(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, uint64_t a23, void *a24, size_t *a25)
{
  OUTLINED_FUNCTION_14_0();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v84 = *MEMORY[0x1E69E9840];
  v81 = v26;
  v83 = 0;
  v82 = 0;
  bzero(__src, 0x4000uLL);
  v54 = a23;
  __count = 0x4000;
  v51[0] = v40;
  memset(__n, 0, sizeof(__n));
  v51[1] = v38;
  v51[2] = v36;
  v51[3] = v34;
  v51[4] = v32;
  OUTLINED_FUNCTION_77();
  v51[5] = v30;
  v51[6] = v28;
  v52 = a21;
  v53 = a22;
  if (!encode_icsc_params_internal(v51, &__n[1], __n))
  {
    v82 = *&__n[1];
    v83 = __n[0];
    if (a24)
    {
      if (a25)
      {
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x9Fu, &v81, 3u, v42, v43, v44, v45, __src, &__count))
          {
            v46 = calloc(__count, 1uLL);
            *a24 = v46;
            if (v46)
            {
              v47 = __count;
              *a25 = __count;
              memcpy(v46, __src, v47);
            }
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            v56 = 136317954;
            v57 = "aks.fw";
            v58 = 2080;
            v59 = "";
            v60 = 1024;
            v61 = -1;
            v62 = 2080;
            v63 = "";
            v64 = 2080;
            v65 = "";
            v66 = 2080;
            v67 = "";
            v68 = 2080;
            v69 = "";
            v70 = 2080;
            v71 = "aks_get_icsc_srp";
            v72 = 2080;
            v73 = ":";
            v74 = 1024;
            v75 = 3201;
            v76 = 2080;
            v77 = "";
            v78 = 2080;
            v79 = "";
            OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v49, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v56);
          }

          OUTLINED_FUNCTION_25_0();
        }
      }
    }
  }

  OUTLINED_FUNCTION_22_1(*&__n[1], __n[0]);
  free(*&__n[1]);
  OUTLINED_FUNCTION_22_1(__src, __count);
  v48 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_fv_get_blob_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v5 = v4;
  v57 = *MEMORY[0x1E69E9840];
  v11 = OUTLINED_FUNCTION_90(v1, v4, v2, v6, v7, v8, v9, v10, v32, v34, v36, v38, v39, v40, *buf, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0]);
  bzero(v11, v12);
  v38 = v56;
  v39 = &v57;
  v40 = 4096;
  if (v5 && v3)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_data(&v38);
      if (v13)
      {
        v13 = der_utils_encode_fv_params(&v38);
        if (v13)
        {
          OUTLINED_FUNCTION_17();
          v13 = ccder_blob_encode_tl();
          if (v13)
          {
            v13 = OUTLINED_FUNCTION_49_0(v22, 0x55u, v15, v16, v39, &v57 - v39, v19, v20, v56, &v40);
            if (!v13)
            {
              v13 = decode_fv_blob_state(v56);
            }
          }
        }
      }
    }

    else
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v28, v29, v30, v31, v33, v35, v37, v38, v39, v40, 2u);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_90(v13, v14, v15, v16, v17, v18, v19, v20, v33, v35, v37, v38, v39, v40, *buf, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56[0]);
  memset_s(v23, v24, 0, 0x1000uLL);
  v25 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_57_0();
}

uint64_t aks_fv_get_last_known_gp_state(__int128 *a1)
{
  v7 = 0;
  v5 = &v7;
  v6 = 1;
  v3 = 0uLL;
  v4 = 0;
  if (a1)
  {
    v3 = *a1;
    v4 = *(a1 + 2);
    v1 = *(&v3 + 1) | 0x10;
  }

  else
  {
    v1 = 16;
  }

  *(&v3 + 1) = v1;
  return aks_fv_get_blob_state(&v3);
}

uint64_t aks_fv_get_size(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  input[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  output = 0;
  input[0] = v3;
  HIDWORD(v40) = 1;
  v11 = OUTLINED_FUNCTION_90(v4, v3, v5, v6, v7, v8, v9, v10, outputStruct, v34, v36, v38, inputStruct, v40, buf, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  bzero(v11, v12);
  v38 = &v56;
  inputStruct = &output;
  if (v2)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v22 = aks_client_connection;
      v13 = der_utils_encode_fv_params(&v38);
      if (v13)
      {
        OUTLINED_FUNCTION_17();
        v13 = ccder_blob_encode_tl();
        if (v13)
        {
          v13 = IOConnectCallMethod(v22, 0x4Eu, input, 1u, inputStruct, &output - inputStruct, &output, &v40 + 1, 0, 0);
          if (!v13)
          {
            *v2 = output;
          }
        }
      }
    }

    else
    {
      v13 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        OUTLINED_FUNCTION_22_3();
        OUTLINED_FUNCTION_2_8();
        OUTLINED_FUNCTION_46_0();
        OUTLINED_FUNCTION_45_0();
        OUTLINED_FUNCTION_9_4();
        OUTLINED_FUNCTION_40_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v27, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v28, v29, v30, v31, outputStructa, v35, v37, v38, inputStruct, v40, 2u);
      }
    }
  }

  v23 = OUTLINED_FUNCTION_90(v13, v14, v15, v16, v17, v18, v19, v20, outputStructa, v35, v37, v38, inputStruct, v40, buf, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56);
  memset_s(v23, v24, 0, 0x1000uLL);
  v25 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_67();
}

void aks_fv_import()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v0);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v29[1] = *MEMORY[0x1E69E9840];
  v29[0] = v7;
  bzero(__s, 0x1000uLL);
  v24 = __s;
  v25 = v29;
  v26 = 4096;
  if (v6 && v4)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v9 = aks_client_connection;
      if (ccder_blob_encode_body_tl())
      {
        if (der_utils_encode_fv_data(&v24))
        {
          if (der_utils_encode_fv_params(&v24))
          {
            OUTLINED_FUNCTION_17();
            if (ccder_blob_encode_tl())
            {
              if (!OUTLINED_FUNCTION_54_0(v9, 0x4Fu, v29, v10, v25, v29 - v25, v11, v12, __s, &v26))
              {
                *&v23 = __s;
                *(&v23 + 1) = &__s[v26];
                OUTLINED_FUNCTION_17();
                if (ccder_blob_decode_range())
                {
                  if (v2)
                  {
                    der_utils_decode_fv_data(&v23, 0, v2);
                  }
                }
              }
            }
          }
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_27_3();
      OUTLINED_FUNCTION_3_6();
      OUTLINED_FUNCTION_65();
      OUTLINED_FUNCTION_64();
      OUTLINED_FUNCTION_16_3(v14);
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v16, v17, v18, v19, v20, v21, v22, v23, *(&v23 + 1), v24, v25, v26, v27);
    }
  }

  memset_s(__s, 0x1000uLL, 0, 0x1000uLL);
  v13 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_fv_is_access_token_unbound(uint64_t a1, BOOL *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(v5, 0, sizeof(v5));
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v6 = 0u;
  if (a2)
  {
    result = aks_fv_get_blob_state(v5);
    if (!result)
    {
      if (v6 == 1)
      {
        result = 0;
        *a2 = (DWORD1(v8) & 0x8000000) != 0;
      }

      else
      {
        result = 3758604312;
      }
    }
  }

  else
  {
    result = 3758097090;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void aks_fv_grant_ownership()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_82();
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x1000uLL);
  bzero(v4, 0x1000uLL);
  v3[0] = v5;
  v3[1] = &v6;
  v2[0] = v4;
  v2[1] = v5;
  if (der_utils_encode_fv_data(v3))
  {
    if (der_utils_encode_fv_data(v3))
    {
      OUTLINED_FUNCTION_17();
      if (ccder_blob_encode_tl())
      {
        if (der_utils_encode_fv_data(v2))
        {
          if (der_utils_encode_fv_data(v2))
          {
            OUTLINED_FUNCTION_17();
            if (ccder_blob_encode_tl())
            {
              aks_fv_set_protection();
            }
          }
        }
      }
    }
  }

  v1 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

void aks_fv_sidp_status(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_75();
  v6 = *MEMORY[0x1E69E9840];
  bzero(v5, 0x4000uLL);
  OUTLINED_FUNCTION_47_0();
  aks_fv_set_protection();
  if (!v3)
  {
    if (ccder_decode_sequence_tl() && ccder_decode_tl())
    {
      __memcpy_chk();
      if (v2)
      {
        *v2 = 0;
      }

      if (v1)
      {
        *v1 = 0;
      }
    }

    else
    {
      OUTLINED_FUNCTION_51_0();
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void aks_absinthe_collection()
{
  OUTLINED_FUNCTION_14_0();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_85();
  v4 = v3;
  v6 = v5;
  v48[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_25_0();
  *v8 = v7;
  bzero(__src, 0x8000uLL);
  v45 = 0;
  __count = 0x8000;
  HIDWORD(v43) = 0;
  if (v1)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v17 = aks_client_connection;
      v18 = "";
      if (v6)
      {
        v18 = v6;
        v19 = v4;
      }

      else
      {
        v19 = 0;
      }

      v20 = OUTLINED_FUNCTION_109(aks_client_connection, v10, v11, v12, v13, v14, v15, v16, v38, v39, v18, v19, v42, v43, 0);
      aks_pack_data(v20, v21, 2, v22, v23, v24, v25, v26, v27);
      if (!OUTLINED_FUNCTION_54_0(v17, 0x50u, v48, v28, v45, v44, v29, v30, __src, &__count))
      {
        v31 = calloc(__count, 1uLL);
        *v1 = v31;
        if (v31)
        {
          memcpy(v31, __src, __count);
          *v0 = __count;
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_8_3();
      OUTLINED_FUNCTION_89();
      OUTLINED_FUNCTION_88();
      OUTLINED_FUNCTION_23_3();
      OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v33, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, 0, __count, 2u);
    }
  }

  memset_s(__src, 0x8000uLL, 0, 0x8000uLL);
  free(v45);
  v32 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_absinthe_generate(unsigned int a1)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v46[0] = a1;
  OUTLINED_FUNCTION_30_2();
  v45 = 0;
  HIDWORD(v44) = 0;
  v6 = (v5 + 6);
  if (v1)
  {
    v7 = v3;
    if (v3)
    {
      v8 = v4;
      if (v4)
      {
        v9 = v2;
        v10 = v1;
        aks_client_connection = get_aks_client_connection();
        if (aks_client_connection)
        {
          v19 = aks_client_connection;
          v20 = OUTLINED_FUNCTION_101(aks_client_connection, v12, v13, v14, v15, v16, v17, v18, v10, v9, v40, v41, v42, v43, v44, v45);
          aks_pack_data(v20, v21, 2, v22, v23, v24, v25, v26, v38);
          v43 = *v8;
          v6 = OUTLINED_FUNCTION_54_0(v19, 0x51u, v46, v27, v45, SHIDWORD(v44), v28, v29, v7, &v43);
          if (!v6)
          {
            *v8 = v43;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_42_0();
            OUTLINED_FUNCTION_8_3();
            OUTLINED_FUNCTION_89();
            OUTLINED_FUNCTION_88();
            OUTLINED_FUNCTION_23_3();
            OUTLINED_FUNCTION_41_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v32, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v33, v34, v35, v36, v37, v39, v40, v41, v42, v43, v44, v45, 2u);
          }

          OUTLINED_FUNCTION_68();
        }
      }
    }
  }

  free(v45);
  v30 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t aks_get_current_sep_measurement()
{
  OUTLINED_FUNCTION_25_0();
  if (v2 && v1 && !aks_get_internal_info_for_key(0xFFFFFFFFLL))
  {
    der_dict_get_data(der_key_sep_measurement);
  }

  free(0);
  return v0;
}

uint64_t aks_get_seconds_since_passcode_change(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_25_0();
  v9 = 0;
  v10 = 0;
  v8 = 0;
  if (!aks_get_internal_info_for_key(v4) && der_dict_get_number(der_key_passcode_change_time, v10, v10 + v9, &v8))
  {
    if (a2)
    {
      v5 = time(0);
      v2 = 0;
      v6 = v5 - v8;
      if (v5 <= v8)
      {
        v6 = 0;
      }

      *a2 = v6;
    }

    else
    {
      v2 = 0;
    }
  }

  free(v10);
  return v2;
}

uint64_t aks_get_internal_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v47[1] = *MEMORY[0x1E69E9840];
  v47[0] = v1;
  OUTLINED_FUNCTION_120(v1, v2, v4, v5, v6, v7, v8, v9, v23, v25, v27, __n, buf, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46[0]);
  if (get_aks_client_connection())
  {
    if (v3)
    {
      OUTLINED_FUNCTION_84();
      if (!OUTLINED_FUNCTION_18_3(v10, 0x8Eu, v47, v11, v12, v13, v14, v15, v24, v26))
      {
        decode_extended_state(v46);
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_14_3();
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_38_0();
    OUTLINED_FUNCTION_21();
    OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v24, v26, v28, 4096, 2u);
  }

  OUTLINED_FUNCTION_22_1(v46, 0x1000uLL);
  v16 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_57_0();
}

uint64_t aks_fairplay_wrap()
{
  v21[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_2();
  v21[0] = 266;
  result = (v1 + 6);
  if (v3)
  {
    v4 = v0;
    if (v0)
    {
      if (get_aks_client_connection())
      {
        v20 = *v4;
        OUTLINED_FUNCTION_106();
        result = OUTLINED_FUNCTION_48_0(v5, 0x68u, v21, 1u, v6, v7, v8, v9, v16, v17);
        if (!result)
        {
          *v4 = v20;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v12, v13, v14, v15, v16, v17, v18, v19, 2u);
        }

        result = OUTLINED_FUNCTION_51_0();
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _fairplay_generate_csk_internal()
{
  v22[1] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30_2();
  v22[0] = (v1 << 8) | 1;
  result = (v2 + 6);
  if (v4)
  {
    v5 = v0;
    if (v0)
    {
      OUTLINED_FUNCTION_86();
      if (get_aks_client_connection())
      {
        v21 = *v5;
        OUTLINED_FUNCTION_106();
        result = OUTLINED_FUNCTION_48_0(v6, 0x68u, v22, 1u, v7, v8, v9, v10, v17, v18);
        if (!result)
        {
          *v5 = v21;
        }
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
        {
          OUTLINED_FUNCTION_14_3();
          OUTLINED_FUNCTION_8();
          OUTLINED_FUNCTION_39_0();
          OUTLINED_FUNCTION_38_0();
          OUTLINED_FUNCTION_21();
          OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v12, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v13, v14, v15, v16, v17, v18, v19, v20, 2u);
        }

        result = OUTLINED_FUNCTION_51_0();
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

size_t aks_bak_get_beacon_internal(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_99();
  v6 = v5;
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  bzero(v26, 0x4000uLL);
  v24 = 0x4000;
  v25[0] = 1;
  v25[1] = v6;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v10 = OUTLINED_FUNCTION_19_0(aks_client_connection, 0x87u, v25, 2u, v4, v1, v8, v9, v26, &v24);
    if (v10)
    {
      v1 = v10;
    }

    else
    {
      __memcpy_chk();
      *v2 = 44;
      v11 = calloc(0x2CuLL, 1uLL);
      *v3 = v11;
      if (v11)
      {
        v12 = *v2;
        __memcpy_chk();
        v1 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_30_2();
        v1 = v20 | 1u;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v15, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v16, v17, v18, v19, v21, v22, v23, v24, 2u);
    }
  }

  OUTLINED_FUNCTION_97(v26);
  v13 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t aks_bak_get_beacon()
{
  OUTLINED_FUNCTION_85();
  v6 = *MEMORY[0x1E69E9840];
  beacon_internal = aks_bak_get_beacon_internal(v0 ^ 1u | (v1 << 16));
  if (beacon_internal)
  {
    v5 = beacon_internal;
  }

  else
  {
    v5 = 3758604312;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v5;
}

void aks_bak_get_swizzler_internal()
{
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v3;
  OUTLINED_FUNCTION_95();
  v6 = v5;
  v32[2] = *MEMORY[0x1E69E9840];
  v32[0] = 2;
  v32[1] = v7;
  bzero(v28, 0xC4uLL);
  bzero(v27, 0x4000uLL);
  v26 = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x87u, v32, 2u, v9, v10, v11, v12, v27, &v26))
    {
      OUTLINED_FUNCTION_25_0();
      __memcpy_chk();
      v13 = calloc(0x28uLL, 1uLL);
      *v6 = v13;
      if (v13)
      {
        *v1 = 40;
        v14 = *&v28[8];
        v15 = v29;
        v13[4] = v30;
        *v13 = v14;
        *(v13 + 1) = v15;
        v16 = calloc(0x91uLL, 1uLL);
        *v0 = v16;
        if (v16)
        {
          *v4 = 145;
          memcpy(v16, v31, 0x91uLL);
        }
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v19, v20, v21, v22, v23, v24, v25, v26, 2u);
    }
  }

  OUTLINED_FUNCTION_97(v27);
  memset_s(v28, 0xC4uLL, 0, 0xC4uLL);
  v17 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

uint64_t aks_test_stashed_kek(uint64_t a1)
{
  akstest_client_connection = get_akstest_client_connection();
  if (akstest_client_connection)
  {
    return OUTLINED_FUNCTION_49_0(akstest_client_connection, 0xCu, v3, v4, *a1, *(a1 + 8), v5, v6, 0, 0);
  }

  else
  {
    return OUTLINED_FUNCTION_51_0();
  }
}

uint64_t aks_get_dsme_key(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  v5 = v2;
  v27 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_77();
  v6 = 0x4000;
  bzero(__src, 0x4000uLL);
  __count = 0x4000;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v6 = (v1 + 6);
    if (v5 && v4)
    {
      v12 = OUTLINED_FUNCTION_5_2(aks_client_connection, 0x96u, 0, 0, v8, v9, v10, v11, __src, &__count);
      if (v12)
      {
        v6 = v12;
      }

      else
      {
        v13 = calloc(__count, 1uLL);
        *v5 = v13;
        if (v13)
        {
          v14 = __count;
          *v4 = __count;
          memcpy(v13, __src, v14);
          v6 = 0;
        }

        else
        {
          v6 = (v1 + 1);
        }
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v17, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v18, v19, v20, v21, v22, v23, v24, __count, 2u);
    }

    OUTLINED_FUNCTION_68();
  }

  OUTLINED_FUNCTION_97(__src);
  v15 = *MEMORY[0x1E69E9840];
  return v6;
}

void aks_sealed_hashes_set()
{
  OUTLINED_FUNCTION_14_0();
  v36 = *MEMORY[0x1E69E9840];
  if (v1 && v0 <= 0x30)
  {
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      v3 = aks_client_connection;
      ccder_sizeof_raw_octet_string();
      ccder_sizeof_uint64();
      ccder_sizeof_raw_octet_string();
      v4 = ccder_sizeof();
      v5 = v4;
      MEMORY[0x1EEE9AC00](v4);
      v7 = &v12 - v6;
      bzero(&v12 - v6, v5);
      ccder_encode_raw_octet_string();
      ccder_encode_uint64();
      ccder_encode_raw_octet_string();
      if (ccder_encode_constructed_tl() == v7)
      {
        OUTLINED_FUNCTION_19_0(v3, 0x72u, 0, 0, v7, v5, v8, v9, 0, 0);
      }

      else
      {
        OUTLINED_FUNCTION_30_2();
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_0();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136317954;
        v13 = "aks.fw";
        v14 = 2080;
        v15 = "";
        v16 = 1024;
        v17 = -1;
        v18 = 2080;
        v19 = "";
        v20 = 2080;
        v21 = "";
        v22 = 2080;
        v23 = "";
        v24 = 2080;
        v25 = "";
        v26 = 2080;
        v27 = "aks_sealed_hashes_set";
        v28 = 2080;
        v29 = ":";
        v30 = 1024;
        v31 = 4036;
        v32 = 2080;
        v33 = "";
        v34 = 2080;
        v35 = "";
        OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v11, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", &v12);
      }
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_13_0();
}

uint64_t aks_memento_get_state(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v48[1] = *MEMORY[0x1E69E9840];
  v48[0] = v1;
  OUTLINED_FUNCTION_120(v1, v2, v3, v4, v5, v6, v7, v8, v24, v26, v28, __n, *buf, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47[0]);
  __n = 4096;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    v15 = OUTLINED_FUNCTION_18_3(aks_client_connection, 0x8Bu, v48, v10, v11, v12, v13, v14, v47, &__n);
    v16 = __n;
    if (!v15)
    {
      OUTLINED_FUNCTION_30_2();
      if (v16 - 4097 >= 0xFFFFFFFFFFFFF000)
      {
        decode_memento_state(v47);
        v16 = __n;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_0();
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      OUTLINED_FUNCTION_14_3();
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_39_0();
      OUTLINED_FUNCTION_38_0();
      OUTLINED_FUNCTION_21();
      OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v19, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v20, v21, v22, v23, v25, v27, v29, __n, 2u);
    }

    v16 = 4096;
  }

  OUTLINED_FUNCTION_22_1(v47, v16);
  v17 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_57_0();
}

uint64_t aks_get_cx_window(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v19[512] = *MEMORY[0x1E69E9840];
  v18 = 4096;
  if (v1)
  {
    v2 = v1;
    bzero(v19, 0x1000uLL);
    aks_client_connection = get_aks_client_connection();
    if (aks_client_connection)
    {
      if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x98u, 0, 0, v4, v5, v6, v7, v19, &v18))
      {
        if (v18 == 8)
        {
          *v2 = v19[0];
        }

        else
        {
          OUTLINED_FUNCTION_45();
        }
      }
    }

    else
    {
      OUTLINED_FUNCTION_25_0();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
      {
        OUTLINED_FUNCTION_14_3();
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_39_0();
        OUTLINED_FUNCTION_38_0();
        OUTLINED_FUNCTION_21();
        OUTLINED_FUNCTION_36_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v10, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v11, v12, v13, v14, v15, v16, v17, v18, 2u);
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return OUTLINED_FUNCTION_67();
}

void AKSGetStashStats()
{
  OUTLINED_FUNCTION_117();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v1;
  v28 = *MEMORY[0x1E69E9840];
  bzero(v27, 0x1000uLL);
  v22 = 4096;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  aks_client_connection = get_aks_client_connection();
  if (aks_client_connection)
  {
    if (!OUTLINED_FUNCTION_5_2(aks_client_connection, 0x9Eu, 0, 0, v10, v11, v12, v13, v27, &v22) && !stash_stats_deserialize(v27, v22, &v19))
    {
      if (v8)
      {
        *v8 = *(&v21 + 1);
      }

      if (v7)
      {
        *v7 = v21;
      }

      if (v5)
      {
        *v5 = *(&v20 + 1);
      }

      if (v3)
      {
        *v3 = v20;
      }
    }
  }

  else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v23[0] = 136317954;
    OUTLINED_FUNCTION_6_2();
    OUTLINED_FUNCTION_0_4();
    *(v15 + 70) = "AKSGetStashStats";
    v24 = v16;
    v25 = ":";
    v26 = v17;
    *(v15 + 90) = 4204;
    OUTLINED_FUNCTION_55_0(v15);
    OUTLINED_FUNCTION_15_0(&dword_1E0B50000, MEMORY[0x1E69E9C10], v18, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v23);
  }

  v14 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_112();
}

uint64_t _copy_cf_key(const __CFDictionary *a1, const void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  value = 0;
  result = CFDictionaryGetValueIfPresent(a1, a2, &value);
  if (result)
  {
    if (CFGetTypeID(value) == a3)
    {
      if (CFNumberGetTypeID() == a3)
      {
        v9 = 0;
        if (!CFNumberGetValue(value, kCFNumberSInt64Type, &v9) || encode_list_add_number(a5, a4, v9))
        {
          return 0xFFFFFFFFLL;
        }

        return 0;
      }

      if (CFBooleanGetTypeID() == a3)
      {
        CFBooleanGetValue(value);
        if (encode_list_add_BOOL())
        {
          return 0xFFFFFFFFLL;
        }
      }

      else
      {
        if (CFDataGetTypeID() != a3)
        {
          return 0xFFFFFFFFLL;
        }

        CFDataGetBytePtr(value);
        CFDataGetLength(value);
        if (encode_list_add_data())
        {
          return 0xFFFFFFFFLL;
        }
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void aks_stash_destroy_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_stash_commit_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_stash_enable_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_stash_persist_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_invalidate_sync_bags_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_unload_bag_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_unload_session_bags_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_change_secret_with_kek_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_lock_bag_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void _aks_unlock_bag_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void _aks_set_system_with_passcode_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_assert_hold_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_assert_drop_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_assert_promote_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_oneness_heartbeat_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_assert_consume_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void _aks_recover_with_escrow_bag_cold_1(void *a1, _DWORD *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v4, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v5, v6, v7, v8, 2u);
  }

  OUTLINED_FUNCTION_30_2();
  *a2 = v9;
  *a1 = 0;
  v10 = *MEMORY[0x1E69E9840];
}

void aks_generation_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_register_for_notifications_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_clear_backup_bag_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_remote_reset_all_peers_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_remote_peer_drop_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_lock_device_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_lock_cx_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_unlock_device_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_unlock_device_with_acm_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_obliterate_class_d_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_migrate_s_key_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_smartcard_unregister_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_fail_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_set_healthy_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void __aks_se_set_secret_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_recover_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_recover_with_acm_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void _aks_change_secret_epilogue_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_set_nonce_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_delete_reset_token_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_support_in_rm_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_support_in_rm_is_set_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_stage_stash_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_enable_cache_flow_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_drop_auxiliary_auth_by_uid_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_drop_auxiliary_auth_by_handle_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_lower_iteration_count_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_reset_iteration_count_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_secret_drop_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_se_memento_secret_drop_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_prewarm_sps_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_measure_and_seal_cryptex_manifest_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_seal_cryptex_manifest_lock_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_lkgp_recover_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_memento_efface_blob_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_set_jcop_supports_updated_kud_policy_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void aks_set_cx_window_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t AKSIdentityLogin(const __CFUUID *a1, const __CFData *a2, int a3, CFTypeRef *a4)
{
  result = AKSIdentityLoad(a1, a3, a4);
  if (result)
  {
    if (a3 >= 10)
    {
      v12 = -a3;
    }

    else
    {
      v12 = -1;
    }

    if (AKSIdentityUnlockInternal(v12, a2, 0, a4, v8, v9, v10, v11))
    {
      return 1;
    }

    else
    {
      AKSIdentityUnload(a3, 0);
      return 0;
    }
  }

  return result;
}

uint64_t AKSIdentityLoginWithACMCredOnVolume(uint64_t a1, const __CFUUID *a2, const __CFData *a3, int a4, CFTypeRef *a5)
{
  if (a4 >= 10)
  {
    v6 = -a4;
  }

  else
  {
    v6 = -1;
  }

  if (a1)
  {
    create_error(0xE00002E6, a5);
    return 0;
  }

  if (!AKSIdentityLoad(a2, a4, a5))
  {
    return 0;
  }

  v13 = 1;
  if (!AKSIdentityUnlockInternal(v6, a3, 1, a5, v9, v10, v11, v12))
  {
    AKSIdentityUnload(a4, 0);
    return 0;
  }

  return v13;
}

BOOL AKSVolumeMap(const __CFString *a1, int a2, const __CFUUID *a3, CFTypeRef *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  theData = 0;
  __size = 0;
  bzero(buffer, 0x400uLL);
  if (!CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    v15 = OUTLINED_FUNCTION_9_5();
    create_error(v15, a4);
    v12 = 0;
    v10 = 0;
    v8 = 0;
    goto LABEL_11;
  }

  v8 = copy_apfs_volume_uuid_for_disk(a1, a4);
  if (!v8)
  {
    goto LABEL_18;
  }

  if (APFSVolumePayloadGet())
  {
    if (AKSIdentityCopyVolumeCookie(a2, a3, &theData, a4))
    {
      v9 = theData;
      CFDataGetBytePtr(theData);
      CFDataGetLength(v9);
      if (!APFSVolumePayloadSet())
      {
        v10 = 0;
LABEL_10:
        v12 = AKSVolumeMapByUUID(v8, a2, a3, v9, a4);
        goto LABEL_11;
      }

      create_error(0xE007C00ALL, a4);
    }

LABEL_18:
    v12 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v10 = malloc(__size);
  if (APFSVolumePayloadGet())
  {
    v16 = 3758604298;
  }

  else
  {
    v11 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, __size, *MEMORY[0x1E695E498]);
    theData = v11;
    if (v11)
    {
      v9 = v11;
      goto LABEL_10;
    }

    v16 = 3758097085;
  }

  create_error(v16, a4);
  v12 = 0;
LABEL_11:
  free(v10);
  if (theData)
  {
    CFRelease(theData);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

const __CFUUID *AKSVolumeUnmap(const __CFString *a1, CFTypeRef *a2)
{
  result = copy_apfs_volume_uuid_for_disk(a1, a2);
  if (result)
  {
    v4 = result;
    v5 = AKSVolumeUnmapByUUID(result, a2);
    CFRelease(v4);
    return v5;
  }

  return result;
}

uint64_t AKSIdentityCopyGroupUUID(uint64_t a1, CFUUIDRef *a2, CFTypeRef *a3)
{
  v8 = 0;
  if (!a2)
  {
    v7 = OUTLINED_FUNCTION_9_5();
LABEL_8:
    create_error(v7, a3);
    return 0;
  }

  result = AKSIdentityCopyGroupUUIDBytes(a1, &v8, a3);
  if (!result)
  {
    return result;
  }

  v6 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v8);
  *a2 = v6;
  if (!v6)
  {
    v7 = 3758097085;
    goto LABEL_8;
  }

  return 1;
}

uint64_t AKSIdentityCopyUserUUID(uint64_t a1, CFUUIDRef *a2, CFTypeRef *a3)
{
  v8 = 0;
  if (!a2)
  {
    v7 = OUTLINED_FUNCTION_9_5();
LABEL_8:
    create_error(v7, a3);
    return 0;
  }

  result = AKSIdentityCopyUserUUIDBytes(a1, &v8, a3);
  if (!result)
  {
    return result;
  }

  v6 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x1E695E480], v8);
  *a2 = v6;
  if (!v6)
  {
    v7 = 3758097085;
    goto LABEL_8;
  }

  return 1;
}

void AKSIdentityCreateInternal_cold_1(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, 2u);
  }

  free(*a1);
  v7 = *MEMORY[0x1E69E9840];
}

void AKSIdentityMigrateFirst_cold_1(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, 2u);
  }

  free(*a1);
  v7 = *MEMORY[0x1E69E9840];
}

void AKSIdentityDelete_cold_1(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, 2u);
  }

  free(*a1);
  v7 = *MEMORY[0x1E69E9840];
}

void _AKSIdentityChangePasscode_cold_1(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, 2u);
  }

  free(*a1);
  v7 = *MEMORY[0x1E69E9840];
}

void AKSIdentityLoad_cold_1(void **a1)
{
  v8 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v2, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v3, v4, v5, v6, 2u);
  }

  free(*a1);
  v7 = *MEMORY[0x1E69E9840];
}

void AKSIdentityUnload_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSIdentityUnlockInternal_cold_1(int a1, _DWORD *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 136318210;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_8_4();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s MKBUnlockDevice()->%d%s\n", v5, 0x78u);
  }

  *a2 = a1;
  v4 = *MEMORY[0x1E69E9840];
}

uint64_t AKSIdentityUnlockInternal_cold_2()
{
  dlerror();
  v0 = abort_report_np();
  return AKSIdentityUnlockInternal_cold_3(v0);
}

void AKSIdentityUnlockInternal_cold_3(int a1, _DWORD *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 136318210;
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_8_4();
    _os_log_impl(&dword_1E0B50000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s MKBUnlockDeviceWithACM()->%d%s\n", v5, 0x78u);
  }

  *a2 = a1;
  v4 = *MEMORY[0x1E69E9840];
}

void AKSIdentityUnlockInternal_cold_5(void *a1, _DWORD *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v4, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v5, v6, v7, v8, 2u);
  }

  *a2 = -536870212;
  *a1 = 0;
  v9 = *MEMORY[0x1E69E9840];
}

void AKSIdentityCopyGroupUUIDBytes_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid type%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_6();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSIdentityCopyGroupUUIDBytes_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid uuid size%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_6();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSIdentityCopyUserUUIDBytes_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid type%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_6();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSIdentityCopyUserUUIDBytes_cold_2()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s invalid uuid size%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_6();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSIdentityLockInternal_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSIdentityGetPrimary_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void AKSGetLastUser_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

void _transfer_primary_identity_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_14_2(&dword_1E0B50000, MEMORY[0x1E69E9C10], v0, "%s:%spid:%d,%s:%s%s%s%s%s%u:%s aks connection failed%s\n", v1, v2, v3, v4, 2u);
  }

  OUTLINED_FUNCTION_4_2();
  v5 = *MEMORY[0x1E69E9840];
}

uint64_t stash_stats_deserialize(uint64_t a1, uint64_t a2, void *a3)
{
  *&v6 = a1;
  *(&v6 + 1) = a1 + a2;
  if (!ccder_blob_decode_range() || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000005, a3 + 3) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000004, a3 + 5) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000003, a3 + 2) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000002, a3 + 4) || !der_utils_decode_implicit_uint64(&v6, 0x8000000000000001, a3 + 1))
  {
    return 4294967277;
  }

  v4 = der_utils_decode_implicit_uint64(&v6, 0x8000000000000000, a3);
  result = 4294967277;
  if (v4)
  {
    if (v6 == *(&v6 + 1))
    {
      return 0;
    }

    else
    {
      return 4294967277;
    }
  }

  return result;
}

CFUUIDBytes CFUUIDGetUUIDBytes(CFUUIDRef uuid)
{
  v1 = MEMORY[0x1EEDB7E70](uuid);
  result.byte8 = v2;
  result.byte9 = BYTE1(v2);
  result.byte10 = BYTE2(v2);
  result.byte11 = BYTE3(v2);
  result.byte12 = BYTE4(v2);
  result.byte13 = BYTE5(v2);
  result.byte14 = BYTE6(v2);
  result.byte15 = HIBYTE(v2);
  result.byte0 = v1;
  result.byte1 = BYTE1(v1);
  result.byte2 = BYTE2(v1);
  result.byte3 = BYTE3(v1);
  result.byte4 = BYTE4(v1);
  result.byte5 = BYTE5(v1);
  result.byte6 = BYTE6(v1);
  result.byte7 = HIBYTE(v1);
  return result;
}