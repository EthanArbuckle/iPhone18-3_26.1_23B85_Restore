uint64_t spaceman_fq_tree_over_threshold(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
{
  v4 = *(a3 + 56);
  v5 = *(*(a1 + 376) + 40 * a2 + 224);
  if (a4)
  {
    v6 = *(*(a3 + 392) + 32);
    if (v5 >= 2)
    {
      return v6 > v5 >> 1;
    }

    if (v6 <= 1)
    {
      v9 = v4[25] + v4[23] + v4[27];
      v10 = v9 >= obj_size_phys(a3) >> 1;
      return !v10;
    }

    return 1;
  }

  if (v5 >= 2)
  {
    return *(*(a3 + 392) + 32) > (3 * v5) >> 2;
  }

  if (*(*(a3 + 392) + 32) > 1uLL)
  {
    return 1;
  }

  v11 = v4[25] + v4[23] + v4[27];
  v10 = v11 >= obj_size_phys(a3) >> 2;
  return !v10;
}

uint64_t spaceman_ip_block_index(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v6 = *(a2 + 376);
  v7 = *(v6 + 152);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = *(v6 + 176);
    v9 = v8 + v7;
    v10 = __OFSUB__(a3, v8);
    v11 = a3 - v8;
    if (v11 < 0 != v10 || v9 <= a3)
    {
      return 22;
    }

    v13 = 0;
LABEL_12:
    *a4 = v11;
    return v13;
  }

  v30 = 0;
  v31 = 0;
  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v17 = btree_create(a1, 2281701376, 0, 0, 0, 8, 16, extent_list_key_cmp, 0, a2 + 1512);
  if (v17)
  {
    return v17;
  }

  v39 = 0;
  memset(v37, 0, sizeof(v37));
  v38 = 0;
  v34 = 0;
  v35 = 0;
  v17 = nx_metadata_fragmented_extent_list_tree_get(a1, *(*(a2 + 376) + 176), &v39);
  if (v17)
  {
    return v17;
  }

  v36 = 0;
  bt_iterator_init(v37, v39, 0, 0, &v36, 8, 8u, &v34, 0x10u);
  v13 = v19;
  if (!bt_iterator_ended(v37))
  {
    while (1)
    {
      v32 = v34;
      v33[0] = v36;
      v33[1] = v35;
      v21 = bt_insert(*v15, 0, &v32, 8, v33, 0x10u, 0);
      if (v21)
      {
        break;
      }

      v20 = bt_iterator_next(v37);
      if (v20)
      {
        v13 = v20;
        v22 = *(a1 + 384) + 212;
        strerror(v20);
        log_err("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", v23, v24, v25, v26, v27, v28, v29, "spaceman_set_up_ip_reverse_mapping_tree");
        goto LABEL_26;
      }

      if (bt_iterator_ended(v37))
      {
        obj_release(v39);
        goto LABEL_8;
      }
    }

    v13 = v21;
LABEL_26:
    obj_release(v39);
    return v13;
  }

  obj_release(v39);
  if (!v13)
  {
LABEL_8:
    *&v37[0] = a3;
    LODWORD(v34) = 8;
    LODWORD(v33[0]) = 16;
    v13 = bt_lookup_variant(*v15, 0, v37, &v34, 8u, &v30, v33, 1u, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v37[0] >= v31)
    {
      return 2;
    }

    v13 = 0;
    v11 = v30 + a3 - *&v37[0];
    goto LABEL_12;
  }

  return v13;
}

void *spaceman_free_queue_trim_list_init(uint64_t a1, uint64_t a2)
{
  *(a2 + 1538) = 256;
  *(a2 + 1542) = 0;
  result = _apfs_calloc_typed(0x100uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 1544) = result;
  if (!result)
  {
    *(a2 + 1538) = 0;
  }

  return result;
}

uint64_t spaceman_alloc(void *a1, int a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v241 = 0;
  v239 = 0u;
  v240 = 0u;
  v237 = 0u;
  v238 = 0u;
  v235 = 0u;
  v236 = 0u;
  v233 = 0u;
  v234 = 0u;
  v231 = 0u;
  v232 = 0u;
  v229 = 0u;
  v230 = 0u;
  v227 = 0u;
  v228 = 0u;
  v226 = 0u;
  v243 = 0;
  v224 = 0;
  v11 = 0;
  v12 = a1;
  if (obj_type(a1) == 13)
  {
    v12 = a1[49];
    v11 = a1;
  }

  BYTE8(v240) = a6 != 0;
  BYTE9(v240) = 1;
  if (a6)
  {
    v13 = a2 | 0x1000;
  }

  else
  {
    v13 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v239) = v13;
  LODWORD(v240) = 0;
  v14 = *(v12 + 376);
  v15 = *(v14 + 1240);
  v16 = a3;
  v232.i64[0] = a3;
  *&v234 = v15;
  v17 = *(v14 + 1248);
  *(&v234 + 1) = v17 + v15;
  if (!v17)
  {
    v234 = 0uLL;
  }

  DWORD1(v240) = 0;
  v18 = *(v12 + 1024);
  v19 = v18 + *(v12 + 1016);
  *&v233 = *(v12 + 1016);
  *(&v233 + 1) = v19;
  if ((*(v12 + 634) & 1) != 0 || !v18)
  {
    v233 = 0uLL;
    if ((v13 & 0x80) == 0)
    {
LABEL_11:
      if ((v13 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v13 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v13 |= 0x8100u;
  DWORD2(v239) = v13;
  if ((v13 & 0x200) == 0)
  {
LABEL_12:
    if ((v13 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v13 |= 0x102u;
  DWORD2(v239) = v13;
  *a5 = *(v12 + 1032);
  if ((v13 & 0x400) != 0)
  {
LABEL_13:
    v13 |= 0x100u;
    DWORD2(v239) = v13;
  }

LABEL_14:
  if (*(v12 + 637) == 1)
  {
    v13 |= 0x900u;
    DWORD2(v239) = v13;
  }

  if ((v13 & 2) != 0)
  {
    v13 &= ~0x40u;
    DWORD2(v239) = v13;
    v214 = *a5;
    if ((v13 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v214 = 0;
    if ((v13 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v240) = 1;
      v20 = *a5;
      goto LABEL_25;
    }
  }

  v20 = 3;
LABEL_25:
  v219 = v20;
  v220 = v13;
  *a5 = 0;
  if ((v13 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v21 = 22;
    if (!xid_is_current_tx(v12, a4) || a3 < 1)
    {
      return v21;
    }
  }

  v242 = 0;
  memset(v225, 0, sizeof(v225));
  v21 = spaceman_get(v12, &v242);
  if (v21)
  {
    return v21;
  }

  v22 = v242;
  v212 = v242[47];
  v23 = v242[199];
  if (v23)
  {
    v24 = v232.i64[0];
    v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v25.i64[1] = v232.i64[0];
    *v23 = vaddq_s64(*v23, v25);
    if (BYTE11(v240) == 1)
    {
      ++v23[1].i64[0];
      goto LABEL_34;
    }

    if (v24 > 2)
    {
      if (v24 == 4)
      {
        v26 = 7;
      }

      else
      {
        if (v24 != 3)
        {
LABEL_34:
          if (v24 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v26 = 6;
      }
    }

    else
    {
      if (v24 == 1)
      {
        v27 = 2;
LABEL_48:
        ++v23[v27].i64[0];
        goto LABEL_49;
      }

      if (v24 != 2)
      {
        goto LABEL_34;
      }

      v26 = 5;
    }

    ++v23->i64[v26];
LABEL_46:
    if (BYTE8(v240))
    {
      goto LABEL_49;
    }

    v27 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v28 = DWORD2(v239);
  if ((WORD4(v239) & 0x200) != 0)
  {
    v29 = *(v212 + 48 * DWORD1(v240) + 48);
    *&v233 = *(&v233 + 1);
    *(&v233 + 1) = v29;
  }

  if ((BYTE8(v240) & 1) == 0 && v232.i64[0] >= *(v212 + 96) + *(v212 + 48))
  {
    v21 = 28;
LABEL_311:
    v167 = v242;
    v168 = v242[199];
    if (v168)
    {
      ++*(v168 + 72);
    }

    obj_release(v167);
    return v21;
  }

  if ((BYTE8(v239) & 2) != 0 && v214 >= *(v212 + 48))
  {
    v28 = DWORD2(v239) & 0xFFFFFFFD;
    DWORD2(v239) &= ~2u;
  }

  if ((v28 & 0x1A) == 2)
  {
    v28 |= 8u;
    DWORD2(v239) = v28;
  }

  v21 = sub_10001AA14(v22, v28, &v243, &v224, (*(*(v12 + 376) + 48) >> 1) & 1);
  if (v21)
  {
    goto LABEL_311;
  }

  pthread_mutex_lock(v242 + 6);
  if (BYTE11(v240) & 1) != 0 || (BYTE9(v239))
  {
    BYTE9(v240) = 0;
  }

  v211 = v11;
  v213 = a4;
  v206 = a5;
  if (!v242[187])
  {
    DWORD2(v239) |= 0x100u;
  }

  v34 = 0;
  v35 = v212 + 48;
  v207 = 2;
  v208 = 0;
LABEL_65:
  v215 = v224;
  v36 = v208;
  while (2)
  {
    v208 = v36;
    v37 = v34;
    v38 = v220;
    while (1)
    {
      do
      {
        while (1)
        {
          v34 = v37;
          if (v215 > v37)
          {
            goto LABEL_77;
          }

          if (BYTE9(v240) == 1)
          {
            BYTE9(v240) = 0;
            if (!v233)
            {
              v34 = 0;
              goto LABEL_77;
            }
          }

          else if (!v233)
          {
            goto LABEL_309;
          }

          if ((BYTE9(v239) & 2) == 0)
          {
            if (obj_type(a1) != 13)
            {
              v46 = a1[48] + 212;
            }

            log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", v39, v40, v41, v42, v43, v44, v45, "spaceman_alloc");
            *(v12 + 634) = 1;
            *(v12 + 1048) = 0;
          }

          v34 = 0;
          v233 = 0uLL;
LABEL_77:
          v47 = *(&v243 + v34);
          HIDWORD(v239) = v47;
          v37 = (v34 + 1);
          BYTE12(v240) = 0;
          v49 = v47 == DWORD1(v240) && *(&v233 + 1) != 0;
          BYTE10(v240) = v49;
          v232 = v16;
          if ((v38 & 4) != 0)
          {
            v50 = v16;
            goto LABEL_85;
          }

          v30 = DWORD2(v239);
          v54 = v242;
          if (BYTE8(v239))
          {
            v56 = &v242[v47];
            if ((BYTE8(v239) & 0x40) != 0)
            {
              v58 = v56[106];
              v50 = v16;
              if (v58 >= v16)
              {
                goto LABEL_85;
              }

              v138 = obj_type(a1);
              if (v138 == 13)
              {
                v146 = &v242[HIDWORD(v239)];
                v200 = v146[106];
                v204 = v146[104];
              }

              else
              {
                v164 = a1[48] + 212;
                v165 = &v242[HIDWORD(v239)];
                v202 = v165[106];
                v205 = v165[104];
              }

              log_err("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n", v139, v140, v141, v142, v143, v144, v145, "spaceman_alloc");
            }

            else
            {
              v57 = v56[104] - v56[106];
              v50 = v16;
              if (v57 >= v16)
              {
                goto LABEL_85;
              }

              v147 = obj_type(a1);
              if (v147 != 13)
              {
                v166 = a1[48] + 212;
              }

              v201 = v242[HIDWORD(v239) + 104] - v242[HIDWORD(v239) + 106];
              log_err("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n", v148, v149, v150, v151, v152, v153, v154, "spaceman_alloc");
            }

LABEL_309:
            v21 = 28;
            goto LABEL_310;
          }

          if ((DWORD2(v239) & 0x30000) == 0)
          {
            spaceman_entitled_reserve_active(v12, v242);
            v54 = v242;
            LODWORD(v47) = HIDWORD(v239);
            LODWORD(v30) = DWORD2(v239);
          }

          v55 = sub_10001AAEC(v12, v211, v54, v47, v30, v232.i64, v213);
          if (v55 != 7)
          {
            break;
          }

          v38 = v220;
          if (v215 <= (v34 + 1))
          {
            BYTE9(v240) = 0;
          }

          if (v242[HIDWORD(v239) + 197] && (HIBYTE(v240) & 1) != 0)
          {
            sub_1000A466C();
          }
        }

        v21 = v55;
        if (v55)
        {
          goto LABEL_310;
        }

        v47 = HIDWORD(v239);
        v50 = v232.i64[0];
        v38 = v220;
LABEL_85:
        v216 = v242[13 * v47 + 139] & BYTE11(v240);
        v217 = 0;
        if (v216)
        {
          v51 = 0;
        }

        else
        {
          v51 = 0;
          if ((v50 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
          {
            v51 = v50 - 1;
            v52 = &v242[17 * v47 + 153];
            if (LOBYTE(v52[4 * v51 + 3]) == 1)
            {
              v217 = 1;
              if ((BYTE9(v239) & 1) == 0)
              {
                BYTE12(v240) = 1;
                metazone_alloc_index = v52[4 * v51];
LABEL_103:
                *(&v236 + 1) = metazone_alloc_index;
                goto LABEL_118;
              }
            }

            else
            {
              v217 = 0;
            }
          }
        }

        if (((v242[13 * v47 + 139] & BYTE11(v240)) & (v219 < 3)) == 1)
        {
          metazone_alloc_index = spaceman_get_metazone_alloc_index(v242, v47, v219, v47, v30, v31, v32, v33);
          goto LABEL_103;
        }

        if (v47 || (BYTE8(v239) & 2) == 0)
        {
          if ((WORD4(v239) & 0x800) == 0)
          {
            metazone_alloc_index = v242[v47 + 125];
            goto LABEL_103;
          }

          metazone_alloc_index = 0;
          *(&v236 + 1) = 0;
        }

        else
        {
          metazone_alloc_index = v214;
          v232.i64[1] = v214;
          *(&v236 + 1) = v214;
        }

        DWORD2(v239) |= 0x4000u;
LABEL_118:
        if (BYTE12(v240))
        {
          v59 = v242;
          v60 = HIDWORD(v239);
          if ((BYTE9(v239) & 1) != 0 || v232.i64[0] <= (*(v242[HIDWORD(v239) + 187] + 4 * (metazone_alloc_index / *(v212 + 36))) & 0xFFFFFFu))
          {
            v61 = 1;
          }

          else
          {
            v61 = 0;
            BYTE12(v240) = 0;
          }
        }

        else
        {
          v61 = 0;
          v59 = v242;
          v60 = HIDWORD(v239);
        }

        BYTE14(v240) = 0;
        v235 = 0uLL;
        v237 = 0uLL;
        *(&v238 + 1) = 0;
        *&v239 = 0;
        v62 = v59[v60 + 197];
        v63 = BYTE11(v240);
        if (!v62 || (BYTE11(v240) & 1) != 0 || (v61 & 1) != 0)
        {
          goto LABEL_150;
        }

        if ((WORD4(v239) & 0x8400) != 0)
        {
          goto LABEL_151;
        }

        v235 = vextq_s8(v232, v232, 8uLL);
        BYTE14(v240) = 1;
        if (BYTE9(v240))
        {
          v64 = DWORD2(v239) | 0x2000u;
        }

        else
        {
          v64 = DWORD2(v239) & 0xFFFF5BFF;
        }

        DWORD2(v239) = v64;
        v65 = spaceman_free_extent_cache_search(v62, v64, v235.i64, &v235.u64[1]);
      }

      while (v65 == 28);
      v66 = v235.u64[1];
      v67 = v235.i64[0];
      if (v235.i64[1] && !v235.i64[0])
      {
        v235 = 0uLL;
        v66 = 0;
      }

      v60 = HIDWORD(v239);
      if (v207 == HIDWORD(v239))
      {
        v68 = 0;
      }

      else
      {
        v68 = 3;
      }

      if (v65 != 3)
      {
        v68 = v65;
      }

      if (v68 == 3)
      {
        v222 = 0u;
        v223 = 0u;
        v221 = 0u;
        *&v221 = v242[HIDWORD(v239) + 197];
        *(&v221 + 1) = v232.i64[0];
        *&v222 = v66;
        *(&v222 + 1) = spaceman_free_extent_cache_search_better_length(SWORD4(v239), v232.u64[0], v66);
        *&v223 = 0;
        *(&v223 + 1) = DWORD2(v239);
        v113 = v242;
        v114 = &v242[HIDWORD(v239)];
        v115 = v114 + 102;
        v116 = v114[102];
        if ((v116 & 0x10) != 0)
        {
          v117 = v114[102];
          do
          {
            *v115 = v117 | 0x20;
            cv_wait(v113 + 16, v113 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v113 = v242;
            v118 = &v242[HIDWORD(v239)];
            v115 = v118 + 102;
            v117 = v118[102];
          }

          while ((v117 & 0x10) != 0);
          *v115 = v117 | 0x10;
          if ((v116 & 0x10) == 0 || *(v118[197] + 128) < *(&v222 + 1))
          {
            goto LABEL_255;
          }

          v21 = 0;
        }

        else
        {
          *v115 = v116 | 0x10;
LABEL_255:
          pthread_mutex_unlock(v113 + 6);
          v207 = HIDWORD(v239);
          if (HIDWORD(v239) == 1)
          {
            v119 = 42;
          }

          else
          {
            v119 = 38;
          }

          v120 = spaceman_iterate_free_extents_internal(v12, v119, 0, sub_10001AE40, &v221);
          pthread_mutex_lock(v242 + 6);
          if (v120 == 34 || v120 == 37)
          {
            v122 = 0;
          }

          else
          {
            v122 = v120;
          }

          if (v120 == HIDWORD(v223))
          {
            v21 = v122;
          }

          else
          {
            v21 = v120;
          }
        }

        v16 = a3;
        v235 = 0uLL;
        v123 = v242;
        v124 = HIDWORD(v239);
        v125 = v242[HIDWORD(v239) + 102];
        if ((v125 & 0x20) != 0)
        {
          cv_wakeup(v242 + 16);
          v123 = v242;
          v124 = HIDWORD(v239);
          v125 = v242[HIDWORD(v239) + 102];
        }

        v123[v124 + 102] = v125 & 0xFFFFFFFFFFFFFFCFLL;
        if (v21)
        {
LABEL_310:
          pthread_mutex_unlock(v242 + 6);
          goto LABEL_311;
        }

        goto LABEL_65;
      }

      if (!v68 && v66 && v67)
      {
        *(&v238 + 1) = v67;
        *&v239 = v66;
        if (BYTE10(v240) != 1)
        {
          goto LABEL_148;
        }

        v21 = 0;
        if ((BYTE9(v239) & 2) == 0 && v67 < *(&v233 + 1))
        {
          if ((v66 + v67) < v233)
          {
LABEL_148:
            v21 = 0;
            goto LABEL_213;
          }

          if (obj_type(a1) != 13)
          {
            v96 = a1[48] + 212;
          }

          log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", v89, v90, v91, v92, v93, v94, v95, "spaceman_alloc");
          v21 = 0;
          *(v12 + 634) = 1;
          *(v12 + 1048) = 0;
        }

        goto LABEL_213;
      }

      DWORD2(v239) |= 0x100u;
      v63 = BYTE11(v240);
LABEL_150:
      if ((v63 & 1) == 0)
      {
LABEL_151:
        if ((BYTE12(v240) & 1) == 0 && v242[v60 + 187] && (BYTE9(v239) & 1) == 0)
        {
          *&v226 = *(&v236 + 1);
          *(&v226 + 1) = v232.i64[0];
          LOBYTE(v227) = BYTE9(v240);
          BYTE8(v228) = BYTE8(v240) ^ 1;
          *(&v227 + 1) = 0;
          *&v228 = 0;
          if (BYTE10(v240) == 1)
          {
            *(&v227 + 1) = v233;
            *&v228 = *(&v233 + 1) - v233;
          }

          sub_10001AEB8(v242, v60, &v226, &v229);
          if (v69)
          {
            BYTE9(v240) = 0;
            if (v69 != 28)
            {
              if (obj_type(a1) != 13)
              {
                v77 = a1[48] + 212;
              }

              log_err("%s:%d: %s failed to search bitmap hints: %d\n", v70, v71, v72, v73, v74, v75, v76, "spaceman_alloc");
            }
          }

          else
          {
            BYTE13(v240) = 1;
            BYTE9(v240) = v230;
            *(&v236 + 1) = v229;
            if (BYTE8(v240) == 1)
            {
              v232.i64[0] = *(&v229 + 1);
            }
          }

          v16 = a3;
          if ((BYTE9(v240) & 1) == 0 && BYTE10(v240) == 1)
          {
            if ((BYTE9(v239) & 2) == 0)
            {
              *(v12 + 634) = 1;
              *(v12 + 1048) = 0;
            }

            v233 = 0uLL;
          }
        }

        goto LABEL_173;
      }

      do
      {
LABEL_173:
        v78 = HIDWORD(v239);
        if (HIDWORD(v239) == v240 && *(&v236 + 1) >= v234 && *(&v236 + 1) < *(&v234 + 1))
        {
          *(&v236 + 1) = *(&v234 + 1);
          if ((BYTE14(v240) & 1) == 0 && HIDWORD(v239) == DWORD1(v240) && *(&v234 + 1) >= v233 && *(&v234 + 1) < *(&v233 + 1))
          {
            *(&v236 + 1) = *(&v233 + 1);
          }
        }

        if ((BYTE14(v240) & 1) == 0 && HIDWORD(v239) == DWORD1(v240) && *(&v236 + 1) >= v233 && *(&v236 + 1) < *(&v233 + 1))
        {
          *(&v236 + 1) = *(&v233 + 1);
          if (HIDWORD(v239) == v240 && *(&v233 + 1) >= v234 && *(&v233 + 1) < *(&v234 + 1))
          {
            *(&v236 + 1) = *(&v234 + 1);
          }
        }

        v79 = v242[HIDWORD(v239) + 197];
        if (v79)
        {
          if (BYTE14(v240))
          {
            v80 = &v236 + 1;
          }

          else
          {
            v80 = 0;
          }

          HIBYTE(v240) = spaceman_free_extent_cache_bitmap_scan_begin(v79, v80);
          LOBYTE(v241) = 0;
          v78 = HIDWORD(v239);
        }

        else
        {
          HIBYTE(v240) = 0;
        }

        v81 = *(&v236 + 1);
        if (*(&v236 + 1) >= *(v35 + 48 * v78))
        {
          v81 = 0;
          *(&v236 + 1) = 0;
        }

        *&v236 = v81;
        v82 = sub_10001B2C0(a1, v12, v242, &v229);
      }

      while (v82 == 3);
      v21 = v82;
      if ((v241 & 0x100) != 0)
      {
        if (!HIBYTE(v240))
        {
          goto LABEL_213;
        }

        v83 = BYTE14(v240) == 1 ? *(v242[47] + 48 * HIDWORD(v239) + 48) : 0;
        v85 = v242[HIDWORD(v239) + 197];
        v86 = 1;
      }

      else
      {
        if (!HIBYTE(v240))
        {
          goto LABEL_213;
        }

        if (BYTE14(v240) == 1)
        {
          v83 = v236;
          if (!v82 && v236 > *(&v236 + 1))
          {
            v84 = *(&v237 + 1) || !v239 ? v238 + *(&v237 + 1) + v237 : *(&v238 + 1) + v239;
            if (v236 <= v84)
            {
              v83 = v84;
            }
          }
        }

        else
        {
          v83 = 0;
        }

        v85 = v242[HIDWORD(v239) + 197];
        v86 = 0;
      }

      spaceman_free_extent_cache_bitmap_scan_finished(v85, v83, v86);
      HIBYTE(v240) = 0;
LABEL_213:
      v87 = v34;
      v88 = *(&v237 + 1);
      if (*(&v237 + 1))
      {
        if (v21)
        {
          goto LABEL_296;
        }

        v97 = v237 + v238;
        goto LABEL_236;
      }

      v88 = v239;
      if (v21 || v239)
      {
        break;
      }

      if (BYTE1(v241) != 1)
      {
        v88 = 0;
        v97 = 0;
        goto LABEL_236;
      }

      v38 = v220;
      if ((v220 & 4) == 0)
      {
        pthread_mutex_unlock(v242 + 6);
        pthread_mutex_lock(v242 + 8);
        sub_100015E54(v12, v225, 0, 0);
        if (sub_100015F48(v12, v242, HIDWORD(v239) + 1, 1, v225, v213))
        {
          v37 = v87;
        }

        else
        {
          v37 = v37;
        }

        sub_100016780(v12, v225);
        pthread_mutex_unlock(v242 + 8);
        pthread_mutex_lock(v242 + 6);
      }

      if (v242[HIDWORD(v239) + 197] && (HIBYTE(v240) & 1) != 0)
      {
        sub_1000A4698();
      }
    }

    if (v239)
    {
      v97 = *(&v238 + 1);
    }

    else
    {
      v97 = 0;
    }

    if (v21)
    {
      goto LABEL_296;
    }

LABEL_236:
    if (!spaceman_extent_check(v12, v242, v97, v88))
    {
      v98 = v97 + v88;
      if (v97 + v88 >= *(v35 + 48 * HIDWORD(v239)))
      {
        v98 = 0;
      }

      *&v236 = v98;
      if ((v220 & 4) != 0 || v88 < 1)
      {
        goto LABEL_273;
      }

      if (*(v12 + 627))
      {
        v21 = 30;
        goto LABEL_310;
      }

      v99 = obj_modify(v242, 0, v213);
      if (v99)
      {
        v21 = v99;
        goto LABEL_310;
      }

      v21 = sub_10001C358(v12, v211, v242, v97, v88, v213, 0, SDWORD2(v239));
      spaceman_free_extent_cache_remove(v242[HIDWORD(v239) + 197], v97, v88, v100, v101, v102, v103, v104);
      if (!v21)
      {
LABEL_273:
        v126 = v206;
        *v206 = v97;
        v127 = a6;
        if (a6)
        {
          *a6 = v88;
        }

        v128 = v242;
        v129 = v242[199];
        if (v129)
        {
          v129[10] += v88;
          if (v88 < a3)
          {
            ++v129[11];
          }
        }

        if (BYTE12(v240) == 1)
        {
          if ((v217 & 1) == 0)
          {
            sub_1000A46C4();
          }

          if (v129)
          {
            ++v129[3];
          }

          if ((*(v128[HIDWORD(v239) + 187] + 4 * (v128[17 * HIDWORD(v239) + 153 + 4 * v51] / *(v212 + 36))) & 0xFFFFFFu) <= v51)
          {
            new_chunk_for_allocation_zone = spaceman_get_new_chunk_for_allocation_zone(v12, v128, HIDWORD(v239), v51);
            if (new_chunk_for_allocation_zone)
            {
              if (new_chunk_for_allocation_zone != 28)
              {
                if (obj_type(a1) != 13)
                {
                  v180 = a1[48] + 212;
                }

                log_err("%s:%d: %s failed to update chunk for alloc zone %d: %d\n", v131, v132, v133, v134, v135, v136, v137, "spaceman_alloc");
              }
            }
          }
        }

        else if ((WORD4(v239) & 0x200) != 0)
        {
          v170 = *(v12 + 1016);
          if (HIDWORD(v239) || v236 < v170 || v236 >= *(v12 + 1024) + v170)
          {
            *(v12 + 1032) = v170;
          }

          else
          {
            *(v12 + 1032) = v236;
          }
        }

        else
        {
          v163 = HIDWORD(v239);
          if ((WORD4(v239) & 0x142) == 0 || HIDWORD(v239))
          {
            v171 = v236;
            v128[HIDWORD(v239) + 125] = v236;
            if (BYTE9(v240) == 1 && spaceman_should_avoid_data_allocation_at_block(v128, v163, v171, 5))
            {
              *&v226 = v236;
              *(&v226 + 1) = 1;
              LOBYTE(v227) = 1;
              BYTE8(v228) = 1;
              *(&v227 + 1) = 0;
              *&v228 = 0;
              sub_10001AEB8(v242, HIDWORD(v239), &v226, &v229);
              if (v172)
              {
                if (v172 != 28)
                {
                  if (obj_type(a1) != 13)
                  {
                    v199 = a1[48] + 212;
                  }

                  log_err("%s:%d: %s failed to move roving pointer for dev %d error %d\n", v173, v174, v175, v176, v177, v178, v179, "spaceman_alloc");
                }
              }

              else if (*(&v229 + 1) >= 1)
              {
                v242[HIDWORD(v239) + 125] = v229;
              }
            }
          }

          else if (v216)
          {
            spaceman_update_metazone_alloc_index(v128, 0, v219, v236);
          }
        }

        pthread_mutex_unlock(v242 + 6);
        goto LABEL_329;
      }

      if (obj_type(a1) != 13)
      {
        v112 = a1[48] + 212;
      }

      log_err("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", v105, v106, v107, v108, v109, v110, v111, "spaceman_alloc");
      if (BYTE14(v240) != 1)
      {
        goto LABEL_310;
      }

      spaceman_free_extent_cache_reset(v242[HIDWORD(v239) + 197]);
      v36 = 1;
      v16 = a3;
      v34 = v87;
      if (v208)
      {
        goto LABEL_310;
      }

      continue;
    }

    break;
  }

  if (nx_ratelimit_log_allowed(*(*a1 + 392)))
  {
    if (obj_type(a1) != 13)
    {
      v162 = a1[48] + 212;
    }

    log_err("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", v155, v156, v157, v158, v159, v160, v161, "spaceman_alloc");
  }

  v21 = nx_corruption_detected_int(v12);
LABEL_296:
  pthread_mutex_unlock(v242 + 6);
  v126 = v206;
  v127 = a6;
  if (v21)
  {
    goto LABEL_311;
  }

LABEL_329:
  obj_release(v242);
  if ((BYTE8(v239) & 4) != 0)
  {
    return 0;
  }

  v21 = 0;
  if ((WORD4(v239) & 0x200) != 0)
  {
    return v21;
  }

  v181 = *(v12 + 1024);
  if (!v181)
  {
    return v21;
  }

  v182 = *(v12 + 1016);
  if (*v126 >= v182 && *v126 < v182 + v181)
  {
    return 0;
  }

  if (*(v12 + 634) == 1)
  {
    v183 = &v232;
    if (v127)
    {
      v183 = v127;
    }

    v184 = *(v12 + 1048) + v183->i64[0];
    *(v12 + 1048) = v184;
    if (v184 >= 0x401)
    {
      if (obj_type(a1) != 13)
      {
        v209 = a1[48] + 212;
      }

      log_debug("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", v185, v186, v187, v188, v189, v190, v191, "spaceman_alloc");
      v21 = 0;
      *(v12 + 634) = 0;
      return v21;
    }

    return 0;
  }

  if (!v127 || 10000 * v127->i64[0] >= v232.i64[0] || v127->i64[0] * *(*(v12 + 376) + 36) >= 0x40000)
  {
    return 0;
  }

  if (obj_type(a1) != 13)
  {
    v210 = a1[48] + 212;
  }

  v203 = v127->i64[0];
  log_debug("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", v192, v193, v194, v195, v196, v197, v198, "spaceman_alloc");
  v21 = 0;
  *(v12 + 634) = 1;
  *(v12 + 1048) = 0;
  return v21;
}

uint64_t sub_10001AA14(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
{
  if ((~a2 & 0x38) == 0)
  {
    panic("Absurd combination of allocation flags for spaceman %llx", a1);
  }

  if (*(*(a1 + 376) + 96))
  {
    v5 = a2 & 0x20;
    v6 = (a2 >> 3) & 3;
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        goto LABEL_6;
      }
    }

    else if (v6)
    {
LABEL_6:
      *a3 = &_mh_execute_header;
      goto LABEL_11;
    }

    *a3 = 1;
    v5 |= a5;
LABEL_11:
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    goto LABEL_14;
  }

  if ((a2 & 0x10) == 0)
  {
    *a3 = 0;
    v7 = 1;
LABEL_14:
    result = 0;
    *a4 = v7;
    return result;
  }

  return 22;
}

uint64_t sub_10001AAEC(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7)
{
  v54 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  memset(v58, 0, sizeof(v58));
  v57 = a3 + 832;
  v14 = v13 + 48 * a4;
  v55 = a4 + 1;
  v52 = v13 + 40 * (a4 + 1);
  v53 = a3 + 984;
  v15 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v16 = *(a2 + 408);
      v17 = *(a2 + 376);
      v19 = v17[10];
      v18 = v17[11];
      v20 = v17[9];
      if (v19 >= v18 + v16)
      {
        v21 = v19 - (v18 + v16);
      }

      else
      {
        v21 = 0;
      }

      if (v20 - v18 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20 - v18;
      }

      if (v19 <= v18 + v16)
      {
        v23 = v20 - v18;
      }

      else
      {
        v23 = v22;
      }

      v24 = v23 >= v16;
      v25 = v23 - v16;
      if (!v24)
      {
        v25 = 0;
      }

      if (v20 <= v18)
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
      v21 = 0;
    }

    v26 = *(a3 + 376);
    v27 = v26[30] + v26[9] + *(a3 + 984) + v26[15] + v26[35] + *(a3 + 992);
    v29 = v26[23];
    v28 = v26[24];
    v24 = v29 >= v28;
    v30 = v29 - v28;
    if (!v24)
    {
      v30 = 0;
    }

    v31 = *(a3 + 840) + *(a3 + 832);
    v32 = *(a3 + 864);
    v24 = v31 >= v32;
    v33 = v31 - v32;
    if (!v24)
    {
      v33 = 0;
    }

    v34 = v33 + v30;
    v24 = v27 >= v34;
    v35 = v27 - v34;
    if (!v24)
    {
      v35 = 0;
    }

    if (*(a3 + 1616))
    {
      v36 = *(a3 + 1632);
      v24 = v33 >= v36;
      v37 = v33 - v36;
      if (!v24)
      {
        v37 = 0;
      }

      v38 = *(a3 + 1624);
      v39 = *(a3 + 1640);
      v24 = v38 >= v39;
      v40 = v38 - v39;
      if (!v24)
      {
        v40 = 0;
      }

      v24 = v40 >= v36;
      v41 = v40 - v36;
      if (!v24)
      {
        v41 = 0;
      }

      v42 = *(a3 + 1648);
      v43 = *(a3 + 1656);
      v24 = v42 >= v43;
      v44 = v42 - v43;
      if (!v24)
      {
        v44 = 0;
      }

      v24 = v44 >= v37;
      v45 = v44 - v37;
      if (!v24)
      {
        v45 = 0;
      }

      v24 = v35 >= v45 + v41;
      v46 = v35 - (v45 + v41);
      if (!v24)
      {
        v46 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v45 = v41;
      }

      v47 = v45 + v25 + v46;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v49 = *a6;
LABEL_54:
        v21 = v49;
        if (v49 <= v47)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v47;
        v21 = v47;
        if (v47 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v47 = v35 + v25;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v47 >= v21)
    {
      v48 = v21;
    }

    else
    {
      v48 = v47;
    }

    if (*(*(a2 + 376) + 80))
    {
      v47 = v48;
    }

    pthread_mutex_unlock((a3 + 576));
    v49 = *a6;
    if (!*(*(a2 + 376) + 80) || v49 <= v21)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v21;
    if (v21 < 1)
    {
      return 69;
    }

    if (v21 > v47)
    {
      goto LABEL_56;
    }

LABEL_57:
    v50 = *(v14 + 72) - *(v57 + 8 * a4);
    if (v21 > v50)
    {
      break;
    }

LABEL_65:
    if (v21 <= v50)
    {
      return 0;
    }
  }

  if (v15)
  {
    v50 += *(v52 + 200) + *(v53 + 8 * a4);
    if (v21 <= v50)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v50;
  if (v50 > 0 && v15)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    sub_100015E54(a1, v58, 0, 0);
    v15 = sub_100015F48(a1, a3, v55, 1, v58, a7) != 0;
    sub_100016780(a1, v58);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v50 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v21 = v54;
      *a6 = v54;
    }

    else
    {
      v21 = *a6;
    }

    goto LABEL_65;
  }

  if (v50 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001AE40(uint64_t a1, uint64_t a2, unint64_t a3)
{
  result = *(a1 + 44);
  if (!result)
  {
    v5 = *(a1 + 32);
    if (!v5)
    {
      *(a1 + 32) = a2;
      v5 = a2;
    }

    if (*(a1 + 24) <= a3)
    {
      result = 37;
    }

    else
    {
      v6 = *(*(*(*a1 + 8) + 376) + 36);
      result = spaceman_free_extent_cache_scan_should_pause(*a1, (a2 - v5 / v6 * v6) / v6);
      if (!result)
      {
        return result;
      }

      result = 34;
    }

    *(a1 + 44) = result;
  }

  return result;
}

double sub_10001AEB8(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
{
  v57 = 0;
  v6 = *(a3 + 16);
  v7 = *(a3 + 32);
  v61[0] = *a3;
  v61[1] = v6;
  v8 = *(a1 + 376);
  v9 = *(a3 + 16);
  v50 = *(a3 + 40);
  v10 = *a3 / *(v8 + 36);
  v11 = v10;
  v61[2] = v7;
  v12 = a1 + 1496;
  v13 = a2;
  v14 = *(a1 + 1496 + 8 * a2) + 4 * v10;
  v55 = *(a3 + 8);
  *&v15 = 0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  v56 = v8;
  v16 = v8 + 48 * a2;
  v51 = v14;
  v52 = v10;
  do
  {
    if (!v9)
    {
      v28 = 1;
      v29 = v51;
      goto LABEL_23;
    }

    v17 = *(a1 + 376);
    if ((*(v14 + 3) & 0xC) == 0)
    {
      v18 = v17 + 48 * v13;
      v19 = *(v18 + 56);
      if (v19 <= v11)
      {
        goto LABEL_18;
      }

      v20 = *(a3 + 32);
      if (!v20)
      {
        goto LABEL_18;
      }

      v21 = *(v17 + 36);
      v22 = v21;
      if (v19 - 1 == v11)
      {
        v22 = *(v18 + 48) % v21;
      }

      if (!calc_overlap_range(v11 * v21, v22, *(a3 + 24), v20, 0))
      {
LABEL_18:
        if (v11 == v10)
        {
          v28 = 1;
        }

        else
        {
          v28 = 0;
          *&v61[0] = v11 * *(v56 + 36);
        }

        v29 = v14;
        v52 = v11;
        goto LABEL_23;
      }

      v17 = *(a1 + 376);
    }

    v23 = v17 + 48 * v13;
    v24 = *(v23 + 56);
    if (v24 > v11)
    {
      v25 = *(a3 + 32);
      if (v25)
      {
        v26 = *(v17 + 36);
        v27 = v26;
        if (v24 - 1 == v11)
        {
          v27 = *(v23 + 48) % v26;
        }

        v57 |= calc_overlap_range(v11 * v26, v27, *(a3 + 24), v25, 0) != 0;
      }
    }

    v11 = (v11 + 1) % *(v16 + 56);
    v14 = *(v12 + 8 * v13) + 4 * v11;
  }

  while (v11 != v10);
  if ((v57 & 1) == 0)
  {
    return *&v15;
  }

  v28 = 1;
  v29 = *(v12 + 8 * v13) + 4 * v11;
LABEL_23:
  v30 = v55;
  if (v55 < 2)
  {
    goto LABEL_52;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v55 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_52;
  }

  if (v52 < *(v16 + 56) - 1 && (v31 & 0x2000000) != 0 && *(v12 + 8 * v13) + 4 * v52 != -4)
  {
    v32 = *(*(v12 + 8 * v13) + 4 * v52 + 4);
    if ((v32 & 0x1000000) != 0 && ((v32 & 0xC000000) == 0 || (v9 & 1) == 0))
    {
      v41 = v32 & 0xFFFFFF;
      v36 = v50;
      if (v50)
      {
        v35 = a4;
        v33 = v56;
        if (v55 <= v41 + v29)
        {
          goto LABEL_53;
        }

        v34 = *(v56 + 36);
        goto LABEL_32;
      }

      if (v29 <= v41)
      {
        v29 = v41;
      }

      else
      {
        v29 = v29;
      }

      if (v55 >= v29)
      {
        v30 = v29;
      }

LABEL_52:
      v35 = a4;
      v33 = v56;
      goto LABEL_53;
    }
  }

  v33 = v56;
  v34 = *(v56 + 36);
  v35 = a4;
  v36 = v50;
  if (!v50)
  {
LABEL_36:
    *&v61[0] = v52 * v34;
    sub_10001F78C(a1, a2, 0, v61, v35);
    v38 = *(v35 + 8);
    if (v38 < v55)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    if (!v38 || v39)
    {
      v15 = *(v35 + 24);
      *v35 = v15;
      *(v35 + 16) = *(v35 + 40);
      *(v35 + 24) = 0;
      *(v35 + 32) = 0;
      *(v35 + 40) = 0;
      v40 = *(v35 + 8);
    }

    return *&v15;
  }

LABEL_32:
  if (v34 >= 0xFFFFFF)
  {
    v37 = 0xFFFFFFLL;
  }

  else
  {
    v37 = v34;
  }

  if (v55 <= v37)
  {
    goto LABEL_36;
  }

LABEL_53:
  v42 = *&v61[0];
  *v35 = *&v61[0];
  *(v35 + 8) = v30;
  *(v35 + 16) = v9;
  if (v28)
  {
    v43 = *(a1 + 376);
    v44 = v43 + 48 * v13;
    v45 = *(v44 + 56);
    if (v45 > v10)
    {
      v46 = *(a3 + 32);
      if (v46)
      {
        v47 = *(v43 + 36);
        v48 = v10 * v47;
        if (v45 - 1 == v10)
        {
          v47 = *(v44 + 48) % v47;
        }

        if (calc_overlap_range(v48, v47, *(a3 + 24), v46, 0))
        {
          *(v35 + 16) = 0;
        }
      }
    }
  }

  if (v42 % *(v33 + 36))
  {
    v59 = 0u;
    v60 = 0u;
    v58 = 0u;
    sub_10001F78C(a1, a2, 3uLL, v61, &v58);
    if (*(&v58 + 1) >= v30)
    {
      *&v15 = v58;
      *(v35 + 24) = v58;
      *(v35 + 40) = v59;
    }

    else
    {
      v15 = *v35;
      *(v35 + 24) = *v35;
      *(v35 + 40) = *(v35 + 16);
      *(v35 + 24) = v42 / *(v33 + 36) * *(v33 + 36);
    }
  }

  return *&v15;
}

uint64_t sub_10001B2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v119 = 0;
  v8 = 0;
  v9 = *(a3 + 376);
  v128 = 0;
  v129 = 0;
  v126 = 0;
  v127 = 0;
  v10 = v9 + 12;
  v111 = a3 + 896;
  v116 = v9 + 12;
  v124 = 0;
  v125 = 0;
  v117 = a3 + 1576;
  v112 = -1;
  v123 = 0;
  v11 = *(a4 + 172);
  v120 = v9;
  do
  {
    v12 = *(a4 + 112) / v9[9] / v9[10];
    if (v10[12 * v11 + 5])
    {
      v13 = v5;
      v14 = v9[11];
      v15 = v12 / v14;
      v16 = v129;
      if (v12 / v14 == v112)
      {
        LODWORD(v17) = *(a4 + 112) / v9[9] / v9[10];
        v15 = v112;
      }

      else
      {
        v19 = *(*(v111 + 8 * v11) + 8 * v15);
        if (v129)
        {
          obj_release(v129);
          v9 = v120;
          v129 = 0;
          LODWORD(v11) = *(a4 + 172);
        }

        v125 = v9;
        v126 = __PAIR64__(v15, v11);
        v20 = v9;
        v21 = obj_get(*(a2 + 392), 0x40000000, v19, &sm_cab_desc, &v125, 0, 0, 0, &v129);
        if (v21)
        {
          v104 = v21;
          v5 = v13;
          break;
        }

        v14 = v20[11];
        v16 = v129;
        LODWORD(v11) = *(a4 + 172);
        v112 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v9 = v20;
      }

      v18 = (v16[7] + 8 * (v12 - v14 * v15) + 40);
      LODWORD(v12) = v17;
      v5 = v13;
    }

    else
    {
      v18 = (*(v111 + 8 * v11) + 8 * v12);
    }

    v22 = *v18;
    v125 = v9;
    v126 = __PAIR64__(v12, v11);
    v23 = v9;
    v24 = obj_get(*(a2 + 392), 0x40000000, v22, &sm_cib_desc, &v125, 0, 0, 0, &v128);
    if (v24)
    {
      v104 = v24;
      break;
    }

    v5 = v128[7];
    v29 = *(v5 + 32);
    v31 = v23[9];
    v30 = v23[10];
    v32 = v30 * v29;
    v33 = v23;
    if (v119 == v10[12 * *(a4 + 172) + 4])
    {
      v34 = *(a4 + 120) / v31 - v32 + 1;
    }

    else
    {
      v34 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v31 - v30 * v29;
    if (v34 <= v7)
    {
      v104 = 0;
      goto LABEL_280;
    }

    v121 = v5 + 40;
    v7 = v7;
    v114 = v128[7];
    v122 = v30 * v29;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v35 = *(a4 + 32);
        if (v35 >= 1 && *(a4 + 48) <= (2 * v33[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v35;
          }

          v105 = *(a4 + 40);
          *(a4 + 185) = v105;
          if ((v105 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v104 = 3;
          goto LABEL_280;
        }
      }

      v36 = v121 + 32 * v7;
      v37 = *(v36 + 8);
      v38 = v32 + v7;
      v39 = v33[9];
      if (v37 != (v32 + v7) * v39)
      {
        if (obj_type(a1) != 13)
        {
          v50 = *(a1 + 384) + 212;
        }

        v51 = *(v36 + 8);
        v110 = v38 * v120[9];
        v109 = *(v5 + 8);
        log_err("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", v43, v44, v45, v46, v47, v48, v49, "spaceman_alloc_iterate_chunks");
        v33 = v120;
        if (v33[9] + v33[9] * v38 >= *&v10[12 * *(a4 + 172)])
        {
          v8 = 0;
        }

        else
        {
          v8 = v120[9] + v120[9] * v38;
        }

        v32 = v122;
LABEL_106:
        *(a4 + 112) = v8;
        goto LABEL_107;
      }

      v40 = *(a4 + 172);
      if (v119 == v10[12 * v40 + 4] && (v41 = *(a4 + 120), v41 / v39 - v32 == v7))
      {
        v42 = v41 - v37;
      }

      else
      {
        v42 = *(v36 + 16) & 0xFFFFFLL;
      }

      v52 = *(a4 + 176);
      if (v40 == v52)
      {
        v53 = *(a4 + 80);
        v54 = v53 - v37;
        if (v53 - v37 >= v42)
        {
          v54 = v42;
        }

        if (v53 > v37 && v53 < v42 + v37)
        {
          v42 = v54;
        }
      }

      v56 = *(a4 + 180);
      if (v40 == v56)
      {
        should_avoid_data_allocation_at_block = 0;
        v59 = *(a4 + 64);
        if (v59 <= v37 || v59 >= v42 + v37)
        {
          v57 = v6;
        }

        else if (*(a4 + 190))
        {
          v57 = v6;
          should_avoid_data_allocation_at_block = 1;
        }

        else
        {
          v57 = v6;
          should_avoid_data_allocation_at_block = 0;
          if (v59 - v37 < v42)
          {
            v42 = v59 - v37;
          }
        }
      }

      else
      {
        v57 = v6;
        should_avoid_data_allocation_at_block = 0;
      }

      v60 = *(a4 + 112);
      v61 = v60 - v37;
      if (v40 == v52)
      {
        v62 = *(a4 + 88);
        if (v62 > v37 && v62 < v42 + v37)
        {
          if (v62 - v37 > v61)
          {
            v61 = v62 - v37;
          }

          v60 = v61 + v37;
          *(a4 + 112) = v61 + v37;
          if (v61 > 0)
          {
            v8 = 0;
          }
        }
      }

      if (v40 == v56)
      {
        v65 = *(a4 + 72);
        if (v65 > v37 && v65 < v42 + v37)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            if (v65 - v37 > v61)
            {
              v61 = v65 - v37;
            }

            v60 = v61 + v37;
            *(a4 + 112) = v61 + v37;
            if (v61 > 0)
            {
              v8 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v63 = *(v36 + 20) & 0xFFFFF;
        if (!v8 || v63 < (*(v36 + 16) & 0xFFFFFu) && *(a4 + 48) - v8 > v63)
        {
          if (v63)
          {
            if (v7 >= v34 - 1 || (v64 = *(v36 + 52) & 0xFFFFF, *(a4 + 48) <= (v64 + v63)))
            {
              v8 = 0;
            }

            else
            {
              v8 = 0;
              if (v64 < (*(v36 + 48) & 0xFFFFFu))
              {
                should_avoid_data_allocation_at_block = 1;
              }
            }
          }

          else
          {
            v8 = 0;
            should_avoid_data_allocation_at_block = 2;
          }
        }
      }

      if (v40 == v52 && *(a4 + 80) <= v61 + v37 && *(a4 + 88) >= v42 + v37)
      {
        should_avoid_data_allocation_at_block = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_89;
        }
      }

      else
      {
        if (v40 != v56 || should_avoid_data_allocation_at_block)
        {
          goto LABEL_86;
        }

        if (*(a4 + 64) <= v61 + v37)
        {
          should_avoid_data_allocation_at_block = *(a4 + 72) >= v42 + v37;
LABEL_86:
          if (!*(a4 + 184))
          {
            goto LABEL_89;
          }

          goto LABEL_87;
        }

        should_avoid_data_allocation_at_block = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_89;
        }
      }

LABEL_87:
      if ((*(v36 + 20) & 0xFFFFF) == 0)
      {
        should_avoid_data_allocation_at_block = 2;
      }

LABEL_89:
      v66 = *(v36 + 24);
      if (!v66 && ((*(v36 + 16) ^ *(v36 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v67) = *(a4 + 190);
LABEL_97:
        v68 = v60 + v42 - v61;
        *(a4 + 112) = v68;
        v10 = v116;
        v6 = v57;
        v32 = v122;
        if (v40 == v52 && v68 >= *(a4 + 80) && v68 < *(a4 + 88) || (v67 & 1) == 0 && v40 == *(a4 + 180) && v68 >= *(a4 + 64) && v68 < *(a4 + 72))
        {
          v68 = *(v36 + 8) + (*(v36 + 16) & 0xFFFFF);
          *(a4 + 112) = v68;
        }

        v8 = 0;
        if (v68 < *&v116[12 * v40])
        {
          goto LABEL_108;
        }

        goto LABEL_106;
      }

      if (!should_avoid_data_allocation_at_block)
      {
        if (*(a4 + 185) != 1)
        {
          v69 = 1;
          goto LABEL_112;
        }

        should_avoid_data_allocation_at_block = spaceman_should_avoid_data_allocation_at_block(a3, v40, v37, *(a4 + 48));
        v33 = v120;
      }

      v67 = *(a4 + 190);
      if (should_avoid_data_allocation_at_block > v67)
      {
        v60 = *(a4 + 112);
        v40 = *(a4 + 172);
        v52 = *(a4 + 176);
        goto LABEL_97;
      }

      v66 = *(v36 + 24);
      v69 = should_avoid_data_allocation_at_block == 0;
LABEL_112:
      v70 = (v57 + 1);
      v127 = 0;
      if (v66)
      {
        v71 = obj_get(*(a2 + 392), 0x40000000, v66, &sm_bm_desc, 0, 0, 0, 0, &v127);
        if (v71)
        {
          v104 = v71;
          goto LABEL_278;
        }
      }

      if (v8)
      {
        if (v61)
        {
          __assert_rtn("spaceman_alloc_iterate_chunks", "spaceman.c", 7486, "bmoffset == 0");
        }

        v72 = v42;
        if (v69)
        {
          if (*(a4 + 48) - v8 >= v42)
          {
            v72 = v42;
          }

          else
          {
            v72 = *(a4 + 48) - v8;
          }
        }

        v6 = v70;
        if (!v127 || !bitmap_range_find_first(1, v127[7], 0, v72, (a4 + 128)))
        {
          if (v69)
          {
            v75 = *(a4 + 48);
            if (v75 == v72 + v8)
            {
              *(a4 + 152) = *(a4 + 112) - v8;
              *(a4 + 160) = v75;
              if (v127)
              {
                obj_release(v127);
              }

              v8 = 0;
              v104 = 0;
              v127 = 0;
              v5 = v114;
              v10 = v116;
              goto LABEL_280;
            }
          }

          if (v72 != v42)
          {
            __assert_rtn("spaceman_alloc_iterate_chunks", "spaceman.c", 7503, "erbcount == bcount");
          }

          if (*(a4 + 190) == 1)
          {
            v76 = *(a4 + 191);
          }

          else
          {
            v76 = 0;
          }

          v77 = v42 + v8;
          spaceman_free_extent_cache_insert(*(v117 + 8 * *(a4 + 172)), v76 & 1, *(a4 + 112) - v8, v42 + v8, v25, v26, v27, v28);
          if (*(a4 + 184) == 1 && v77 > *(a4 + 160))
          {
            if (v69 || !spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v8, v42 + v8, *(a4 + 168), *(a4 + 56), &v124, &v123))
            {
              *(a4 + 152) = *(a4 + 112) - v8;
              v78 = *(a4 + 48);
              if (v77 < v78)
              {
                v78 = v42 + v8;
              }

LABEL_148:
              *(a4 + 160) = v78;
            }

            else
            {
              v78 = v123;
              if (v123 >= *(a4 + 48))
              {
                v78 = *(a4 + 48);
              }

              v123 = v78;
              if (v78 > *(a4 + 160))
              {
                *(a4 + 152) = v124;
                goto LABEL_148;
              }
            }
          }

          v79 = *(a4 + 112) + v42;
          *(a4 + 112) = v79;
          v80 = *(a4 + 172);
          v5 = v114;
          v10 = v116;
          if (v80 == *(a4 + 176) && v79 >= *(a4 + 80) && v79 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v80 == *(a4 + 180) && v79 >= *(a4 + 64) && v79 < *(a4 + 72))
          {
            v77 = 0;
            v79 = *(v36 + 8) + (*(v36 + 16) & 0xFFFFF);
            *(a4 + 112) = v79;
          }

          v8 = v77;
          if (v79 >= *&v116[12 * v80])
          {
            v8 = 0;
            *(a4 + 112) = 0;
          }

          if (v127)
          {
            obj_release(v127);
          }

          v127 = 0;
          if (v8)
          {
            goto LABEL_266;
          }

          v32 = v122;
          v33 = v120;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v8 = 0;
            v104 = 0;
            goto LABEL_280;
          }

          goto LABEL_107;
        }

        if (*(a4 + 184) != 1)
        {
          goto LABEL_171;
        }

        v25 = *(a4 + 128) + v8;
        if (v25 <= *(a4 + 160))
        {
          goto LABEL_171;
        }

        if (!v69)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v8, v25, *(a4 + 168), *(a4 + 56), &v124, &v123))
          {
            v73 = *(a4 + 48);
            if (v123 < v73)
            {
              v73 = v123;
            }

            v123 = v73;
            v74 = *(a4 + 160);
            if (v73 > v74)
            {
              *(a4 + 152) = v124;
              *(a4 + 160) = v73;
LABEL_170:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v127)
                {
                  obj_release(v127);
                }

                v8 = 0;
                v104 = 0;
                v127 = 0;
                v5 = v114;
                v10 = v116;
                goto LABEL_280;
              }

LABEL_171:
              if (*(a4 + 190) == 1)
              {
                v81 = *(a4 + 191);
              }

              else
              {
                v81 = 0;
              }

              spaceman_free_extent_cache_insert(*(v117 + 8 * *(a4 + 172)), v81 & 1, *(a4 + 112) - v8, *(a4 + 128) + v8, v25, v26, v27, v28);
              v61 = *(a4 + 128);
              *(a4 + 112) += v61;
              goto LABEL_175;
            }

LABEL_169:
            if (v74)
            {
              goto LABEL_170;
            }

            goto LABEL_171;
          }

          v25 = *(a4 + 128) + v8;
        }

        v74 = *(a4 + 48);
        if (v25 < v74)
        {
          v74 = v25;
        }

        *(a4 + 152) = *(a4 + 112) - v8;
        *(a4 + 160) = v74;
        goto LABEL_169;
      }

LABEL_175:
      if (v127)
      {
        break;
      }

      v89 = *(a4 + 48);
      v90 = v89 <= v42 - v61;
      if (v89 >= v42 - v61)
      {
        v91 = v42 - v61;
      }

      else
      {
        v91 = *(a4 + 48);
      }

      *(a4 + 128) = v61;
      *(a4 + 136) = v91;
      v92 = v89 <= v42 - v61 && v69;
      if (v90)
      {
        v93 = v42 - v61;
      }

      else
      {
        v93 = 0;
      }

      if (v92)
      {
        v8 = 0;
        v104 = 0;
        v5 = v114;
        v10 = v116;
        v6 = v70;
        if (!v91)
        {
          goto LABEL_281;
        }

        goto LABEL_305;
      }

      if (*(a4 + 190) == 1)
      {
        v94 = *(a4 + 191);
      }

      else
      {
        v94 = 0;
      }

      spaceman_free_extent_cache_insert(*(v117 + 8 * *(a4 + 172)), v94 & 1, *(a4 + 112), v91, v25, v26, v27, v28);
LABEL_221:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_230;
      }

      v8 = *(a4 + 136);
      if (v8 > *(a4 + 160))
      {
        v95 = *(a4 + 112);
        v96 = *(a4 + 128);
        if (!v69)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), v95 - v61 + v96, v8, *(a4 + 168), *(a4 + 56), &v124, &v123))
          {
            v8 = v123;
            if (v123 > *(a4 + 160))
            {
              v97 = v124;
              goto LABEL_229;
            }

            goto LABEL_230;
          }

          v95 = *(a4 + 112);
          v96 = *(a4 + 128);
          v8 = *(a4 + 136);
        }

        v97 = v95 - v61 + v96;
LABEL_229:
        *(a4 + 152) = v97;
        *(a4 + 160) = v8;
LABEL_230:
        v8 = *(a4 + 136);
      }

      v5 = v114;
      if (!v8 || *(a4 + 128) + v8 != v42)
      {
        if (!v127 && v42)
        {
          __assert_rtn("spaceman_alloc_iterate_chunks", "spaceman.c", 7664, "bmo || (bcount == 0)");
        }

        if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
        {
          v8 = 0;
          v104 = 0;
          *(a4 + 112) += v42 - v61;
          goto LABEL_279;
        }

        v8 = v93;
        if (!v93)
        {
          v98 = *(a4 + 48);
          v99 = v42 - v98;
          if (v42 < v98)
          {
            v99 = 0;
            v98 = v42;
          }

          if (bitmap_range_find_last_set(v127[7], v99, v98, (a4 + 128)) && (v100 = *(a4 + 128), v100 < v42 - 1))
          {
            if (*(a4 + 190) == 1)
            {
              v101 = *(a4 + 191);
            }

            else
            {
              v101 = 0;
            }

            v8 = v42 + ~v100;
            spaceman_free_extent_cache_insert(*(v117 + 8 * *(a4 + 172)), v101 & 1, v100 - v61 + *(a4 + 112) + 1, v8, v25, v26, v27, v28);
          }

          else
          {
            v8 = 0;
          }
        }
      }

      *(a4 + 136) = 0;
      v102 = *(a4 + 112) + v42 - v61;
      *(a4 + 112) = v102;
      v103 = *(a4 + 172);
      v10 = v116;
      v6 = v70;
      if (v103 == *(a4 + 176) && v102 >= *(a4 + 80) && v102 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v103 == *(a4 + 180) && v102 >= *(a4 + 64) && v102 < *(a4 + 72))
      {
        v8 = 0;
        v102 = *(v36 + 8) + (*(v36 + 16) & 0xFFFFF);
        *(a4 + 112) = v102;
      }

      if (v102 >= *&v116[12 * v103])
      {
        v8 = 0;
        *(a4 + 112) = 0;
      }

      if (v127)
      {
        obj_release(v127);
      }

      v127 = 0;
      if (!v70)
      {
        goto LABEL_266;
      }

      v32 = v122;
      v33 = v120;
      if ((*(a4 + 190) & 1) == 0 || v8)
      {
        goto LABEL_108;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (spaceman_free_extent_cache_scan_should_pause(*(v117 + 8 * *(a4 + 172)), v70))
        {
          v107 = *(a4 + 104);
          if (v107 > *(a4 + 160))
          {
            *(a4 + 152) = *(a4 + 96);
            *(a4 + 160) = v107;
          }

          v8 = 0;
          v104 = 0;
          *(a4 + 192) = 1;
          goto LABEL_280;
        }

        v8 = 0;
LABEL_266:
        v32 = v122;
        v33 = v120;
        goto LABEL_108;
      }

LABEL_107:
      v8 = 0;
LABEL_108:
      if (++v7 >= v34)
      {
        v104 = 0;
        LODWORD(v7) = v34;
        goto LABEL_280;
      }
    }

    if (!*(v117 + 8 * *(a4 + 172)))
    {
      if (bitmap_range_find_desired_or_first_clear_range(v127[7], *(a4 + 48), v61, v42, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
      {
        v8 = 0;
        v104 = 0;
        goto LABEL_278;
      }

LABEL_218:
      v93 = 0;
      goto LABEL_221;
    }

    if (v42 > v61)
    {
      v82 = 0;
      v83 = 0;
      v84 = v61;
      while (1)
      {
        bitmap_range_find_first_clear_range(v127[7], v42 - v84, v84, v42, (a4 + 128), (a4 + 136));
        v85 = *(a4 + 136);
        if (!v85)
        {
          goto LABEL_215;
        }

        if (v85 <= v82)
        {
          break;
        }

        if ((*(a4 + 169) & 4) != 0)
        {
          if (v82)
          {
            break;
          }

          v86 = *(a4 + 48);
        }

        else
        {
          v86 = *(a4 + 48);
          if (v82 >= v86)
          {
            break;
          }
        }

        v83 = *(a4 + 128);
        if (v86 >= v85)
        {
          v82 = *(a4 + 136);
        }

        else
        {
          v82 = v86;
        }

        if (!v69)
        {
          goto LABEL_195;
        }

LABEL_186:
        v87 = *(a4 + 48);
        if (v82 >= v87 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
        {
          *(a4 + 128) = v83;
          *(a4 + 136) = v82;
          goto LABEL_217;
        }

LABEL_195:
        if (*(a4 + 190) == 1)
        {
          v88 = *(a4 + 191);
        }

        else
        {
          v88 = 0;
        }

        spaceman_free_extent_cache_insert(*(v117 + 8 * *(a4 + 172)), v88 & 1, *(a4 + 112) - v61 + *(a4 + 128), v85, v25, v26, v27, v28);
        v84 = *(a4 + 136) + *(a4 + 128);
        if (v84 >= v42)
        {
          goto LABEL_215;
        }
      }

      if (!v69)
      {
        goto LABEL_195;
      }

      goto LABEL_186;
    }

    v83 = 0;
    v82 = 0;
LABEL_215:
    *(a4 + 128) = v83;
    *(a4 + 136) = v82;
    if (!v69)
    {
      goto LABEL_218;
    }

    v87 = *(a4 + 48);
LABEL_217:
    if (v82 < v87)
    {
      goto LABEL_218;
    }

    v8 = 0;
    v104 = 0;
    *(a4 + 112) += v42 - v61;
LABEL_278:
    v5 = v114;
LABEL_279:
    v10 = v116;
    v6 = v70;
LABEL_280:
    if (*(a4 + 136))
    {
      break;
    }

LABEL_281:
    v106 = *(a4 + 160);
    if (v106 == *(a4 + 48))
    {
      break;
    }

    if (v8 || !v106)
    {
      if (v104)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v104)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    obj_release(v128);
    v128 = 0;
    v11 = *(a4 + 172);
    ++v119;
    v9 = v120;
  }

  while (v119 <= v10[12 * v11 + 4]);
LABEL_305:
  *(a4 + 193) = v119 == v10[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v129)
  {
    obj_release(v129);
    v129 = 0;
  }

  if (v128)
  {
    obj_release(v128);
    v128 = 0;
  }

  if (v127)
  {
    obj_release(v127);
  }

  return v104;
}

uint64_t sub_10001C358(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v219 = 0;
  v222 = 0;
  v220 = 0;
  v12 = *(a3 + 376);
  v246 = 0;
  v247 = 0;
  v244 = 0;
  v245 = 0;
  v242 = 0;
  v243 = 0;
  v225 = a8 & 0x30000;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v224 = v13;
  v223 = a8 & 0x10001;
  v221 = -1;
  v235 = a4;
  v231 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v240 = v12[17];
    if (v240)
    {
      v16 = v15 / v12[11];
      if (v16 != v221 || v219 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v247)
        {
          obj_release(v247);
          v247 = 0;
        }

        v243 = v12;
        LODWORD(v244) = 0;
        HIDWORD(v244) = v16;
        v222 = v18;
        v19 = obj_get(a1[49], 1073741829, v18, &sm_cab_desc, &v243, 0, 0, v8, &v247);
        if (v19)
        {
          v196 = v19;
          v214 = a1[48] + 212;
          log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", v20, v21, v22, v23, v24, v25, v26, "spaceman_modify_bits");
          v197 = 1;
          goto LABEL_160;
        }

        v219 = v247[7];
        v221 = v16;
      }

      else
      {
        obj_lock(v247, 2u);
      }

      pthread_mutex_unlock((v11 + 640));
      if (obj_xid(v247) == v8)
      {
        v29 = v222;
        v30 = v221;
      }

      else
      {
        v31 = sub_100014FFC(a1, v11, v8, &v242);
        if (v31)
        {
          v196 = v31;
          if (nx_ratelimit_log_allowed(a1))
          {
            v215 = a1[48] + 212;
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v201, v202, v203, v204, v205, v206, v207, "spaceman_modify_bits");
          }

          v197 = 1;
          v220 = 1;
          goto LABEL_161;
        }

        v29 = v242;
        v30 = v221;
        *(*(v11 + 896) + 8 * v221) = v242;
        obj_dirty(v247, v8, v29);
        v32 = sub_10001FA08(a1, v11, v222, v8);
        if (v32)
        {
          v196 = v32;
          v216 = a1[48] + 212;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", v33, v34, v35, v36, v37, v38, v39, "spaceman_modify_bits");
          v197 = 1;
          v220 = 1;
          goto LABEL_161;
        }
      }

      v28 = v219 + 40;
      v40 = v231[10];
      LODWORD(v15) = v15 - v231[11] * v30;
      v243 = v231;
      LODWORD(v244) = 0;
      HIDWORD(v244) = v14 / v40;
      v220 = 1;
      v222 = v29;
    }

    else
    {
      v27 = v12;
      v28 = *(v11 + 896);
      v243 = v27;
      LODWORD(v244) = 0;
      HIDWORD(v244) = v15;
      if (!v28)
      {
        v196 = 22;
        v197 = 1;
        goto LABEL_160;
      }
    }

    v41 = *(v28 + 8 * v15);
    v42 = obj_get(a1[49], 1073741829, v41, &sm_cib_desc, &v243, 0, 0, v8, &v246);
    if (v42)
    {
      v196 = v42;
      v194 = a1[48] + 212;
      if (v221 != -1)
      {
        v195 = v231[11] * v221;
      }

      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", v43, v44, v45, v46, v47, v48, v49, "spaceman_modify_bits");
      v197 = 1;
      goto LABEL_157;
    }

    v232 = v246[7];
    if (obj_xid(v246) == v8)
    {
      v229 = v41;
      v50 = v231;
      goto LABEL_29;
    }

    v51 = sub_100014FFC(a1, v11, v8, &v242);
    if (v51)
    {
      v196 = v51;
      v212 = a1[48] + 212;
      log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v52, v53, v54, v55, v56, v57, v58, "spaceman_modify_bits");
      goto LABEL_155;
    }

    v229 = v242;
    *(v28 + 8 * v15) = v242;
    if (v247)
    {
      obj_dirty(v247, v8, v222);
    }

    obj_dirty(v246, v8, v229);
    v59 = sub_10001FA08(a1, v11, v41, v8);
    v50 = v231;
    if (v59)
    {
      break;
    }

LABEL_29:
    if (!v240)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v247)
    {
      obj_unlock(v247, 2u);
      v220 = 0;
    }

    v67 = v14 % v50[10];
    v233 = v232 + 40;
    v68 = v232 + 40 + 32 * v67;
    v69 = (v68 + 24);
    v70 = *(v68 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v70)
      {
        goto LABEL_35;
      }

      if (((*(v68 + 16) ^ *(v68 + 20)) & 0xFFFFF) != 0)
      {
        v196 = nx_corruption_detected_int(a1);
        v197 = 0;
      }

      else
      {
        v197 = 0;
        v196 = 22;
      }

      goto LABEL_161;
    }

    while (1)
    {
LABEL_35:
      v239 = v67;
      if (v70)
      {
        v71 = obj_get(a1[49], 1073741825, v70, &sm_bm_desc, 0, 0, 0, v8, &v245);
        if (v71)
        {
          v193 = v71;
          v190 = a1[48] + 212;
          if (v221 != -1)
          {
            v191 = v50[11] * v221;
          }

          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", v72, v73, v74, v75, v76, v77, v78, "spaceman_modify_bits");
          goto LABEL_149;
        }

        v79 = v245[7];
      }

      else
      {
        v79 = 0;
      }

      v80 = v50[9];
      v81 = v10 % v80;
      v82 = v80 - v10 % v80;
      if (a5 < v82)
      {
        v82 = a5;
      }

      v241 = v82;
      if (v70 && *v68 == a6)
      {
        v234 = v70;
        goto LABEL_50;
      }

      v83 = sub_100014FFC(a1, v11, a6, &v242);
      if (v83)
      {
        v192 = v83;
        v209 = a1[48] + 212;
        log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v84, v85, v86, v87, v88, v89, v90, "spaceman_modify_bits");
        v197 = 0;
        v196 = v192;
        goto LABEL_161;
      }

      *v68 = a6;
      v91 = v242;
      *v69 = v242;
      v234 = v91;
      if (v70)
      {
        obj_dirty(v245, a6, v91);
        v92 = sub_10001FA08(a1, v11, v70, a6);
        if (v92)
        {
          v193 = v92;
          v210 = a1[48] + 212;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", v93, v94, v95, v96, v97, v98, v99, "spaceman_modify_bits");
LABEL_149:
          v197 = 0;
          v196 = v193;
          goto LABEL_161;
        }
      }

      else
      {
        v100 = obj_create(a1[49], 0x40000000, v91, &sm_bm_desc, 0, 0, a6, &v245);
        if (v100)
        {
          v196 = v100;
          v211 = a1[48] + 212;
          log_err("%s:%d: %s failed to create bitmap object %lld: %d\n", v101, v102, v103, v104, v105, v106, v107, "spaceman_modify_bits");
          v197 = 0;
          goto LABEL_161;
        }

        v79 = v245[7];
      }

LABEL_50:
      v108 = *(v11 + 376);
      if (a7 == 1)
      {
        v116 = bitmap_count_bits(v79, 0, v81, v241 + v81);
        v117 = v235;
        if (v116)
        {
          v208 = a1[48] + 212;
          log_err("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", v109, v110, v111, v112, v113, v114, v115, "spaceman_clear_bits_in_bm");
        }

        v118 = a1[47];
        v119 = *(v118 + 1248);
        v120 = v233 + 32 * v239;
        v228 = a5;
        if (v119)
        {
          v121 = *(v118 + 1240);
          v248 = 0;
          v122 = calc_overlap_range(v235, v241, v121, v119, &v248);
          v123 = v122;
          if (v122)
          {
            v122 = bitmap_count_bits(v79, 0, v248 - *(v120 + 8), v248 + v122 - *(v120 + 8));
          }

          v124 = v10;
          v125 = v116 - v122;
        }

        else
        {
          v124 = v10;
          v123 = 0;
          v125 = v116;
        }

        bitmap_clear_range(v79, v81, v241);
        sub_10001EF94(a3, v79, v235 / *(v108 + 36));
        *(v120 + 20) += v241 - v116;
        pthread_mutex_lock((a3 + 576));
        *(v108 + 72) += v241 - v123 - v125;
        a5 = v228;
        v8 = a6;
        v10 = v124;
        v11 = a3;
        if (a8)
        {
          v146 = *(a3 + 984);
          v133 = v146 >= v241;
          v147 = v146 - v241;
          if (!v133)
          {
            v147 = 0;
          }

          *(a3 + 984) = v147;
        }

LABEL_131:
        pthread_mutex_unlock((v11 + 576));
        v149 = 0;
        v196 = 0;
        v148 = 1;
        goto LABEL_132;
      }

      v117 = v235;
      if (v225 == 196608)
      {
        sub_1000A4748();
      }

      v126 = (*(v68 + 16) & 0xFFFFF) - v81;
      if (v126 >= v241)
      {
        v127 = v241;
      }

      else
      {
        v127 = (*(v68 + 16) & 0xFFFFF) - v81;
      }

      if (bitmap_range_is_clear(v79, v81, v127, v126))
      {
        bitmap_set_range(v79, v81, v127, v128);
        sub_10001EF94(v11, v79, v239 + *(v108 + 40) * *(v232 + 32));
        pthread_mutex_lock((v11 + 576));
        v129 = *(v108 + 72);
        if (*(v11 + 1616))
        {
          v130 = *(v108 + 240) + v129 + *(v11 + 984) + *(v108 + 120) + *(v108 + 280) + *(v11 + 992);
          v131 = *(v108 + 184);
          v132 = *(v108 + 192);
          v133 = v131 >= v132;
          v134 = v131 - v132;
          if (!v133)
          {
            v134 = 0;
          }

          v133 = v130 >= v134;
          v135 = v130 - v134;
          if (!v133)
          {
            v135 = 0;
          }

          v136 = *(v11 + 1624);
          v137 = *(v11 + 1640);
          v133 = v136 >= v137;
          v138 = v136 - v137;
          if (v133)
          {
            v139 = v138;
          }

          else
          {
            v139 = 0;
          }

          v140 = *(v11 + 1648);
          v141 = *(v11 + 1656);
          v133 = v140 >= v141;
          v142 = v140 - v141;
          if (!v133)
          {
            v142 = 0;
          }

          v143 = v142 + v139;
          v133 = v135 >= v143;
          v144 = v135 - v143;
          if (v133)
          {
            v145 = v144;
          }

          else
          {
            v145 = 0;
          }
        }

        else
        {
          v139 = 0;
          v145 = 0;
        }

        v150 = a2;
        *(v68 + 20) -= v127;
        *(v108 + 72) = v129 - v127;
        v8 = a6;
        if ((a8 & 1) == 0)
        {
          if (!a2)
          {
            goto LABEL_117;
          }

LABEL_104:
          v171 = v150[47];
          v172 = *(v171 + 72);
          v173 = *(v171 + 88);
          v174 = v172 - v173;
          if (v172 < v173)
          {
            v174 = 0;
          }

          if (v127 >= v174)
          {
            v175 = v174;
          }

          else
          {
            v175 = v127;
          }

          v176 = v173 + v127;
          *(v171 + 88) = v176;
          v177 = *(v108 + 184);
          v178 = *(v108 + 192) + v175;
          *(v108 + 192) = v178;
          if (v178 > v177)
          {
            sub_1000A471C();
          }

          if (v172)
          {
            v133 = v172 >= v176;
            v179 = v172 - v176;
            if (!v133)
            {
              v179 = 0;
            }

            v180 = v150[52];
            if (v179 >= v150[51])
            {
              v179 = v150[51];
            }

            v181 = *(v11 + 864);
            v150[52] = v179;
            *(v11 + 864) = v179 - v180 + v181;
          }

          fs_sb_dirty(v150, a6);
          goto LABEL_118;
        }

        v151 = *(v11 + 848);
        if (*(v11 + 832) < v151)
        {
          panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v151);
        }

        if ((a8 & 0x40) != 0)
        {
          if (v151 < v127)
          {
            panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v127);
          }

          *(v11 + 848) = v151 - v127;
          v152 = *(v11 + 832);
        }

        else
        {
          v152 = *(v11 + 832);
          if (v152 - v151 < v127)
          {
            if (obj_type(v224) != 13)
            {
              v160 = *(v224 + 384) + 212;
            }

            v217 = *(v11 + 832) - v151;
            log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", v153, v154, v155, v156, v157, v158, v159, "spaceman_set_bits_in_bm");
            v150 = a2;
            v117 = v235;
            goto LABEL_97;
          }
        }

        v151 = v152 - v127;
LABEL_97:
        *(v11 + 832) = v151;
        if (v151 > *(v108 + 72))
        {
          sub_1000A46F0();
        }

        if (v150)
        {
          v161 = v150[51];
          v133 = v161 >= v127;
          v162 = v161 - v127;
          if (!v133)
          {
            if (obj_type(v150) != 13)
            {
              v170 = a2[48] + 212;
            }

            v218 = a2[51];
            log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", v163, v164, v165, v166, v167, v168, v169, "spaceman_set_bits_in_bm");
            v150 = a2;
            v162 = 0;
          }

          v150[51] = v162;
          goto LABEL_104;
        }

LABEL_117:
        v175 = 0;
LABEL_118:
        if (v223 == 65537)
        {
          v182 = *(v11 + 1632);
          v133 = v182 >= v127;
          v183 = v182 - v127;
          if (!v133)
          {
            v183 = 0;
          }

          *(v11 + 1632) = v183;
        }

        if (*(v11 + 1616))
        {
          v184 = v127 - v175;
          if ((a8 & 0x10000) != 0)
          {
            v187 = *(v11 + 1640);
            if (v184 <= v139)
            {
              v188 = v187 + v184;
            }

            else
            {
              v188 = v187 + v139;
            }

            *(v11 + 1640) = v188;
          }

          else
          {
            v185 = v184 > v145;
            v186 = v184 - v145;
            if (v185)
            {
              *(v11 + 1656) += v186;
            }
          }
        }

        goto LABEL_131;
      }

      v148 = 0;
      v196 = 22;
      v149 = 1;
      v8 = a6;
LABEL_132:
      obj_dirty(v11, v8, 0);
      obj_dirty(v246, v8, v229);
      obj_dirty(v245, v8, v234);
      obj_release(v245);
      v245 = 0;
      v235 = v241 + v117;
      v10 += v241;
      a5 -= v241;
      if (!v148 || a5 < 1 || v239 >= (*(v232 + 36) - 1))
      {
        break;
      }

      v67 = v239 + 1;
      v68 = v233 + 32 * (v239 + 1);
      v69 = (v68 + 24);
      v70 = *(v68 + 24);
      v50 = v231;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    obj_unlock(v246, 2u);
    obj_release(v246);
    v246 = 0;
    if (a5 < 1)
    {
      v189 = 1;
    }

    else
    {
      v189 = v149;
    }

    v12 = v231;
    if (v189)
    {
      v197 = 1;
      goto LABEL_161;
    }
  }

  v196 = v59;
  v213 = a1[48] + 212;
  log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", v60, v61, v62, v63, v64, v65, v66, "spaceman_modify_bits");
LABEL_155:
  v197 = 0;
LABEL_157:
  if (!v240)
  {
LABEL_160:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_161:
  if (v247 && (v220 & 1) != 0)
  {
    obj_unlock(v247, 2u);
  }

  if (v246)
  {
    v198 = v197;
  }

  else
  {
    v198 = 1;
  }

  if ((v198 & 1) == 0)
  {
    obj_unlock(v246, 2u);
  }

  if (v247)
  {
    obj_release(v247);
  }

  if (v246)
  {
    obj_release(v246);
  }

  if (v245)
  {
    obj_release(v245);
  }

  if (a7 == 1)
  {
    if (v196)
    {
      if (a5)
      {
        v199 = *(v11 + 984);
        if (v199)
        {
          *(v11 + 984) = v199 - a5;
        }
      }
    }
  }

  return v196;
}

uint64_t spaceman_free(void *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = 0;
  if (obj_type(a1) == 13)
  {
    v10 = a1[49];
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  is_current_tx = xid_is_current_tx(v10, a5);
  v13 = 22;
  if (a4 < 1 || !is_current_tx)
  {
    return v13;
  }

  v41 = 0;
  is_allocated = spaceman_is_allocated(v10, a3, a4, &v40);
  if (is_allocated | v40)
  {
    v13 = spaceman_get(v10, &v41);
    if (v13)
    {
      return v13;
    }

    p_sig = &v41->__sig;
    v16 = *&v41[24].__opaque[48];
    if (v16)
    {
      v17.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v17.i64[1] = a4;
      v16[6] = vaddq_s64(v16[6], v17);
    }

    if (spaceman_extent_check(v10, p_sig, a3, a4))
    {
      if (nx_ratelimit_log_allowed(*(*a1 + 392)))
      {
        if (obj_type(a1) != 13)
        {
          v35 = a1[48] + 212;
        }

        log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", v18, v19, v20, v21, v22, v23, v24, "spaceman_free");
      }

      obj_release(&v41->__sig);
      return 22;
    }

    v34 = obj_modify(v41, 0, a5);
    if (v34)
    {
      v13 = v34;
LABEL_41:
      obj_release(&v41->__sig);
      return v13;
    }

    if (*(v10 + 629) == 1)
    {
      v36 = sub_10001D544(v10, a3, a4, &v40);
      if (v36 | v40)
      {
        v13 = 0;
        goto LABEL_41;
      }

      pthread_mutex_lock(v41 + 6);
      v13 = sub_10001D5CC(v10, v41, a3, a4, a5);
      dev_unmap_flush(*(v10 + 384));
      if (!v13)
      {
        if (v11)
        {
          sub_10001D6C8(v11, v41, a4, a5);
        }

        v39 = &v41->__sig;
        if (*&v41[25].__opaque[8])
        {
          sub_10001D810(&v41->__sig, a2, a4);
          v39 = &v41->__sig;
        }

        obj_dirty(v39, a5, 0);
      }

      v38 = v41 + 6;
    }

    else
    {
      pthread_mutex_lock(v41 + 8);
      v13 = sub_10001D930(v10, v41, 1, a3, a4, a5);
      if (!v13)
      {
        pthread_mutex_lock(v41 + 6);
        if (v11)
        {
          sub_10001D6C8(v11, v41, a4, a5);
        }

        v37 = &v41->__sig;
        if (*&v41[25].__opaque[8])
        {
          sub_10001D810(&v41->__sig, a2, a4);
          v37 = &v41->__sig;
        }

        obj_dirty(v37, a5, 0);
        pthread_mutex_unlock(v41 + 6);
      }

      v38 = v41 + 8;
    }

    pthread_mutex_unlock(v38);
    goto LABEL_41;
  }

  if (obj_type(a1) != 13)
  {
    v32 = a1[48] + 212;
  }

  log_err("%s:%d: %s Attempt to free range containing unallocated block(s): %lld:%lld\n", v25, v26, v27, v28, v29, v30, v31, "spaceman_free");
  return v13;
}

uint64_t spaceman_is_allocated(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  if (spaceman_get(a1, &v19))
  {
    v18 = a1[48] + 212;
    log_err("%s:%d: %s failed to get spaceman structure: %d\n", v8, v9, v10, v11, v12, v13, v14, "spaceman_is_allocated");
    return 0;
  }

  else
  {
    pthread_mutex_lock(v19 + 8);
    pthread_mutex_lock(v19 + 6);
    v15 = sub_10001DD08(a1, v19, 0, a2, a3, a4, 0, v16);
    pthread_mutex_unlock(v19 + 6);
    pthread_mutex_unlock(v19 + 8);
    obj_release(&v19->__sig);
  }

  return v15;
}

uint64_t sub_10001D544(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 416);
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v10 = sub_10001DD08(a1, v8, 1, a2, a3, a4, 0, v9);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v10;
}

uint64_t sub_10001D5CC(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!xid_is_current_tx(a1, a5))
  {
    return 22;
  }

  if (spaceman_extent_check(a1, a2, a3, a4))
  {
    if (nx_ratelimit_log_allowed(a1))
    {
      v18 = a1[48] + 212;
      log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", v10, v11, v12, v13, v14, v15, v16, "spaceman_freed");
    }

    return 22;
  }

  dev_unmap(a1[48]);

  return sub_10001F6F0(a1, a2, a3, a4, 0, a5);
}

void sub_10001D6C8(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v16 = a1[47];
  v17 = *(v16 + 88);
  v18 = v17 >= a3;
  v19 = v17 - a3;
  if (v18)
  {
    *(v16 + 88) = v19;
  }

  else
  {
    obj_oid(a1);
    v35 = *(a1[47] + 88);
    log_err("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", v20, v21, v22, v23, v24, v25, v26, "spaceman_free_fs_deduct_block_counts");
    v19 = 0;
    v16 = a1[47];
    *(v16 + 88) = 0;
  }

  v27 = *(v16 + 72);
  if (v27)
  {
    v28 = v27 - v19;
    if (v27 < v19)
    {
      v28 = 0;
    }

    v29 = a1[52];
    if (v28 >= a1[51])
    {
      v28 = a1[51];
    }

    v30 = *(a2 + 864);
    a1[52] = v28;
    *(a2 + 864) = v28 - v29 + v30;
  }

  v18 = v27 >= v19;
  v31 = v27 - v19;
  if (v31 != 0 && v18)
  {
    if (v31 >= a3)
    {
      v31 = a3;
    }

    v32 = *(v8 + 192);
    v33 = v32 - v31;
    if (v32 < v31)
    {
      v34 = *(v8 + 192);
      log_err("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", v9, v10, v11, v12, v13, v14, v15, "spaceman_free_fs_deduct_block_counts");
      v33 = 0;
    }

    *(v8 + 192) = v33;
  }

  pthread_mutex_unlock((a2 + 576));

  fs_sb_dirty(a1, a4);
}

uint64_t *sub_10001D810(uint64_t *result, int a2, unint64_t a3)
{
  if ((a2 & 0x30000) == 0x30000)
  {
    sub_1000A4774();
  }

  v3 = result;
  if (result[202])
  {
    if ((a2 & 0x30000) == 0)
    {
      spaceman_entitled_reserve_active(0, result);
    }

    pthread_mutex_lock(v3 + 9);
    if ((a2 & 0x40) != 0)
    {
      if ((a2 & 0x10000) != 0)
      {
        v6 = v3 + 205;
        v7 = v3[205];
      }

      else
      {
        v6 = v3 + 207;
        v7 = v3[207];
      }

      if (v7 >= a3)
      {
        *v6 = v7 - a3;
LABEL_26:

        return pthread_mutex_unlock(v3 + 9);
      }

      a3 -= v7;
      *v6 = 0;
    }

    if (a3)
    {
      v8 = v3[203];
      v9 = v3[202];
      v10 = v9 - v8;
      if (v9 > v8)
      {
        v11 = v8 + a3;
        v12 = a3 >= v10;
        v13 = a3 - v10;
        if (v13 == 0 || !v12)
        {
          v9 = v11;
        }

        if (v12)
        {
          a3 = v13;
        }

        else
        {
          a3 = 0;
        }

        v3[203] = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = v3[205];
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            v3[205] = v17;
          }

          else
          {
            v3[205] = 0;
          }
        }

        else
        {
          v14 = v3[207];
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            v3[207] = v15;
          }

          else
          {
            v3[207] = 0;
          }
        }
      }
    }

    goto LABEL_26;
  }

  return result;
}

uint64_t sub_10001D930(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v59 = 0;
  v58[0] = 0;
  v55 = 0uLL;
  v56 = 0;
  *(&v54 + 1) = 0;
  v13 = spaceman_fq_tree_get();
  if (!v13)
  {
    *&v54 = 0;
    *&v57 = a6;
    *(&v57 + 1) = a4;
    v52 = 8;
    v53 = 16;
    v14 = bt_lookup_variant(v59, 0, &v57, &v53, 0x10u, v58, &v52, 1u, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v57 != a6)
    {
      goto LABEL_13;
    }

    if (v52)
    {
      v22 = v58[0];
    }

    else
    {
      v22 = 1;
      v58[0] = 1;
    }

    if (v22 + *(&v57 + 1) <= a4)
    {
      if (v22 + *(&v57 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v48 = *(a1 + 384) + 212;
      log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", v15, v16, v17, v18, v19, v20, v21, "spaceman_fq_tree_insert");
      v22 = v58[0];
      a5 += a4 - (v58[0] + *(&v57 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v58[0] + *(&v57 + 1);
    }

    v55 = v57;
    v23 = v22 + a5;
    v56 = v22 + a5;
    if (v57)
    {
LABEL_14:
      v57 = v55;
      v52 = 8;
      v53 = 16;
      v24 = bt_lookup_variant(v59, 0, &v57, &v53, 0x10u, v58, &v52, 4u, 0, 0);
      if (v24 == 2)
      {
LABEL_31:
        v52 = 8 * (v23 != 1);
        v13 = bt_insert(v59, 0, &v55, 16, &v56, v52, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v36 = v12 + 40 * a3;
          v39 = *(v36 + 200);
          v37 = (v36 + 200);
          v38 = v39;
          if (!v39)
          {
            v37[2] = a6;
          }

          *v37 = v38 + a5;
          pthread_mutex_unlock((a2 + 576));
          obj_dirty(a2, a6, 0);
          if (v54 && bt_remove(v59, 0, &v54, 0x10u, a6))
          {
            v50 = *(a1 + 384) + 212;
            log_err("%s:%d: %s removal of replaced free extent failed: %d\n", v40, v41, v42, v43, v44, v45, v46, "spaceman_fq_tree_insert");
          }

          if (spaceman_fq_tree_over_threshold(a2, a3, v59, 0))
          {
            memset(v51, 0, sizeof(v51));
            sub_100015E54(a1, v51, 0, 0);
              ;
            }

            sub_100016780(a1, v51);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v24;
      if (!v24)
      {
        if (v57 == a6)
        {
          if (v52)
          {
            v32 = v58[0];
          }

          else
          {
            v32 = 1;
            v58[0] = 1;
          }

          v33 = v23 + *(&v55 + 1);
          if (*(&v57 + 1) <= v23 + *(&v55 + 1))
          {
            if (*(&v57 + 1) < v23 + *(&v55 + 1))
            {
              v34 = v32 + *(&v57 + 1);
              v49 = *(a1 + 384) + 212;
              log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", v25, v26, v27, v28, v29, v30, v31, "spaceman_fq_tree_insert");
              if (v34 > v33)
              {
                v23 += v34 - v33;
                v56 = v23;
              }

              if (v34 >= v33)
              {
                v35 = v33;
              }

              else
              {
                v35 = v34;
              }

              a5 = a5 - v35 + *(&v57 + 1);
            }

            else
            {
              v23 += v32;
              v56 = v23;
            }

            v54 = v57;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      obj_release(v59);
      return v13;
    }

LABEL_13:
    *&v55 = a6;
    *(&v55 + 1) = a4;
    v23 = a5;
    v56 = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10001DD08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v82 = 0;
  v83 = 0;
  v81 = 0;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v13 = *(a2 + 376);
  v14 = *(v13 + 48);
  if (v14 <= a5 || v14 - a5 < a4)
  {
    v67 = *(v13 + 48);
    v60 = *(a1 + 384) + 212;
    log_err("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_check_allocation_status_internal");
    return 22;
  }

  v79 = 0;
  v80 = 0;
  if (a5 <= 0)
  {
    is_set = 0;
    overlap = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!overlap && is_set)
      {
        v78 = 0;
        overlap = spaceman_fq_tree_find_overlap(a1, v12, 1u, v10, v9, &v78);
        if (((overlap == 0) & v78) != 0)
        {
          is_set = 0;
        }
      }
    }

LABEL_62:
    if (overlap)
    {
      v64 = *(a1 + 384) + 212;
      log_debug("%s:%d: %s %lld:%lld error: %d\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_check_allocation_status_internal");
    }

    goto LABEL_64;
  }

  is_set = 0;
  v18 = 0;
  v19 = a5 + a4;
  v75 = a3 & 3;
  v20 = -1;
  while (1)
  {
    v21 = *(v13 + 40);
    v22 = v10 / *(v13 + 36);
    v74 = v22;
    v23 = v22 / v21;
    if (*(v13 + 68))
    {
      v24 = *(v13 + 44);
      v25 = v23 / v24;
      v26 = v22 / v21;
      if (v23 / v24 == v20)
      {
LABEL_16:
        LODWORD(v29) = v23 - v24 * v20;
        LODWORD(v23) = v26;
        goto LABEL_18;
      }

      v27 = *(*(v12 + 896) + 8 * v25);
      if (v83)
      {
        obj_release(v83);
        v83 = 0;
      }

      v79 = v13;
      LODWORD(v80) = 0;
      HIDWORD(v80) = v25;
      v28 = obj_get(*(a1 + 392), 0x40000000, v27, &sm_cab_desc, &v79, 0, 0, 0, &v83);
      if (!v28)
      {
        v18 = v83[7] + 40;
        v24 = *(v13 + 44);
        v20 = v25;
        v26 = v74 / *(v13 + 40);
        goto LABEL_16;
      }

      v58 = v28;
      v63 = *(a1 + 384) + 212;
      log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_check_allocation_status_internal");
      overlap = v58;
LABEL_57:
      v10 = a4;
      v8 = a6;
      v9 = a5;
      if (!v75)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v18 = *(v12 + 896);
    v29 = v22 / v21;
LABEL_18:
    v79 = v13;
    LODWORD(v80) = 0;
    HIDWORD(v80) = v23;
    if (!v18)
    {
      overlap = 22;
      goto LABEL_57;
    }

    v72 = v20;
    v73 = v18;
    v30 = obj_get(*(a1 + 392), 0x40000000, *(v18 + 8 * v29), &sm_cib_desc, &v79, 0, 0, 0, &v82);
    if (v30)
    {
      overlap = v30;
      v62 = *(a1 + 384) + 212;
      v66 = v74 / *(v13 + 40);
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", v31, v32, v33, v34, v35, v36, v37, "spaceman_check_allocation_status_internal");
      goto LABEL_57;
    }

    if (v10 < v19)
    {
      break;
    }

    overlap = 0;
LABEL_46:
    obj_release(v82);
    v82 = 0;
    if (!overlap)
    {
      v18 = v73;
      v20 = v72;
      if (v10 < v19)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v38 = v74 % *(v13 + 40);
  v39 = v82[7];
  while (1)
  {
    if (v38 >= *(v39 + 36))
    {
LABEL_42:
      overlap = 0;
LABEL_45:
      v12 = a2;
      goto LABEL_46;
    }

    v40 = v39 + 40 + 32 * v38;
    v41 = *(v40 + 24);
    if (!v41)
    {
      break;
    }

    v42 = obj_get(*(a1 + 392), 0x40000000, v41, &sm_bm_desc, 0, 0, 0, 0, &v81);
    if (v42)
    {
      overlap = v42;
      v65 = v74 / *(v13 + 40);
      v61 = *(a1 + 384) + 212;
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", v43, v44, v45, v46, v47, v48, v49, "spaceman_check_allocation_status_internal");
      goto LABEL_45;
    }

    v50 = v81[7];
    v51 = *(v13 + 36);
    v52 = v10 % v51;
    v53 = v51 - v10 % v51;
    if (v19 - v10 >= v53)
    {
      v54 = v53;
    }

    else
    {
      v54 = v19 - v10;
    }

    if (v11)
    {
      is_clear = bitmap_range_is_clear(v50, v52, v54, v53);
      v57 = v11 & 2 | is_clear;
      is_set = is_clear == 0;
      obj_release(v81);
      v81 = 0;
      if (!v57)
      {
        overlap = 0;
        is_set = 1;
        goto LABEL_53;
      }
    }

    else if ((v11 & 2) != 0)
    {
      *a7 += bitmap_count_bits(v50, 0, v52, v54 + v52);
      obj_release(v81);
      v81 = 0;
    }

    else
    {
      is_set = bitmap_range_is_set(v50, v52, v54);
      obj_release(v81);
      v81 = 0;
      if (!is_set)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v10 += v54;
    ++v38;
    if (v10 >= v19)
    {
      goto LABEL_42;
    }
  }

  if (v75)
  {
    v55 = (*(v40 + 20) & 0xFFFFF) + v10 / *(v13 + 36) * *(v13 + 36) - v10;
    if (v19 - v10 >= v55)
    {
      v54 = v55;
    }

    else
    {
      v54 = v19 - v10;
    }

    is_set = 0;
    if (a7)
    {
      *a7 += v54;
    }

    goto LABEL_41;
  }

  is_set = 0;
LABEL_52:
  overlap = 0;
LABEL_53:
  v8 = a6;
LABEL_64:
  if (v83)
  {
    obj_release(v83);
  }

  if (v82)
  {
    obj_release(v82);
  }

  if (v81)
  {
    obj_release(v81);
  }

  *v8 = is_set;
  return overlap;
}

uint64_t spaceman_reserve(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v9 = a1;
  v34 = a3;
  if (obj_type(a1) == 13)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = v10[49];
  }

  v33 = 0;
  v35 = 0;
  v32 = 0;
  v11 = a2 & 0x30000;
  if ((a2 & 0x30000) == 0x30000)
  {
    sub_1000A47CC();
  }

  if (a3 < 1)
  {
    return 22;
  }

  v12 = spaceman_get(v9, &v33);
  if (!v12)
  {
    v12 = sub_10001AA14(v33, a2, &v35, &v32, (*(v9[47] + 48) >> 1) & 1);
    p_sig = &v33->__sig;
    if (!v12)
    {
      pthread_mutex_lock(v33 + 6);
      v14 = v32;
      v15 = &v35;
      do
      {
        if (!v14)
        {
          pthread_mutex_unlock(v33 + 6);
          v12 = 28;
          goto LABEL_36;
        }

        v16 = *v15;
        if (!v11)
        {
          spaceman_entitled_reserve_active(0, &v33->__sig);
        }

        v17 = sub_10001AAEC(v9, v10, v33, v16, a2, &v34, a4);
        --v14;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v12 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v33 + 6);
      }

      else
      {
        pthread_mutex_lock(v33 + 9);
        v18 = v33;
        v19 = v34;
        v20 = &v33->__sig + v16;
        v21 = v20[104] + v34;
        v20[104] = v21;
        if (v21 > *(*&v18[5].__opaque[48] + 48 * v16 + 72))
        {
          sub_1000A47A0();
        }

        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v22 = v10[51] + v19;
          v10[51] = v22;
          v23 = v10[47];
          v24 = *(v23 + 72);
          if (v24)
          {
            v25 = *(v23 + 88);
            v26 = v24 >= v25;
            v27 = v24 - v25;
            if (!v26)
            {
              v27 = 0;
            }

            if (v27 < v22)
            {
              v22 = v27;
            }

            v28 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v22;
            *&v18[13].__opaque[24] = v28 + v22;
          }
        }

        if (v16 == 1)
        {
          v29 = 16;
        }

        else
        {
          v29 = 8;
        }

        v30 = v29 | a2 & 0x40;
        *a5 = v30;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v30 | v11;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v33 + 6);
        v12 = 0;
      }

LABEL_36:
      p_sig = &v33->__sig;
    }

    obj_release(p_sig);
  }

  return v12;
}

uint64_t spaceman_unreserve(uint64_t a1, unsigned int a2, unint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v7 = a1;
  if (v6)
  {
    v7 = v6[49];
  }

  v54 = 0;
  if ((a2 & 0x18) == 0)
  {
    sub_1000A4824();
  }

  if ((~a2 & 0x30000) == 0)
  {
    sub_1000A47F8();
  }

  v8 = spaceman_get(v7, &v54);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v54 + 384));
    pthread_mutex_lock((v54 + 576));
    if (*(v54 + 832 + 8 * v9) < *(v54 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      v11 = *(v54 + 832);
      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, v11, *(v54 + 848));
    }

    v12 = v54;
    v13 = *(v54 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v13 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v54 + 848 + 8 * v9), a3);
      }

      *(v54 + 848 + 8 * v9) = v13 - a3;
      *(v12 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_36:
        v34 = v54;
        if ((a2 & 0x10000) == 0)
        {
LABEL_43:
          pthread_mutex_unlock((v34 + 576));
          pthread_mutex_unlock((v54 + 384));
          obj_release(v54);
          return v8;
        }

LABEL_37:
        v40 = *(v34 + 1632);
        v36 = v40 >= a3;
        v41 = v40 - a3;
        if (v36)
        {
          *(v34 + 1632) = v41;
        }

        else
        {
          if (obj_type(a1) != 13)
          {
            v49 = *(a1 + 384) + 212;
          }

          v53 = *(v54 + 1632);
          log_err("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", v42, v43, v44, v45, v46, v47, v48, "spaceman_unreserve");
          v34 = v54;
          *(v54 + 1632) = 0;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v14 = *(v54 + 832 + 8 * v9);
      if (v14 - v13 >= a3)
      {
        *(v54 + 832 + 8 * v9) = v14 - a3;
        if (!v6)
        {
          goto LABEL_36;
        }
      }

      else
      {
        if (obj_type(a1) != 13)
        {
          v39 = *(a1 + 384) + 212;
        }

        v52 = *(v54 + 8 * v9 + 832) - v13;
        log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", v15, v16, v17, v18, v19, v20, v21, "spaceman_unreserve");
        *(v54 + 8 * v9 + 832) = v13;
        if (!v6)
        {
          goto LABEL_36;
        }
      }
    }

    v22 = v6[51];
    v23 = v22 - a3;
    if (v22 < a3)
    {
      if (obj_type(a1) != 13)
      {
        v31 = *(a1 + 384) + 212;
      }

      v51 = v6[51];
      log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", v24, v25, v26, v27, v28, v29, v30, "spaceman_unreserve");
      v23 = 0;
    }

    v6[51] = v23;
    v32 = v6[47];
    v33 = *(v32 + 72);
    v34 = v54;
    if (v33)
    {
      v35 = *(v32 + 88);
      v36 = v33 >= v35;
      v37 = v33 - v35;
      if (!v36)
      {
        v37 = 0;
      }

      if (v37 < v23)
      {
        v23 = v37;
      }

      v38 = *(v54 + 864) - v6[52];
      v6[52] = v23;
      *(v34 + 864) = v38 + v23;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_37;
  }

  return v8;
}

uint64_t spaceman_fs_bounds_set(void *a1, void *a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v76 = 0;
  v10 = spaceman_get(a1, &v76);
  if (!v10)
  {
    v16 = *&v76[5].__opaque[48];
    v10 = obj_modify(v76, 0, a5, v11, v12, v13, v14, v15);
    if (!v10)
    {
      pthread_mutex_lock(v76 + 8);
      pthread_mutex_lock(v76 + 6);
      pthread_mutex_lock(v76 + 9);
      v26 = a2[47];
      v27 = *(v26 + 72);
      v28 = a3 - v27;
      if ((a3 - v27) < 0 && v16[23] < v27 - a3)
      {
        v17 = nx_corruption_detected_int(a1);
LABEL_54:
        pthread_mutex_unlock(v76 + 9);
        pthread_mutex_unlock(v76 + 6);
        pthread_mutex_unlock(v76 + 8);
        obj_release(&v76->__sig);
        return v17;
      }

      if (a4 && a3 > a4)
      {
        log_err("%s:%d: %s Quota %llu is smaller than reserve %llu\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_fs_bounds_set");
LABEL_11:
        v17 = 22;
        goto LABEL_54;
      }

      if (a4 && a2[51] + *(v26 + 88) > a4)
      {
        v75 = a2[51] + *(v26 + 88);
        log_err("%s:%d: %s Quota %llu is smaller than what's currently allocated and reserved %llu\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_fs_bounds_set");
        v17 = 69;
        goto LABEL_54;
      }

      if (v28 < 1)
      {
        if (v28 < 0)
        {
          v70 = *&v76[25].__opaque[8];
          if (v70)
          {
            v71 = v27 - *(v26 + 88);
            if (v71 >= 1)
            {
              v72 = *&v76[25].__opaque[16];
              if (v72 < v70)
              {
                if (v71 >= v27 - a3)
                {
                  v71 = v27 - a3;
                }

                v73 = v72 + v71;
                if (v73 >= v70)
                {
                  v73 = *&v76[25].__opaque[8];
                }

                *&v76[25].__opaque[16] = v73;
              }
            }
          }
        }
      }

      else
      {
        spaceman_entitled_reserve_active(a1, &v76->__sig);
        v29 = *&v76[5].__opaque[48];
        v30 = v29[30] + v29[9] + *&v76[15].__opaque[16] + v29[15] + v29[35] + *&v76[15].__opaque[24];
        v32 = v29[23];
        v31 = v29[24];
        v33 = v32 >= v31;
        v34 = v32 - v31;
        if (!v33)
        {
          v34 = 0;
        }

        v35 = *v76[13].__opaque + v76[13].__sig;
        v36 = *&v76[13].__opaque[24];
        v33 = v35 >= v36;
        v37 = v35 - v36;
        if (!v33)
        {
          v37 = 0;
        }

        v38 = v37 + v34;
        v33 = v30 >= v38;
        v39 = v30 - v38;
        if (v33)
        {
          v40 = v39;
        }

        else
        {
          v40 = 0;
        }

        v41 = *&v76[25].__opaque[8];
        if (v41)
        {
          v42 = *&v76[25].__opaque[24];
          v33 = v37 >= v42;
          v43 = v37 - v42;
          if (!v33)
          {
            v43 = 0;
          }

          v44 = *&v76[25].__opaque[16];
          v45 = *&v76[25].__opaque[32];
          v33 = v44 >= v45;
          v46 = v44 - v45;
          if (!v33)
          {
            v46 = 0;
          }

          v33 = v46 >= v42;
          v47 = v46 - v42;
          if (!v33)
          {
            v47 = 0;
          }

          v48 = *&v76[25].__opaque[40];
          v49 = *&v76[25].__opaque[48];
          v33 = v48 >= v49;
          v50 = v48 - v49;
          if (!v33)
          {
            v50 = 0;
          }

          v33 = v50 >= v43;
          v51 = v50 - v43;
          if (!v33)
          {
            v51 = 0;
          }

          v52 = v51 + v47;
          v33 = v40 >= v52;
          v53 = v40 - v52;
          if (!v33)
          {
            v53 = 0;
          }

          v40 = v53 + v51;
        }

        else
        {
          v51 = 0;
          v53 = 0;
        }

        if (v28 > v40)
        {
          goto LABEL_53;
        }

        v67 = v16[12] + v16[6];
        v68 = 50;
        if (v67 >> 2 > 0x4FA)
        {
          v68 = v67 / 0x64;
        }

        if (v16[23] + v28 > v67 - v68)
        {
          v74 = v16[23];
          log_err("%s:%d: %s %llu blocks are already reserved in container, Cannot reserve more than %llu blocks in the container\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_fs_bounds_set");
          goto LABEL_11;
        }

        if (v41)
        {
          v69 = v28 - v53;
          if (v28 > v53)
          {
            if (v69 > v51)
            {
LABEL_53:
              v17 = 28;
              goto LABEL_54;
            }

            *&v76[25].__opaque[48] += v69;
          }
        }
      }

      v54 = v16[23] + v28;
      v55 = a2[47];
      v56 = v55[11];
      if (v55[9] >= v56)
      {
        v57 = v55[11];
      }

      else
      {
        v57 = v55[9];
      }

      if (v56 >= a3)
      {
        v58 = a3;
      }

      else
      {
        v58 = v55[11];
      }

      v59 = v16[24] + v58;
      v55[9] = a3;
      v16[23] = v54;
      v16[24] = v59;
      v60 = v59 - v57;
      if (v59 < v57)
      {
        log_err("%s:%d: %s sm_fs_reserve_alloc_count underflow, sm_fs_reserve_alloc_count %lld, new fs_reserve_block_count %lld, old fs_reserve_block_count %lld alloc_count %lld\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_fs_bounds_set");
        v60 = 0;
        v55 = a2[47];
      }

      v16[24] = v60;
      v55[10] = a4;
      obj_dirty(v76, a5, 0);
      fs_sb_dirty(a2, a5);
      v17 = 0;
      v61 = a2[47];
      v62 = *(v61 + 72);
      v63 = *(v61 + 88);
      v33 = v62 >= v63;
      v64 = v62 - v63;
      if (!v33)
      {
        v64 = 0;
      }

      v65 = a2[52];
      if (v64 >= a2[51])
      {
        v64 = a2[51];
      }

      v66 = v76;
      a2[52] = v64;
      *&v66[13].__opaque[24] += v64 - v65;
      goto LABEL_54;
    }
  }

  return v10;
}

uint64_t spaceman_fs_bounds_clear(void *a1, void *a2, uint64_t a3)
{
  v57 = 0;
  result = spaceman_get(a1, &v57);
  if (!result)
  {
    v11 = *&v57[5].__opaque[48];
    result = obj_modify(v57, 0, a3, v6, v7, v8, v9, v10);
    if (!result)
    {
      pthread_mutex_lock(v57 + 6);
      pthread_mutex_lock(v57 + 9);
      v12 = a2[47];
      v13 = v12[9];
      v14 = v12[11];
      v15 = v14;
      if (v14)
      {
        v53 = v12[11];
        v54 = v12[9];
        obj_oid(a2);
        log_err("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", v16, v17, v18, v19, v20, v21, v22, "spaceman_fs_bounds_clear");
        v12 = a2[47];
        if (v12[9])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v23 = v12[9];
        if (v13)
        {
          goto LABEL_8;
        }
      }

      if (!v12[10])
      {
        v45 = v57;
LABEL_26:
        pthread_mutex_unlock(v45 + 9);
        pthread_mutex_unlock(v57 + 6);
        obj_release(&v57->__sig);
        return 0;
      }

LABEL_8:
      if (v14 > v13)
      {
        v24 = v12[10];
        v15 = v13;
        if (v24)
        {
          v15 = v13;
          if (v14 > v24)
          {
            sub_1000A4850();
          }
        }
      }

      v25 = *(v11 + 184);
      if (v25 < v13)
      {
        obj_oid(a2);
        v55 = *(v11 + 184);
        log_err("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", v26, v27, v28, v29, v30, v31, v32, "spaceman_fs_bounds_clear");
        v25 = *(v11 + 184);
        v13 = v25;
      }

      *(v11 + 184) = v25 - v13;
      v33 = *(v11 + 192);
      if (v33 < v15)
      {
        obj_oid(a2);
        v56 = *(v11 + 192);
        log_err("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", v34, v35, v36, v37, v38, v39, v40, "spaceman_fs_bounds_clear");
        v33 = *(v11 + 192);
        v15 = v33;
      }

      *(v11 + 192) = v33 - v15;
      p_sig = &v57->__sig;
      v42 = *&v57[25].__opaque[8];
      if (v42)
      {
        if (v13 > v15)
        {
          v43 = *&v57[25].__opaque[16];
          if (v43 < v42)
          {
            if (v13 - v15 + v43 < v42)
            {
              v42 = v13 - v15 + v43;
            }

            *&v57[25].__opaque[16] = v42;
          }
        }
      }

      v44 = a2[47];
      *(v44 + 72) = 0;
      *(v44 + 80) = 0;
      obj_dirty(p_sig, a3, 0);
      fs_sb_dirty(a2, a3);
      v45 = v57;
      v46 = a2[47];
      v47 = *(v46 + 72);
      v48 = *(v46 + 88);
      v49 = v47 >= v48;
      v50 = v47 - v48;
      if (!v49)
      {
        v50 = 0;
      }

      v51 = a2[52];
      if (v50 >= a2[51])
      {
        v50 = a2[51];
      }

      v52 = *&v57[13].__opaque[24];
      a2[52] = v50;
      *&v45[13].__opaque[24] = v50 - v51 + v52;
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t spaceman_unset_block_out_range(void *a1, uint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v15 = 0;
  v16 = 0;
  v10 = spaceman_get(a1, &v16);
  if (!v10)
  {
    v11 = *&v16[5].__opaque[48];
    v10 = obj_modify(v16, 0, a2, v5, v6, v7, v8, v9);
    p_sig = &v16->__sig;
    if (!v10)
    {
      pthread_mutex_lock(v16 + 8);
      pthread_mutex_lock(v16 + 6);
      v10 = sub_10001DD08(a1, v16, 2, *(v2 + 1240), *(v2 + 1248), v17, &v15, v13);
      pthread_mutex_lock(v16 + 9);
      *(v11 + 72) += v15;
      pthread_mutex_unlock(v16 + 9);
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock(v16 + 6);
      pthread_mutex_unlock(v16 + 8);
      obj_dirty(v16, a2, 0);
      p_sig = &v16->__sig;
    }

    obj_release(p_sig);
  }

  return v10;
}

BOOL sub_10001EF94(_BOOL8 result, _DWORD *a2, uint64_t a3)
{
  v3 = *(result + 376);
  v4 = *(result + 1496);
  v10 = 0;
  v11 = 0;
  if (v4)
  {
    v7 = *(result + 1592);
    if (v7)
    {
      ++*(v7 + 112);
    }

    if (*(v3 + 56) - 1 == a3)
    {
      v8 = *(v3 + 48) % *(v3 + 36);
    }

    else
    {
      v8 = *(v3 + 36);
    }

    *(v4 + 4 * a3) = (*(v4 + 4 * a3) & 0xFEFFFFFF | ((*a2 & 1) << 24)) ^ 0x1000000;
    result = bitmap_range_find_clear_range(a2, 0xFFFFFFLL, 0, v8, &v11, &v10);
    if (v8 < 0x40 || (*&a2[2 * (v8 >> 6) - 2] & 0x8000000000000000) != 0)
    {
      v9 = *(v4 + 4 * a3) & 0xFDFFFFFF;
    }

    else
    {
      v9 = *(v4 + 4 * a3) | 0x2000000;
    }

    *(v4 + 4 * a3) = v9 & 0xFF000000 | v10 & 0xFFFFFF;
  }

  return result;
}

uint64_t sub_10001F07C(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0;
    v7.tv_nsec = 0;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
    tv_sec = v7.tv_sec;
    tv_nsec = v7.tv_nsec;
    *a2 = v7.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v6 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 32) = v6;
    if (v6 - *(a2 + 24) >= 1000 * *(a2 + 60))
    {
      atomic_fetch_add_explicit((*(v3 + 384) + 152), 1uLL, memory_order_relaxed);
      ++*(a2 + 56);
      *(a2 + 24) = *(a2 + 32);
    }
  }

  return result;
}

uint64_t sub_10001F150(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 164) & 0x7FFFFFFF;
  if (v6 <= a3)
  {
    return 22;
  }

  v7 = *(v5 + 322);
  if (v7 == 0xFFFF)
  {
    v8 = *(a2 + 888);
    goto LABEL_7;
  }

  if (v6 > v7)
  {
    v8 = *(a2 + 888);
    *(v8 + 2 * *(v5 + 322)) = a3;
LABEL_7:
    *(v8 + 2 * a3) = -1;
    *(v5 + 322) = a3;
    if (*(v5 + 320) == -1)
    {
      *(v5 + 320) = a3;
    }

    obj_dirty(a2, a4, 0);
    return 0;
  }

  return nx_corruption_detected_int(a1);
}

void sub_10001F1F8(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = *(a2 + 376) + 40 * a3;
  v6 = *(v4 + 200);
  v5 = (v4 + 200);
  v7 = v6 - a4;
  if (v6 >= a4)
  {
    *v5 = v7;
  }

  else
  {
    if (nx_ratelimit_log_allowed(a1))
    {
      v19 = *(*(a2 + 376) + 40 * a3 + 200);
      v18 = *(a1 + 384) + 212;
      log_err("%s:%d: %s sfq %d count underflow %lld - %lld\n", v11, v12, v13, v14, v15, v16, v17, "spaceman_decrement_free_queue_count");
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }
}

uint64_t sub_10001F2B8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0;
  result = spaceman_ip_block_index(a1, a2, a3, &v9);
  if (result == 2)
  {
    return 22;
  }

  if (result)
  {
    return result;
  }

  if ((v7 & 0x7FFFFFFFFFFFFFFFLL) <= a4 || v9 > (v7 & 0x7FFFFFFFFFFFFFFFuLL) - a4)
  {
    return 22;
  }

  result = 0;
  if (a5)
  {
    *a5 = v9;
  }

  return result;
}

void sub_10001F338(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_10001F07C(a1, a4);
  v12 = v10;
  if (v11 < v10)
  {
    v13 = 16 * v11;
    v14 = v10 - v11;
    do
    {
      v15 = (*(a2 + 1544) + v13);
      v16 = *v15;
      v17 = v15[1];
      dev_unmap(a1[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  dev_unmap_flush(a1[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v18 = 384;
  }

  else
  {
    v18 = 448;
  }

  pthread_mutex_lock((a2 + v18));
  if (v11 < v10)
  {
    v19 = 16 * v11;
    v20 = v12 - v11;
    do
    {
      v21 = (*(a2 + 1544) + v19);
      v22 = *v21;
      v23 = v21[1];
      if (a3)
      {
        sub_10001F6F0(a1, a2, v22, v23, 1, a5);
      }

      else
      {
        sub_10001F49C(a1, a2, v22, v23, a5);
      }

      v19 += 16;
      --v20;
    }

    while (v20);
  }

  if (a3)
  {
    pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }
}

void sub_10001F49C(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v34 = 0;
  if (xid_is_current_tx(a1, a5))
  {
    v35 = 0;
    v32 = 0;
    v33 = 0;
    v11 = sub_10001F2B8(a1, a2, a3, a4, &v35);
    if (v11)
    {
      if (v11 == 22)
      {
        v28 = *(a1 + 384) + 212;
        log_err("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n", v12, v13, v14, v15, v16, v17, v18, "spaceman_ip_freed");
      }

      else
      {
        v29 = *(a1 + 384) + 212;
        log_err("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n", v12, v13, v14, v15, v16, v17, v18, "spaceman_ip_freed");
      }
    }

    else
    {
      v19 = 8 * *(v10 + 32);
      if (v19)
      {
        v20 = a4 < 1;
      }

      else
      {
        v20 = 1;
      }

      if (!v20)
      {
        v21 = v19;
        v22 = v35;
        v30 = v10;
        do
        {
          v23 = v22 / v21;
          v24 = *(a2[110] + 2 * (v22 / v21));
          if (spaceman_ip_bm_block_address(a1, v10, v24, &v33) || obj_get(*(a1 + 392), 1073741825, v33, &sm_bm_desc, 0, 0, 0, a5, &v34))
          {
            break;
          }

          v25 = v34[7];
          v26 = v35 % v21;
          if (a4 >= (v21 - v35 % v21))
          {
            v27 = v21 - v35 % v21;
          }

          else
          {
            v27 = a4;
          }

          if (*(a2[109] + 8 * v23) != a5)
          {
            v32 = 0;
            v31 = 0;
            if (sub_100014CC0(a1, a2, a5, &v32, &v31) || sub_10001F150(a1, a2, v24, a5))
            {
              obj_release(v34);
              return;
            }

            v33 = v32;
            *(a2[110] + 2 * v23) = v31;
            *(a2[109] + 8 * v23) = a5;
          }

          if (!bitmap_range_is_set(v25, v26, v27))
          {
            sub_1000A487C();
          }

          bitmap_clear_range(v25, v26, v27);
          obj_dirty(v34, a5, v33);
          obj_release(v34);
          v22 = v35 + v27;
          v35 += v27;
          v20 = a4 <= v27;
          a4 -= v27;
          v10 = v30;
        }

        while (!v20);
      }
    }
  }
}

uint64_t sub_10001F6F0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a4)
  {
    spaceman_handle_metazone_freed(a1, a2, a3);
  }

  v16 = sub_10001C358(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v16)
  {
    spaceman_free_extent_cache_insert(*(a2 + 1576), 0, a3, a4, v12, v13, v14, v15);
  }

  return v16;
}

unint64_t sub_10001F78C(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = result;
  v8 = *(result + 376);
  v9 = a2;
  v10 = *(v8 + 48 * a2 + 56);
  v11 = a4[1];
  v12 = *(v8 + 36);
  v13 = *a4 / v12;
  v14 = result + 1496;
  v15 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v10 < v16)
  {
    v16 = *(v8 + 48 * a2 + 56);
  }

  if (v12 >= 0xFFFFFF)
  {
    v17 = 0xFFFFFF;
  }

  else
  {
    v17 = *(v8 + 36);
  }

  if (v15 == v17 || v16 < 2)
  {
    v19 = *a4 / v12;
    LODWORD(v20) = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
    goto LABEL_37;
  }

  v21 = v16 - 1;
  v22 = v13 + 1;
  v23 = *(*(result + 1496 + 8 * a2) + 4 * v13) & 0xFFFFFF;
  v24 = *a4 / v12;
  do
  {
    v19 = v22 % v10;
    v25 = *(v14 + 8 * v9);
    v26 = *(v25 + 4 * (v22 % v10));
    LODWORD(v20) = v26 & 0xFFFFFF;
    if ((v26 & 0xFFFFFFu) > v15)
    {
      v13 = v22 % v10;
      v15 = v26 & 0xFFFFFF;
    }

    if (v20 > v23)
    {
      if (*(v6 + 16) == 1)
      {
        if ((v26 & 0xC000000) != 0)
        {
          goto LABEL_34;
        }

        v27 = *(v7 + 376);
        v28 = v27 + 48 * v9;
        v29 = *(v28 + 56);
        if (v29 > v19)
        {
          v30 = v6[4];
          if (v30)
          {
            v46 = v24;
            v47 = v7;
            v49 = v11;
            v50 = v8;
            v31 = *(v27 + 36);
            v32 = v31;
            if (v29 - 1 == v19)
            {
              v32 = *(v28 + 48) % v31;
            }

            v48 = v6;
            result = calc_overlap_range(v19 * v31, v32, v6[3], v30, 0);
            v6 = v48;
            v11 = v49;
            v8 = v50;
            v24 = v46;
            v7 = v47;
            if (result)
            {
              goto LABEL_34;
            }

            LODWORD(v20) = *(v25 + 4 * v19) & 0xFFFFFF;
          }
        }
      }

      LODWORD(v12) = *(v8 + 36);
      if (v12 >= 0xFFFFFF)
      {
        v33 = 0xFFFFFF;
      }

      else
      {
        v33 = *(v8 + 36);
      }

      if (v11 <= v20 || v20 == v33)
      {
        goto LABEL_36;
      }

      v24 = v22 % v10;
      v23 = v20;
    }

LABEL_34:
    ++v22;
    --v21;
  }

  while (v21);
  LODWORD(v12) = *(v8 + 36);
  v19 = v24;
  LODWORD(v20) = v23;
LABEL_36:
  v12 = v12;
  v5 = a5;
LABEL_37:
  v35 = v19 * v12;
  if (v11 >= v20)
  {
    v20 = v20;
  }

  else
  {
    v20 = v11;
  }

  *v5 = v35;
  *(v5 + 8) = v20;
  if (*(v6 + 16) == 1)
  {
    v36 = *(v7 + 376);
    v37 = v36 + 48 * v9;
    v38 = *(v37 + 56);
    if (v38 > v19 && (v39 = v6[4]) != 0)
    {
      v40 = *(v36 + 36);
      v41 = v19 * v40;
      v42 = v11;
      v43 = v8;
      if (v38 - 1 == v19)
      {
        v40 = *(v37 + 48) % v40;
      }

      result = calc_overlap_range(v41, v40, v6[3], v39, 0);
      v44 = result == 0;
      v8 = v43;
      v11 = v42;
    }

    else
    {
      v44 = 1;
    }
  }

  else
  {
    v44 = 0;
  }

  *(v5 + 16) = v44;
  if (v19 != v13)
  {
    v45 = v15;
    if (v11 < v15)
    {
      v45 = v11;
    }

    *(v5 + 24) = v13 * *(v8 + 36);
    *(v5 + 32) = v45;
    *(v5 + 40) = 0;
  }

  return result;
}

uint64_t sub_10001FA08(uint64_t a1, pthread_mutex_t *a2, unint64_t a3, uint64_t a4)
{
  v8 = 22;
  if (xid_is_current_tx(a1, a4))
  {
    pthread_mutex_lock(a2 + 7);
    v9 = spaceman_ip_block_index(a1, a2, a3, &v11);
    if (v9 == 2)
    {
      v8 = 22;
    }

    else
    {
      v8 = v9;
    }

    if (!v8)
    {
      v8 = sub_10001D930(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t omap_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 16 && a5 == 16)
  {
    if (*a2 >= *a4)
    {
      if (*a2 > *a4)
      {
        v7 = 1;
      }

      else
      {
        v8 = a2[1];
        v9 = a4[1];
        v10 = v8 >= v9;
        v7 = v8 > v9;
        if (!v10)
        {
          v7 = -1;
        }
      }
    }

    else
    {
      v7 = -1;
    }

    result = 0;
    *a6 = v7;
  }

  return result;
}

uint64_t omap_snapshot_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
{
  result = 22;
  if (a3 == 8 && a5 == 8)
  {
    result = 0;
    v7 = *a2 > *a4;
    if (*a2 < *a4)
    {
      v7 = -1;
    }

    *a6 = v7;
  }

  return result;
}

uint64_t omap_map_tree_get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a2 + 472);
  if ((a3 & 1) == 0 && v9)
  {
    *a5 = v9;
    obj_retain(v9);
    return 0;
  }

  if (v9)
  {
    *a5 = v9;
    obj_retain(v9);
    if ((a3 & 1) == 0)
    {
LABEL_6:
      if (obj_oid(*a5) != *(*(a2 + 376) + 48))
      {
        sub_1000A48A8();
      }

      return 0;
    }

    v21 = obj_modify(*a5, (*(*(a2 + 376) + 40) >> 29) & 2, a4, v10, v11, v12, v13, v14);
    if (v21)
    {
      extended = v21;
      obj_release(*a5);
      *a5 = 0;
      return extended;
    }

LABEL_18:
    if (obj_oid(*a5) != *(*(a2 + 376) + 48))
    {
      *(*(a2 + 376) + 48) = obj_oid(*a5);
      obj_dirty(a2, a4, 0);
    }

    goto LABEL_6;
  }

  v17 = *(a2 + 376);
  v18 = *(v17 + 40);
  v19 = *(v17 + 48);
  v22[1] = 0;
  v23 = 0u;
  v27 = 0;
  v25 = 0u;
  v26 = 0u;
  v24 = 0u;
  v22[0] = omap_key_cmp;
  v22[2] = 0x20000000BLL;
  if (v18 != 2)
  {
    return 22;
  }

  extended = btree_get_extended(a1, v18 & 0xFFFF0000, v19, 0, a3, v22, a4, a5);
  if (!extended)
  {
    v20 = 0;
    atomic_compare_exchange_strong((a2 + 472), &v20, *a5);
    if (!v20)
    {
      obj_retain(*a5);
    }

    if ((a3 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

  return extended;
}

uint64_t sub_10001FD10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  result = 0;
  *(a1 + 32) = *a3;
  *(a1 + 40) = *(a3 + 4);
  return result;
}

uint64_t sub_10001FD38(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 44);
  v4 = v3 == 1073741826 || v3 == -2147483646;
  if (v4 && ((v5 = *(v2 + 40), v5 != -2147483646) ? (v6 = v5 == 1073741826) : (v6 = 1), v6) || (result = nx_corruption_detected_int(*(*a1 + 392)), !result))
  {
    result = 0;
    a1[47] = v2;
  }

  return result;
}

uint64_t sub_10001FDB0(void *a1)
{
  v2 = a1[59];
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  return 0;
}

uint64_t sub_10001FDE8(uint64_t *a1, char a2, int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v11 = a1[47];
  v12 = a1[1];
  v13 = *(*a1 + 392);
  if (v12)
  {
    v14 = a1[1];
  }

  else
  {
    v14 = *(*a1 + 392);
  }

  v258 = 0;
  v259 = 0;
  v256 = 0;
  v257 = 0;
  v15 = *(*(v13 + 376) + 36);
  if ((a2 & 2) == 0)
  {
    if (*a3)
    {
      if (v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 1;
      if (v12)
      {
LABEL_7:
        extended = obj_modify(v12, 0, a5, a4, a5, a6, a7, a8);
        if (extended)
        {
          if (obj_type(v12) != 13)
          {
            v44 = v12[48] + 212;
          }

          log_err("%s:%d: %s obj_modify() failed: %d\n", v17, v18, v19, v20, v21, v22, v23, "omap_reap");
        }

LABEL_31:
        v45 = *a3;
        if (*a3 == 1)
        {
          v273 = 0;
          *&v262[0] = 0;
          spaceman_currently_available_space(v14, 0, &v273, v262, 0, 0);
          v46 = omap_map_tree_get(v14, a1, 0, 0, &v257);
          if (v46)
          {
            extended = v46;
            if (obj_type(v14) != 13)
            {
              v68 = v14[48] + 212;
            }

            log_err("%s:%d: %s failed to get omap tree for reaping: %d\n", v47, v48, v49, v50, v51, v52, v53, "omap_reap");
            return extended;
          }

          v54 = v15;
          v55 = 0;
          v56 = 1024;
          if (*&v262[0] < 0x7D1uLL)
          {
            v56 = 102;
          }

          if (*&v262[0] >= 0x3E9uLL)
          {
            v57 = v56;
          }

          else
          {
            v57 = 51;
          }

          v256 = 0x1000000010;
          v250 = v54;
          v248 = v54 - 1;
          v252 = v57;
          while (1)
          {
            v58 = bt_lookup_variant(v257, 0, a3 + 1, &v256 + 1, 0x10u, &v258, &v256, 4u, 0, 0);
            if (v58)
            {
              break;
            }

            if (v258)
            {
              v256 = 0x1000000010;
            }

            else
            {
              v59 = (v248 + HIDWORD(v258)) / v250;
              if (spaceman_free(v14, 64, v259, v59, v8))
              {
                if (obj_type(v14) != 13)
                {
                  v67 = v14[48] + 212;
                }

                log_err("%s:%d: %s spaceman_free(%lld, %lld) failed: %d\n", v60, v61, v62, v63, v64, v65, v66, "omap_reap");
              }

              obj_cache_remove(*(v13 + 392), v12, *(a3 + 1), *(a3 + 2));
              v55 += v59;
              if (v55 >= v252)
              {
                extended = 36;
                goto LABEL_70;
              }

              v256 = 0x1000000010;
            }
          }

          extended = v58;
          if (v58 != 36)
          {
            extended = btree_delete(v257, v8, 0);
            if (extended)
            {
              if (obj_type(v14) != 13)
              {
                v255 = v14[48] + 212;
              }

              log_err("%s:%d: %s tree_delete() failed: %d\n", v74, v75, v76, v77, v78, v79, v80, "omap_reap");
            }

            *a3 = 2;
          }

LABEL_70:
          obj_release(v257);
          v45 = *a3;
        }

        if (v45 != 2)
        {
          return extended;
        }

        v81 = *(v11 + 56);
        if (v81)
        {
          v82 = *(v11 + 44);
          v274 = 0u;
          v279 = 0;
          v278 = 0u;
          v277 = 0u;
          v276 = 0u;
          v275 = 0u;
          v273 = omap_snapshot_key_cmp;
          DWORD2(v274) = 19;
          if (v82 == 2)
          {
            extended = btree_get_extended(v14, v82 & 0xFFFF0000, v81, 0, 0, &v273, 0, &v257);
            if (!extended)
            {
              extended = btree_delete(v257, v8, 0);
              if (extended)
              {
                if (obj_type(v14) != 13)
                {
                  v183 = v14[48] + 212;
                }

                log_err("%s:%d: %s tree_delete() failed: %d\n", v83, v84, v85, v86, v87, v88, v89, "omap_reap");
              }

              obj_release(v257);
              goto LABEL_82;
            }
          }

          else
          {
            extended = 22;
          }

          if (obj_type(v14) != 13)
          {
            v97 = v14[48] + 212;
          }

          log_err("%s:%d: %s failed to get omap snapshot tree for reaping: %d\n", v90, v91, v92, v93, v94, v95, v96, "omap_reap");
        }

LABEL_82:
        obj_delete_and_free(a1, v8);
        *a3 = -1;
        return extended;
      }
    }

    extended = 0;
    goto LABEL_31;
  }

  v271 = 0;
  v272 = 0;
  v269[1] = 0;
  v270 = 0;
  v269[0] = 0;
  v268 = 0uLL;
  v267 = 0uLL;
  v266 = 0uLL;
  v265 = 0uLL;
  v263 = 0;
  v264 = 0;
  memset(v262, 0, sizeof(v262));
  v260 = 0;
  v261 = 0;
  spaceman_currently_available_space(v14, 0, &v261, &v260, 0, 0);
  if (v260 >= 0x7D1)
  {
    v24 = 1024;
  }

  else
  {
    v24 = 102;
  }

  if (v260 >= 0x3E9)
  {
    v25 = v24;
  }

  else
  {
    v25 = 51;
  }

  v254 = v25;
  obj_lock(a1, 2u);
  v26 = *(a1 + 96);
  if (v26)
  {
    sub_1000A48D4();
  }

  *(a1 + 96) = v26 | 1;
  v27 = sub_1000226F0(v14, a1, v8);
  if (v27)
  {
    LODWORD(extended) = v27;
    if (obj_type(v14) != 13)
    {
      v43 = v14[48] + 212;
    }

    log_err("%s:%d: %s error modifying omap: %d\n", v28, v29, v30, v31, v32, v33, v34, "omap_cleanup");
    if (extended == 28)
    {
      extended = 36;
    }

    else
    {
      extended = extended;
    }

    goto LABEL_196;
  }

  v35 = omap_map_tree_get(v14, a1, 1, v8, &v270);
  if (v35)
  {
    extended = v35;
    if (obj_type(v14) != 13)
    {
      v73 = v14[48] + 212;
    }

    log_err("%s:%d: %s error getting mapping tree: %d\n", v36, v37, v38, v39, v40, v41, v42, "omap_cleanup");
    goto LABEL_196;
  }

  v251 = v15;
  if (*a3)
  {
    v70 = (v11 + 56);
    v69 = *(v11 + 56);
    if (v69)
    {
      v71 = 0;
      goto LABEL_57;
    }

LABEL_271:
    sub_1000A4A60();
  }

  obj_unlock(a1, 2u);
  v268 = 0uLL;
  v264 = 0x1000000010;
  bt_iterator_init_with_hint(v262, v270, 0, 0, &v268, 16, 0x10u, &v266, 0x10u, 0);
  v71 = 0;
  if (!bt_iterator_ended(v262))
  {
    v71 = 0;
    do
    {
      if (v268 >= *(v11 + 88))
      {
        break;
      }

      if (bt_remove(v270, 0, &v268, 0x10u, v8))
      {
        if (obj_type(v14) != 13)
        {
          v158 = v14[48] + 212;
        }

        log_err("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", v151, v152, v153, v154, v155, v156, v157, "omap_cleanup");
      }

      if ((v266 & 1) == 0)
      {
        if (spaceman_free(v14, 64, *(&v266 + 1), (v251 - 1 + DWORD1(v266)) / v251, v8))
        {
          if (obj_type(v14) != 13)
          {
            v166 = v14[48] + 212;
          }

          log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", v159, v160, v161, v162, v163, v164, v165, "omap_cleanup");
        }

        obj_cache_remove(*(v13 + 392), v12, v268, *(&v268 + 1));
      }

      if (v254 == v71)
      {
        obj_lock(a1, 2u);
        extended = 36;
        goto LABEL_196;
      }

      ++v71;
      bt_iterator_next(v262);
    }

    while (!bt_iterator_ended(v262));
  }

  obj_lock(a1, 2u);
  v98 = *a3;
  v70 = (v11 + 56);
  v69 = *(v11 + 56);
  if (!v69)
  {
    if (!v98)
    {
      goto LABEL_188;
    }

    goto LABEL_271;
  }

  if (!v98)
  {
LABEL_86:
    v99 = *(v11 + 44);
    v274 = 0u;
    v279 = 0;
    v278 = 0u;
    v277 = 0u;
    v276 = 0u;
    v275 = 0u;
    v273 = omap_snapshot_key_cmp;
    DWORD2(v274) = 19;
    if (v99 == 2)
    {
      v242 = v70;
      extended = btree_get_extended(v14, v99 & 0xFFFF0000, v69, 0, 0, &v273, v8, &v271);
      if (!extended)
      {
        if (*a3)
        {
          v100 = v11;
          v101 = (a3 + 8);
          v70 = v242;
          if (*(a3 + 4) != -1)
          {
            v11 = v100;
            goto LABEL_58;
          }

          v206 = *(a3 + 3);
LABEL_239:
          *v101 = v206;
          v264 = 0x800000010;
          v223 = bt_lookup_variant(v271, 0, v101, &v264 + 1, 8u, v269, &v264, 4u, 0, 0);
          if (v223)
          {
            extended = v223;
            if (v223 != 2)
            {
              if (obj_type(v14) != 13)
              {
                v225 = v14[48] + 212;
              }

              goto LABEL_253;
            }

            *v101 = -1;
          }

          v11 = v100;
          v70 = v242;
          goto LABEL_58;
        }

        *(a3 + 2) = 0;
        *(a3 + 3) = 0;
        v193 = (a3 + 4);
        v272 = 0;
        v264 = 0x800000010;
        bt_iterator_init_with_hint(v262, v271, 0, 0, &v272, 8, 8u, v269, 0x10u, 0);
        while (!bt_iterator_ended(v262))
        {
          v194 = v269[0];
          v195 = *v193;
          if (v269[0])
          {
            if (v195)
            {
              if (((a3[1] ^ LODWORD(v269[0])) & 2) != 0)
              {
                break;
              }

              *(a3 + 3) = v272;
            }

            else
            {
              v196 = v272;
              *(a3 + 2) = v272;
              *(a3 + 3) = v196;
              a3[1] = v194;
            }
          }

          else if (v195)
          {
            goto LABEL_218;
          }

          bt_iterator_next(v262);
        }

        v195 = *v193;
        if (*v193)
        {
LABEL_218:
          v100 = v11;
          *(a3 + 1) = v195;
          v264 = 0x800000010;
          v197 = bt_lookup_variant(v271, 0, a3 + 1, &v264 + 1, 8u, v269, &v264, 2u, 0, 0);
          if (v197)
          {
            extended = v197;
            if (v197 != 2)
            {
              if (obj_type(v14) != 13)
              {
                v234 = v14[48] + 212;
              }

              goto LABEL_253;
            }

            *(a3 + 1) = 0;
          }

          *(a3 + 5) = 0;
          *(a3 + 6) = 0;
          if (obj_type(v14) != 13)
          {
            v222 = v14[48] + 212;
          }

          v237 = *(a3 + 2);
          v239 = *(a3 + 3);
          log_debug("%s:%d: %s started cleaning snapshots %lld-%lld\n", v198, v199, v200, v201, v202, v203, v204, "omap_cleanup");
          a1[60] = *(a3 + 1);
          v206 = *(a3 + 3);
          a1[61] = v206;
          *a3 = 1;
          *(a1 + 96) |= 2u;
          v101 = (a3 + 8);
          goto LABEL_239;
        }

LABEL_188:
        extended = 0;
        goto LABEL_196;
      }
    }

    else
    {
      extended = 22;
    }

    if (obj_type(v14) != 13)
    {
      v150 = v14[48] + 212;
    }

    goto LABEL_195;
  }

LABEL_57:
  if (*(a3 + 4) == -1)
  {
    goto LABEL_86;
  }

LABEL_58:
  v241 = v70;
  if (v271)
  {
    obj_release(v271);
    v271 = 0;
  }

  v253 = a3[1];
  v249 = *(a3 + 1);
  v246 = *(a3 + 3);
  v244 = *(a3 + 4);
  v268 = *(a3 + 10);
  v264 = 0x1000000010;
  v72 = bt_lookup_variant(v270, 0, &v268, &v264 + 1, 0x10u, &v266, &v264, 3u, 0, 0);
  if (v72)
  {
    extended = v72;
    if (v72 != 2)
    {
      goto LABEL_196;
    }

    *&v268 = 0;
  }

  else
  {
    if (HIDWORD(v264) != 16)
    {
      sub_1000A4900();
    }

    if (v264 != 16)
    {
      sub_1000A492C();
    }
  }

  obj_unlock(a1, 2u);
  v109 = v268;
  if (!v268)
  {
    obj_lock(a1, 2u);
    goto LABEL_168;
  }

  v243 = v11;
  v247 = v8;
  v110 = 0;
  v111 = 0;
  do
  {
    v112 = v111;
    v111 = v109;
    if (v266)
    {
      sub_1000A4958();
    }

    v113 = v110;
    if (v109 != v112)
    {
      if (v71 >= v254)
      {
        extended = 36;
        goto LABEL_205;
      }

      v113 = 0;
    }

    v267 = v268;
    v264 = 0x1000000010;
    v114 = bt_lookup_variant(v270, 0, &v267, &v264 + 1, 0x10u, &v265, &v264, 4u, 0, 0);
    if (v114)
    {
      extended = v114;
      if (v114 == 2)
      {
        *&v267 = 0;
        goto LABEL_107;
      }

      if (obj_type(v14) != 13)
      {
        v245 = v14[48] + 212;
      }

      log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", v186, v187, v188, v189, v190, v191, v192, "omap_cleanup");
LABEL_205:
      *(a3 + 10) = v268;
      obj_lock(a1, 2u);
      goto LABEL_196;
    }

    if (HIDWORD(v264) != 16)
    {
      sub_1000A4984();
    }

    if (v264 != 16)
    {
      sub_1000A49B0();
    }

LABEL_107:
    v110 = (v113 + 1);
    if (*(&v268 + 1) <= v249 || *(&v268 + 1) > v246)
    {
      if ((v253 & 2) == 0 || v267 != v268)
      {
        extended = 0;
        v115 = 0;
        goto LABEL_133;
      }

      extended = 0;
      if (*(&v267 + 1) > v249 && *(&v267 + 1) <= v244)
      {
        extended = 0;
        v115 = v265 & 1;
        goto LABEL_133;
      }

LABEL_121:
      v115 = 0;
      goto LABEL_133;
    }

    if ((v253 & 2) == 0)
    {
      extended = 0;
      if (v267 != v268)
      {
        goto LABEL_121;
      }

      v115 = 0;
      if (*(&v267 + 1) > v244)
      {
        goto LABEL_133;
      }
    }

    if (bt_remove(v270, 0, &v268, 0x10u, v247))
    {
      if (obj_type(v14) != 13)
      {
        v123 = v14[48] + 212;
      }

      log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", v116, v117, v118, v119, v120, v121, v122, "omap_cleanup");
    }

    extended = spaceman_free(v14, 64, *(&v266 + 1), (v251 - 1 + DWORD1(v266)) / v251, v247);
    if (extended)
    {
      if (obj_type(v14) != 13)
      {
        v131 = v14[48] + 212;
      }

      log_err("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", v124, v125, v126, v127, v128, v129, v130, "omap_cleanup");
    }

    if ((v253 & 2) == 0)
    {
      obj_cache_remove(*(v13 + 392), v12, v268, *(&v268 + 1));
    }

    v132 = (v253 >> 1) & 1;
    if (!v113)
    {
      LOBYTE(v132) = 1;
    }

    v115 = (v265 & v132);
    v110 = v113;
LABEL_133:
    if (v265)
    {
      if (v115 && bt_remove(v270, 0, &v267, 0x10u, v247))
      {
        if (obj_type(v14) != 13)
        {
          v140 = v14[48] + 212;
        }

        log_err("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", v133, v134, v135, v136, v137, v138, v139, "omap_cleanup");
      }

      v264 = 0x1000000010;
      v141 = bt_lookup_variant(v270, 0, &v267, &v264 + 1, 0x10u, &v265, &v264, 4u, 0, 0);
      if (v141)
      {
        extended = v141;
        if (v141 == 2)
        {
          extended = 0;
          *&v267 = 0;
        }

        else
        {
          if (obj_type(v14) != 13)
          {
            v149 = v14[48] + 212;
          }

          log_err("%s:%d: %s lookup returned unexpected error while iterating: %d\n", v142, v143, v144, v145, v146, v147, v148, "omap_cleanup");
        }
      }

      else
      {
        if (HIDWORD(v264) != 16)
        {
          sub_1000A49DC();
        }

        if (v264 != 16)
        {
          sub_1000A4A08();
        }

        extended = 0;
      }
    }

    ++v71;
    v268 = v267;
    v266 = v265;
    v109 = v267;
  }

  while (v267);
  obj_lock(a1, 2u);
  v8 = v247;
  v11 = v243;
  if (extended)
  {
    goto LABEL_196;
  }

LABEL_168:
  v167 = *(v11 + 44);
  v168 = *(v11 + 56);
  v274 = 0u;
  v279 = 0;
  v278 = 0u;
  v277 = 0u;
  v276 = 0u;
  v275 = 0u;
  v273 = omap_snapshot_key_cmp;
  DWORD2(v274) = 19;
  if (v167 != 2)
  {
    extended = 22;
LABEL_193:
    if (obj_type(v14) != 13)
    {
      v184 = v14[48] + 212;
    }

LABEL_195:
    log_err("%s:%d: %s unable to get snapshot tree: %d\n", v102, v103, v104, v105, v106, v107, v108, "omap_cleanup");
    goto LABEL_196;
  }

  extended = btree_get_extended(v14, v167 & 0xFFFF0000, v168, 0, 1u, &v273, v8, &v271);
  if (extended)
  {
    goto LABEL_193;
  }

  if (obj_oid(v271) != *v241)
  {
    *v241 = obj_oid(v271);
    obj_dirty(a1, v8, 0);
  }

  v272 = v249;
  while (1)
  {
    v264 = 0x800000010;
    v169 = bt_lookup_variant(v271, 0, &v272, &v264 + 1, 8u, v269, &v264, 4u, 0, 0);
    if (v169)
    {
      extended = v169;
      if (v169 == 2)
      {
LABEL_225:
        if (v12 && (v253 & 2) != 0)
        {
          obj_cache_remove_reverted_fs_objects(*(v13 + 392), v12, v249 + 1, v246);
        }

        if (*(v11 + 36))
        {
          v272 = -1;
          v264 = 0x800000010;
          v205 = bt_lookup_variant(v271, 0, &v272, &v264 + 1, 8u, v269, &v264, 1u, 0, 0);
          if (v205)
          {
            extended = v205;
            goto LABEL_196;
          }

          *(v11 + 64) = v272;
          v233 = v241;
        }

        else
        {
          *(v11 + 64) = 0;
          v214 = btree_delete(v271, v8, 0);
          if (v214)
          {
            extended = v214;
            if (obj_type(v14) != 13)
            {
              v236 = v14[48] + 212;
            }

            log_err("%s:%d: %s error deleting empty snapshot tree: %d\n", v215, v216, v217, v218, v219, v220, v221, "omap_cleanup");
            goto LABEL_196;
          }

          v233 = v241;
          *v241 = 0;
          obj_dirty(a1, v8, 0);
        }

        *a3 = 0;
        *(a1 + 96) &= ~2u;
        a1[60] = 0;
        a1[61] = 0;
        if (*v233)
        {
          extended = 36;
        }

        else
        {
          extended = 0;
        }

        goto LABEL_196;
      }

      if (obj_type(v14) != 13)
      {
        v224 = v14[48] + 212;
      }

LABEL_253:
      log_err("%s:%d: %s error searching snapshot tree: %d\n", v207, v208, v209, v210, v211, v212, v213, "omap_cleanup");
      goto LABEL_196;
    }

    v170 = v272;
    v171 = v244;
    if (v272 < v244)
    {
      break;
    }

LABEL_185:
    if (v170 >= v171)
    {
      goto LABEL_225;
    }
  }

  if ((v269[0] & 1) == 0)
  {
    sub_1000A4A34();
  }

  v172 = bt_remove(v271, 0, &v272, HIDWORD(v264), v8);
  if (!v172)
  {
    --*(v11 + 36);
    if (obj_type(v14) != 13)
    {
      v180 = v14[48] + 212;
    }

    v238 = *(v11 + 36);
    v240 = *(v11 + 64);
    log_debug("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", v173, v174, v175, v176, v177, v178, v179, "omap_cleanup");
    if ((v253 & 2) != 0)
    {
      v181 = v272;
      if (v272 >= *(v11 + 72))
      {
        v182 = *(v11 + 80);
        if (v272 <= v182)
        {
          *(v11 + 72) = v272;
          if (v181 >= v182)
          {
            *(v11 + 72) = 0;
            *(v11 + 80) = 0;
          }
        }
      }
    }

    obj_dirty(a1, v8, 0);
    v170 = v272;
    v171 = v244;
    goto LABEL_185;
  }

  extended = v172;
  if (obj_type(v14) != 13)
  {
    v235 = v14[48] + 212;
  }

  log_err("%s:%d: %s error updating snapshot tree: %d\n", v226, v227, v228, v229, v230, v231, v232, "omap_cleanup");
LABEL_196:
  *(a1 + 96) &= ~1u;
  obj_unlock(a1, 2u);
  if (v271)
  {
    obj_release(v271);
  }

  if (v270)
  {
    obj_release(v270);
  }

  return extended;
}

uint64_t omap_create(pthread_mutex_t **a1, unsigned int a2, unsigned int a3, int a4, uint64_t a5, void *a6)
{
  if (obj_type(a1) == 13)
  {
    v12 = a1;
  }

  else
  {
    v12 = 0;
  }

  v13 = a1;
  if (v12)
  {
    v13 = *(v12 + 392);
  }

  v21 = 0;
  v22 = 0;
  if (!v13)
  {
    sub_1000A4AB8();
  }

  if (a3 >= 2)
  {
    sub_1000A4A8C();
  }

  *a6 = 0;
  extended = 22;
  if (a2 >> 30 && (a2 & 0x8000000) == 0 && (a4 == 1073741826 || a4 == -2147483646))
  {
    v20[0] = a3;
    v20[1] = a4;
    v20[2] = 1073741826;
    extended = obj_create(v13[49], a2 & 0xFFFF0000, 0, &om_desc, v20, v12, a5, &v22);
    if (!extended)
    {
      v23[1] = 0;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23[0] = omap_key_cmp;
      v23[2] = 0x20000000BLL;
      v15 = 0x80000000;
      if (a4 >= 0)
      {
        v15 = 0x40000000;
      }

      extended = btree_create_extended(a1, v15 | a4 & 0xFFFF0000, 0, 0x10u, 16, v23, a5, &v21);
      if (extended)
      {
        obj_delete_and_free(v22, a5);
        obj_release(v22);
      }

      else
      {
        v16 = v21;
        *(v22[47] + 40) = a4;
        v17 = obj_oid(v16);
        v18 = v22;
        *(v22[47] + 48) = v17;
        obj_dirty(v18, a5, 0);
        obj_release(v21);
        extended = 0;
        if (v22)
        {
          *a6 = v22;
        }
      }
    }
  }

  return extended;
}

uint64_t omap_destroy(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  if (obj_type(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (!v8)
  {
    v25 = 0;
    v9 = a1;
    if (a1)
    {
      goto LABEL_9;
    }

LABEL_24:
    sub_1000A4B10();
  }

  v9 = *(v8 + 392);
  v25 = 0;
  if (!v9)
  {
    goto LABEL_24;
  }

  if (*(v8 + 504))
  {
    sub_1000A4AE4();
  }

LABEL_9:
  if (!xid_is_current_tx(v9, a3))
  {
    return 22;
  }

  v10 = obj_get(*(v9 + 392), 0x40000000, a2, &om_desc, 0, v8, 0, a3, &v25);
  if (!v10)
  {
    if (v8)
    {
      v11 = obj_oid(v8);
    }

    else
    {
      v11 = 0;
    }

    v12 = obj_type_and_flags(v25);
    v13 = obj_size_phys(v25);
    v14 = obj_oid(v25);
    if (a4)
    {
      v15 = nx_reaper_add(v9, v12, v13, v11, v14, a3, 0, a4);
    }

    else
    {
      v15 = nx_reaper_add_sub_object(v9, v12, v13, v11, v14, a3, 0);
    }

    v10 = v15;
    if (v15)
    {
      if (obj_type(a1) != 13)
      {
        v16 = *(a1 + 384) + 212;
      }

      obj_oid(v25);
      obj_type_and_flags(v25);
      log_err("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list: %d\n", v17, v18, v19, v20, v21, v22, v23, "omap_destroy");
    }

    obj_release(v25);
  }

  return v10;
}

uint64_t omap_obj_get(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v8 = obj_type(a1);
  v9 = 0;
  v10 = a1;
  if (a1 && v8 == 13)
  {
    v10 = *(a1 + 392);
    if (*(a1 + 504))
    {
      v9 = *(a1 + 504);
    }

    else
    {
      v9 = a1;
    }
  }

  if ((a2 & 1) == 0)
  {
LABEL_9:
    if (v9)
    {
      pthread_mutex_lock((v9 + 1160));
      v12 = (v9 + 3640);
      v13 = 128;
      v14 = v9;
    }

    else
    {
      pthread_mutex_lock((v10 + 672));
      v12 = (v10 + 736);
      v13 = 160;
      v14 = v10;
    }

    v15 = *v12;
    *a4 = *v12;
    v16 = *(*(v14 + 376) + v13);
    if (v15)
    {
      obj_retain(v15);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = obj_modify(*a4, a2, a3);
      if (v17)
      {
        v11 = v17;
        obj_release(*a4);
        goto LABEL_18;
      }
    }

    else
    {
      v18 = obj_get(*(v10 + 392), a2 | 0x40000000, v16, &om_desc, 0, v9, 0, a3, a4);
      if (v18)
      {
        v11 = v18;
LABEL_18:
        if (v9)
        {
          v19 = (v9 + 1160);
        }

        else
        {
          v19 = (v10 + 672);
        }

        goto LABEL_31;
      }

      v20 = *a4;
      v21 = (v9 + 3640);
      if (!v9)
      {
        v21 = (v10 + 736);
      }

      *v21 = v20;
      obj_retain(v20);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (obj_oid(*a4) != v16)
    {
      v22 = obj_oid(*a4);
      if (v9)
      {
        *(*(v9 + 376) + 128) = v22;
        fs_sb_dirty(v9, a3);
        goto LABEL_26;
      }

      *(*(v10 + 376) + 160) = v22;
      obj_dirty(a1, a3, 0);
LABEL_30:
      v11 = 0;
      v19 = (v10 + 672);
      goto LABEL_31;
    }

LABEL_25:
    if (v9)
    {
LABEL_26:
      v11 = 0;
      v19 = (v9 + 1160);
LABEL_31:
      pthread_mutex_unlock(v19);
      return v11;
    }

    goto LABEL_30;
  }

  v11 = obj_modify(a1, 0, a3);
  if (!v11)
  {
    a2 = a2 | 2;
    goto LABEL_9;
  }

  return v11;
}

uint64_t omap_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = obj_type(a1);
  v21 = 0uLL;
  if (a4 == 2)
  {
    if (v8 == 13)
    {
      v9 = a1;
    }

    else
    {
      v9 = 0;
    }

    *(a3 + 8) = v9;
  }

  if ((*(a3 + 20) & 0x40) != 0)
  {
    return 0;
  }

  obj_lock(a3, 1u);
  v10 = obj_type_is_or_contains_ephemeral(*(*(a3 + 376) + 40));
  v11 = *(a3 + 376);
  if (!v10 || !*(v11 + 48))
  {
LABEL_12:
    if (obj_type_is_or_contains_ephemeral(*(v11 + 44)) && (v14 = *(a3 + 376), (v15 = *(v14 + 56)) != 0))
    {
      v16 = *(v14 + 44);
      v23 = 0u;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v22 = omap_snapshot_key_cmp;
      DWORD2(v23) = 19;
      if (v16 != 2)
      {
        obj_unlock(a3, 1u);
        v18 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          v17 = v21;
          extended = 22;
          if (!v21)
          {
            return extended;
          }

          goto LABEL_39;
        }

        extended = 22;
        goto LABEL_35;
      }

      extended = btree_get_extended(a1, v16 & 0xFFFF0000, v15, 0, 0, &v22, 0, &v21);
      obj_unlock(a3, 1u);
      if (extended)
      {
        goto LABEL_32;
      }
    }

    else
    {
      obj_unlock(a3, 1u);
    }

    if ((obj_type_and_flags(a3) & 0x80000000) == 0)
    {
      v18 = *(&v21 + 1);
      v17 = v21;
      if (v21 != 0)
      {
        if (!*(&v21 + 1))
        {
          if (!v21)
          {
            return 0;
          }

          goto LABEL_38;
        }

        goto LABEL_34;
      }

      obj_set_skip_checkpoint_traverse(a3, 1);
      goto LABEL_27;
    }

    if (a4 == 2)
    {
      v19 = obj_checkpoint_known(a3);
    }

    else
    {
      if (a4 != 1)
      {
LABEL_27:
        extended = 0;
        goto LABEL_32;
      }

      v19 = obj_checkpoint_start(a3);
    }

    extended = v19;
LABEL_32:
    v18 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {
      goto LABEL_36;
    }

    if (extended)
    {
LABEL_35:
      obj_release(v18);
LABEL_36:
      v17 = v21;
      if (!v21)
      {
        return extended;
      }

      if (extended)
      {
LABEL_39:
        obj_release(v17);
        return extended;
      }

LABEL_38:
      extended = btree_checkpoint_traverse(a1, a2, v17, a4);
      v17 = v21;
      goto LABEL_39;
    }

LABEL_34:
    extended = btree_checkpoint_traverse(a1, a2, v18, a4);
    v18 = *(&v21 + 1);
    goto LABEL_35;
  }

  v12 = omap_map_tree_get(a1, a3, 0, 0, &v21 + 1);
  if (!v12)
  {
    v11 = *(a3 + 376);
    goto LABEL_12;
  }

  extended = v12;
  obj_unlock(a3, 1u);
  return extended;
}

uint64_t omap_set(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  if (obj_type(a1) == 13)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a1;
  if (v14)
  {
    v15 = *(v14 + 392);
  }

  v23[0] = a2;
  v23[1] = a3;
  v21[0] = a6;
  v21[1] = a5;
  v22 = a4;
  v19 = 0;
  v20 = 0;
  if (!v15)
  {
    sub_1000A4B94();
  }

  if (v14 && *(v14 + 504))
  {
    sub_1000A4B3C();
  }

  if ((a6 & 0x10) != 0)
  {
    sub_1000A4B68();
  }

  v16 = 22;
  if (xid_is_current_tx(v15, a7) && a2 && a3 && a5)
  {
    v17 = nx_superblock_sanity_check_extent(*(v15 + 376), 0, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), 0);
    if (v17)
    {
      return v17;
    }

    v17 = omap_obj_get(a1, 1, a7, &v20);
    if (v17)
    {
      return v17;
    }

    else
    {
      obj_lock(v20, 2u);
      v16 = omap_map_tree_get(a1, v20, 1, a7, &v19);
      if (!v16)
      {
        if ((a6 & 4) != 0)
        {
          v21[0] = *(v20[47] + 32) & 0x10 | a6;
        }

        v16 = bt_insert(v19, 0, v23, 16, v21, 0x10u, a7);
        obj_release(v19);
      }

      obj_unlock(v20, 2u);
      obj_release(v20);
    }
  }

  return v16;
}

uint64_t omap_delete(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  if (obj_type(a1) == 13)
  {
    v14 = a1;
  }

  else
  {
    v14 = 0;
  }

  v15 = a1;
  if (v14)
  {
    v15 = *(v14 + 392);
  }

  *&v35 = a2;
  *(&v35 + 1) = a3;
  v33[0] = a6;
  v33[1] = a5;
  v34 = a4;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  if (!v15)
  {
    sub_1000A4BEC();
  }

  if (v14 && *(v14 + 504))
  {
    sub_1000A4BC0();
  }

  v16 = 22;
  if (xid_is_current_tx(v15, a7))
  {
    if (a2)
    {
      if (a3)
      {
        v16 = omap_obj_get(a1, 1, a7, &v32);
        if (!v16)
        {
          obj_lock(v32, 2u);
          v16 = omap_map_tree_get(a1, v32, 1, a7, &v31);
          v17 = v32;
          if (v16)
          {
LABEL_47:
            obj_unlock(v17, 2u);
            obj_release(v32);
            return v16;
          }

          v18 = v32[47];
          v19 = *(v18 + 64);
          if ((v32[48] & 2) != 0 && v32[61] == v19)
          {
            v19 = v32[60];
          }

          if (*(v18 + 32))
          {
            if (a6)
            {
              goto LABEL_26;
            }

            *v29 = v35;
            v27 = 0;
            v28 = 0;
            v30 = 0x1000000010;
            v21 = bt_lookup_variant(v31, 0, v29, &v30 + 1, 0x10u, &v27, &v30, 0, 0, 0);
            if (v21)
            {
              goto LABEL_45;
            }

            if ((v27 & 2) == 0)
            {
              goto LABEL_26;
            }
          }

          else
          {
            v20 = v19 < a3;
            if (v19 < a3)
            {
              if (a6)
              {
                *v29 = v35;
                v27 = 0;
                v28 = 0;
                v30 = 0x1000000010;
                if (!bt_lookup_variant(v31, 0, v29, &v30 + 1, 0x10u, &v27, &v30, 2u, 0, 0) && v29[0] == v35)
                {
                  goto LABEL_29;
                }
              }

LABEL_26:
              v22 = 0;
              v16 = 0;
              v20 = 1;
              goto LABEL_30;
            }

            if (a6)
            {
LABEL_29:
              *(&v35 + 1) = a7;
              v16 = bt_insert(v31, 0, &v35, 16, v33, 16, a7);
              v22 = 1;
LABEL_30:
              if (v20 && !v16)
              {
                if (a3 == a7)
                {
                  v23 = v22;
                }

                else
                {
                  v23 = 0;
                }

                if (v23)
                {
                  v16 = 0;
                }

                else
                {
                  *(&v35 + 1) = a3;
                  v16 = bt_remove(v31, 0, &v35, 0x10u, a7);
                  v24 = v22 ^ 1;
                  if (!v16)
                  {
                    v24 = 1;
                  }

                  if ((v24 & 1) == 0)
                  {
                    *(&v35 + 1) = a7;
                    bt_remove(v31, 0, &v35, 0x10u, a7);
LABEL_46:
                    obj_release(v31);
                    v17 = v32;
                    goto LABEL_47;
                  }
                }
              }

              v25 = !v20;
              if (v16)
              {
                v25 = 1;
              }

              if (v25)
              {
                goto LABEL_46;
              }

              v21 = spaceman_free(a1, 64, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), a7);
LABEL_45:
              v16 = v21;
              goto LABEL_46;
            }
          }

          obj_release(v31);
          obj_unlock(v32, 2u);
          obj_release(v32);
          return 0;
        }
      }
    }
  }

  return v16;
}

uint64_t omap_get(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0;
  v32 = 0;
  v29 = a2;
  v30 = a3;
  v27 = 0;
  v28 = 0;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = omap_obj_get(a1, 0, 0, &v32);
  if (!v14)
  {
    obj_lock(v32, 1u);
    if (*(v32[47] + 88) > a2)
    {
      obj_unlock(v32, 1u);
      v14 = 2;
LABEL_33:
      obj_release(v32);
      return v14;
    }

    v15 = omap_map_tree_get(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      obj_unlock(v32, 1u);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = bt_lookup_variant(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = v32[47];
    v19 = *(v18 + 72);
    v20 = v29;
    if (v19)
    {
      v21 = v29 == a2;
    }

    else
    {
      v21 = 0;
    }

    if (v21)
    {
      if (v30 < v19 || v30 > *(v18 + 80))
      {
        goto LABEL_18;
      }

      v29 = a2;
      v30 = v19 - 1;
      v16 = bt_lookup_variant(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
      if (v16)
      {
LABEL_9:
        v14 = v16;
        v17 = 0;
        goto LABEL_31;
      }

      v20 = v29;
    }

    if (v20 != a2)
    {
LABEL_30:
      v17 = 0;
      v14 = 2;
LABEL_31:
      obj_release(v31);
      obj_unlock(v32, 1u);
      if (v17)
      {
        sub_1000223B0(a1, v32);
      }

      goto LABEL_33;
    }

LABEL_18:
    v22 = v27;
    if ((v27 & 1) == 0)
    {
      if (a4)
      {
        *a4 = v28;
      }

      if (a5)
      {
        *a5 = HIDWORD(v27);
      }

      if (a6)
      {
        *a6 = v22 & 0xFFFFFFEE;
        if (((*(v32[47] + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (v32[53])
      {
        sub_10002226C(v32, a2, v11, &v24);
        v14 = 0;
        v17 = v24;
      }

      else
      {
        v17 = 0;
        v14 = 0;
      }

      goto LABEL_31;
    }

    goto LABEL_30;
  }

  return v14;
}

uint64_t sub_10002226C(uint64_t result, unint64_t a2, uint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v12 = 0;
      v11 = 0;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      btree_node_count(*(v4 + 424), &v13);
      v7 = v13;
      result = obj_size_phys(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = bt_lookup_variant(*(v4 + 424), 0, &v14, &__tp, 8u, &v11, &v10, 0, 0, 0);
        if (result == 2)
        {
          LOBYTE(v8) = *(v4 + 464);
        }

        else
        {
          if (result)
          {
            return result;
          }

          if (!v11)
          {
            return result;
          }

          v8 = *(v4 + 464);
          if (v12 == v8)
          {
            return result;
          }
        }

        if (a3 == -1)
        {
          v9 = 0;
        }

        else
        {
          v9 = a3;
        }

        v11 = v9;
        v12 = v8;
        return bt_insert(*(v4 + 424), 0, &v14, 8, &v11, 9u, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1000223B0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (obj_type(a1) != 13)
  {
    v3 = 0;
  }

  obj_lock(a2, 2u);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0;
    v6.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      btree_delete(*(a2 + 424), 0, 0);
      obj_release(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3648);
    if (v4)
    {
      obj_release(v4);
      *(v3 + 3648) = 0;
    }
  }

  return obj_unlock(a2, 2u);
}

uint64_t omap_find_next_snapshot_xid(uint64_t a1, unint64_t a2, void *a3)
{
  v41 = 0;
  v42 = 0;
  v40[0] = 0;
  v40[1] = 0;
  v38 = 0;
  v39 = 0;
  v6 = omap_obj_get(a1, 0, 0, &v42);
  if (v6)
  {
    extended = v6;
    if (obj_type(a1) != 13)
    {
      v20 = *(a1 + 384) + 212;
    }

    log_err("%s:%d: %s unable to get omap: %d\n", v8, v9, v10, v11, v12, v13, v14, "omap_find_next_snapshot_xid");
    return extended;
  }

  v15 = v42[47];
  obj_lock(v42, 1u);
  if (*(v15 + 32))
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 56);
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v15 + 44);
  v44 = 0u;
  v45 = 0u;
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v43 = omap_snapshot_key_cmp;
  DWORD2(v44) = 19;
  if (v17 != 2)
  {
    extended = 22;
    goto LABEL_20;
  }

  extended = btree_get_extended(a1, v17 & 0xFFFF0000, v16, 0, 0, &v43, 0, &v41);
  if (extended)
  {
LABEL_20:
    if (obj_type(a1) != 13)
    {
      v28 = *(a1 + 384) + 212;
    }

    log_err("%s:%d: %s unable to get snapshot tree: %d\n", v21, v22, v23, v24, v25, v26, v27, "omap_find_next_snapshot_xid");
    goto LABEL_23;
  }

  v38 = a2;
  do
  {
    v39 = 0x800000010;
    v18 = bt_lookup_variant(v41, 0, &v38, &v39 + 1, 8u, v40, &v39, 4u, 0, 0);
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = (v40[0] & 1) == 0;
    }
  }

  while (!v19);
  extended = v18;
  if (!v18)
  {
    *a3 = v38;
    goto LABEL_23;
  }

  if (v18 != 2)
  {
    if (obj_type(a1) != 13)
    {
      v37 = *(a1 + 384) + 212;
    }

    log_err("%s:%d: %s error searching snapshot tree: %d\n", v30, v31, v32, v33, v34, v35, v36, "omap_find_next_snapshot_xid");
    goto LABEL_23;
  }

LABEL_16:
  extended = 2;
LABEL_23:
  if (v41)
  {
    obj_release(v41);
  }

  obj_unlock(v42, 1u);
  obj_release(v42);
  return extended;
}

uint64_t sub_1000226F0(void *a1, void *a2, uint64_t a3)
{
  if (obj_type(a1) == 13)
  {
    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  if (!v11)
  {
    result = obj_modify(a1, 0, a3, v6, v7, v8, v9, v10);
    if (result)
    {
      return result;
    }

    v14 = (a1 + 84);
    v12 = a1;
LABEL_10:
    pthread_mutex_lock(v14);
    v15 = obj_oid(a2);
    v16 = obj_type_and_flags(a2);
    if (obj_modify(a2, (v16 >> 29) & 2, a3, v17, v18, v19, v20, v21) || obj_oid(a2) == v15)
    {
      if (v11)
      {
LABEL_13:
        v22 = (v11 + 145);
LABEL_18:
        pthread_mutex_unlock(v22);
        return 0;
      }
    }

    else
    {
      v23 = obj_oid(a2);
      if (v11)
      {
        *(v11[47] + 128) = v23;
        fs_sb_dirty(v11, a3);
        goto LABEL_13;
      }

      *(v12[47] + 160) = v23;
      obj_dirty(a1, a3, 0);
    }

    v22 = (v12 + 84);
    goto LABEL_18;
  }

  if (v11[63])
  {
    sub_1000A4C18();
  }

  v12 = v11[49];
  result = obj_modify(a1, 0, a3, v6, v7, v8, v9, v10);
  if (!result)
  {
    v14 = (v11 + 145);
    goto LABEL_10;
  }

  return result;
}

atomic_ullong *fs_obj_zfree_oc(void *a1, unint64_t a2, int a3, uint64_t a4)
{
  if (!qword_100103710)
  {
    sub_1000A4C44();
  }

  _apfs_obj_zfree(a1, a2, *(a4 + 952));
  sub_10002288C((a4 + 976), a3, a2);
  v7 = (qword_100103710 + 136);

  return sub_10002288C(v7, a3, a2);
}

atomic_ullong *sub_10002288C(atomic_ullong *result, int a2, unint64_t a3)
{
  v4 = a2 & 0xC8000000;
  if (a2 < 0 != v3)
  {
    if (v4 == 0x80000000)
    {
      atomic_fetch_add_explicit(result + 29, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 31, a3, memory_order_relaxed);
      v5 = result + 33;
    }

    else
    {
      if (v4 != -2013265920)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(result + 35, -a3, memory_order_relaxed);
      atomic_fetch_add_explicit(result + 37, a3, memory_order_relaxed);
      v5 = result + 39;
    }
  }

  else
  {
    if (v4 != 0x40000000 && v4 != 0)
    {
LABEL_12:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    atomic_fetch_add_explicit(result + 23, -a3, memory_order_relaxed);
    atomic_fetch_add_explicit(result + 25, a3, memory_order_relaxed);
    v5 = result + 27;
  }

  atomic_fetch_add_explicit(v5, 1uLL, memory_order_relaxed);
  return result;
}

uint64_t obj_cache_create(unsigned int a1, unsigned int a2, unsigned int a3, void *a4)
{
  v8 = obj_mem_mgr_init();
  if (!v8)
  {
    v9 = _apfs_calloc_typed(1uLL, 0x578uLL, 0x10A004016CFB1AAuLL);
    if (v9)
    {
      v10 = v9;
      bzero(v9, 0x578uLL);
      v11 = new_lock(v10);
      if (v11)
      {
        v8 = v11;
LABEL_13:
        _apfs_free(v10, 1400);
        return v8;
      }

      v12 = new_rwlock((v10 + 128));
      if (v12)
      {
        v8 = v12;
LABEL_12:
        free_lock(v10);
        goto LABEL_13;
      }

      v13 = new_lock((v10 + 328));
      if (v13)
      {
        v8 = v13;
LABEL_11:
        free_rwlock((v10 + 128));
        goto LABEL_12;
      }

      v14 = new_cv((v10 + 1328));
      if (v14)
      {
        v8 = v14;
        free_lock((v10 + 328));
        goto LABEL_11;
      }

      if (!a1)
      {
        a1 = 4096;
      }

      v15 = _apfs_malloc_typed(8 * a1, 0x2004093837F09uLL);
      *(v10 + 89) = v15;
      if (v15)
      {
        bzero(v15, 8 * a1);
        *(v10 + 175) = a1;
        *(v10 + 176) = a1 - 1;
        if (!a2)
        {
          a2 = 4096;
        }

        *(v10 + 169) = 128;
        *(v10 + 170) = a2;
        v16 = a2 / 0x64u;
        if (v16 <= 0x10)
        {
          v16 = 16;
        }

        if (a2 > 0xC863)
        {
          v16 = 512;
        }

        *(v10 + 174) = v16;
        *(v10 + 171) = 0;
        *(v10 + 86) = 0;
        *(v10 + 168) = a3;
        v21.tv_sec = 0;
        v21.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
        tv_sec = v21.tv_sec;
        *(v10 + 1288) = 0u;
        *(v10 + 1304) = 0u;
        *(v10 + 1256) = 0u;
        *(v10 + 1272) = 0u;
        *(v10 + 1224) = 0u;
        *(v10 + 1240) = 0u;
        *(v10 + 1192) = 0u;
        *(v10 + 1208) = 0u;
        *(v10 + 1160) = 0u;
        *(v10 + 1176) = 0u;
        *(v10 + 1128) = 0u;
        *(v10 + 1144) = 0u;
        *(v10 + 1096) = 0u;
        *(v10 + 1112) = 0u;
        *(v10 + 1064) = 0u;
        *(v10 + 1080) = 0u;
        *(v10 + 1032) = 0u;
        *(v10 + 1048) = 0u;
        *(v10 + 1000) = 0u;
        *(v10 + 1016) = 0u;
        *(v10 + 123) = a3 << 7;
        v18 = a2 * a3;
        *(v10 + 124) = v18;
        *(v10 + 122) = v18;
        *(v10 + 163) = tv_sec;
        v19 = _apfs_calloc_typed(0x100uLL, 8uLL, 0x2004093837F09uLL);
        *(v10 + 112) = v19;
        if (v19)
        {
          v8 = 0;
          *(v10 + 94) = v10 + 744;
          *(v10 + 96) = v10 + 760;
          *(v10 + 98) = v10 + 776;
          *(v10 + 100) = v10 + 792;
          *(v10 + 102) = v10 + 808;
          *(v10 + 104) = v10 + 824;
          *(v10 + 106) = v10 + 840;
          *(v10 + 173) = v10 + 1376;
          *(v10 + 110) = v10 + 872;
          *(v10 + 108) = v10 + 856;
          *(v10 + 45) = 0u;
          *(v10 + 93) = 0;
          *(v10 + 95) = 0;
          *(v10 + 97) = 0;
          *(v10 + 99) = 0;
          *(v10 + 101) = 0;
          *(v10 + 103) = 0;
          *(v10 + 105) = 0;
          *(v10 + 172) = 0;
          *(v10 + 109) = 0;
          *(v10 + 107) = 0;
          *(v10 + 92) = 0;
          *(v10 + 25) = vdupq_n_s64(0x400uLL);
          *a4 = v10;
          return v8;
        }

        _apfs_free(*(v10 + 89), 8 * a1);
      }

      free_cv((v10 + 1328));
      free_lock((v10 + 328));
      free_rwlock((v10 + 128));
      free_lock(v10);
      _apfs_free(v10, 1400);
    }

    return 12;
  }

  return v8;
}

uint64_t obj_mem_mgr_init()
{
  if (!atomic_load_explicit(&qword_100103710, memory_order_acquire))
  {
    v2 = _apfs_calloc_typed(1uLL, 0x1E0uLL, 0x10200403418AD1FuLL);
    if (!v2)
    {
      return 12;
    }

    v3 = v2;
    *(v2 + 28) = 0u;
    *(v2 + 29) = 0u;
    *(v2 + 26) = 0u;
    *(v2 + 27) = 0u;
    *(v2 + 24) = 0u;
    *(v2 + 25) = 0u;
    *(v2 + 22) = 0u;
    *(v2 + 23) = 0u;
    *(v2 + 20) = 0u;
    *(v2 + 21) = 0u;
    *(v2 + 18) = 0u;
    *(v2 + 19) = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 17) = 0u;
    *(v2 + 14) = 0u;
    *(v2 + 15) = 0u;
    *(v2 + 12) = 0u;
    *(v2 + 13) = 0u;
    *(v2 + 10) = 0u;
    *(v2 + 11) = 0u;
    *(v2 + 8) = 0u;
    *(v2 + 9) = 0u;
    *(v2 + 6) = 0u;
    *(v2 + 7) = 0u;
    *(v2 + 4) = 0u;
    *(v2 + 5) = 0u;
    *(v2 + 2) = 0u;
    *(v2 + 3) = 0u;
    *v2 = 0u;
    *(v2 + 1) = 0u;
    v4 = new_lock((v2 + 8));
    if (v4)
    {
      v0 = v4;
      log_err("%s:%d: object memory manager failed to create lock, error: %d\n", v5, v6, v7, v8, v9, v10, v11, "obj_mem_mgr_init");
      _apfs_free(v3, 480);
      return v0;
    }

    *(v3 + 72) = 0;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v19 = 0;
    *(v3 + 136) = 0u;
    *(v3 + 440) = 0u;
    *(v3 + 456) = 0u;
    *(v3 + 408) = 0u;
    *(v3 + 424) = 0u;
    *(v3 + 376) = 0u;
    *(v3 + 392) = 0u;
    *(v3 + 344) = 0u;
    *(v3 + 360) = 0u;
    *(v3 + 312) = 0u;
    *(v3 + 328) = 0u;
    *(v3 + 280) = 0u;
    *(v3 + 296) = 0u;
    *(v3 + 264) = 0u;
    tv_sec = __tp.tv_sec;
    *(v3 + 248) = 0u;
    *(v3 + 232) = 0u;
    *(v3 + 216) = 0u;
    *(v3 + 200) = 0u;
    *(v3 + 184) = 0u;
    *(v3 + 168) = 0u;
    *(v3 + 152) = 0u;
    *(v3 + 464) = tv_sec;
    *(v3 + 472) = 0;
    atomic_compare_exchange_strong_explicit(&qword_100103710, &v19, v3, memory_order_release, memory_order_relaxed);
    if (v19)
    {
      atomic_load_explicit(&qword_100103710, memory_order_acquire);
      free_lock((v3 + 8));
      _apfs_free(v3, 480);
    }

    else
    {
      if (!qword_100103710)
      {
        sub_1000A4C70();
      }

      if ((*qword_100103710 & 4) != 0)
      {
        v21 = *qword_100103710;
        v22 = *(qword_100103710 + 96);
        log_debug("%s:%d: object memory manager initialized with feature flags: 0x%x, apfs_mem_max: %lld\n", v12, v13, v14, v15, v16, v17, v18, "obj_mem_mgr_init");
      }
    }
  }

  return 0;
}

uint64_t obj_cache_ephemeral_adjust(uint64_t result, int a2, int a3, int a4)
{
  if (a4 != -1 && a4 != 1)
  {
    sub_1000A4D20();
  }

  if ((a2 & 0x8000000) != 0)
  {
    v9 = *(result + 692);
    if (a4 <= 0 && !v9)
    {
      sub_1000A4C9C();
    }

    *(result + 692) = v9 + a4;
  }

  else
  {
    v4 = *(result + 688);
    if (a4 <= 0 && !v4)
    {
      sub_1000A4CF4();
    }

    *(result + 688) = v4 + a4;
    v5 = *(result + 392);
    if (v5)
    {
      v6 = (a3 + *(*(v5 + 376) + 36) - 1) / *(*(v5 + 376) + 36);
      v7 = *(result + 928);
      if (a4 < 0)
      {
        v8 = v7 - v6;
      }

      else
      {
        v8 = v7 + v6;
      }
    }

    else
    {
      if (a4 != 1)
      {
        sub_1000A4CC8();
      }

      v8 = *(result + 928) + 1;
    }

    *(result + 928) = v8;
  }

  return result;
}

void obj_cache_unlock_write(uint64_t a1)
{
  v1 = *(a1 + 728);
  if (v1)
  {
    *(a1 + 728) = 0;
    *(a1 + 736) = 0;
    pthread_mutex_unlock(a1);
    do
    {
      v2 = *(v1 + 72);
      sub_10002C0D8(v1, 0);
      v1 = v2;
    }

    while (v2);
  }

  else
  {

    pthread_mutex_unlock(a1);
  }
}

uint64_t obj_cache_lock_by_state(pthread_mutex_t *a1, int a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_1000A4D4C();
  }

  return pthread_mutex_lock(a1);
}

void obj_cache_unlock_by_state(pthread_mutex_t *a1, int a2)
{
  if ((a2 - 3) <= 0xFFFFFFFD)
  {
    sub_1000A4D78();
  }

  if (a2 == 1)
  {

    pthread_mutex_unlock(a1);
  }

  else
  {

    obj_cache_unlock_write(a1);
  }
}

void obj_cache_reset(pthread_mutex_t *a1, int a2)
{
  if (!a2)
  {
    pthread_mutex_lock(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 1u, memory_order_relaxed);
  }

  while (atomic_fetch_add_explicit(&a1[14].__opaque[40], 0, memory_order_relaxed))
  {
    v18 = 1;
    v4 = *&a1[21].__opaque[24];
    if (v4)
    {
      if ((*(*(v4 + 136) + 20) & 0x80) == 0)
      {
        sub_10002AE24(v4, &v18);
        if ((v18 & 1) == 0)
        {
          pthread_mutex_lock(a1);
        }
      }
    }
  }

  if (*a1[11].__opaque)
  {
    v5 = *&a1[10].__opaque[52];
    if (v5)
    {
      for (i = 0; i < v5; ++i)
      {
        v7 = *(*a1[11].__opaque + 8 * i);
        if (v7)
        {
          do
          {
            v8 = *(v7 + 72);
            if (v7 != *a1[6].__opaque)
            {
              v9 = *(v7 + 16);
              if ((v9 & 0x80000000) != 0)
              {
                obj_cache_ephemeral_adjust(a1, v9, *(v7 + 48), -1);
              }

              else
              {
                v10 = *&a1[10].__opaque[36];
                if (!v10)
                {
                  sub_1000A4DA4();
                }

                *&a1[10].__opaque[36] = v10 - 1;
              }

              sub_100029F34(v7, 0);
            }

            v7 = v8;
          }

          while (v8);
          v5 = *&a1[10].__opaque[52];
        }
      }
    }
  }

  v11 = *&a1[11].__opaque[8];
  if (v11)
  {
    do
    {
      v12 = *&a1[10].__opaque[36];
      if (!v12)
      {
        sub_1000A4DD0();
      }

      v13 = *(v11 + 72);
      *&a1[10].__opaque[36] = v12 - 1;
      sub_100029F34(v11, 0);
      v11 = v13;
    }

    while (v13);
  }

  v14 = *&a1[11].__opaque[32];
  if (v14)
  {
    do
    {
      v15 = *(v14 + 88);
      if (v14 != *a1[6].__opaque)
      {
        sub_100029F34(v14, 0);
      }

      v14 = v15;
    }

    while (v15);
  }

  v16 = *&a1[11].__opaque[48];
  if (v16)
  {
    do
    {
      v17 = *(v16 + 88);
      sub_100029F34(v16, 0);
      v16 = v17;
    }

    while (v17);
  }

  if (!a2)
  {
    obj_cache_unlock_write(a1);
    atomic_fetch_add_explicit(&a1[14].__opaque[36], 0xFFFFFFFF, memory_order_relaxed);
  }
}

void obj_cache_destroy(uint64_t a1)
{
  if (!qword_100103710)
  {
    sub_1000A50E8();
  }

  pthread_mutex_lock((qword_100103710 + 8));
  v2 = *(a1 + 1320);
  if (v2)
  {
    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFELL;
    v3 = *(a1 + 960);
    v4 = *(a1 + 968);
    if (v3)
    {
      *(v3 + 968) = v4;
    }

    *v4 = v3;
    if ((v2 & 2) == 0)
    {
      v5 = qword_100103710;
      --*(qword_100103710 + 104);
      *(v5 + 136) = vsubq_s64(*(v5 + 136), *(a1 + 976));
      *(v5 + 152) -= *(a1 + 992);
      goto LABEL_9;
    }

    *(a1 + 1320) = v2 & 0xFFFFFFFFFFFFFFFCLL;
  }

  v5 = qword_100103710;
LABEL_9:
  pthread_mutex_unlock((v5 + 8));
  pthread_mutex_lock(a1);
  atomic_fetch_add_explicit((a1 + 940), 1u, memory_order_relaxed);
  obj_cache_reset(a1, 1);
  v6 = *(a1 + 392);
  if (v6)
  {
    obj_cache_ephemeral_adjust(a1, *(v6 + 16), *(v6 + 48), -1);
    sub_100029F34(*(a1 + 392), 0);
  }

  v7 = *(a1 + 712);
  if (v7)
  {
    v8 = *(a1 + 700);
    if (v8)
    {
      v9 = *(a1 + 700);
      v10 = *(a1 + 712);
      do
      {
        if (*v10)
        {
          sub_1000A4DFC();
        }

        ++v10;
        --v9;
      }

      while (v9);
      v11 = 8 * v8;
    }

    else
    {
      v11 = 0;
    }

    _apfs_free(v7, v11);
  }

  if (*(a1 + 720))
  {
    sub_1000A4E28();
  }

  if (*(a1 + 744))
  {
    sub_1000A4E54();
  }

  if (*(a1 + 760))
  {
    sub_1000A4E80();
  }

  if (*(a1 + 776))
  {
    sub_1000A4EAC();
  }

  if (*(a1 + 792))
  {
    sub_1000A4ED8();
  }

  if (*(a1 + 824))
  {
    sub_1000A4F04();
  }

  if (*(a1 + 840))
  {
    sub_1000A4F30();
  }

  if (*(a1 + 1376))
  {
    sub_1000A4F5C();
  }

  if (*(a1 + 928))
  {
    sub_1000A4F88();
  }

  if (*(a1 + 688))
  {
    sub_1000A4FB4();
  }

  if (*(a1 + 692))
  {
    sub_1000A4FE0();
  }

  if (*(a1 + 684))
  {
    sub_1000A500C();
  }

  obj_cache_unlock_write(a1);
  v12 = *(a1 + 896);
  if (v12)
  {
    v13 = *(a1 + 904);
    if (v13 >= 1)
    {
      v14 = *(a1 + 896);
      do
      {
        if (*v14)
        {
          sub_1000A5038();
        }

        ++v14;
        --v13;
      }

      while (v13);
    }

    _apfs_free(v12, 2048);
  }

  free_cv((a1 + 1328));
  free_lock((a1 + 328));
  free_rwlock((a1 + 128));
  free_lock(a1);
  if (*(a1 + 1160))
  {
    sub_1000A5064();
  }

  if (*(a1 + 1208))
  {
    sub_1000A5090();
  }

  if (*(a1 + 1256))
  {
    sub_1000A50BC();
  }

  _apfs_free(a1, 1400);
}

uint64_t obj_cache_flush_prepare(uint64_t a1, unsigned int a2, char a3, uint64_t a4)
{
  v206 = 0;
  if ((a2 & 0x80000000) != 0)
  {
    return 22;
  }

  pthread_mutex_lock(a1);
  v203 = a2;
  if (a2)
  {
    if (*(a1 + 936))
    {
      obj_cache_unlock_write(a1);
      return 0;
    }
  }

  else
  {
    v7 = pthread_rwlock_wrlock((a1 + 128));
    if (v7)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 829, v7);
    }

    v15 = *(a1 + 824);
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        if ((*(v15 + 19) & 0xC0) != 0)
        {
          ++v16;
          v148 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s non-virtual object in virtual dirty list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        v18 = *(v15 + 32);
        if ((v18 & 1) == 0)
        {
          ++v16;
          v149 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s non-dirty object in dirty list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
          v18 = *(v15 + 32);
        }

        if ((v18 & 0x10) != 0)
        {
          ++v16;
          v150 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s deferred update object in dirty list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        ++v17;
        v15 = *(v15 + 88);
      }

      while (v15);
    }

    else
    {
      v17 = 0;
      v16 = 0;
    }

    if (*(a1 + 908) != v17)
    {
      ++v16;
      v178 = *(a1 + 908);
      v151 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s virtual dirty list count mismatch %d != %d\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
    }

    v19 = *(a1 + 840);
    if (v19)
    {
      v20 = 0;
      do
      {
        if ((*(v19 + 19) & 0x40) == 0)
        {
          ++v16;
          v152 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s non-physical object in physical dirty list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        v21 = *(v19 + 32);
        if ((v21 & 1) == 0)
        {
          ++v16;
          v153 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s non-dirty object in phys dirty list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
          v21 = *(v19 + 32);
        }

        if ((v21 & 0x10) != 0)
        {
          ++v16;
          v154 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s deferred update object in phys dirty list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        ++v20;
        v19 = *(v19 + 88);
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    if (*(a1 + 912) != v20)
    {
      ++v16;
      v179 = *(a1 + 912);
      v155 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s physical dirty list count mismatch %d != %d\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
    }

    v22 = *(a1 + 776);
    if (v22)
    {
      v23 = 0;
      do
      {
        if (*(v22 + 36) == 13)
        {
          ++v16;
          v156 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s fs object in virtual free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        if ((*(v22 + 19) & 0xC0) != 0)
        {
          ++v16;
          v157 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s non-virtual object in virtual free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        if (*(v22 + 32))
        {
          ++v16;
          v158 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s dirty object in virtual free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        add_explicit = atomic_fetch_add_explicit((v22 + 24), 0, memory_order_relaxed);
        if ((add_explicit & 0xFFFFFF) != ((add_explicit >> 24) & 0xFFFFF) && (*(v22 + 32) & 0x10) == 0)
        {
          ++v16;
          v159 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s referenced object in virtual free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        ++v23;
        v22 = *(v22 + 88);
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    if (*(a1 + 916) != v23)
    {
      ++v16;
      v180 = *(a1 + 916);
      v160 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s virtual free list count mismatch %d != %d\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
    }

    v25 = *(a1 + 792);
    if (v25)
    {
      v26 = 0;
      do
      {
        if (*(v25 + 36) == 13)
        {
          ++v16;
          v161 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s fs object in physical free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        if ((*(v25 + 19) & 0x40) == 0)
        {
          ++v16;
          v162 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s non-physical object in physical free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        if (*(v25 + 32))
        {
          ++v16;
          v163 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s dirty object in physical free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        v27 = atomic_fetch_add_explicit((v25 + 24), 0, memory_order_relaxed);
        if ((v27 & 0xFFFFFF) != ((v27 >> 24) & 0xFFFFF) && (*(v25 + 32) & 0x10) == 0)
        {
          ++v16;
          v164 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s referenced object in physical free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        ++v26;
        v25 = *(v25 + 88);
      }

      while (v25);
    }

    else
    {
      v26 = 0;
    }

    if (*(a1 + 920) != v26)
    {
      ++v16;
      v181 = *(a1 + 920);
      v165 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s physical free list count mismatch %d != %d\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
    }

    v28 = *(a1 + 808);
    if (v28)
    {
      v29 = 0;
      do
      {
        if (*(v28 + 36) == 13)
        {
          ++v16;
          v166 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s fs object in rage free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        if ((*(v28 + 19) & 0x80) != 0)
        {
          ++v16;
          v167 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s ephemeral object in rage free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        if (*(v28 + 32))
        {
          ++v16;
          v168 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s dirty object in rage free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        v30 = atomic_fetch_add_explicit((v28 + 24), 0, memory_order_relaxed);
        if ((v30 & 0xFFFFFF) != ((v30 >> 24) & 0xFFFFF) && (*(v28 + 32) & 0x10) == 0)
        {
          ++v16;
          v169 = *(*(a1 + 392) + 384) + 212;
          log_err("%s:%d: %s referenced object in rage free list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        }

        ++v29;
        v28 = *(v28 + 88);
      }

      while (v28);
    }

    else
    {
      v29 = 0;
    }

    if (*(a1 + 924) != v29)
    {
      ++v16;
      v182 = *(a1 + 924);
      v170 = *(*(a1 + 392) + 384) + 212;
      log_err("%s:%d: %s rage free list count mismatch %d != %d\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
    }

    for (i = *(a1 + 744); i; i = *(i + 88))
    {
      v32 = *(i + 16);
      if ((v32 & 0x80000000) == 0)
      {
        ++v16;
        v171 = *(*(a1 + 392) + 384) + 212;
        log_err("%s:%d: %s non-ephemeral object in ephemeral list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        v32 = *(i + 16);
      }

      if ((v32 & 0x8000000) != 0)
      {
        ++v16;
        v172 = *(*(a1 + 392) + 384) + 212;
        log_err("%s:%d: %s non-persistent ephemeral object in persistent ephemeral list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
      }
    }

    for (j = *(a1 + 760); j; j = *(j + 88))
    {
      v34 = *(j + 16);
      if ((v34 & 0x80000000) == 0)
      {
        ++v16;
        v173 = *(*(a1 + 392) + 384) + 212;
        log_err("%s:%d: %s non-ephemeral object in non-persistent ephemeral list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
        v34 = *(j + 16);
      }

      if ((v34 & 0x8000000) == 0)
      {
        ++v16;
        v174 = *(*(a1 + 392) + 384) + 212;
        log_err("%s:%d: %s persistent ephemeral object in non-persistent ephemeral list\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
      }
    }

    if (*(a1 + 904))
    {
      v35 = 0;
      do
      {
        v36 = *(*(a1 + 896) + 8 * v35);
        if (v36)
        {
          v37 = *(v36 + 32);
          if ((v37 & 0x10) == 0)
          {
            ++v16;
            v175 = *(*(a1 + 392) + 384) + 212;
            log_err("%s:%d: %s object in deferred updates queue but not flagged with OBJ_AFLAG_DEFERRED_LIST_UPDATE\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
            v37 = *(v36 + 32);
          }

          if (v37)
          {
            ++v16;
            v176 = *(*(a1 + 392) + 384) + 212;
            log_err("%s:%d: %s dirty object in deferred updates queue\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
          }

          if ((*(v36 + 19) & 0x80) != 0)
          {
            ++v16;
            v177 = *(*(a1 + 392) + 384) + 212;
            log_err("%s:%d: %s ephemeral object in deferred updates queue\n", v8, v9, v10, v11, v12, v13, v14, "obj_cache_sanity");
          }
        }

        ++v35;
      }

      while (v35 < *(a1 + 904));
    }

    if (v16)
    {
      sub_1000A5114();
    }

    v38 = pthread_rwlock_unlock((a1 + 128));
    if (v38)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 959, v38);
    }

    while (*(a1 + 936))
    {
      *(a1 + 936) = 2;
      cv_wait_rw((a1 + 1328), a1, 2, 0);
    }
  }

  *(a1 + 936) = 1;
  v39 = pthread_rwlock_wrlock((a1 + 128));
  if (v39)
  {
    panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1153, v39);
  }

  v40 = v203;
  if (v203)
  {
    if (a3)
    {
      v43 = 0;
      v41 = v203;
      goto LABEL_192;
    }

    if (*(a1 + 908) >= v203)
    {
      v41 = v203;
    }

    else
    {
      v41 = *(a1 + 908);
    }

    v201 = v203 - v41;
  }

  else
  {
    v41 = 0;
    if (a3)
    {
      v43 = 0;
      goto LABEL_192;
    }

    v201 = 0;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  if (v203)
  {
    v45 = -1;
  }

  else
  {
    v45 = 0;
  }

  while (1)
  {
    v46 = *(a1 + 824);
    if (!v46)
    {
      goto LABEL_169;
    }

    while (!v40 || v41 >= 1)
    {
      if (*(v46 + 36) >> 30)
      {
        panic("non-virtual object on virtual object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v46 + 112), *(v46 + 16), *(v46 + 32));
      }

      v47 = *(v46 + 32);
      if ((v47 & 1) == 0)
      {
        panic("virtual object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v46 + 112), *(v46 + 16), v47);
      }

      if (v44)
      {
        if (v44 > 1)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v48 = *(v46 + 8);
        if (!v48)
        {
          goto LABEL_152;
        }

        if (*(v48 + 504))
        {
          v48 = *(v48 + 504);
        }

        if (*(*(v48 + 376) + 264))
        {
          goto LABEL_152;
        }
      }

      if (*(v46 + 36) == 13)
      {
LABEL_152:
        v46 = *(v46 + 88);
        *(a1 + 888) = v46;
        if (!v46)
        {
          goto LABEL_169;
        }
      }

      else
      {
LABEL_137:
        if (v40)
        {
          v49 = atomic_fetch_add_explicit((v46 + 24), 0, memory_order_relaxed);
          if ((v49 & 0xFFFFFF) != ((v49 >> 24) & 0xFFFFF))
          {
            goto LABEL_152;
          }
        }

        v51 = (v46 + 104);
        v50 = *(v46 + 104);
        v52 = *(v46 + 16);
        if ((v50 != 3735928559) == ((v52 & 0x20000000000) == 0))
        {
          panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v46 + 112), v52, *(v46 + 32), v50);
        }

        if ((v52 & 0x20000000000) != 0 && *v51 != 3735928559)
        {
          goto LABEL_154;
        }

        if (v46 != v42)
        {
          v206 = 16000;
        }

        *(a1 + 888) = v46;
        v42 = v46;
        if (sub_1000245E4(v46, &v206, 1, 2))
        {
          if (v206 > 0x773593FF)
          {
            v53 = *(v46 + 8);
            if (!v53)
            {
              v53 = *(*v46 + 392);
            }

            if (nx_ratelimit_log_allowed(*(*v53 + 392)))
            {
              if (*(v53 + 36) != 13)
              {
                v64 = *(v53 + 384) + 212;
              }

              v191 = *(v46 + 32);
              v195 = *(v46 + 24);
              v183 = *(v46 + 112);
              v187 = *(v46 + 16);
              log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", v54, v55, v56, v57, v58, v59, v60, "obj_cache_flush_prepare");
            }
          }

          v42 = v46;
        }

        else
        {
LABEL_154:
          v61 = *(v46 + 88);
          *(a1 + 888) = v61;
          if (!*(a1 + 908))
          {
            panic("virtual object dirty count underflow\n");
          }

          v62 = *(v46 + 96);
          v63 = (v61 + 96);
          if (!v61)
          {
            v63 = (a1 + 832);
          }

          *v63 = v62;
          *v62 = v61;
          --*(a1 + 908);
          *(v46 + 88) = 3735928559;
          atomic_fetch_and_explicit((v46 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v46 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v46 + 64) = *(v46 + 56);
          }

          if (*v51 == 3735928559)
          {
            *(v46 + 104) = 0;
            **(a1 + 864) = v46;
            *(a1 + 864) = v51;
            ++*(a1 + 932);
          }

          v41 += v45;
        }

        v46 = *(a1 + 888);
        v40 = v203;
        if (!v46)
        {
          goto LABEL_169;
        }
      }
    }

    v44 = 3;
LABEL_169:
    v65 = pthread_rwlock_unlock((a1 + 128));
    if (v65)
    {
      panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1273, v65);
    }

    obj_cache_unlock_write(a1);
    v68 = (v43 + 13);
    if (!v43)
    {
      v68 = (a1 + 856);
    }

    v69 = *v68;
    if (v69)
    {
      break;
    }

LABEL_180:
    pthread_mutex_lock(a1);
    v72 = pthread_rwlock_wrlock((a1 + 128));
    if (v72)
    {
      panic("%s:%d: wrlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1300, v72);
    }

    v82 = v44++ < 2;
    if (!v82)
    {
      v41 = v201;
LABEL_192:
      v81 = *(a1 + 840);
      if (v40)
      {
        v82 = v41 < 1;
      }

      else
      {
        v82 = 0;
      }

      v83 = v82;
      if (v81 && (v83 & 1) == 0)
      {
        if (v40)
        {
          v84 = -1;
        }

        else
        {
          v84 = 0;
        }

        v202 = v84;
        do
        {
          if (*(v81 + 36) >> 30 != 1)
          {
            panic("non-physical object on physical object dirty list: oid %lld flags 0x%llx 0x%x\n", *(v81 + 112), *(v81 + 16), *(v81 + 32));
          }

          v85 = *(v81 + 32);
          if ((v85 & 1) == 0)
          {
            panic("physical object on dirty list not dirty: oid %lld flags 0x%llx 0x%x\n", *(v81 + 112), *(v81 + 16), v85);
          }

          v87 = (v81 + 104);
          v86 = *(v81 + 104);
          v88 = *(v81 + 16);
          if ((v86 != 3735928559) == ((v88 & 0x20000000000) == 0))
          {
            panic("dirty object flush state inconsistent: oid %lld flags 0x%llx 0x%x fl %p\n", *(v81 + 112), v88, *(v81 + 32), v86);
          }

          if ((v88 & 0x20000000000) == 0 || *v87 == 3735928559)
          {
            v206 = 16000;
            if (sub_1000245E4(v81, &v206, 1, 2))
            {
              do
              {
                if (v206 > 0x773593FF)
                {
                  v89 = *(v81 + 8);
                  if (!v89)
                  {
                    v89 = *(*v81 + 392);
                  }

                  if (nx_ratelimit_log_allowed(*(*v89 + 392)))
                  {
                    if (*(v89 + 36) != 13)
                    {
                      v97 = *(v89 + 384) + 212;
                    }

                    v193 = *(v81 + 32);
                    v197 = *(v81 + 24);
                    v184 = *(v81 + 112);
                    v188 = *(v81 + 16);
                    log_debug("%s:%d: %s oid %lld flags 0x%llx 0x%x refs 0x%llx taking too long to get reference!\n", v90, v91, v92, v93, v94, v95, v96, "obj_cache_flush_prepare");
                  }
                }
              }

              while ((sub_1000245E4(v81, &v206, 1, 2) & 1) != 0);
            }
          }

          if (!*(a1 + 912))
          {
            panic("physical object dirty count underflow\n");
          }

          v98 = *(v81 + 88);
          v99 = *(v81 + 96);
          v100 = (v98 + 96);
          if (!v98)
          {
            v100 = (a1 + 848);
          }

          *v100 = v99;
          *v99 = v98;
          --*(a1 + 912);
          *(v81 + 88) = 3735928559;
          atomic_fetch_and_explicit((v81 + 32), 0xFFFFFFFE, memory_order_relaxed);
          *(v81 + 16) |= 0x20000000000uLL;
          if ((a3 & 2) != 0)
          {
            *(v81 + 64) = *(v81 + 56);
          }

          if (*v87 == 3735928559)
          {
            *(v81 + 104) = 0;
            **(a1 + 864) = v81;
            *(a1 + 864) = v87;
            ++*(a1 + 932);
          }

          v41 += v202;
          v81 = *(a1 + 840);
          if (v203)
          {
            v101 = v41 < 1;
          }

          else
          {
            v101 = 0;
          }

          v102 = v101;
        }

        while (v81 && !v102);
      }

      v103 = pthread_rwlock_unlock((a1 + 128));
      if (v103)
      {
        panic("%s:%d: unlock == 0 failed %d\n", "/Library/Caches/com.apple.xbs/Sources/apfs_userfs/nx/obj.c", 1361, v103);
      }

      obj_cache_unlock_write(a1);
      v106 = v43 + 13;
      if (!v43)
      {
        v106 = (a1 + 856);
      }

      v107 = *v106;
      if (*v106)
      {
        while (1)
        {
          v108 = obj_write_prepare(v107, 0, a4, v104, v105);
          if (v108)
          {
            break;
          }

          if ((a3 & 2) != 0)
          {
            v109 = *(v107 + 152);
            if (!v109)
            {
              v109 = *(v107 + 128);
            }

            *(v107 + 136) = v109;
          }

          v107 = *(v107 + 104);
          if (!v107)
          {
            goto LABEL_248;
          }
        }

        v6 = v108;
        if (!*(*(*(a1 + 392) + 400) + 76))
        {
          v138 = *(v107 + 8);
          if (!v138)
          {
            v138 = *(*v107 + 392);
          }

          if (nx_ratelimit_log_allowed(*(*v138 + 392)))
          {
            if (*(v138 + 36) != 13)
            {
              v147 = *(v138 + 384) + 212;
            }

            v200 = *(v107 + 40);
            v194 = *(v107 + 32);
            v198 = *(v107 + 36);
            v186 = *(v107 + 112);
            v190 = *(v107 + 16);
            log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", v139, v140, v141, v142, v143, v144, v145, "obj_cache_flush_prepare");
          }
        }

        return v6;
      }

LABEL_248:
      v110 = *(a1 + 932);
      if (v110 >= 2)
      {
        v111 = 0;
        v112 = *(a1 + 856);
        for (k = 1; k < v110; k *= 2)
        {
          if (v112)
          {
            v114 = 0;
            v115 = 1;
            v116 = v112;
            while (1)
            {
              v117 = k;
              v118 = v116;
              if (k >= 2)
              {
                break;
              }

              v119 = v116[13];
              v118 = v116;
              v121 = v119;
              if (!v119)
              {
                goto LABEL_300;
              }

LABEL_260:
              v123 = v116[19];
              if (!v123)
              {
                v123 = v116[16];
              }

              v124 = v119[19];
              if (!v124)
              {
                v124 = v119[16];
              }

              v125 = v121[13];
              v126 = v123 <= v124;
              if (v123 > v124)
              {
                v127 = v119;
              }

              else
              {
                v127 = v121[13];
              }

              if (v123 > v124)
              {
                v128 = v118;
              }

              else
              {
                v128 = v121;
              }

              if (v126)
              {
                v129 = v119;
              }

              else
              {
                v129 = v116;
              }

              if (v126)
              {
                v111 = v118;
              }

              else
              {
                v111 = v121;
              }

              if (!v126)
              {
                v116 = v119;
              }

              if (v116 == v111 || v129 == v127)
              {
                v131 = v116;
              }

              else
              {
                v130 = v116;
                do
                {
                  v131 = v130[13];
                  v132 = v131[19];
                  if (!v132)
                  {
                    v132 = v131[16];
                  }

                  v133 = v129[19];
                  if (!v133)
                  {
                    v133 = v129[16];
                  }

                  if (v132 > v133)
                  {
                    v134 = v129[13];
                    v129[13] = v131;
                    v130[13] = v129;
                    v131 = v129;
                    v129 = v134;
                  }

                  v135 = v131 == v111 || v129 == v127;
                  v130 = v131;
                }

                while (!v135);
              }

              if (v131 == v111)
              {
                v131[13] = v129;
                v111 = v128;
              }

              v136 = v114 + 13;
              if (v115)
              {
                v136 = (a1 + 856);
                v112 = v116;
              }

              *v136 = v116;
              v114 = v111;
              v116 = v125;
              v115 = 0;
              if (!v125)
              {
                v114 = v111;
                goto LABEL_300;
              }
            }

            while (1)
            {
              v118 = v118[13];
              if (!v118)
              {
                break;
              }

              if (--v117 < 2)
              {
                v119 = v118[13];
                v120 = k;
                v121 = v119;
                if (!v119)
                {
                  break;
                }

                while (1)
                {
                  v122 = v121[13];
                  if (!v122)
                  {
                    goto LABEL_260;
                  }

                  --v120;
                  v121 = v121[13];
                  if (v120 < 2)
                  {
                    v121 = v122;
                    goto LABEL_260;
                  }
                }
              }
            }

LABEL_300:
            if (v114)
            {
              v114[13] = v116;
            }
          }
        }

        if (v111)
        {
          v6 = 0;
          *(a1 + 864) = v111 + 13;
          return v6;
        }
      }

      return 0;
    }
  }

  while (1)
  {
    v43 = v69;
    v70 = obj_write_prepare(v69, 0, a4, v66, v67);
    if (v70)
    {
      break;
    }

    if ((a3 & 2) != 0)
    {
      v71 = v43[19];
      if (!v71)
      {
        v71 = v43[16];
      }

      v43[17] = v71;
    }

    v69 = v43[13];
    if (!v69)
    {
      goto LABEL_180;
    }
  }

  v6 = v70;
  if (!*(*(*(a1 + 392) + 400) + 76))
  {
    v73 = v43[1];
    if (!v73)
    {
      v73 = *(*v43 + 392);
    }

    if (nx_ratelimit_log_allowed(*(*v73 + 392)))
    {
      if (*(v73 + 36) != 13)
      {
        v146 = *(v73 + 384) + 212;
      }

      v199 = *(v43 + 10);
      v192 = *(v43 + 8);
      v196 = *(v43 + 9);
      v185 = v43[14];
      v189 = v43[2];
      log_err("%s:%d: %s oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x error preparing for write: %d\n", v74, v75, v76, v77, v78, v79, v80, "obj_cache_flush_prepare");
    }
  }

  return v6;
}