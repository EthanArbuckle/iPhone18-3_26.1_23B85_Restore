uint64_t sub_100000810(uint64_t a1, uint64_t a2, unsigned __int8 a3, unsigned int a4, char *a5)
{
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0x10000;
  }

  if ((v5 - 65537) < 0xFFFF0001)
  {
    return 22;
  }

  bzero(a5, 0x558uLL);
  if (!a1 || (result = new_lock((a5 + 16)), !result))
  {
    *a5 = a1;
    *(a5 + 1) = a2;
    *(a5 + 22) = a3 | (v5 << 8);
    v11 = _apfs_calloc_typed(v5, 0x18uLL, 0x1000040504FFAC1uLL);
    *(a5 + 10) = v11;
    if (v11)
    {
      sub_1000008EC(a5);
      return 0;
    }

    else
    {
      if (a1)
      {
        free_lock((a5 + 16));
      }

      return 12;
    }
  }

  return result;
}

uint64_t sub_1000008EC(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 <= 0x2FF)
  {
    v5 = (v1 >> 8) - 1;
    v2 = *(result + 80);
  }

  else
  {
    v2 = *(result + 80);
    v3 = 1;
    v4 = 1;
    do
    {
      *(v2 + 24 * v4++) = (v3 + 1);
      v3 = v4;
      v5 = (*(result + 88) >> 8) - 1;
    }

    while (v5 > v4);
  }

  *(v2 + 24 * v5) = 0;
  *(result + 92) = 1;
  return result;
}

void sub_10000095C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      _apfs_free(v2, 24 * (*(a1 + 88) >> 8));
      *(a1 + 80) = 0;
    }

    if (*a1)
    {
      free_lock((a1 + 16));
      *a1 = 0;
    }
  }
}

uint64_t sub_1000009BC(unsigned int a1, uint64_t a2)
{
  v4 = *(a2 + 88);
  if (a1 == v4 >> 8)
  {
    bzero((a2 + 92), 0x4FCuLL);
    bzero(*(a2 + 80), 24 * a1);
    sub_1000008EC(a2);
    return 0;
  }

  else
  {
    v7 = *a2;
    v6 = *(a2 + 8);
    sub_10000095C(a2);

    return sub_100000810(v7, v6, v4, a1, a2);
  }
}

uint64_t sub_100000A68(uint64_t a1)
{
  result = sub_1000009BC(*(a1 + 89), a1);
  if (result)
  {
    v3 = *(a1 + 88);
    v4 = "main";
    if (v3 == 1)
    {
      v4 = "tier2";
    }

    result = log_err("%s:%d: %s dev %d Error reinitializing %s free extent cache: %d\n", "spaceman_free_extent_cache_reset", 262, (*(*a1 + 384) + 212), v3, v4, result);
    *(a1 + 280) |= 2uLL;
  }

  return result;
}

uint64_t sub_100000AF8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  if (a2 <= 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = a2;
  }

  if (*(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 56) / v3 > 0x64)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) != 0 || (*(a1 + 88) >> 8) - 1 > *(a1 + 94))
  {
    goto LABEL_15;
  }

  v6 = *(a1 + 176);
  if (v6 <= *(a1 + 224))
  {
    v6 = *(a1 + 224);
  }

  if (v6 < *(a1 + 248) || (v7 = *(a1 + 128), (v7 - *(a1 + 120)) > 3))
  {
LABEL_15:
    v4 = 0;
  }

  else
  {
    *(a1 + 328) = v7;
    v4 = 1;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return v4;
}

void sub_100000BCC(void *a1)
{
  v33 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_100009C74(a1, &v33))
  {
    v1 = 0;
    for (i = 1; ; i = 0)
    {
      v3 = i;
      v4 = v33[47] + 48 * v1;
      v7 = *(v4 + 48);
      v5 = v4 + 48;
      v6 = v7;
      if (!v7)
      {
        goto LABEL_42;
      }

      v8 = v33[v1 + 197];
      if (!v8)
      {
        goto LABEL_42;
      }

      v32 = v3;
      v9 = *(v5 + 24);
      v10 = *(v8 + 94);
      if (*v8)
      {
        pthread_mutex_lock((v8 + 16));
      }

      v11 = v8 + 1264;
      if (sub_100002BE8(v8, v8 + 1264, 1u))
      {
        v31 = 0;
      }

      else
      {
        v31 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)) + 8) & 0xFFFFFFFFFFFFFLL;
      }

      if (sub_100003CE4(v8, v8 + 1264))
      {
        v12 = 0;
        v13 = 0;
      }

      else
      {
        v30 = *(*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361))) & 0xFFFFFFFFFFFFFLL;
        if (sub_100002BE8(v8, v8 + 1264, 0))
        {
          v13 = 0;
          v12 = v30;
        }

        else
        {
          v14 = (*(v8 + 80) + 24 * *(v11 + 4 * *(v8 + 1361)));
          v12 = v30;
          v13 = (*v14 & 0xFFFFFFFFFFFFFLL) - v30 + (v14[1] & 0xFFFFFFFFFFFFFLL);
        }
      }

      v15 = *(v8 + 96);
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = *(v8 + 96);
      }

      if (v9)
      {
        v17 = v9;
      }

      else
      {
        v17 = v16;
      }

      if (v10)
      {
        v18 = v15 / v10;
      }

      else
      {
        v18 = 0;
      }

      log_info("%s:%d: %s dev %d smfree %lld/%lld table %d/%d blocks %lld %lld:%lld:%lld %d.%02d%% range %lld:%lld %d.%02d%% scans %lld\n", "spaceman_fxc_print_stats", 477, (*(*v8 + 384) + 212), *(v8 + 88), v9, v6, v10, (*(v8 + 88) >> 8) - 1, v15, *(v8 + 120), v18, v31, 10000 * v15 / v17 / 0x64, 10000 * v15 / v17 % 0x64, v12, v13, 10000 * v13 / v6 / 0x64, 10000 * v13 / v6 % 0x64, *(v8 + 336));
      v19 = (v8 + 272);
      v20 = 3;
      do
      {
        v21 = *(v19 - 4);
        if (v21)
        {
          if (v9)
          {
            v22 = v9;
          }

          else
          {
            v22 = *(v19 - 4);
          }

          v23 = *(v19 - 5);
          if (v23)
          {
            v24 = v21 / v23;
          }

          else
          {
            v24 = 0;
          }

          v25 = *(v19 - 2);
          log_info("%s:%d: %s dev %d scan_stats[%d]: foundmax %lld extents %lld blocks %lld long %lld avg %lld %d.%02d%% range %lld:%lld %d.%02d%%\n", "spaceman_fxc_print_stats", 496, (*(*v8 + 384) + 212), *(v8 + 88), v20 - 1, *v19, v23, v21, *(v19 - 3), v24, 10000 * v21 / v22 / 0x64, 10000 * v21 / v22 % 0x64, v25, *(v19 - 1), 10000 * *(v19 - 1) / v6 / 0x64, 10000 * *(v19 - 1) / v6 % 0x64);
        }

        v19 -= 6;
        --v20;
      }

      while (v20);
      v26 = *(v8 + 344);
      v27 = *v8;
      if (v26)
      {
        log_info("%s:%d: %s dev %d Searches: %lld success %lld fail %lld partial %lld, bm search yes:%lld (%lld/%lld/%lld) no:%lld/%lld\n", "spaceman_fxc_print_stats", 509, (*(v27 + 384) + 212), *(v8 + 88), v26, *(v8 + 352), *(v8 + 424), *(v8 + 416), *(v8 + 448), *(v8 + 456), *(v8 + 464), *(v8 + 472), *(v8 + 432), *(v8 + 440));
        v28 = *(v8 + 360);
        v3 = v32;
        if (v28)
        {
          v29 = *(v8 + 368) / v28;
        }

        else
        {
          v29 = 0;
        }

        log_info("%s:%d: %s dev %d Remainders: zero %lld one %lld tiny %lld small %lld good %lld, total %lld blocks %lld avg %lld\n", "spaceman_fxc_print_stats", 515, (*(*v8 + 384) + 212), *(v8 + 88), *(v8 + 408), *(v8 + 400), *(v8 + 392), *(v8 + 384), *(v8 + 376), v28, *(v8 + 368), v29);
        if (!*v8)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v3 = v32;
        if (!v27)
        {
          goto LABEL_42;
        }
      }

      pthread_mutex_unlock((v8 + 16));
LABEL_42:
      v1 = 1;
      if ((v3 & 1) == 0)
      {
        obj_release(v33);
        return;
      }
    }
  }
}

uint64_t sub_100000FBC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = a2 + 1576;
  for (i = 1; ; i = 0)
  {
    v7 = i;
    if (!*(v5 + 8 * v4) && *(*(a2 + 376) + 48 * v4 + 48))
    {
      v8 = _apfs_calloc_typed(1uLL, 0x558uLL, 0x10200402E7C0D0DuLL);
      *(v5 + 8 * v4) = v8;
      if (!v8)
      {
        v10 = 12;
        goto LABEL_11;
      }

      v9 = sub_100000810(a1, a2, v4, 0x10000u, v8);
      if (v9)
      {
        break;
      }
    }

    v4 = 1;
    if ((v7 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v9;
  v11 = *(v5 + 8 * v4);
  if (v11)
  {
    *(v11 + 280) |= 2uLL;
  }

LABEL_11:
  log_err("%s:%d: %s failed to initialize free extent cache for device %d, error %d\n", "spaceman_free_extent_cache_setup", 1556, (*(a1 + 384) + 212), v4, v10);
  return v10;
}

uint64_t sub_1000010D4(unint64_t a1, int a2, unint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v4 = a4;
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  if (!a4)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v8 = *(a1 + 280);
  if ((v8 & 2) == 0)
  {
    v9 = a1 + 136 + 48 * ((v8 & 4) == 0);
    v11 = *(v9 + 40);
    v10 = (v9 + 40);
    if (v11 < v4)
    {
      *v10 = v4;
    }

    v74 = -21846;
    v12 = sub_1000017F4(a1, v4, a3);
    if (v12 == 55)
    {
      v13 = a1 + 16 * (a2 ^ 1u);
      v14 = *(v13 + 296);
      if (v14)
      {
        if (v14 < a3 && v4 + a3 < *(v13 + 304))
        {
          sub_100001A14(a1, a3, v4);
          v15 = 0;
          *(v13 + 296) = a3;
          goto LABEL_27;
        }
      }
    }

    v16 = sub_100009B88(*a1, *(a1 + 8), a3, v4);
    if (v16)
    {
      v17 = v16;
      if (sub_10000762C(*a1))
      {
        log_err("%s:%d: %s dev %d free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_free_extent_cache_insert", 1648, (*(*a1 + 384) + 212), *(a1 + 88), a3, v4, v17);
      }

      goto LABEL_23;
    }

    v18 = (a1 + 1068);
    v19 = sub_100001A5C(a1, 0, a3, v4, a1 + 1068);
    if (v19)
    {
      goto LABEL_25;
    }

    v21 = *(v18 + 2 * *(a1 + 1165));
    v22 = (a1 + 1166);
    v23 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v23;
    *(a1 + 1262) = *(a1 + 1164);
    v24 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v24;
    v25 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v25;
    if (v21)
    {
      v73 = a1 + 136;
      v15 = 0;
    }

    else
    {
      v47 = sub_100003E6C(a1, a1 + 1166, -1);
      v15 = v47;
      if ((v47 & 0xFFFFFFFD) != 0)
      {
        goto LABEL_26;
      }

      v73 = a1 + 136;
      if (v47 == 2)
      {
        v15 = 2;
        goto LABEL_33;
      }
    }

    v26 = *(v22 + 2 * *(a1 + 1263));
    v27 = (*(a1 + 80) + 24 * *(v22 + 2 * *(a1 + 1263)));
    v28 = *v27 & 0xFFFFFFFFFFFFFLL;
    v29 = v27[1] & 0xFFFFFFFFFFFFFLL;
    if (v29 + v28 >= a3)
    {
      v4 = v4 + a3 - v28;
      v48 = *(a1 + 1246);
      *(a1 + 1132) = *(a1 + 1230);
      *(a1 + 1148) = v48;
      *(a1 + 1164) = *(a1 + 1262);
      v49 = *(a1 + 1182);
      *v18 = *v22;
      *(a1 + 1084) = v49;
      v50 = *(a1 + 1214);
      *(a1 + 1100) = *(a1 + 1198);
      *(a1 + 1116) = v50;
      if (v4 <= v29)
      {
        if (v15)
        {
          v15 = 1;
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v19 = sub_100001B88(a1, v28, v29, v4, v26);
      if (v19)
      {
LABEL_25:
        v15 = v19;
LABEL_26:
        log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_insert", 1881, (*(*a1 + 384) + 212), *(a1 + 88), v15);
        sub_100000A68(a1);
        goto LABEL_27;
      }

      v51 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
      v53 = *(v51 + 40);
      v52 = (v51 + 40);
      if (v53 < v4)
      {
        *v52 = v4;
      }

      sub_100001E8C(a1, v28, v4);
      v15 = 0;
LABEL_34:
      v30 = *(a1 + 1165);
      if (v30 < 0 || *(v18 + 2 * v30))
      {
        if (v15)
        {
          goto LABEL_26;
        }

        goto LABEL_37;
      }

      if (v12 == 55)
      {
        v54 = sub_100003E6C(a1, a1 + 1068, 1);
        if (v54)
        {
          v15 = v54;
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          goto LABEL_76;
        }

        v61 = *(v18 + 2 * *(a1 + 1165));
        v62 = (*(a1 + 80) + 24 * *(v18 + 2 * *(a1 + 1165)));
        v63 = *v62;
        v55 = *v62 & 0xFFFFFFFFFFFFFLL;
        if (v28 + v4 < v55)
        {
          v15 = 2;
LABEL_76:
          sub_100001A14(a1, v28, v4);
          v64 = a1 + 16 * (a2 ^ 1u);
          *(v64 + 296) = v28;
          *(v64 + 304) = v55;
          if (v15 != 2)
          {
            goto LABEL_26;
          }

LABEL_23:
          v15 = 0;
          goto LABEL_27;
        }

        v65 = v62[1] & 0xFFFFFFFFFFFFFLL;
        v66 = v55 - v28 + v65;
        if (v55 == *(a1 + 112))
        {
          *(a1 + 112) = v28;
        }

        *v62 = v63 & 0xFFF0000000000000 | v28;
        v19 = sub_100001B88(a1, v28, v65, v55 - v28 + v65, v61);
        if (!v19)
        {
          v67 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
          v69 = *(v67 + 40);
          v68 = (v67 + 40);
          if (v69 >= v66)
          {
            goto LABEL_23;
          }

          v15 = 0;
          *v68 = v66;
LABEL_27:
          if (*a1)
          {
            pthread_mutex_unlock((a1 + 16));
          }

          return v15;
        }
      }

      else
      {
        v74 = 0;
        v19 = sub_100001F08(a1, v28, v4, &v74, a1 + 1068);
        if (!v19)
        {
          v56 = sub_100002174(a1, 1u, v28, v4, &v74);
          if (v56)
          {
            v15 = v56;
            if (!sub_100002250(a1, v28, v4))
            {
              sub_1000022CC(a1, v74);
            }

            goto LABEL_26;
          }

          v70 = *(a1 + 120);
          if (v70 - 1 >= v4 || v4 == v70 && v28 > *(a1 + 112))
          {
            *(a1 + 112) = v28;
            *(a1 + 120) = v4;
          }

          if (v4 > *(a1 + 128))
          {
            *(a1 + 128) = v4;
          }

          v15 = sub_100001A5C(a1, 0, v28, v4, a1 + 1068);
          sub_100001E8C(a1, v28, v4);
          LOBYTE(v30) = *(a1 + 1165);
          if (v15)
          {
            goto LABEL_26;
          }

LABEL_37:
          v71 = *(v18 + 2 * v30);
          v31 = v28 + v4;
          v32 = v4;
          v72 = v28 + v4;
          while (1)
          {
            v33 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v33;
            *(a1 + 1262) = *(a1 + 1164);
            v34 = *(a1 + 1084);
            *v22 = *v18;
            *(a1 + 1182) = v34;
            v35 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v35;
            v36 = sub_100003E6C(a1, a1 + 1166, 1);
            if (v36)
            {
              break;
            }

            v37 = *(v22 + 2 * *(a1 + 1263));
            v38 = (*(a1 + 80) + 24 * *(v22 + 2 * *(a1 + 1263)));
            v39 = *v38 & 0xFFFFFFFFFFFFFLL;
            if (v31 < v39)
            {
              goto LABEL_67;
            }

            v40 = v28;
            v41 = v38[1] & 0xFFFFFFFFFFFFFLL;
            if (v41 + v39 >= v31)
            {
              v42 = v41 + v39 - v31;
            }

            else
            {
              v42 = 0;
            }

            sub_100002314(a1, a1 + 1166);
            v43 = sub_100001A5C(a1, 1u, v39, v41, a1 + 1068);
            if (v43)
            {
              v60 = v43;
LABEL_73:
              log_err("%s:%d: %s dev %d Failed to find successor node in length tree: %d\n", "spaceman_free_extent_cache_insert", 1852, (*(*a1 + 384) + 212), *(a1 + 88), v60);
              v15 = v60;
              goto LABEL_26;
            }

            if (!*(v18 + 2 * *(a1 + 1165)))
            {
              v60 = 2;
              goto LABEL_73;
            }

            v28 = v40;
            if (v39 == *(a1 + 112))
            {
              v44 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v44;
              *(a1 + 1262) = *(a1 + 1164);
              v45 = *(a1 + 1084);
              *v22 = *v18;
              *(a1 + 1182) = v45;
              v46 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v46;
              sub_10000260C(a1, a1 + 1166);
            }

            v32 += v42;
            sub_100002314(a1, a1 + 1068);
            sub_1000022CC(a1, v37);
            v15 = sub_100001A5C(a1, 0, v40, v4, a1 + 1068);
            v31 = v72;
            if (v15)
            {
              goto LABEL_26;
            }
          }

          v15 = v36;
          if (v36 != 2)
          {
            goto LABEL_26;
          }

LABEL_67:
          if (v32 <= v4)
          {
            goto LABEL_23;
          }

          v19 = sub_100001B88(a1, v28, v4, v32, v71);
          if (!v19)
          {
            v57 = v73 + 48 * ((*(a1 + 280) & 4) == 0);
            v59 = *(v57 + 40);
            v58 = (v57 + 40);
            if (v59 >= v32)
            {
              goto LABEL_23;
            }

            v15 = 0;
            *v58 = v32;
            goto LABEL_27;
          }

          goto LABEL_25;
        }
      }

      goto LABEL_25;
    }

LABEL_33:
    v28 = a3;
    goto LABEL_34;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_1000017F4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 92))
  {
    return 0;
  }

  v5 = *(a1 + 120);
  if (v5 > a2)
  {
    return 55;
  }

  v7 = *(a1 + 112);
  if (v5 == a2 && v7 < a3)
  {
    return 55;
  }

  if (v7)
  {
    v9 = (a1 + 480);
    if (sub_100001A5C(a1, 0, v7, v5, a1 + 480) || (v10 = 4 * *(a1 + 577), v11 = *(v9 + v10), !*(v9 + v10)))
    {
      v19 = *(a1 + 88);
      v16 = *(*a1 + 384) + 212;
      log_err("%s:%d: %s dev %d Failed to find smallest extent in paddr tree: %d\n");
    }

    else
    {
      sub_100002314(a1, a1 + 480);
      if (sub_100001A5C(a1, 1u, *(a1 + 112), *(a1 + 120), a1 + 480) || !*(v9 + 2 * *(a1 + 577)))
      {
        v17 = *(*a1 + 384) + 212;
        v20 = *(a1 + 88);
        log_err("%s:%d: %s dev %d Failed to find smallest extent %d in length tree: %d\n");
      }

      else
      {
        sub_100001A14(a1, *(a1 + 112), *(a1 + 120));
        v12 = *(a1 + 560);
        *(a1 + 642) = *(a1 + 544);
        *(a1 + 658) = v12;
        *(a1 + 674) = *(a1 + 576);
        v13 = *(a1 + 496);
        *(a1 + 578) = *v9;
        *(a1 + 594) = v13;
        v14 = *(a1 + 528);
        *(a1 + 610) = *(a1 + 512);
        *(a1 + 626) = v14;
        v15 = sub_100003E6C(a1, a1 + 578, 1);
        if (!v15)
        {
          *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a1 + 578 + 4 * *(a1 + 675))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
          goto LABEL_23;
        }

        if (v15 == 2)
        {
          *(a1 + 112) = 0;
          *(a1 + 120) = 0;
          *(a1 + 128) = 0;
LABEL_23:
          sub_100002314(a1, a1 + 480);
          sub_1000022CC(a1, v11);
          return 0;
        }

        v21 = *(a1 + 88);
        v18 = *(*a1 + 384) + 212;
        log_err("%s:%d: %s dev %d Failed to find next smallest extent in length tree: %d\n");
      }
    }

    return 3;
  }

  return 0;
}

uint64_t sub_100001A14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a1 + 48 * ((*(a1 + 280) & 4) == 0);
  if (*(v3 + 152) < a3)
  {
    *(v3 + 152) = a3;
  }

  v4.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v4.i64[1] = a3;
  *(v3 + 136) = vaddq_s64(*(v3 + 136), v4);
  return sub_100002F00(v3 + 136, a2, a3);
}

uint64_t sub_100001A5C(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  *(a5 + 96) = 0;
  *(a5 + 64) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 96) = a2;
  v10 = *(a1 + 2 * a2 + 104);
  *a5 = v10;
  if (v10)
  {
    *(a5 + 2) = *(*(a1 + 80) + 24 * v10 + 8 * (a2 != 0) + 7);
  }

  for (i = *(a5 + 4 * *(a5 + 97)); *(a5 + 4 * *(a5 + 97)); i = *(a5 + 4 * *(a5 + 97)))
  {
    v12 = (*(a1 + 80) + 24 * i);
    if (a2)
    {
      v13 = v12[1] & 0xFFFFFFFFFFFFFLL;
      v14 = v13 > a4;
      v15 = v13 < a4;
      if (v14)
      {
        v15 = -1;
      }

      if (!v15)
      {
        v16 = *v12 & 0xFFFFFFFFFFFFFLL;
        v14 = v16 < a3;
        v15 = v16 > a3;
        if (v14)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = *v12 & 0xFFFFFFFFFFFFFLL;
      v14 = v17 <= a3;
      v15 = v17 < a3;
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    if (!v15)
    {
      return 0;
    }

    if (v15 < 0)
    {
LABEL_17:
      v18 = a1;
      v19 = a5;
      v20 = -1;
      goto LABEL_18;
    }

    v18 = a1;
    v19 = a5;
    v20 = 1;
LABEL_18:
    result = sub_100003D78(v18, v19, v20);
    if (result)
    {
      return result;
    }
  }

  return 0;
}

uint64_t sub_100001B88(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unsigned int a5)
{
  v30 = a5;
  v10 = a1 + 676;
  v11 = *(a1 + 112);
  v12 = sub_100001A5C(a1, 1u, a2, a3, a1 + 676);
  if (v12)
  {
    return v12;
  }

  if (!*(v10 + 4 * *(a1 + 773)))
  {
    return 2;
  }

  if (*(v10 + 4 * *(a1 + 773)) != a5)
  {
    log_err("%s:%d: %s dev %d length tree search for 0x%llx 0x%llx returned node %d instead of %d\n", "spaceman_fxc_update_length", 1400, (*(*a1 + 384) + 212), *(a1 + 88), a2, a3, *(v10 + 4 * *(a1 + 773)), a5);
    return 22;
  }

  v15 = (a1 + 774);
  v16 = *(a1 + 96);
  v17 = *(a1 + 80) + 24 * a5;
  *(v17 + 8) = *(v17 + 8) & 0xFFF0000000000000 | a4 & 0xFFFFFFFFFFFFFLL;
  *(a1 + 96) = a4 - a3 + v16;
  if (a4 <= a3)
  {
    if (v11 != a2)
    {
      v22 = *(v10 + 80);
      *(a1 + 838) = *(v10 + 64);
      *(a1 + 854) = v22;
      *(a1 + 870) = *(v10 + 96);
      v23 = *(v10 + 16);
      *v15 = *v10;
      *(a1 + 790) = v23;
      v24 = *(v10 + 48);
      *(a1 + 806) = *(v10 + 32);
      *(a1 + 822) = v24;
      v25 = sub_100003E6C(a1, a1 + 774, -1);
      if (v25)
      {
        v13 = v25;
        if (v25 == 2)
        {
          log_err("%s:%d: %s dev %d Failed to find length tree predecessor for node that wasn't the smallest\n", "spaceman_fxc_update_length", 1463, (*(*a1 + 384) + 212), *(a1 + 88));
        }

        return v13;
      }

      if ((*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871)) + 8) & 0xFFFFFFFFFFFFFuLL) >= a4)
      {
        v28 = *(a1 + 120);
        if (v28 > a4 || v28 == a4 && *(a1 + 112) < a2)
        {
          *(a1 + 112) = a2;
          *(a1 + 120) = a4;
        }

        goto LABEL_37;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v18 = *(v10 + 80);
    *(a1 + 838) = *(v10 + 64);
    *(a1 + 854) = v18;
    *(a1 + 870) = *(v10 + 96);
    v19 = *(v10 + 16);
    *v15 = *v10;
    *(a1 + 790) = v19;
    v20 = *(v10 + 48);
    *(a1 + 806) = *(v10 + 32);
    *(a1 + 822) = v20;
    v21 = sub_100003E6C(a1, a1 + 774, 1);
    if (v21)
    {
      v13 = v21;
      if (v21 != 2)
      {
        return v13;
      }

      if (v11 == a2)
      {
        *(a1 + 120) = a4;
      }

      if (*(a1 + 128) >= a4)
      {
        return 0;
      }

      v13 = 0;
LABEL_39:
      *(a1 + 128) = a4;
      return v13;
    }

    v26 = vandq_s8(*(*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 871))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
    if (v26.i64[1] < a4 || (v26.i64[1] == a4 ? (v27 = v26.i64[0] <= a2) : (v27 = 1), !v27))
    {
      if (v11 == a2)
      {
        *(a1 + 112) = v26;
      }

LABEL_37:
      sub_100002314(a1, v10);
      v13 = sub_100002174(a1, 1u, a2, a4, &v30);
      goto LABEL_38;
    }

    if (v11 != a2)
    {
LABEL_32:
      v13 = 0;
      goto LABEL_38;
    }
  }

  v13 = 0;
  *(a1 + 120) = a4;
LABEL_38:
  v29 = *(a1 + 128);
  if (v29 < a4)
  {
    goto LABEL_39;
  }

  if (v29 == a3)
  {
    sub_100002B80(a1);
  }

  return v13;
}

unint64_t sub_100001E8C(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = result + 296;
  v6 = a2 - 1;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = (v5 + 16 * v4);
    if (*v9)
    {
      result = calc_overlap_range(v6, a3 + 2, *v9, v9[1] - *v9, 0);
      if (result)
      {
        *v9 = 0;
      }
    }

    v7 = 0;
    v4 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t sub_100001F08(uint64_t a1, uint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5)
{
  v6 = *(a5 + 96);
  if (a4)
  {
    LOWORD(v7) = *a4;
    if (*a4)
    {
      v8 = *(a1 + 80);
      v9 = v8 + 24 * *a4;
      *(v9 + 4 * v6 + 16) = 0;
      *(v9 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
      goto LABEL_10;
    }
  }

  v7 = *(a1 + 92);
  if (v7 <= *(a1 + 88) >> 8)
  {
    if (!*(a1 + 92))
    {
      return 12;
    }

    v11 = (*(a1 + 80) + 24 * *(a1 + 92));
    *(a1 + 92) = *v11;
    ++*(a1 + 94);
    *(a1 + 96) += a3;
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
    if (a4)
    {
      *a4 = v7;
    }

    v8 = *(a1 + 80);
    v12 = (v8 + 24 * v7);
    *v12 = a2;
    v12[1] = a3;
LABEL_10:
    v10 = *(a5 + 97);
    v13 = (a5 + 4 * v10);
    *v13 = v7;
    v13[1] = 0;
    if (!v10)
    {
      *(a1 + 2 * v6 + 104) = v7;
      return v10;
    }

    v14 = v10;
    *(v8 + 24 * *(a5 + 4 * (v10 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v10 - 1) + 3) + 1 + (((*(a5 + 4 * (v10 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16) = v7;
    v15 = v10;
    if ((v10 & 0x80000000) == 0)
    {
      while (!*(a5 + 4 * v15 + 2))
      {
        v16 = v15--;
        if (v16 <= 0)
        {
          v15 = -1;
          break;
        }
      }
    }

    v17 = (v15 + 1);
    if (v17 < v14)
    {
      LOBYTE(v18) = v15 + 1;
      do
      {
        v19 = (a5 + 4 * v18);
        v20 = *(v19 + 3);
        *(v8 + 8 * (v6 != 0) + 24 * *v19 + 7) = v20;
        *(v19 + 2) = v20;
        v18 = (v18 + 1);
      }

      while (v18 < v14);
    }

    if ((v15 & 0x80) == 0)
    {
      v21 = (a5 + 4 * v15);
      v22 = *(v21 + 3);
      if (!(*(v21 + 2) + v22))
      {
        v10 = 0;
        *(v8 + 24 * *v21 + 8 * (v6 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
        return v10;
      }

      if (*(v21 + 2) == *(v21 + 3))
      {
        if (v15)
        {
          v23 = (v8 + 24 * *(a5 + 4 * (v15 - 1)) + 4 * v6 + 2 * ((*(a5 + 4 * (v15 - 1) + 3) + 1 + (((*(a5 + 4 * (v15 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        else
        {
          v23 = (a1 + 2 * v6 + 104);
        }

        v24 = -v22;
        v25 = (a5 + 4 * v17);
        v26 = *(v25 + 2);
        if (v26 == *(v21 + 3))
        {
          sub_100003F48(a1, v6, v24, *v21, v23);
        }

        else if (v26 == v24)
        {
          sub_100004028(a1, v6, v22, *v21, *v25, v23);
        }
      }
    }

    return 0;
  }

  return 22;
}

uint64_t sub_100002174(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5)
{
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  v10 = a1 + 872;
  if (!a5 || !*a5)
  {
    sub_1000017F4(a1, a4, a3);
  }

  result = sub_100001A5C(a1, a2, a3, a4, v10);
  if (!result)
  {
    if (*(v10 + 4 * *(a1 + 969)))
    {
      return 17;
    }

    else
    {

      return sub_100001F08(a1, a3, a4, a5, v10);
    }
  }

  return result;
}

uint64_t sub_100002250(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  v4 = a1 + 970;
  result = sub_100001A5C(a1, 0, a2, a3, a1 + 970);
  if (!result)
  {
    if (*(v4 + 4 * *(a1 + 1067)))
    {
      sub_100002314(a1, v4);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_1000022CC(uint64_t result, unsigned int a2)
{
  if (a2 <= *(result + 88) >> 8)
  {
    v2 = (*(result + 80) + 24 * a2);
    v3 = v2[1] & 0xFFFFFFFFFFFFFLL;
    --*(result + 94);
    *(result + 96) -= v3;
    *v2 = *(result + 92);
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_100002314(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 96);
  v4 = *(a2 + 97);
  v5 = (a2 + 4 * *(a2 + 97));
  v6 = *(a1 + 80);
  result = v6 + 24 * *v5;
  v8 = result + 4 * v3;
  v9 = *(v8 + 18);
  v10 = *(a2 + 97) - 1;
  if (v4 < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v11 = (a2 + 4 * v10);
    v12 = *v11;
    v13 = ((*(v11 + 3) + 1 + (((*(v11 + 3) + 1) & 0x8000u) >> 15)) >> 1);
  }

  v14 = 8 * (*(a2 + 96) != 0);
  v15 = *(v8 + 16);
  v16 = a1 + 2 * v3;
  if (v9)
  {
    v17 = *(result + 8 * (*(a2 + 96) != 0));
    result = 24;
    v18 = v6 + 24 * v9 + 4 * v3;
    v21 = *(v18 + 16);
    v20 = (v18 + 16);
    v19 = v21;
    if (v21)
    {
      *(a2 + 4 * *(a2 + 97) + 3) = 1;
      v22 = v4 + 1;
      *(a2 + 97) = v4 + 1;
      v23 = a2 + 4 * (v4 + 1);
      *v23 = v9;
      *(v23 + 3) = 0;
      v24 = v9;
      do
      {
        v10 = v22;
        v25 = v24;
        v24 = v19;
        *(a2 + 4 * v22++ + 3) = -1;
        v26 = a2 + 4 * v22;
        *v26 = v24;
        *(v26 + 3) = 0;
        v27 = v6 + 24 * v24 + 4 * v3;
        v29 = *(v27 + 16);
        v28 = (v27 + 16);
        v19 = v29;
      }

      while (v29);
      result = v24;
      v30 = v6 + 24 * v24;
      v31 = v30 + 4 * v3;
      *(v6 + 24 * v25 + 4 * v3 + 16) = *(v31 + 18);
      *(v31 + 18) = v9;
      *v28 = v15;
      *(v30 + v14 + 7) = HIBYTE(v17);
      v32 = v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16;
      if (v4)
      {
        v33 = v32;
      }

      else
      {
        v33 = (v16 + 104);
      }

      *v33 = result;
      *(v5 + 3) = 1;
      *v5 = result;
      *(a2 + 97) = v10;
      if ((v10 & 0x80) != 0)
      {
        return result;
      }
    }

    else
    {
      *v20 = v15;
      v35 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
      if (!v4)
      {
        v35 = (v16 + 104);
      }

      *v35 = v9;
      *(v6 + 24 * v9 + v14 + 7) = HIBYTE(v17);
      *(v5 + 3) = 1;
      *v5 = v9;
      v10 = v4;
      if ((v4 & 0x80) != 0)
      {
        return result;
      }
    }
  }

  else
  {
    if (*(a2 + 97))
    {
      v34 = (v6 + 24 * v12 + 4 * v3 + 2 * v13 + 16);
    }

    else
    {
      v34 = (v16 + 104);
    }

    *v34 = v15;
    *(a2 + 97) = v10;
    if ((v10 & 0x80) != 0)
    {
      return result;
    }
  }

  v36 = (v16 + 104);
  v37 = v10 + 1;
  v38 = (a2 + 4 * v10);
  do
  {
    v39 = *v38;
    v40 = *(a1 + 80);
    v41 = v40 + 24 * *v38;
    v42 = *(v41 + v14);
    v43 = *(v38 + 3);
    v44 = (HIBYTE(v42) - *(v38 + 3));
    if (v44 < 0)
    {
      v44 = -v44;
    }

    if (v44 > 1)
    {
      v45 = v36;
      if (v37 != 1)
      {
        v45 = (v40 + 24 * *(v38 - 2) + 4 * v3 + 2 * ((*(v38 - 1) + 1 + (((*(v38 - 1) + 1) & 0x8000u) >> 15)) >> 1) + 16);
      }

      v46 = v40 + 24 * *v38 + 4 * v3 + 2 * ((-v43 + 1 + (((-v43 + 1) & 0x8000u) >> 15)) >> 1);
      v47 = HIBYTE(*(v40 + 24 * *(v46 + 16) + v14));
      if (v47 == v43)
      {
        result = sub_100004028(a1, v3, -v43, v39, *(v46 + 16), v45);
      }

      else
      {
        result = sub_100003F48(a1, v3, v43, v39, v45);
        if (!v47)
        {
          return result;
        }
      }
    }

    else
    {
      *(v41 + v14) = v42 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v42) - v43) << 56);
      if (!HIBYTE(v42))
      {
        return result;
      }
    }

    v38 -= 2;
  }

  while (v37-- > 1);
  return result;
}

const char *sub_10000260C(uint64_t a1, uint64_t a2)
{
  result = sub_100003E6C(a1, a2, 1);
  if (result == 2)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else if (result)
  {
    return log_err("%s:%d: %s dev %d Failed to find successor node from length tree while updating smallest: %d\n", "spaceman_fxc_update_smallest_with_successor", 1520, (*(*a1 + 384) + 212), *(a1 + 88), result);
  }

  else
  {
    *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a2 + 4 * *(a2 + 97))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
  }

  return result;
}

uint64_t sub_1000026B8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (!a1)
  {
    return 22;
  }

  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  if (!a3)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  if ((*(a1 + 280) & 2) == 0)
  {
    v6 = (a1 + 1068);
    v35 = -21846;
    v7 = sub_100001A5C(a1, 0, a2, a3, a1 + 1068);
    if (v7)
    {
LABEL_8:
      v8 = v7;
LABEL_9:
      log_err("%s:%d: %s dev %d Error %d, reinitializing\n", "spaceman_free_extent_cache_remove", 2076, (*(*a1 + 384) + 212), *(a1 + 88), v8);
      sub_100000A68(a1);
      goto LABEL_10;
    }

    v10 = (a1 + 1166);
    v11 = a3 + a2;
    v12 = 4 * *(a1 + 1165);
    v13 = *(v6 + v12);
    if (*(v6 + v12))
    {
      goto LABEL_20;
    }

    v20 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v20;
    *(a1 + 1262) = *(a1 + 1164);
    v21 = *(a1 + 1084);
    *v10 = *v6;
    *(a1 + 1182) = v21;
    v22 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v22;
    v23 = sub_100003E6C(a1, a1 + 1166, -1);
    if (v23 == 2)
    {
      goto LABEL_43;
    }

    v8 = v23;
    if (v23)
    {
      goto LABEL_9;
    }

    v24 = (*(a1 + 80) + 24 * *(v10 + 2 * *(a1 + 1263)));
    v25 = v24[1] & 0xFFFFFFFFFFFFFLL;
    v26 = v25 + (*v24 & 0xFFFFFFFFFFFFFLL);
    if (v26 <= a2)
    {
      goto LABEL_43;
    }

    v7 = sub_100001B88(a1, *v24 & 0xFFFFFFFFFFFFFLL, v25, a2 - (*v24 & 0xFFFFFFFFFFFFFLL), *(v10 + 2 * *(a1 + 1263)));
    if (v7)
    {
      goto LABEL_8;
    }

    v27 = v26 - v11;
    if (v26 <= v11)
    {
LABEL_43:
      v32 = sub_100003E6C(a1, a1 + 1068, 1);
      if (v32 != 2)
      {
        v8 = v32;
        if (v32)
        {
          goto LABEL_9;
        }

        v13 = *(v6 + 2 * *(a1 + 1165));
LABEL_20:
        v14 = (*(a1 + 80) + 24 * v13);
        v15 = *v14;
        v16 = *v14 & 0xFFFFFFFFFFFFFLL;
        v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
        v18 = v17 + v16;
        if (v11 >= v17 + v16)
        {
          while (1)
          {
            sub_100002314(a1, a1 + 1068);
            v28 = sub_100001A5C(a1, 1u, v16, v17, a1 + 1068);
            if (v28)
            {
              v33 = v28;
              log_err("%s:%d: %s dev %d Failed to delete covered node from length tree: %d\n", "spaceman_free_extent_cache_remove", 2016, (*(*a1 + 384) + 212), *(a1 + 88), v28);
              v8 = v33;
              goto LABEL_9;
            }

            if (v16 == *(a1 + 112))
            {
              v29 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v29;
              *(a1 + 1262) = *(a1 + 1164);
              v30 = *(a1 + 1084);
              *v10 = *v6;
              *(a1 + 1182) = v30;
              v31 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v31;
              sub_10000260C(a1, a1 + 1166);
            }

            sub_100002314(a1, a1 + 1068);
            sub_1000022CC(a1, v13);
            if (v17 == *(a1 + 128))
            {
              sub_100002B80(a1);
            }

            v8 = sub_100001A5C(a1, 0, v16, v17, a1 + 1068);
            if (!v8)
            {
              v8 = sub_100003E6C(a1, a1 + 1068, 1);
            }

            if (v8)
            {
              break;
            }

            v13 = *(v6 + 2 * *(a1 + 1165));
            v14 = (*(a1 + 80) + 24 * *(v6 + 2 * *(a1 + 1165)));
            v15 = *v14;
            v16 = *v14 & 0xFFFFFFFFFFFFFLL;
            v17 = v14[1] & 0xFFFFFFFFFFFFFLL;
            v18 = v17 + v16;
            if (v11 < v17 + v16)
            {
              goto LABEL_21;
            }
          }

          if (v8 == 2)
          {
            goto LABEL_47;
          }

          log_err("%s:%d: %s dev %d Failed to get next extent: %d\n", "spaceman_free_extent_cache_remove", 2047, (*(*a1 + 384) + 212), *(a1 + 88), v8);
          goto LABEL_9;
        }

LABEL_21:
        if (v11 > v16)
        {
          if (v16 == *(a1 + 112))
          {
            *(a1 + 112) = v11;
          }

          *v14 = v15 & 0xFFF0000000000000 | v11 & 0xFFFFFFFFFFFFFLL;
          v19 = sub_100001B88(a1, v11, v17, v18 - v11, v13);
          v8 = v19;
          if (!v19)
          {
            goto LABEL_10;
          }

          log_err("%s:%d: %s dev %d Failed to update partially-covered node in length tree: %d\n", "spaceman_free_extent_cache_remove", 2070, (*(*a1 + 384) + 212), *(a1 + 88), v19);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v35 = 0;
      if (sub_100002174(a1, 0, v11, v26 - v11, &v35))
      {
LABEL_32:
        sub_100001A14(a1, v11, v26 - v11);
        goto LABEL_47;
      }

      if (sub_100002174(a1, 1u, v11, v26 - v11, &v35))
      {
        if (!sub_100002250(a1, v11, v26 - v11))
        {
          sub_1000022CC(a1, v35);
        }

        goto LABEL_32;
      }

      v34 = *(a1 + 120);
      if (v27 < v34 || v27 == v34 && v11 > *(a1 + 112))
      {
        *(a1 + 112) = v11;
        *(a1 + 120) = v27;
      }

      if (v27 > *(a1 + 128))
      {
        v8 = 0;
        *(a1 + 128) = v27;
LABEL_10:
        if (*a1)
        {
          pthread_mutex_unlock((a1 + 16));
        }

        return v8;
      }
    }

LABEL_47:
    v8 = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_100002B80(uint64_t a1)
{
  v2 = a1 + 676;
  result = sub_100002BE8(a1, a1 + 676, 1u);
  if (result == 2)
  {
    v4 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v4 = *(*(a1 + 80) + 24 * *(v2 + 4 * *(a1 + 773)) + 8) & 0xFFFFFFFFFFFFFLL;
  }

  *(a1 + 128) = v4;
  return result;
}

uint64_t sub_100002BE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = a3;
  v5 = *(a1 + 2 * a3 + 104);
  *a2 = v5;
  if (v5)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v5 + 8 * (a3 != 0) + 7);
  }

  while (1)
  {
    v6 = *(a2 + 97);
    if (!*(a2 + 4 * v6))
    {
      break;
    }

    result = sub_100003D78(a1, a2, 1);
    if (result)
    {
      return result;
    }
  }

  v8 = v6 - 1;
  *(a2 + 97) = v8;
  return (v8 >> 6) & 2;
}

uint64_t sub_100002C8C(uint64_t a1, uint64_t *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (*a1)
  {
    pthread_mutex_lock((a1 + 16));
  }

  v4 = *(a1 + 280);
  v5 = (v4 & 6) == 0;
  if ((v4 & 6) == 0)
  {
    *(a1 + 280) = v4 | 4;
    v6 = *(a1 + 288);
    if (v6)
    {
      if (a2)
      {
LABEL_9:
        *a2 = v6;
        goto LABEL_12;
      }
    }

    else
    {
      v6 = 1;
      *(a1 + 288) = 1;
      if (a2)
      {
        goto LABEL_9;
      }
    }

    *(a1 + 280) = v4 | 0xC;
LABEL_12:
    if (!*a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

  if (*a1)
  {
LABEL_13:
    pthread_mutex_unlock((a1 + 16));
    return v5;
  }

  return 0;
}

uint64_t sub_100002D38(uint64_t result, unint64_t a2, char a3)
{
  if (!result)
  {
    return result;
  }

  v5 = result;
  v6 = *(result + 8);
  if (*result)
  {
    result = pthread_mutex_lock((result + 16));
  }

  v7 = *(v5 + 280);
  if ((v7 & 6) != 0)
  {
    if (a3)
    {
      *(v5 + 184) = *(v5 + 136);
      *(v5 + 200) = *(v5 + 152);
      *(v5 + 216) = *(v5 + 168);
      *(v5 + 280) = v7 & 0xFFFFFFFFFFFFFFF3;
      *(v5 + 136) = 0u;
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      goto LABEL_19;
    }

    if (*(*(v6 + 376) + 48 * *(v5 + 88) + 48) > a2 && ((v8 = *(v5 + 288), (v7 & 8) != 0) || v8 <= a2))
    {
      v9 = 0;
      if (v8 < a2)
      {
        *(v5 + 288) = a2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = v7 & 0xFFFFFFFFFFFFFFF3;
    v12 = (v5 + 136);
    v11 = *(v5 + 136);
    *(v5 + 280) = v10;
    if (v11)
    {
      v13 = *(v5 + 184) + v11;
      v14 = *(v5 + 200);
      v15 = *(v5 + 152);
      v16 = *(v5 + 192) + *(v5 + 144);
      *(v5 + 184) = v13;
      *(v5 + 192) = v16;
      if (v14 < v15)
      {
        *(v5 + 200) = v15;
      }

      v17 = *(v5 + 176);
      if (*(v5 + 224) < v17)
      {
        *(v5 + 224) = v17;
      }

      result = sub_100002F00(v5 + 184, *(v5 + 160), *(v5 + 168));
      *(v5 + 152) = 0u;
      *(v5 + 168) = 0u;
      *v12 = 0u;
      if ((v9 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }

    *(v5 + 152) = 0u;
    *(v5 + 168) = 0u;
    *v12 = 0u;
    if (v9)
    {
LABEL_19:
      v18 = *(v5 + 336) + 1;
      *(v5 + 328) = 0;
      *(v5 + 336) = v18;
      *(v5 + 232) = *(v5 + 184);
      *(v5 + 248) = *(v5 + 200);
      *(v5 + 264) = *(v5 + 216);
      *(v5 + 184) = 0u;
      *(v5 + 200) = 0u;
      *(v5 + 216) = 0u;
      *(v5 + 288) = 0;
      v19 = *(v5 + 280);
      if ((v19 & 1) == 0)
      {
        *(v5 + 280) = v19 | 1;
      }
    }
  }

LABEL_21:
  if (*v5)
  {

    return pthread_mutex_unlock((v5 + 16));
  }

  return result;
}

uint64_t sub_100002F00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3)
  {
    if (v3 <= a2)
    {
      v4 = *(result + 32);
    }

    else
    {
      v4 = v3 - a2 + *(result + 32);
      *(result + 24) = a2;
      *(result + 32) = v4;
      v3 = a2;
    }

    v5 = v4 + v3;
    if (a3 + a2 > v5)
    {
      *(result + 32) = v4 + a3 + a2 - v5;
    }
  }

  else
  {
    *(result + 24) = a2;
    *(result + 32) = a3;
  }

  return result;
}

unint64_t sub_100002F50(__int16 a1, unint64_t a2, unint64_t a3)
{
  if ((a1 & 0x1000) == 0)
  {
    return a2;
  }

  if (a3 <= 1)
  {
    return a3 + 1;
  }

  if (a3 + (a3 >> 1) >= a2)
  {
    return a2;
  }

  else
  {
    return a3 + (a3 >> 1);
  }
}

uint64_t sub_100002F78(uint64_t a1, __int16 a2, int64_t *a3, unint64_t *a4)
{
  v4 = *a3;
  v5 = *a4;
  *a3 = 0;
  *a4 = 0;
  if (!a1)
  {
    return 6;
  }

  ++*(a1 + 344);
  if (!v5)
  {
    ++*(a1 + 352);
    return 22;
  }

  v10 = *(*a1 + 376);
  v11 = *(v10 + 1248);
  if (v11 && !*(a1 + 88))
  {
    v13 = *(v10 + 1240);
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  v75 = 0;
  v76[0] = 0;
  v71 = 0;
  v72 = 0;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 280) & 2) != 0)
  {
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 16));
    }

    return 6;
  }

  v73 = 0xAAAAAAAAAAAAAAAALL;
  v74 = 0xAAAAAAAAAAAAAAAALL;
  v15 = (a1 + 1068);
  v69 = 0xAAAAAAAAAAAAAAAALL;
  v70 = 0xAAAAAAAAAAAAAAAALL;
  v16 = sub_100001A5C(a1, 1u, v4, v5, a1 + 1068);
  if (!v16)
  {
    if (*(v15 + 2 * *(a1 + 1165)))
    {
      v17 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
      v18 = *v17 & 0xFFFFFFFFFFFFFLL;
      v74 = v18;
      v19 = v17[1];
      v20 = v19 & 0xFFFFFFFFFFFFFLL;
      v70 = v19 & 0xFFFFFFFFFFFFFLL;
      if (v12)
      {
        spaceman_clip_extent(v18, v19 & 0xFFFFFFFFFFFFFLL, v13, v11, a2, v4, &v74, &v70);
        v20 = v70;
        v18 = v74;
      }

      if (v20)
      {
        v21 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v18, v20, a2, v4, &v73, &v69);
        v18 = v74;
        v22 = v70;
        if (v21)
        {
          v75 = v74;
          v71 = v70;
          v18 = v73;
          v74 = v73;
          v22 = v69;
          v70 = v69;
        }
      }

      else
      {
        v22 = 0;
      }

      v76[0] = v18;
      v72 = v22;
      if (v22 == v5)
      {
        goto LABEL_21;
      }
    }

    v27 = v12;
    v28 = v13;
    v29 = (a1 + 1166);
    v30 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v30;
    *(a1 + 1262) = *(a1 + 1164);
    v31 = *(a1 + 1084);
    *(a1 + 1166) = *v15;
    *(a1 + 1182) = v31;
    v32 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v32;
    v68 = v27;
    v16 = sub_1000036B0(a1, a1 + 1166, v27, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x301u);
    if (!v16)
    {
      v33 = *(a1 + 1148);
      *(a1 + 1230) = *(a1 + 1132);
      *(a1 + 1246) = v33;
      *(a1 + 1262) = *(a1 + 1164);
      v34 = *(a1 + 1084);
      *v29 = *v15;
      *(a1 + 1182) = v34;
      v35 = *(a1 + 1116);
      *(a1 + 1198) = *(a1 + 1100);
      *(a1 + 1214) = v35;
      v16 = sub_1000036B0(a1, a1 + 1166, v68, v28, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v76, &v72, &v75, &v71, 0x502u);
      if (!v16)
      {
        v67 = v28;
        v39 = v71;
        if (v72 >= v5)
        {
          v41 = v71;
          v39 = v72;
          v40 = v68;
        }

        else
        {
          v40 = v68;
          if (v71 <= v72)
          {
            v41 = v71;
            v39 = v72;
          }

          else
          {
            v41 = 0;
            v42 = v75;
            v75 = 0;
            v76[0] = v42;
            v71 = 0;
            v72 = v39;
            a2 &= ~0x2000u;
          }
        }

        if (v39 < v5 && (a2 & 0x1000) == 0)
        {
          goto LABEL_21;
        }

        if (v4 <= v76[0])
        {
          v45 = v76[0] - v4;
        }

        else
        {
          if (v4 - v76[0] < v39)
          {
            goto LABEL_21;
          }

          v45 = v4 - (v39 + v76[0]);
        }

        if (!v45)
        {
          goto LABEL_21;
        }

        v61 = v41;
        v64 = v76[0];
        v65 = v39;
        v66 = v45;
        v16 = sub_100001A5C(a1, 0, v4, v5, a1 + 1068);
        if (!v16)
        {
          if (*(v15 + 2 * *(a1 + 1165)))
          {
            v46 = (*(a1 + 80) + 24 * *(v15 + 2 * *(a1 + 1165)));
            v47 = *v46 & 0xFFFFFFFFFFFFFLL;
            v74 = v47;
            v48 = v46[1];
            v49 = v48 & 0xFFFFFFFFFFFFFLL;
            v70 = v48 & 0xFFFFFFFFFFFFFLL;
            if (v40)
            {
              spaceman_clip_extent(v47, v48 & 0xFFFFFFFFFFFFFLL, v67, v11, a2, v4, &v74, &v70);
              v49 = v70;
              v47 = v74;
            }

            if (v49)
            {
              v50 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v47, v49, a2, v4, &v73, &v69);
              v47 = v74;
              v51 = v70;
              if (v50)
              {
                v52 = v61;
                v59 = v74;
                v62 = v70;
                if (sub_100003990(v4, v5, v75, v52, v74, v70, a2))
                {
                  v75 = v59;
                  v71 = v62;
                }

                v47 = v73;
                v74 = v73;
                v51 = v69;
                v70 = v69;
              }
            }

            else
            {
              v51 = 0;
            }

            v60 = v47;
            v63 = v51;
            if (sub_100003990(v4, v5, v64, v65, v47, v51, a2))
            {
              v76[0] = v60;
              v72 = v63;
              goto LABEL_21;
            }
          }

          v53 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v53;
          *(a1 + 1262) = *(a1 + 1164);
          v54 = *(a1 + 1084);
          *v29 = *v15;
          *(a1 + 1182) = v54;
          v55 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v55;
          v16 = sub_1000036B0(a1, a1 + 1166, v40, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1802u);
          if (!v16)
          {
            v56 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v56;
            *(a1 + 1262) = *(a1 + 1164);
            v57 = *(a1 + 1084);
            *v29 = *v15;
            *(a1 + 1182) = v57;
            v58 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v58;
            v16 = sub_1000036B0(a1, a1 + 1166, v68, v67, v11, a2, v4, v5, v66, v76, &v72, &v75, &v71, 0x1801u);
            if (!v16)
            {
LABEL_21:
              if (*a1)
              {
                pthread_mutex_unlock((a1 + 16));
              }

              v23 = v72;
              if (!v72 && v71)
              {
                v76[0] = v75;
                v23 = v71;
              }

              v24 = v23 - v5;
              if (v23 > v5)
              {
                if ((a2 & 0x4000) != 0 && v4 > v76[0] && v4 < v24 + v76[0])
                {
                  v76[0] = v4;
                }

                v25.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v25.i64[1] = v23 - v5;
                *(a1 + 360) = vaddq_s64(*(a1 + 360), v25);
                if (v24 == 1)
                {
                  result = 0;
                  v26 = 400;
                }

                else if (v24 >= 8)
                {
                  result = 0;
                  v43 = v24 >= 0x10;
                  v26 = 376;
                  if (!v43)
                  {
                    v26 = 384;
                  }
                }

                else
                {
                  result = 0;
                  v26 = 392;
                }

                goto LABEL_60;
              }

              if (v23 >= v5)
              {
                result = 0;
                v26 = 408;
              }

              else
              {
                if ((a2 & 0x1000) != 0)
                {
                  v38 = 0;
                }

                else
                {
                  v38 = 28;
                }

                if (sub_100003A5C(a1, a2, v5, v23))
                {
                  result = 3;
                }

                else
                {
                  result = v38;
                }

                if ((a2 & 0x1000) == 0)
                {
                  v5 = 0;
                  v76[0] = 0;
LABEL_83:
                  v44 = 424;
                  goto LABEL_61;
                }

                if (!v23)
                {
                  v5 = 0;
                  if (result)
                  {
                    result = result;
                  }

                  else
                  {
                    result = 28;
                  }

                  goto LABEL_83;
                }

                v26 = 416;
              }

              v5 = v23;
LABEL_60:
              ++*(a1 + v26);
              v44 = 352;
LABEL_61:
              ++*(a1 + v44);
              *a3 = v76[0];
              *a4 = v5;
              return result;
            }
          }
        }
      }
    }
  }

  v36 = *(a1 + 88);
  v37 = "main";
  if (v36 == 1)
  {
    v37 = "tier2";
  }

  log_err("%s:%d: %s dev %d Error searching %s free extent cache: %d; Reinitializing.\n", "spaceman_free_extent_cache_search", 3031, (*(*a1 + 384) + 212), v36, v37, v16);
  sub_100000A68(a1);
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 3;
}

uint64_t sub_1000036B0(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, __int16 a6, int64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, unint64_t *a13, unsigned int a14)
{
  if ((a14 & 3) == 0 || (a14 & 0x1F00) == 0)
  {
    return 22;
  }

  v19 = a2;
  v20 = a1;
  memset(v44, 170, 32);
  if (a14)
  {
    v21 = 1;
  }

  else
  {
    v21 = -1;
  }

  v15 = sub_100003E6C(a1, a2, v21);
  if ((v15 & 0xFFFFFFFD) == 0)
  {
    v36 = a5;
    v23 = 0;
    v39 = v21;
    v41 = a6;
    v37 = v20;
    v38 = v19;
    do
    {
      if (v15 == 2)
      {
        return 0;
      }

      v24 = (*(v20 + 80) + 24 * *(v19 + 4 * *(v19 + 97)));
      v25 = *v24 & 0xFFFFFFFFFFFFFLL;
      v44[3] = v25;
      v26 = v24[1] & 0xFFFFFFFFFFFFFLL;
      v44[1] = v26;
      if (a3)
      {
        spaceman_clip_extent(v25, v26, a4, v36, a6, a7, &v44[3], &v44[1]);
        v27 = v44[1];
        if (!v44[1])
        {
          goto LABEL_42;
        }
      }

      else
      {
        v27 = v26;
        if (!v26)
        {
LABEL_42:
          if ((a14 & 0x1000) != 0 && v23 > 0x7E)
          {
            return v15;
          }

          goto LABEL_47;
        }
      }

      v28 = spaceman_clip_extent_to_zones(*v20, *(v20 + 8), *(v20 + 88), v44[3], v27, a6, a7, &v44[2], v44);
      v29 = v44[3];
      v30 = v44[1];
      if (v28)
      {
        if (sub_100003990(a7, a8, *a12, *a13, v44[3], v44[1], a6))
        {
          *a12 = v29;
          *a13 = v30;
        }

        v29 = v44[2];
        v44[3] = v44[2];
        v30 = v44[0];
        v44[1] = v44[0];
      }

      v31 = *a11;
      if (sub_100003990(a7, a8, *a10, *a11, v29, v30, v41))
      {
        *a10 = v29;
        *a11 = v30;
        v31 = v30;
        if ((a14 & 0x800) != 0)
        {
          return v15;
        }
      }

      v32 = v26 == a8 && v30 == v26;
      v33 = v32;
      if ((*&v33 & ((a14 & 0x100) >> 8) & 1) != 0 || ((v31 > a8) & (a14 >> 9)) != 0)
      {
        return v15;
      }

      if ((a14 & 0x400) != 0 && v26 < a8 && v26 <= v31)
      {
        return v15;
      }

      a6 = v41;
      v20 = v37;
      v19 = v38;
      if ((a14 & 0x1000) != 0)
      {
        if (v23 > 0x7E)
        {
          return v15;
        }

        v35 = v29 - a7;
        if (v29 < a7)
        {
          if (a7 - v29 >= v30)
          {
            v35 = a7 - (v29 + v30);
          }

          else
          {
            v35 = 0;
          }
        }

        if (v35 >= a9)
        {
          return v15;
        }
      }

LABEL_47:
      v15 = sub_100003E6C(v20, v19, v39);
      ++v23;
    }

    while ((v15 & 0xFFFFFFFD) == 0);
  }

  return v15;
}

BOOL sub_100003990(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, __int16 a7)
{
  if (!a6)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  if (a4 >= a2)
  {
    if (a4 == a2)
    {
      if (a6 < a4)
      {
        return 0;
      }

      if (a6 == a4)
      {
LABEL_18:
        if (a1 > a3)
        {
          if (a1 - a3 >= a4)
          {
            v7 = a3 + a4;
            goto LABEL_23;
          }

LABEL_20:
          v8 = 0;
          goto LABEL_24;
        }

LABEL_21:
        v8 = a3 - a1;
        goto LABEL_24;
      }

LABEL_17:
      if ((a7 & 0x4000) == 0)
      {
        return 0;
      }

      goto LABEL_18;
    }

    if (a4 <= a2 || a6 < a2)
    {
      return 0;
    }

    if (a6 != a2)
    {
      goto LABEL_17;
    }

    return 1;
  }

  if (a6 > a4)
  {
    return 1;
  }

  if (a6 != a4 || (a7 & 0x4000) == 0)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    goto LABEL_21;
  }

  if (a1 - a3 < a6)
  {
    goto LABEL_20;
  }

  v7 = a3 + a6;
LABEL_23:
  v8 = a1 - v7;
LABEL_24:
  if (a1 <= a5)
  {
    v9 = a5 - a1;
  }

  else if (a1 - a5 >= a6)
  {
    v9 = a1 - (a5 + a6);
  }

  else
  {
    v9 = 0;
  }

  return v9 < v8;
}

uint64_t sub_100003A5C(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4)
{
  v8 = a3;
  if ((a2 & 0x1000) != 0)
  {
    if (a4 > 1)
    {
      v8 = a4 + (a4 >> 1);
      if (v8 >= a3)
      {
        v8 = a3;
      }
    }

    else
    {
      v8 = a4 + 1;
    }
  }

  v42 = v8;
  v9 = *(a1 + 200);
  v10 = *(a1 + 208);
  v11 = *(a1 + 160);
  if (*(a1 + 152) > v9)
  {
    v9 = *(a1 + 152);
  }

  v12 = *(a1 + 168);
  if (v10)
  {
    v14 = v10 - v11;
    v13 = v10 <= v11;
    v15 = v12 + v11;
    if (v10 < v11)
    {
      v11 = *(a1 + 208);
    }

    if (v13)
    {
      v16 = 0;
    }

    else
    {
      v16 = v14;
    }

    v17 = *(a1 + 216) + v16;
    if (v15 > v17 + v11)
    {
      v12 = v15 - v11;
    }

    else
    {
      v12 = v17;
    }
  }

  v18 = *(a1 + 136);
  v19 = *(a1 + 144);
  v21 = *(a1 + 184);
  v20 = *(a1 + 192);
  v23 = *(a1 + 248);
  v22 = *(a1 + 256);
  if (v9 <= v23)
  {
    v24 = *(a1 + 248);
  }

  else
  {
    v24 = v9;
  }

  v25 = calc_overlap_range(v22, *(a1 + 264), v11, v12, 0);
  v26 = *(a1 + 96);
  v27 = *(*(*(a1 + 8) + 376) + 48 * *(a1 + 88) + 72);
  if (v26 == v27)
  {
    goto LABEL_21;
  }

  if ((*(a1 + 280) & 1) == 0)
  {
LABEL_52:
    *(a1 + 440) = 0;
    result = 1;
    v29 = 448;
    goto LABEL_53;
  }

  v30 = v20 + v19;
  if (!v26 && v27 && v30 + *(a1 + 240))
  {
    v41 = 456;
    goto LABEL_51;
  }

  if ((a2 & 0x1000) == 0 || a4 <= (3 * a3) >> 2)
  {
    if (v24 >= v42)
    {
      v41 = 464;
      goto LABEL_51;
    }

    if (v24 <= a4)
    {
      v31 = a4;
    }

    else
    {
      v31 = v24;
    }

    if (v42 <= *(a1 + 240) + v30 + v31 + v31 * (v18 + v21 + *(a1 + 232)))
    {
      v32 = *(a1 + 94);
      v33 = *(a1 + 88) >> 8;
      v34 = v33 - 1;
      v35 = v33 - v32;
      if (v35 <= 4)
      {
        LODWORD(v36) = v35 + 4;
      }

      else
      {
        LODWORD(v36) = 8;
      }

      v36 = v36;
      if (v34 <= v32)
      {
        v36 = 4;
      }

      v37 = (64 - v42) >> 4;
      if (v42 >= 0x40)
      {
        v37 = 0;
      }

      v38 = v36 + v37 + (*(a1 + 440) >> 14);
      if (v34 / 10 <= v32)
      {
        v39 = *(a1 + 128);
        if (v39 < *(a1 + 328))
        {
          v40 = *(a1 + 176);
          if (v40 <= *(a1 + 224))
          {
            v40 = *(a1 + 224);
          }

          if (v40 >= *(a1 + 248) && v39 - *(a1 + 120) < 4)
          {
            v38 = 1;
          }
        }
      }

      if (v30 > (v12 - v25 + *(a1 + 264)) / v38)
      {
        v41 = 472;
LABEL_51:
        ++*(a1 + v41);
        goto LABEL_52;
      }
    }
  }

LABEL_21:
  result = 0;
  ++*(a1 + 440);
  v29 = 432;
LABEL_53:
  ++*(a1 + v29);
  return result;
}

uint64_t sub_100003CE4(uint64_t a1, uint64_t a2)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = 0;
  v4 = *(a1 + 104);
  *a2 = v4;
  if (v4)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v4 + 7);
  }

  while (1)
  {
    v5 = *(a2 + 97);
    if (!*(a2 + 4 * v5))
    {
      break;
    }

    result = sub_100003D78(a1, a2, -1);
    if (result)
    {
      return result;
    }
  }

  v7 = v5 - 1;
  *(a2 + 97) = v7;
  return (v7 >> 6) & 2;
}

uint64_t sub_100003D78(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = *(a2 + 97);
  v4 = (a2 + 4 * *(a2 + 97));
  *(v4 + 3) = a3;
  if (v3 < 23)
  {
    v7 = v3 + 1;
    *(a2 + 97) = v3 + 1;
    v8 = *(a1 + 80);
    v9 = *v4;
    v10 = *(a2 + 96);
    v11 = *(v8 + 24 * v9 + 4 * v10 + ((a3 + 1) & 0x1FE) + 16);
    v12 = a2 + 4 * v7;
    *v12 = v11;
    *(v12 + 3) = 0;
    if (v11)
    {
      v13 = *(v8 + 24 * v11 + 8 * (v10 != 0) + 7);
    }

    else
    {
      v13 = 0;
    }

    result = 0;
    *(v12 + 2) = v13;
  }

  else
  {
    v5 = "length";
    if (!*(a2 + 96))
    {
      v5 = "paddr";
    }

    log_err("%s:%d: %s dev %d %s tree: PATH TOO LONG: %d\n", "spaceman_fxtp_add_child", 752, (*(*a1 + 384) + 212), *(a1 + 88), v5, v3);
    return 84;
  }

  return result;
}

uint64_t sub_100003E6C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v3 = a2;
  v4 = -a3;
  v5 = *(a2 + 97);
  if (*(*(a1 + 80) + 24 * *(a2 + 4 * v5) + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16))
  {
    v6 = a1;
    while (1)
    {
      result = sub_100003D78(a1, a2, a3);
      if (result)
      {
        break;
      }

      v8 = *(v3 + 97);
      if (!*(v3 + 4 * v8))
      {
        v13 = v8 - 1;
        *(v3 + 97) = v13;
        v11 = (v3 + 4 * v13 + 3);
        goto LABEL_12;
      }

      a1 = v6;
      a2 = v3;
      a3 = v4;
    }
  }

  else
  {
    LODWORD(v5) = v5;
    do
    {
      v9 = __OFSUB__(v5, 1);
      LODWORD(v5) = v5 - 1;
      if (v5 < 0 != v9)
      {
        return 2;
      }

      v10 = a2 + 4 * v5;
      v12 = *(v10 + 3);
      v11 = (v10 + 3);
    }

    while (v12 != v4);
    *(a2 + 97) = v5;
LABEL_12:
    result = 0;
    *v11 = 0;
  }

  return result;
}

uint64_t sub_100003F48(uint64_t result, unsigned int a2, int a3, unsigned int a4, unsigned __int16 *a5)
{
  v5 = *(result + 80);
  v6 = v5 + 24 * a4 + 4 * a2 + 2 * ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v7 = *(v6 + 16);
  v8 = v5 + 24 * v7;
  v9 = v8 + 4 * a2 + 2 * ((a3 + 1 + (((a3 + 1) & 0x8000u) >> 15)) >> 1);
  *(v6 + 16) = *(v9 + 16);
  *(v9 + 16) = a4;
  *a5 = v7;
  if (*(v8 + 8 * (a2 != 0) + 7))
  {
    *(v5 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v10 = v5 + 24 * a4;
    v11 = *(v10 + 8 * (a2 != 0));
    if (a3 == -1)
    {
      *(v10 + 8 * (a2 != 0)) = v11 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) | 0xFF00000000000000;
    }

    else
    {
      *(v10 + 8 * (a2 != 0)) = v11 | 0xFF00000000000000;
      v12 = *(v8 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
    }
  }

  *(v8 + 8 * (a2 != 0)) = v12;
  return result;
}

uint64_t sub_100004028(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, unsigned int a5, unsigned __int16 *a6)
{
  v6 = *(a1 + 80);
  v7 = -a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15);
  v8 = v6 + 24 * a5 + 4 * a2 + 2 * (v7 >> 1);
  v9 = (v7 >> 1);
  v10 = *(v8 + 16);
  v11 = v6 + 24 * v10;
  result = v11 + 4 * a2 + 16;
  v13 = a3 + 1 + (((a3 + 1) & 0x8000u) >> 15);
  v14 = v13 >> 1;
  v15 = (v13 >> 1);
  *(v8 + 16) = *(result + 2 * v15);
  *(result + 2 * v15) = a5;
  *(v6 + 24 * a4 + 4 * a2 + 2 * v14 + 16) = *(result + 2 * v9);
  *(result + 2 * v9) = a4;
  *a6 = v10;
  v16 = HIBYTE(*(v11 + 8 * (a2 != 0)));
  if (v16 == a3)
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0) + 7) = -a3;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    *(v6 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v17 = v6 + 24 * a5;
    v18 = *(v17 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
    if (v16)
    {
      v18 |= a3 << 56;
    }
  }

  *(v17 + 8 * (a2 != 0)) = v18;
  *(v11 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  return result;
}

uint64_t sub_100004124()
{
  puts("usage: spacemanstats [ options ] [ <device_path> ]");
  puts("       -h --help");
  puts("       -v --verbose");
  puts("       -q --quiet");
  puts("       -o --outfile: file path");

  return puts("       -l --live: container is live");
}

uint64_t start(int a1, char **a2)
{
  v4 = 0;
  v5 = 0;
  v6 = 0;
  memset(v16, 170, sizeof(v16));
  for (i = 1; ; i = 0)
  {
    while (1)
    {
      while (1)
      {
        v8 = getopt_long(a1, a2, "hlo:qv", &off_100058000, 0);
        if (v8 != 111)
        {
          break;
        }

        if (optarg)
        {
          v5 = strdup(optarg);
        }
      }

      if (v8 <= 112)
      {
        break;
      }

      if (v8 == 113)
      {
        v4 = 1;
      }

      else
      {
        if (v8 != 118)
        {
          goto LABEL_28;
        }

        v6 = 1;
      }
    }

    if (v8 == -1)
    {
      break;
    }

    if (v8 != 108)
    {
      if (v8 == 104)
      {
        sub_100004124();
        exit(0);
      }

LABEL_28:
      sub_100004124();
      exit(1);
    }
  }

  if (a1 - optind != 1)
  {
    goto LABEL_28;
  }

  v9 = a2[optind];
  if (!v9)
  {
    goto LABEL_28;
  }

  v15 = 0xAAAAAAAAAAAAAAAALL;
  memset(__b, 170, sizeof(__b));
  if (i)
  {
    parse_nx_mount_options(0, v16);
    LODWORD(v16[0]) |= 1u;
    LOWORD(v16[1]) |= 1u;
    v10 = nx_mount(v9, v16, &v15);
    if (v10)
    {
      errc(1, v10, "Error %d failed to mount device %s", v10, v9);
    }

    v11 = sub_100007FB4(v15);
    nx_unmount(v15);
  }

  else
  {
    v11 = sub_100008794(v9);
  }

  if (v11)
  {
    sub_100044248(v11);
  }

  if (v6 & 1 | ((v4 & 1) == 0))
  {
    sub_1000078E0(__b);
  }

  if (v5)
  {
    v12 = fopen(v5, "w");
    free(v5);
    if (!v12)
    {
      sub_100044270();
    }

    sub_100007C1C(v12, __b);
    fclose(v12);
  }

  return 0;
}

uint64_t sub_1000043D4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 635);
  }

  else
  {
    v1 = byte_100058218 & 1;
  }

  return v1 & 1;
}

uint64_t sub_1000043F4(unsigned int a1, unint64_t a2, unsigned int a3, uint64_t a4)
{
  *(a4 + 176) = 0u;
  *(a4 + 192) = 0u;
  *(a4 + 144) = 0u;
  *(a4 + 160) = 0u;
  *(a4 + 112) = 0u;
  *(a4 + 128) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v4 = 22;
  *a4 = 0u;
  if (a1 - 65537 < 0xFFFF0FFF || !a2)
  {
    return v4;
  }

  v5 = 8 * a1;
  v6 = a1 - 40;
  v7 = v6 >> 5;
  *(a4 + 88) = v6 >> 5;
  *(a4 + 96) = v6 >> 3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  v8 = (a2 + v5 - 1) / v5;
  v9 = (v8 + (v6 >> 5) - 1) / (v6 >> 5);
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  if ((v9 + (v6 >> 3) - 1) / (v6 >> 3) == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = (v9 + (v6 >> 3) - 1) / (v6 >> 3);
  }

  *(a4 + 40) = v10;
  *(a4 + 48) = 0;
  v11 = (v5 - 1) / v5;
  v12 = (v7 + v11 - 1) / (v6 >> 5);
  *(a4 + 56) = v11;
  *(a4 + 64) = v12;
  v13 = ((v6 >> 3) + (v7 + v11 - 1) / (v6 >> 5) - 1) / (v6 >> 3);
  if (v13 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = ((v6 >> 3) + (v7 + v11 - 1) / (v6 >> 5) - 1) / (v6 >> 3);
  }

  *(a4 + 72) = v14;
  *(a4 + 80) = v5;
  v15 = 3 * (v9 + v8 + v11 + v12 + v14 + v10);
  *(a4 + 104) = v15;
  v16 = ((((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8) + a1 - 1) / a1;
  if (HIDWORD(v16))
  {
    return 27;
  }

  *(a4 + 112) = v16;
  *(a4 + 120) = 16;
  if (v16 < 0x1000)
  {
    v17 = 16 * v16;
    goto LABEL_14;
  }

  if (v16 >> 13)
  {
    return 27;
  }

  v17 = 65534;
LABEL_14:
  *(a4 + 128) = v17;
  v18 = (2 * v17 + 6) & 0x7FFFFFFFFFFFFFF8;
  if (v10)
  {
    v9 = (v9 + (v6 >> 3) - 1) / (v6 >> 3);
  }

  if (v14)
  {
    v19 = v13;
  }

  else
  {
    v19 = v12;
  }

  v20 = ((2 * v16 + 6) & 0x3FFFFFFF8) + 8 * (v19 + v9 + v16) + v18 + 2520;
  if (v20 > 0x100000)
  {
    return 27;
  }

  if (v20 % a1)
  {
    v20 = (v20 + a1 - 1) / a1 * a1;
  }

  *(a4 + 136) = v20;
  v22 = (a1 - 96 - (((((18725 * ((a1 - 96) >> 2)) >> 15) & 0x3FFC) + 28) & 0x7FE0)) / 0x30uLL;
  v23 = 0x200000 / a1;
  v24 = 15;
  if (a2 < 0x100000)
  {
    v24 = 31;
  }

  v25 = 4;
  if (a2 < 0x100000)
  {
    v25 = 5;
  }

  if (a2 < 0x40000)
  {
    v24 = 63;
    v25 = 6;
  }

  v26 = (v22 - 1 + ((v24 + a2) >> v25)) / v22;
  if (v26 >= v23)
  {
    v26 = 0x200000 / a1;
  }

  if (v26 == 2)
  {
    v26 = 3;
  }

  *(a4 + 152) = v26;
  *(a4 + 160) = 0;
  if (a2 >> 18)
  {
    if (a2 >> 20)
    {
      v27 = (v15 + 15) >> 4;
    }

    else
    {
      v27 = (v15 + 31) >> 5;
    }
  }

  else
  {
    v27 = (v15 + 63) >> 6;
  }

  v28 = (v22 - 1 + v27) / v22;
  if (v28 >= v23)
  {
    v28 = 0x200000 / a1;
  }

  if (v28 == 2)
  {
    v28 = 3;
  }

  *(a4 + 144) = v28;
  v29 = v20 / a1;
  v30 = v29 - 1;
  if (!v29)
  {
    v30 = 0;
  }

  v31 = 8;
  if (v26 < 8)
  {
    v31 = v26;
  }

  *(a4 + 192) = 4;
  *(a4 + 200) = v31;
  if (a3)
  {
    if (a3 > 0x64)
    {
      return 22;
    }
  }

  else
  {
    v32 = a1 * a2;
    if ((v32 & 0x1FFFFFFF) != 0)
    {
      v33 = (v32 >> 29) + 1;
    }

    else
    {
      v33 = v32 >> 29;
    }

    if (v33 >= 0x64)
    {
      a3 = 100;
    }

    else
    {
      a3 = v33;
    }
  }

  *(a4 + 184) = a3;
  v34 = v26 + v29 + v28 + v30 + 8 * v31 * a3 + 2;
  v35 = ((a1 - 40) / 0x28u + v34 - 1) / ((a1 - 40) / 0x28u);
  *(a4 + 168) = 4 * v35 + 4;
  v4 = 27;
  if (v35 <= 0x3FFFFFFE)
  {
    *(a4 + 176) = 4 * v34;
    if (v34 >> 30)
    {
      return 27;
    }

    else
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_100004734(uint64_t a1, unsigned int a2, uint64_t a3, int a4, int a5, uint64_t **a6)
{
  *&v13 = 0;
  v14 = 0u;
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v12 = evict_mapping_key_compare;
  DWORD2(v13) = 33;
  HIDWORD(v13) = a4;
  result = btree_get_extended(a1, a2, a3, 0, 0, &v12, 0, a6);
  if (result == 92 && a5)
  {
    v13 = 0u;
    v14 = 0u;
    v18 = 0;
    v16 = 0u;
    v17 = 0u;
    v15 = 0u;
    v12 = evict_mapping_key_compare;
    HIDWORD(v13) = a4;
    result = btree_get_extended(a1, 0, a3, 0, 0, &v12, 0, a6);
    if (!result)
    {
      log_debug("%s:%d: %s found mapping tree with old subtype\n", "nx_get_evict_mapping_tree", 526, (*(a1 + 384) + 212));
      return 0;
    }
  }

  return result;
}

uint64_t sub_100004878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *(a3 + 4);
  *(a1 + 32) = 1112758350;
  *(a1 + 36) = v3;
  *(a1 + 1264) = 0;
  *(a1 + 40) = *(a3 + 8);
  *(a1 + 56) = xmmword_1000516E0;
  v4 = *(a3 + 32);
  *(a1 + 88) = 1024;
  *(a1 + 96) = v4;
  uuid_copy((a1 + 72), (a3 + 64));
  return 0;
}

uint64_t sub_1000048E0(uint64_t a1, unsigned int *a2)
{
  if (!a2)
  {
    return 22;
  }

  v3 = *(a1 + 56);
  *(a1 + 660) = -1;
  v4 = *a2;
  *(a1 + 664) = *a2;
  *(a1 + 668) = *(v3 + 36) / v4;
  v5 = *(a2 + 3);
  *(a1 + 376) = v3;
  *(a1 + 384) = v5;
  LODWORD(v5) = a2[11];
  *(a1 + 627) = a2[10] != 0;
  *(a1 + 628) = v5 != 0;
  LODWORD(v5) = a2[13];
  *(a1 + 629) = a2[12] != 0;
  *(a1 + 631) = v5 != 0;
  LODWORD(v5) = a2[15];
  *(a1 + 632) = a2[14] != 0;
  *(a1 + 633) = v5 != 0;
  *(a1 + 392) = *a1;
  new_lock((a1 + 672));
  new_lock((a1 + 864));
  *(a1 + 928) = 0;
  new_lock((a1 + 1120));
  new_lock((a1 + 752));
  *(a1 + 828) = 0;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0;
  new_lock((a1 + 504));
  new_cv((a1 + 568));
  return 0;
}

uint64_t sub_100004A04(uint64_t a1)
{
  v2 = *(a1 + 736);
  if (v2 && !*(*a1 + 940))
  {
    obj_release(v2);
  }

  free_lock((a1 + 864));
  free_lock((a1 + 672));
  free_lock((a1 + 1120));
  free_lock((a1 + 752));
  free_lock((a1 + 504));
  free_cv((a1 + 568));
  return 0;
}

uint64_t sub_100004A70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v53 = 0;
  v54 = 0;
  v52 = 0;
  v51 = 0;
  v6 = sub_100009C74(a1, &v54);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 400);
    if (!v8 || !*(v8 + 76))
    {
      v9 = *(a1 + 384) + 212;
      v10 = *(*(a1 + 376) + 152);
      LODWORD(v11) = 739;
      log_err("%s:%d: %s failed to get spaceman oid %lld for checkpoint %s traverse: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v7 = sub_10000B018(a1, a2, v54, a3);
  obj_release(v54);
  if (v7)
  {
    v12 = *(a1 + 400);
    if (!v12 || !*(v12 + 76))
    {
      v13 = *(a1 + 384) + 212;
      LODWORD(v11) = 746;
      log_err("%s:%d: %s spaceman checkpoint %s traverse failed: %d\n");
      goto LABEL_9;
    }

    return v7;
  }

  v16 = *(a1 + 376);
  v17 = *(v16 + 160);
  if (v17 && !*(a1 + 744))
  {
    v21 = obj_get(*(a1 + 392), 0x40000000, v17, &om_desc, 0, 0, 0, 0, &v52);
    if (v21)
    {
      v7 = v21;
      v22 = *(a1 + 400);
      if (!v22 || !*(v22 + 76))
      {
        v23 = *(a1 + 384) + 212;
        LODWORD(v11) = 756;
        log_err("%s:%d: %s failed to get omap for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = omap_checkpoint_traverse(a1, a2, v52, a3);
    obj_release(v52);
    if (v7)
    {
      v26 = *(a1 + 400);
      if (!v26 || !*(v26 + 76))
      {
        v27 = *(a1 + 384) + 212;
        LODWORD(v11) = 762;
        log_err("%s:%d: %s omap checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v16 = *(a1 + 376);
  }

  if (*(v16 + 168))
  {
    v18 = sub_100005138(a1, &v53);
    if (v18)
    {
      v7 = v18;
      v19 = *(a1 + 400);
      if (!v19 || !*(v19 + 76))
      {
        v20 = *(a1 + 384) + 212;
        LODWORD(v11) = 775;
        log_err("%s:%d: %s failed to get reaper for checkpoint %s traverse: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v7 = sub_1000051BC(a1, a2, v53, a3);
    obj_release(v53);
    if (v7)
    {
      v24 = *(a1 + 400);
      if (!v24 || !*(v24 + 76))
      {
        v25 = *(a1 + 384) + 212;
        LODWORD(v11) = 782;
        log_err("%s:%d: %s nx reaper checkpoint %s traverse failed: %d\n");
        goto LABEL_9;
      }

      return v7;
    }

    v16 = *(a1 + 376);
  }

  if (*(v16 + 180))
  {
    for (i = 0; i < *(v16 + 180); ++i)
    {
      v29 = *(v16 + 8 * i + 184);
      if (v29)
      {
        v30 = obj_get(*(a1 + 392), 0, v29, &apfs_desc, 0, 0, 0, 0, &v51);
        if (v30)
        {
          v7 = v30;
          v36 = *(a1 + 400);
          if (v36 && *(v36 + 76))
          {
            return v7;
          }

          v37 = "<UNKNOWN>";
          if (a3 == 2)
          {
            v37 = "FIXUP";
          }

          if (a3 == 1)
          {
            v37 = "START";
          }

          v45 = v37;
          v46 = v30;
          v43 = i;
          v44 = v29;
          v42 = *(a1 + 384) + 212;
          v11 = 796;
          v35 = "%s:%d: %s failed to get fs[%d] oid %lld for checkpoint %s traverse: %d\n";
LABEL_58:
          log_err(v35, "nx_checkpoint_traverse", v11, v42, v43, v44, v45, v46, v47);
LABEL_9:
          v14 = *(a1 + 400);
          if (v14)
          {
LABEL_10:
            *(v14 + 76) = v11;
            ++*(v14 + 80);
          }

          return v7;
        }

        v7 = apfs_checkpoint_traverse(a1, a2, v51, a3);
        obj_release(v51);
        if (v7)
        {
          v38 = *(a1 + 400);
          if (!v38 || !*(v38 + 76))
          {
            v39 = *(a1 + 384) + 212;
            LODWORD(v11) = 802;
            log_err("%s:%d: %s fs[%d] checkpoint %s traverse failed: %d\n");
            goto LABEL_9;
          }

          return v7;
        }

        v16 = *(a1 + 376);
      }
    }
  }

  if (!*(v16 + 1344) || !obj_type_is_or_contains_ephemeral(*(v16 + 176)))
  {
    return 0;
  }

  v50[0] = 0;
  v50[1] = 0;
  v49 = 0;
  v48 = 0;
  v31 = obj_descriptor_and_flags_for_type(*(*(a1 + 376) + 176), &v48, v50);
  HIDWORD(v50[0]) = 255;
  if (v31 || (v31 = obj_get(*(a1 + 392), v48, *(*(a1 + 376) + 1344), v50, 0, 0, 0, 0, &v49), v31))
  {
    v7 = v31;
    v32 = *(a1 + 400);
    if (!v32 || !*(v32 + 76))
    {
      v33 = *(a1 + 376);
      v34 = "<UNKNOWN>";
      if (a3 == 2)
      {
        v34 = "FIXUP";
      }

      if (a3 == 1)
      {
        v34 = "START";
      }

      v46 = v34;
      v47 = v31;
      v44 = *(v33 + 176);
      v45 = 255;
      v42 = *(a1 + 384) + 212;
      v43 = *(v33 + 1344);
      v11 = 823;
      v35 = "%s:%d: %s unable to get test object 0x%llx of type 0x%x/0x%x for checkpoint %s traverse: %d\n";
      goto LABEL_58;
    }
  }

  else
  {
    v7 = obj_checkpoint_traverse(a1, a2, v49, a3);
    obj_release(v49);
    if (v7)
    {
      v40 = *(a1 + 400);
      if (!v40 || !*(v40 + 76))
      {
        v41 = "<UNKNOWN>";
        if (a3 == 2)
        {
          v41 = "FIXUP";
        }

        if (a3 == 1)
        {
          v41 = "START";
        }

        LODWORD(v11) = 829;
        log_err("%s:%d: %s failed to checkpoint %s traverse test object 0x%llx of type 0x%x/0x%x: %d\n", "nx_checkpoint_traverse", 829, (*(a1 + 384) + 212), v41, *(*(a1 + 376) + 1344), *(*(a1 + 376) + 176), 255, v7);
        v14 = *(a1 + 400);
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }
  }

  return v7;
}

uint64_t sub_100005138(void *a1, atomic_ullong **a2)
{
  v3 = a1[53];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 168), &xmmword_100051738, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[53] = *a2;
LABEL_2:
    obj_retain(v3);
    return 0;
  }

  return result;
}

uint64_t sub_1000051BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + 376);
  v36 = 0;
  if (a4 == 2)
  {
    v7 = obj_checkpoint_known(a3);
LABEL_5:
    v8 = v7;
    if (v7)
    {
      return v8;
    }

    goto LABEL_6;
  }

  if (a4 == 1)
  {
    v7 = obj_checkpoint_start(a3);
    goto LABEL_5;
  }

LABEL_6:
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  if (*(v6 + 88) && obj_type_is_or_contains_ephemeral(*(v6 + 72)))
  {
    v8 = 0;
    if ((*(v6 + 104) & 0x10) == 0 && (*(v6 + 104) & 6) != 2)
    {
      v9 = sub_100005940(a1, *(v6 + 72), *(v6 + 76), *(v6 + 80), *(v6 + 88), &v36, &v37);
      if (v9)
      {
        v8 = v9;
        v10 = a1[50];
        if (!v10 || !*(v10 + 76))
        {
          log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1105, (a1[48] + 212), *(v6 + 88), v9);
        }
      }

      else
      {
        if (v36)
        {
          v32 = v36;
        }

        else
        {
          v32 = a1;
        }

        v8 = obj_checkpoint_traverse(v32, a2, v37, a4);
        obj_release(v37);
      }

      if (v36)
      {
        obj_release(v36);
        v36 = 0;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    return v8;
  }

  v11 = *(v6 + 48);
  if (!v11)
  {
    return v8;
  }

  v12 = *(v6 + 68);
  do
  {
    v13 = obj_get(a1[49], 0x80000000, v11, &xmmword_100051748, 0, 0, 0, 0, &v38);
    if (v13)
    {
      v8 = v13;
      v30 = a1[50];
      if (!v30 || !*(v30 + 76))
      {
        log_err("%s:%d: %s failed to get reap list object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1125, (a1[48] + 212), v11, v13);
      }

      return v8;
    }

    v14 = v38[47];
    v34 = v12;
    if (a4 == 2)
    {
      v15 = obj_checkpoint_known(v38);
      goto LABEL_23;
    }

    if (a4 == 1)
    {
      v15 = obj_checkpoint_start(v38);
LABEL_23:
      v8 = v15;
      goto LABEL_25;
    }

    v8 = 0;
LABEL_25:
    v35 = *(v14 + 32);
    if (v8)
    {
      goto LABEL_56;
    }

    v16 = *(v14 + 52);
    if (v16 == -1)
    {
      goto LABEL_56;
    }

    v17 = v14 + 64;
    v18 = -1;
    while (1)
    {
      v19 = v17 + 40 * v16;
      v20 = *v19;
      if (*v19 != -1 && v20 > *(v14 + 44))
      {
        break;
      }

      v21 = *(v19 + 8);
      if (v21 != *(v6 + 72) || *(v19 + 24) != *(v6 + 88))
      {
        if (v18 == -1 || (v22 = v17 + 40 * v18, v21 != *(v22 + 8)) || *(v19 + 24) != *(v22 + 24))
        {
          v8 = 0;
          if ((*(v19 + 4) & 0x10) != 0 || (*(v19 + 4) & 6) == 2)
          {
            goto LABEL_49;
          }

          if (obj_type_is_or_contains_ephemeral(v21))
          {
            v23 = sub_100005940(a1, *(v19 + 8), *(v19 + 12), *(v19 + 16), *(v19 + 24), &v36, &v37);
            if (v23)
            {
              v8 = v23;
              v24 = a1[50];
              if (!v24 || !*(v24 + 76))
              {
                log_err("%s:%d: %s failed to get object oid %lld: %d\n", "nx_reaper_checkpoint_traverse", 1185, (a1[48] + 212), *(v19 + 24), v23);
              }
            }

            else
            {
              if (v36)
              {
                v25 = v36;
              }

              else
              {
                v25 = a1;
              }

              v8 = obj_checkpoint_traverse(v25, a2, v37, a4);
              obj_release(v37);
            }

            if (v36)
            {
              obj_release(v36);
              v36 = 0;
            }

            goto LABEL_49;
          }
        }
      }

      v8 = 0;
LABEL_49:
      if (!v8)
      {
        v18 = v16;
        v16 = v20;
        if (v20 != -1)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    v26 = a1[50];
    if (!v26 || !*(v26 + 76))
    {
      log_err("%s:%d: %s Invalid reap list entry nrl_entries[%d].nrle_next = %d\n", "nx_reaper_checkpoint_traverse", 1147, (a1[48] + 212), v16, v20);
    }

    obj_release(v38);
    v8 = nx_corruption_detected_int(a1);
LABEL_56:
    v27 = *(v6 + 68);
    if (v27)
    {
      v11 = v35;
      v12 = (v34 - 1);
      if (v35 && v34 == 1)
      {
        v28 = a1[50];
        if (!v28 || !*(v28 + 76))
        {
          log_err("%s:%d: %s reap list expected %u objects, but haven't seen last reap list object yet\n", "nx_reaper_checkpoint_traverse", 1201, (a1[48] + 212), v27);
        }

        v8 = nx_corruption_detected_int(a1);
        v12 = 0;
      }

      else if (!v35 && v34 != 1)
      {
        v29 = a1[50];
        if (!v29 || !*(v29 + 76))
        {
          log_warn("%s:%d: %s reap list expected %u objects, but got last reap list object with %u more objects left\n", "nx_reaper_checkpoint_traverse", 1206, (a1[48] + 212), *(v6 + 68), v34 - 1);
        }
      }
    }

    else
    {
      v12 = v34;
      v11 = v35;
    }

    obj_release(v38);
  }

  while (!v8 && v11);
  return v8;
}

uint64_t sub_100005668(uint64_t a1, int a2)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *(a1 + 108) = (a2 & 0xFFFFFFFC) - 112;
  return 0;
}

uint64_t sub_10000568C(void *a1)
{
  v2 = a1[7];
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  v5 = *(v2 + 108);
  v6 = (obj_size_phys(a1) & 0xFFFFFFFCLL) - 112;
  if (v3 < v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (v6 >= v5)
  {
    v8 = v3 >= v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v2 + 68);
  if (v9 == 1)
  {
    v10 = *(v2 + 48) == *(v2 + 56);
  }

  else
  {
    if (v9)
    {
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_20;
    }

    if (*(v2 + 48))
    {
      goto LABEL_19;
    }

    v10 = *(v2 + 56) == 0;
  }

  if (!v10 || v8)
  {
LABEL_19:
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_20:
  a1[47] = v2;
  v13 = obj_size_phys(a1);
  result = 0;
  a1[48] = v2 + v13 - *(v2 + 108);
  return result;
}

uint64_t sub_100005768(uint64_t a1, unsigned int a2)
{
  v2 = (a2 - 64) / 0x28;
  *(a1 + 44) = v2;
  *(a1 + 52) = -1;
  *(a1 + 60) = 0;
  v3 = (v2 - 1);
  if (v3)
  {
    v4 = vdupq_n_s64(v3 - 1);
    v5 = (v3 + 3) & 0x1FFFFFFFCLL;
    v6 = xmmword_1000516F0;
    v7 = xmmword_100051700;
    v8 = (a1 + 104);
    v9 = vdupq_n_s64(1uLL);
    v10 = vdupq_n_s64(4uLL);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v4, v7));
      v12 = vaddq_s64(v7, v9);
      if (vuzp1_s16(v11, *v4.i8).u8[0])
      {
        *(v8 - 10) = v12.i32[0];
      }

      if (vuzp1_s16(v11, *&v4).i8[2])
      {
        *v8 = v12.i32[2];
      }

      v13 = vaddq_s64(v6, v9);
      if (vuzp1_s16(*&v4, vmovn_s64(vcgeq_u64(v4, *&v6))).i32[1])
      {
        v8[10] = v13.i32[0];
        v8[20] = v13.i32[2];
      }

      v6 = vaddq_s64(v6, v10);
      v7 = vaddq_s64(v7, v10);
      v8 += 40;
      v5 -= 4;
    }

    while (v5);
  }

  else
  {
    LODWORD(v3) = 0;
  }

  *(a1 + 40 * v3 + 64) = -1;
  return 0;
}

uint64_t sub_10000585C(void *a1)
{
  v2 = a1[7];
  v3 = v2[11];
  v4 = v3 > ((obj_size_phys(a1) - 64) / 0x28);
  v6 = v2[11];
  v5 = v2[12];
  if (v4)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  if (v5 <= v6)
  {
    v8 = v4;
  }

  else
  {
    v8 = v7;
  }

  v9 = v2[13];
  v10 = v2[14];
  if (v9 != -1 && v9 >= v6)
  {
    ++v8;
  }

  if (v10 != -1 && v10 >= v6)
  {
    ++v8;
  }

  v13 = v2[15];
  if (v13 != -1 && v13 >= v6)
  {
    v15 = v8 + 1;
  }

  else
  {
    v15 = v8;
  }

  if (v5 == 1)
  {
    v16 = v9 == v10;
  }

  else
  {
    if (v5)
    {
      if (v15)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    }

    v16 = v9 == -1 && v10 == -1;
  }

  if (!v16 || v15 != 0)
  {
LABEL_36:
    result = nx_corruption_detected_int(*(*a1 + 392));
    if (result)
    {
      return result;
    }
  }

LABEL_37:
  result = 0;
  a1[47] = v2;
  return result;
}

uint64_t sub_100005940(uint64_t *a1, int a2, int a3, unint64_t a4, unint64_t a5, uint64_t **a6, uint64_t **a7)
{
  v24 = 0;
  v23 = 0;
  v21 = 0;
  v22 = 0;
  *a7 = 0;
  *a6 = 0;
  if (a4)
  {
    v14 = obj_get(a1[49], 0, a4, &apfs_desc, 0, 0, 0, 0, &v24);
    if (v14)
    {
      v15 = v14;
      log_err("%s:%d: %s unable to get fs object 0x%llx: %d\n", "nx_reaper_obj_get", 1038, (a1[48] + 212), a4, v14);
      return v15;
    }

    v17 = v24;
  }

  else
  {
    v17 = 0;
  }

  *a6 = v17;
  if ((a2 & 0x4000FFFF) == 0x4000000B)
  {
    v18 = (v17 ? v17 : a1);
    if (!omap_obj_get(v18, 0, 0, a7))
    {
      return 0;
    }
  }

  v19 = obj_descriptor_and_flags_for_type(a2, &v23, &v21);
  if (v19)
  {
    v16 = v19;
  }

  else
  {
    LODWORD(v22) = a3;
    v16 = obj_get(a1[49], v23, a5, &v21, 0, v24, 0, 0, a7);
    if (!v16)
    {
      return v16;
    }
  }

  log_err("%s:%d: %s unable to get object 0x%llx: %d\n", "nx_reaper_obj_get", 1059, (a1[48] + 212), a5, v16);
  if (v24)
  {
    obj_release(v24);
  }

  *a7 = 0;
  *a6 = 0;
  return v16;
}

uint64_t sub_100005AFC(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8)
{
  v44 = 0;
  memset(v45, 170, sizeof(v45));
  v16 = sub_100005138(a1, &v45[2]);
  if (v16)
  {
    return v16;
  }

  v17 = *(v45[2] + 376);
  v16 = obj_descriptor_funcs_for_type(a2, &v44);
  if (v16)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_ext", 1255, (a1[48] + 212), a2, v16);
LABEL_14:
    obj_release(v45[2]);
    return v16;
  }

  if (!*(v44 + 24))
  {
    v16 = 22;
    goto LABEL_3;
  }

  obj_lock(v45[2], 2);
  v18 = obj_modify(v45[2], 0, a6);
  if (v18)
  {
    v16 = v18;
LABEL_13:
    obj_unlock(v45[2], 2);
    goto LABEL_14;
  }

  v19 = a1[49];
  if (*(v17 + 48) == 0)
  {
    v20 = obj_create(v19, 0x80000000, 0, &xmmword_100051748, 0, 0, a6, &v45[1]);
    if (v20)
    {
      v16 = v20;
      v42 = a1[48] + 212;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_13;
    }

    v23 = obj_oid(v45[1]);
    *(v17 + 48) = v23;
    *(v17 + 56) = v23;
    v24 = (v17 + 68);
    goto LABEL_17;
  }

  v21 = obj_get(v19, 2147483649, *(v17 + 56), &xmmword_100051748, 0, 0, 0, a6, &v45[1]);
  if (v21)
  {
    v16 = v21;
    v43 = a1[48] + 212;
    log_err("%s:%d: %s failed to get reap list tail: %d\n");
    goto LABEL_13;
  }

  v24 = (v17 + 68);
  if (!*(v17 + 68) && *(v17 + 48) == *(v17 + 56))
  {
LABEL_17:
    *v24 = 1;
    obj_dirty(v45[2], a6, 0);
  }

  v25 = *(v45[1] + 376);
  if (v25[12] > (v25[11] - 2))
  {
    v26 = obj_create(a1[49], 0x80000000, 0, &xmmword_100051748, 0, 0, a6, v45);
    if (v26)
    {
      v16 = v26;
      obj_unlock(v45[2], 2);
      obj_release(v45[1]);
      goto LABEL_14;
    }

    v27 = obj_oid(v45[0]);
    *(*(v45[1] + 376) + 32) = v27;
    *(v17 + 56) = obj_oid(v45[0]);
    v28 = *(v17 + 68);
    if (v28)
    {
      *(v17 + 68) = v28 + 1;
    }

    obj_dirty(v45[2], a6, 0);
    obj_release(v45[1]);
    v45[1] = v45[0];
    v25 = *(v45[0] + 376);
  }

  v29 = *(v17 + 32);
  *(v17 + 32) = v29 + 1;
  v30 = v25[15];
  if (v30 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1325, (a1[48] + 212));
    obj_unlock(v45[2], 2);
    obj_release(v45[1]);
    obj_release(v45[2]);
    v41 = a1;
    return nx_corruption_detected_int(v41);
  }

  v31 = v25 + 16;
  v32 = &v25[10 * v30 + 16];
  v33 = *v32;
  v25[15] = *v32;
  v34 = v25[14];
  if (v34 != -1)
  {
    v31[10 * v34] = v30;
  }

  if (v25[13] == -1)
  {
    v25[13] = v30;
  }

  v25[14] = v30;
  v35 = v25[12];
  v25[12] = v35 + 1;
  if ((a7 & 2) != 0)
  {
    v36 = 21;
  }

  else
  {
    v36 = 5;
  }

  *v32 = -1;
  *(v32 + 4) = v36;
  *(v32 + 8) = a2;
  *(v32 + 12) = a3;
  *(v32 + 16) = a4;
  *(v32 + 24) = a5;
  *(v32 + 32) = a6;
  if (v33 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_ext", 1356, (a1[48] + 212));
    obj_unlock(v45[2], 2);
    obj_release(v45[1]);
    obj_release(v45[2]);
    v41 = a1;
    return nx_corruption_detected_int(v41);
  }

  v37 = &v31[10 * v33];
  v38 = *v37;
  *v32 = v33;
  v25[14] = v33;
  v25[15] = v38;
  v25[12] = v35 + 2;
  if ((a7 & 2) != 0)
  {
    v39 = 19;
  }

  else
  {
    v39 = 3;
  }

  if (a7)
  {
    v39 |= 0xCu;
  }

  *v37 = -1;
  v37[1] = v39;
  v37[2] = a2;
  v37[3] = a3;
  *(v37 + 2) = a4;
  *(v37 + 3) = a5;
  *(v37 + 4) = v29;
  obj_dirty(v45[1], a6, 0);
  obj_unlock(v45[2], 2);
  obj_release(v45[1]);
  obj_release(v45[2]);
  if (!a8)
  {
    return 0;
  }

  v40 = v29;
  v16 = 0;
  *a8 = v40;
  return v16;
}

uint64_t sub_100005FC4(void *a1, int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v42 = 0;
  memset(v43, 170, sizeof(v43));
  v14 = sub_100005138(a1, &v43[2]);
  if (v14)
  {
    return v14;
  }

  v15 = *(v43[2] + 376);
  v14 = obj_descriptor_funcs_for_type(a2, &v42);
  if (v14)
  {
LABEL_3:
    log_err("%s:%d: %s object type 0x%x not reapable: %d\n", "nx_reaper_add_sub_object", 1442, (a1[48] + 212), a2, v14);
LABEL_4:
    obj_release(v43[2]);
    return v14;
  }

  if (!*(v42 + 24))
  {
    v14 = 22;
    goto LABEL_3;
  }

  obj_lock(v43[2], 2);
  v17 = obj_modify(v43[2], 0, a6);
  if (v17)
  {
    v14 = v17;
    obj_unlock(v43[2], 2);
    goto LABEL_4;
  }

  v18 = *(v15 + 48);
  if (!v18 && !*(v15 + 56))
  {
    v21 = obj_create(a1[49], 0x80000000, 0, &xmmword_100051748, 0, 0, a6, &v43[1]);
    if (v21)
    {
      v14 = v21;
      v41 = a1[48] + 212;
      log_err("%s:%d: %s failed to create reap list: %d\n");
      goto LABEL_14;
    }

    v22 = obj_oid(v43[1]);
    *(v15 + 48) = v22;
    *(v15 + 56) = v22;
    v20 = (v15 + 68);
    goto LABEL_21;
  }

  v19 = obj_get(a1[49], 2147483649, v18, &xmmword_100051748, 0, 0, 0, a6, &v43[1]);
  if (v19)
  {
    v14 = v19;
    v40 = a1[48] + 212;
    log_err("%s:%d: %s failed to get reap list head: %d\n");
LABEL_14:
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_add_sub_object", 1478, (a1[48] + 212), v14);
    obj_unlock(v43[2], 2);
    obj_release(v43[2]);
    return v14;
  }

  v20 = (v15 + 68);
  if (!*(v15 + 68) && *(v15 + 48) == *(v15 + 56))
  {
LABEL_21:
    *v20 = 1;
    obj_dirty(v43[2], a6, 0);
  }

  v23 = *(v43[1] + 376);
  if (v23[12] > v23[11] + ~(a7 & 1u))
  {
    v24 = obj_create(a1[49], 0x80000000, 0, &xmmword_100051748, 0, 0, a6, v43);
    if (v24)
    {
      v14 = v24;
      obj_unlock(v43[2], 2);
      obj_release(v43[1]);
      goto LABEL_4;
    }

    v25 = v43[0];
    *(*(v43[0] + 376) + 32) = *(v15 + 48);
    *(v15 + 48) = obj_oid(v25);
    v26 = *(v15 + 68);
    if (v26)
    {
      *(v15 + 68) = v26 + 1;
    }

    obj_dirty(v43[2], a6, 0);
    obj_release(v43[1]);
    v43[1] = v43[0];
    v23 = *(v43[0] + 376);
  }

  v27 = v23[15];
  if (a7)
  {
    if (v27 == -1)
    {
      log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1514, (a1[48] + 212));
      obj_unlock(v43[2], 2);
      obj_release(v43[1]);
      obj_release(v43[2]);
      v39 = a1;
      return nx_corruption_detected_int(v39);
    }

    v28 = &v23[10 * v27];
    v31 = v28[16];
    v29 = v28 + 16;
    v30 = v31;
    v23[15] = v31;
    v32 = v23[14];
    *v29 = v23[13];
    v23[13] = v27;
    if (v32 == -1)
    {
      v23[14] = v27;
    }

    ++v23[12];
    if ((a7 & 2) != 0)
    {
      v33 = 29;
    }

    else
    {
      v33 = 13;
    }

    v29[1] = v33;
    v29[2] = a2;
    v29[3] = a3;
    *(v29 + 2) = a4;
    *(v29 + 3) = a5;
    *(v29 + 4) = a6;
    v27 = v30;
  }

  if (v27 == -1)
  {
    log_err("%s:%d: %s reap list object free list erroneously empty?\n", "nx_reaper_add_sub_object", 1542, (a1[48] + 212));
    obj_unlock(v43[2], 2);
    obj_release(v43[1]);
    obj_release(v43[2]);
    v39 = a1;
    return nx_corruption_detected_int(v39);
  }

  v34 = &v23[10 * v27];
  v36 = v34[16];
  v35 = v34 + 16;
  v23[15] = v36;
  v37 = v23[14];
  *v35 = v23[13];
  v23[13] = v27;
  if (v37 == -1)
  {
    v23[14] = v27;
  }

  ++v23[12];
  if ((a7 & 2) != 0)
  {
    v38 = 21;
  }

  else
  {
    v38 = 5;
  }

  v35[1] = v38;
  v35[2] = a2;
  v35[3] = a3;
  *(v35 + 2) = a4;
  *(v35 + 3) = a5;
  *(v35 + 4) = a6;
  obj_dirty(v43[1], a6, 0);
  obj_unlock(v43[2], 2);
  obj_release(v43[1]);
  obj_release(v43[2]);
  return 0;
}

void sub_100006480(uint64_t *a1)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_100005138(a1, &v6))
  {
    v2 = v6[47];
    obj_lock(v6, 2);
    if (!*(v2 + 88))
    {
      v3 = *(v2 + 48);
      if (!v3 || obj_get(a1[49], 0x80000000, v3, &xmmword_100051748, 0, 0, 0, 0, &v5))
      {
        goto LABEL_4;
      }

      v4 = v5[47];
      if (!*(v4 + 48) && !*(v4 + 32))
      {
        obj_release(v5);
        goto LABEL_4;
      }

      obj_release(v5);
    }

    obj_unlock(v6, 2);
    sub_100006568(a1);
    obj_lock(v6, 2);
LABEL_4:
    obj_unlock(v6, 2);
    obj_release(v6);
  }
}

uint64_t sub_100006568(uint64_t *a1)
{
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100005138(a1, &v20);
  if (result)
  {
    return result;
  }

  v3 = v20[47];
  obj_lock(v20, 2);
  v4 = v20;
  if (*(v20 + 98) || *(v20 + 99))
  {
    obj_unlock(v20, 2);
    obj_release(v20);
    log_debug("%s:%d: reaper thread is exiting, returning EBUSY\n", "nx_reaper", 1698);
    return 16;
  }

  v5 = 0;
  *(v20 + 98) = 1;
  while (1)
  {
    v14 = 0xAAAAAAAAAAAAAAAALL;
    v15 = 0xAAAAAAAAAAAAAAAALL;
    obj_unlock(v4, 2);
    v19 = 0;
    v6 = tx_enter(a1, &v19);
    obj_lock(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    v7 = obj_modify(v20, 0, v19);
    v4 = v20;
    if (v7)
    {
      v6 = v7;
      v13 = 0;
      goto LABEL_39;
    }

    if (*(v3 + 88))
    {
      goto LABEL_13;
    }

    if (*(v20 + 99))
    {
      goto LABEL_44;
    }

    v8 = sub_1000076A4(a1, v20, v19);
    if (v8)
    {
      break;
    }

    v4 = v20;
    if (!*(v3 + 88))
    {
LABEL_44:
      v13 = 0;
      v6 = 0;
      goto LABEL_39;
    }

LABEL_13:
    obj_unlock(v4, 2);
    if ((*(v3 + 104) & 4) == 0)
    {
      goto LABEL_16;
    }

    v9 = obj_descriptor_funcs_for_type(*(v3 + 72), &v18);
    if (v9)
    {
      goto LABEL_15;
    }

    if (!*(v18 + 24))
    {
      v9 = 22;
LABEL_15:
      log_err("%s:%d: %s object type 0x%x not reapable?: %d\n", "nx_reaper", 1739, (a1[48] + 212), *(v3 + 72), v9);
      v5 = 1;
LABEL_16:
      obj_lock(v20, 2);
LABEL_17:
      if ((*(v3 + 104) & 2) != 0)
      {
        *(v3 + 40) = *(v3 + 96);
      }

      *(v3 + 64) &= ~2u;
      *(v3 + 88) = 0;
      goto LABEL_20;
    }

    v10 = sub_100005940(a1, *(v3 + 72), *(v3 + 76), *(v3 + 80), *(v3 + 88), &v16, &v17);
    if (v10)
    {
      v11 = v10;
      log_err("%s:%d: %s unable to get object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1744, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v10);
    }

    else
    {
      if ((*(v3 + 64) & 2) == 0)
      {
        bzero(v20[48], *(v3 + 108));
      }

      v12 = (*(v18 + 24))(v17, (*(v3 + 104) >> 3) & 3, v20[48], *(v3 + 108), v19);
      v11 = v12;
      if (v12 && v12 != 36)
      {
        log_err("%s:%d: %s error reaping object 0x%llx of type 0x%x: %d\n", "nx_reaper", 1758, (a1[48] + 212), *(v3 + 88), *(v3 + 72), v12);
      }

      obj_release(v17);
      if (v16)
      {
        obj_release(v16);
        v16 = 0;
      }
    }

    obj_lock(v20, 2);
    if (v11 != 36)
    {
      v5 = 1;
      goto LABEL_17;
    }

    *(v3 + 64) |= 2u;
    v5 = 1;
LABEL_20:
    obj_dirty(v20, v19, 0);
    obj_unlock(v20, 2);
    sub_100009DFC(a1, 0, &v15, &v14, 0, 0);
    v6 = tx_leave(a1, v19, (v14 < 0x3E8) | (4 * (v14 < 0x7D0)));
    obj_lock(v20, 2);
    v4 = v20;
    if (v6)
    {
      goto LABEL_38;
    }

    if (*(v20 + 99))
    {
      v6 = 0;
LABEL_38:
      v13 = 1;
      goto LABEL_39;
    }
  }

  v6 = v8;
  v13 = 0;
  v4 = v20;
LABEL_39:
  *(v4 + 98) = 0;
  obj_unlock(v4, 2);
  obj_release(v20);
  if ((v13 & 1) == 0)
  {
    tx_leave(a1, v19, 0);
  }

  if (v6 | v5)
  {
    return v6;
  }

  else
  {
    return 2;
  }
}

void sub_100006948(void *a1)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_100005138(a1, &v4))
  {
    obj_lock(v4, 2);
    v2 = v4;
    ++*(v4 + 99);
    obj_unlock(v2, 2);
    v3 = a1[53];
    if (v3)
    {
      obj_release(v3);
      a1[53] = 0;
    }

    obj_release(v4);
  }
}

uint64_t sub_1000069C0(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_1000069F4(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  if (!a2)
  {
    return 22;
  }

  v6 = a1 + 432;
  for (i = 432; i != 464; i += 8)
  {
    v8 = *(a1 + i);
    if (v8 && obj_oid(*(a1 + i)) == a2)
    {
      obj_retain(v8);
      v14 = 0;
      *a3 = v8;
      return v14;
    }
  }

  obj_lock(a1, 2);
  v9 = 0;
  v10 = -1;
  do
  {
    v11 = a1 + 8 * v9;
    v12 = *(v11 + 432);
    if (v12)
    {
      if (obj_oid(*(v11 + 432)) == a2)
      {
        obj_retain(v12);
        *a3 = v12;
        obj_unlock(a1, 2);
        return 0;
      }
    }

    else if (v10 == -1)
    {
      v10 = v9;
    }

    ++v9;
  }

  while (v9 != 4);
  if (a2 < 0)
  {
    v14 = btree_get(a1, 2281701376, a2 & 0x7FFFFFFFFFFFFFFFLL, 0, 0, 0, 10, sub_1000069C0, 0, a3);
  }

  else
  {
    v14 = btree_get(a1, 0x40000000, a2, 0, 0, 0, 10, sub_1000069C0, 0, a3);
    if (!v14 && v10 != -1)
    {
      v13 = *a3;
      *(v6 + 8 * v10) = *a3;
      obj_retain(v13);
      v14 = 0;
    }
  }

  obj_unlock(a1, 2);
  return v14;
}

uint64_t sub_100006B94(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[2] = v5;
  v14[3] = v5;
  v14[0] = v5;
  v14[1] = v5;
  v6 = sub_1000069F4(a1, a2, &v19);
  if (!v6)
  {
    v18 = 0;
    bt_iterator_init(v14, v19, 0, 0, &v18, 8, 8u, &v16, 0x10u);
    v6 = v7;
    if (!v7)
    {
      v9 = 0;
      while (!bt_iterator_ended(v14))
      {
        if (v18 == v9)
        {
          v6 = 0;
        }

        else
        {
          v6 = nx_corruption_detected_int(a1);
        }

        if (nx_superblock_sanity_check_extent(*(a1 + 376), 0, v16, v17, 0))
        {
          v6 = nx_corruption_detected_int(a1);
        }

        v10 = v17;
        if (v17 > a3 - v9)
        {
          v6 = nx_corruption_detected_int(a1);
          v10 = v17;
        }

        if (v6)
        {
          goto LABEL_3;
        }

        v9 += v10;
        v11 = bt_iterator_next(v14);
        if (v11)
        {
          v6 = v11;
          v12 = (*(a1 + 384) + 212);
          v13 = strerror(v11);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_fragmented_sanity_check", 2351, v12, v13, v6);
          goto LABEL_3;
        }
      }

      if (a3 == v9)
      {
        v6 = 0;
      }

      else
      {
        v6 = nx_corruption_detected_int(a1);
      }
    }

LABEL_3:
    obj_release(v19);
  }

  return v6;
}

uint64_t sub_100006D48(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = sub_1000069F4(a1, a2, &v16);
  if (!v8)
  {
    v15 = a3;
    v11 = 16;
    v12 = 8;
    v8 = bt_lookup_variant(v16, 0, &v15, &v12, 8u, &v13, &v11, 1u, 0, 0);
    if (!v8)
    {
      v9 = v14 - (a3 - v15);
      if (v14 <= a3 - v15)
      {
        v8 = 2;
      }

      else
      {
        *a4 = v13 + a3 - v15;
        v8 = 0;
        if (a5)
        {
          *a5 = v9;
        }
      }
    }

    obj_release(v16);
  }

  return v8;
}

uint64_t sub_100006E1C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v8 = *(a1 + 480);
  if (!v8)
  {
    v15 = a2;
    v12 = 8;
    v11 = 16;
    LODWORD(result) = bt_lookup_variant(*(a1 + 464), 0, &v15, &v12, 8u, &v13, &v11, 1u, 0, 0);
    if (result || (v10 = v15, a2 - v15 >= v14))
    {
      if (result == 2)
      {
        result = 0;
      }

      else
      {
        result = result;
      }

      if (a3 < 2 || result)
      {
        return result;
      }

      v15 = a2;
      v11 = 16;
      v12 = 8;
      LODWORD(result) = bt_lookup_variant(*(a1 + 464), 0, &v15, &v12, 8u, &v13, &v11, 4u, 0, 0);
      if (result || (v10 = v15, v15 - a2 >= a3))
      {
        if (result == 2)
        {
          return 0;
        }

        else
        {
          return result;
        }
      }
    }

    if (a4)
    {
      *a4 = v10;
    }

    return 17;
  }

  if (calc_overlap_range(*(a1 + 472), v8, a2, a3, a4))
  {
    return 17;
  }

  if (!a2)
  {
    if (a4)
    {
      *a4 = 0;
    }

    return 17;
  }

  return 0;
}

uint64_t sub_100006F68(uint64_t a1, unint64_t a2, int a3, char a4, int a5)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (a4)
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[0] = v6;
    v15[1] = v6;
    v15[2] = v6;
    v15[3] = v6;
    v16 = 0xAAAAAAAAAAAAAAAALL;
    v7 = sub_1000069F4(a1, a2, &v20);
    if (v7)
    {
      return v7;
    }

    v8 = btree_iterate_nodes(v20, 0, 0, sub_1000071C4, 0, 0);
    if (!v8)
    {
      v19 = 0;
      bt_iterator_init(v15, v20, 0, 0, &v19, 8, 8u, &v17, 0x10u);
      v7 = v11;
      if (bt_iterator_ended(v15))
      {
        goto LABEL_9;
      }

      while (1)
      {
        v8 = sub_1000070E0(a1, v17, v18, 0);
        if (v8)
        {
          break;
        }

        v12 = bt_iterator_next(v15);
        if (v12)
        {
          v7 = v12;
          v13 = (*(a1 + 384) + 212);
          v14 = strerror(v12);
          log_err("%s:%d: %s failed to get next extent in metadata fragmented extent list tree, error %s(%d)\n", "nx_metadata_range_add", 2587, v13, v14, v7);
          goto LABEL_9;
        }

        if (bt_iterator_ended(v15))
        {
          v7 = 0;
          goto LABEL_9;
        }
      }
    }

    v7 = v8;
LABEL_9:
    obj_release(v20);
    return v7;
  }

  v9 = a3 & 0x7FFFFFFF;

  return sub_1000070E0(a1, a2, v9, a5);
}

uint64_t sub_1000070E0(uint64_t a1, unint64_t a2, unint64_t a3, int a4)
{
  if (nx_superblock_sanity_check_extent(*(a1 + 376), 0, a2, a3, a4))
  {
    return 22;
  }

  if (*(a1 + 464))
  {
    result = sub_100006E1C(a1, a2, a3, 0);
    if (result)
    {
      return result;
    }

    goto LABEL_5;
  }

  result = btree_create(a1, 2281701376, 0, 10, 0, 8u, 16, sub_1000069C0, 0, (a1 + 464));
  if (!result)
  {
LABEL_5:
    v8[1] = a3;
    v9 = a2;
    v8[0] = a2;
    return bt_insert(*(a1 + 464), 0, &v9, 8, v8, 0x10u, 0);
  }

  return result;
}

uint64_t sub_1000071C4(uint64_t a1)
{
  v2 = *(*a1 + 392);
  v3 = obj_oid(a1);
  v4 = (obj_size_phys(a1) + *(*(v2 + 376) + 36) - 1) / *(*(v2 + 376) + 36);

  return sub_1000070E0(v2, v3, v4, 0);
}

const char *sub_100007234(const char *result)
{
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = 0xAAAAAAAAAAAAAAAALL;
  *(result + 59) = 0;
  *(result + 60) = 0;
  v1 = *(result + 58);
  if (v1)
  {
    v2 = result;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9[2] = v3;
    v9[3] = v3;
    v9[0] = v3;
    v9[1] = v3;
    v11[1] = 0;
    v13 = 0;
    bt_iterator_init(v9, v1, 0, 0, &v13, 8, 8u, &v12, 0x10u);
    result = bt_iterator_ended(v9);
    if (!result)
    {
      v4 = 0;
      while (1)
      {
        v5 = v12;
        if (v12)
        {
          v6 = *(&v12 + 1);
          if (*(&v12 + 1))
          {
            goto LABEL_9;
          }
        }

        else
        {
          v6 = *(&v12 + 1) - 1;
          *&v12 = 1;
          *(&v12 + 1) = v6;
          v5 = 1;
          if (v6)
          {
LABEL_9:
            if (v11[1] && v11[0] + v11[1] == v5)
            {
              v11[1] += v6;
              if (bt_update(*(v2 + 58), 0, v11, 8, v11, 0x10u, 0))
              {
                v7 = *(v2 + 48) + 212;
                return log_err("%s:%d: %s error updating metadata ranges tree: %d\n");
              }

              if (bt_remove(*(v2 + 58), 0, &v12, 8u, 0))
              {
                v8 = *(v2 + 48) + 212;
                return log_err("%s:%d: %s error removing coalesced extent from metadata ranges tree: %d\n");
              }
            }

            else
            {
              ++v4;
              *v11 = v12;
            }
          }
        }

        bt_iterator_next(v9);
        result = bt_iterator_ended(v9);
        if (result)
        {
          if (v4 == 1)
          {
            *(v2 + 472) = *v11;
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000073E8(uint64_t a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 376);
  v4 = *(v3 + 104);
  if ((v4 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v7 = *(v3 + 112);
  if (v4 < 0)
  {
    return sub_100006D48(a1, v7, a2, a3, 0);
  }

  result = 0;
  *a3 = v7 + a2;
  return result;
}

uint64_t sub_10000742C(uint64_t a1, unint64_t a2, void *a3, unint64_t *a4)
{
  v4 = *(a1 + 376);
  v5 = *(v4 + 108);
  v6 = (v5 & 0x7FFFFFFF) - a2;
  if ((v5 & 0x7FFFFFFFu) <= a2)
  {
    return 22;
  }

  v10 = *(v4 + 120);
  if (v5 < 0)
  {
    return sub_100006D48(a1, v10, a2, a3, a4);
  }

  *a3 = v10 + a2;
  result = 0;
  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

uint64_t sub_100007478(void *a1)
{
  if (*(a1[47] + 1256))
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    v12 = 0;
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v2 = tx_enter(a1, &v12);
    if (v2)
    {
      return v2;
    }

    v4 = sub_100004734(a1, 0x40000000u, *(a1[47] + 1256), 1, 1, &v11);
    if (v4)
    {
      v3 = v4;
      log_err("%s:%d: %s failed to get mapping tree, error: %d\n", "nx_unblock_physical_range", 2929, (a1[48] + 212), v4);
      goto LABEL_12;
    }

    v3 = btree_delete(v11, v12, &v10);
    obj_release(v11);
    if (v3)
    {
      v8 = a1[48] + 212;
      log_err("%s:%d: %s failed to delete mapping, error: %d\n");
      goto LABEL_12;
    }

    *(a1[47] + 1256) = 0;
    v2 = tx_leave(a1, v12, 0);
    if (v2)
    {
      return v2;
    }
  }

  v12 = 0;
  v3 = tx_enter(a1, &v12);
  if (v3)
  {
    return v3;
  }

  v5 = sub_100012C88(a1, v12);
  if (!v5)
  {
    return tx_leave(a1, v12, 0);
  }

  v3 = v5;
  v9 = a1[48] + 212;
  log_err("%s:%d: %s spaceman_unset_block_out_range failed with error %u\n");
LABEL_12:
  v6 = tx_leave(a1, v12, 0);
  if (v6)
  {
    log_err("%s:%d: %s tx_leave failed with error: %d\n", "nx_unblock_physical_range", 2973, (a1[48] + 212), v6);
  }

  return v3;
}

uint64_t sub_10000762C(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  timestamp = get_timestamp();
  if ((timestamp - *(a1 + 1056)) >= 0x3B9ACA01)
  {
    v3 = 0;
    *(a1 + 1056) = timestamp;
LABEL_6:
    *(a1 + 1064) = v3 + 1;
    return 1;
  }

  v3 = *(a1 + 1064);
  if (v3 <= 0xF)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t sub_1000076A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = *(a2 + 376);
  v5 = *(v4 + 48);
  if (!v5)
  {
    return 0;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v8 = obj_get(*(a1 + 392), 2147483649, v5, &xmmword_100051748, 0, 0, 0, a3, &v20);
  if (v8)
  {
    v9 = v8;
    log_err("%s:%d: %s failed to get reap list head: %d\n", "nx_reaper_next_record", 1597, (*(a1 + 384) + 212), v8);
    return v9;
  }

  v10 = v20;
  if (*(v4 + 88))
  {
LABEL_21:
    obj_release(v10);
    return 0;
  }

  v11 = v20[47];
  while (1)
  {
    while (1)
    {
      v12 = *(v11 + 52);
      if (v12 == -1)
      {
        break;
      }

      v13 = v11 + 64 + 40 * v12;
      *(v4 + 104) = *(v13 + 4);
      *(v4 + 72) = *(v13 + 8);
      *(v4 + 80) = *(v13 + 16);
      *(v4 + 96) = *(v13 + 32);
      obj_dirty(a2, a3, 0);
      v14 = *v13;
      if (*(v11 + 52) == *(v11 + 56))
      {
        *(v11 + 56) = v14;
      }

      *v13 = *(v11 + 60);
      *(v13 + 4) = 0;
      *(v11 + 60) = v12;
      --*(v11 + 48);
      *(v11 + 52) = v14;
      obj_dirty(v20, a3, 0);
      if (*(v4 + 88))
      {
        goto LABEL_20;
      }
    }

    v15 = *(v11 + 32);
    if (!v15)
    {
      if (!*(v4 + 68) && *(v4 + 48) == *(v4 + 56))
      {
        *(v4 + 68) = 1;
        obj_dirty(a2, a3, 0);
      }

LABEL_20:
      v10 = v20;
      goto LABEL_21;
    }

    v16 = obj_get(*(a1 + 392), 0x80000000, v15, &xmmword_100051748, 0, 0, 0, a3, &v19);
    if (v16)
    {
      break;
    }

    *(v4 + 48) = *(v11 + 32);
    v17 = *(v4 + 68);
    if (v17)
    {
      *(v4 + 68) = v17 - 1;
    }

    obj_dirty(a2, a3, 0);
    obj_free(v20);
    obj_release(v20);
    v10 = v19;
    v19 = 0;
    v20 = v10;
    v11 = v10[47];
    if (*(v4 + 88))
    {
      goto LABEL_21;
    }
  }

  v9 = v16;
  obj_release(v20);
  return v9;
}

uint64_t sub_1000078E0(uint64_t a1)
{
  sub_100007AD0(a1, a1 + 136, "Total");
  sub_100007AD0(a1 + 1744, a1 + 1880, "MetaZone");
  puts("Chunk free fragments count distribution");
  printf("full chunks:  %llu\n", *(a1 + 272));
  printf("empty chunks: %llu\n", *(a1 + 280));
  printf("fullness %% |");
  v2 = 0.0;
  v3 = 15;
  do
  {
    v4 = exp2(v2);
    printf("%10u,", v4);
    v2 = v2 + 1.0;
    --v3;
  }

  while (v3);
  putchar(10);
  v5 = 0;
  v6 = a1 + 288;
  do
  {
    if (v5 == 9)
    {
      printf("[%3u, %3s) |");
    }

    else
    {
      printf("[%3u, %3u) |");
    }

    for (i = 0; i != 120; i += 8)
    {
      printf("%10llu,", *(v6 + i));
    }

    putchar(10);
    ++v5;
    v6 += 120;
  }

  while (v5 != 10);
  putchar(10);
  result = puts("DataZones highest frag count recent chunks");
  v9 = 0;
  v10 = (a1 + 1616);
  do
  {
    v11 = v10;
    v12 = 4;
    do
    {
      if (*v11 <= 6uLL)
      {
        result = printf("DataZone ID %u history idx %llu frags %llu\n", v9, *v11, *(v11 - 16));
      }

      ++v11;
      --v12;
    }

    while (v12);
    ++v9;
    v10 += 4;
  }

  while (v9 != 4);
  return result;
}

uint64_t sub_100007AD0(uint64_t a1, uint64_t a2, const char *a3)
{
  printf("%s free fragments length distribution\n", a3);
  for (i = 0; i != 17; ++i)
  {
    v6 = vcvts_n_f32_u64(*(a2 + 8 * i), 8uLL);
    if (i <= 3)
    {
      v9 = *(a1 + 8 * i);
      printf("%5llu == len    %5s | %8llu frags | %10.02f MiB \n");
      continue;
    }

    if (i != 4)
    {
      if (i == 16)
      {
        v7 = *(a1 + 8 * i);
        printf("%5llu <= len    %5s | %8llu frags | %10.02f MiB \n");
        continue;
      }

      exp2((i - 2));
    }

    exp2((i - 1));
    v10 = *(a1 + 8 * i);
    printf("%5llu <= len  < %5llu | %8llu frags | %10.02f MiB \n");
  }

  return putchar(10);
}

FILE *sub_100007C1C(FILE *result, void *a2)
{
  if (result)
  {
    v3 = result;
    fprintf(result, "%s=", "smFragCountDist");
    fprintf(v3, "%llu", *a2);
    for (i = 0; i != 16; ++i)
    {
      fprintf(v3, ":%llu", a2[i + 1]);
    }

    fputc(10, v3);
    fprintf(v3, "%s=", "smFragSizeDist");
    fprintf(v3, "%llu", a2[17]);
    for (j = 0; j != 16; ++j)
    {
      fprintf(v3, ":%llu", a2[j + 18]);
    }

    fputc(10, v3);
    fprintf(v3, "%s=%llu\n", "smChunksFull", a2[34]);
    fprintf(v3, "%s=%llu\n", "smChunksEmpty", a2[35]);
    fprintf(v3, "%s=", "smChunkFullnessFragDist");
    fprintf(v3, "%llu", a2[36]);
    for (k = 37; k != 186; ++k)
    {
      fprintf(v3, ":%llu", a2[k]);
    }

    fputc(10, v3);
    fprintf(v3, "%s=", "smChunkFragsForDataZone");
    fprintf(v3, "%llu", a2[186]);
    for (m = 0; m != 15; ++m)
    {
      fprintf(v3, ":%llu", a2[m + 187]);
    }

    fputc(10, v3);
    fprintf(v3, "%s=", "smChunkIndexForDataZone");
    fprintf(v3, "%llu", a2[202]);
    for (n = 0; n != 15; ++n)
    {
      fprintf(v3, ":%llu", a2[n + 203]);
    }

    fputc(10, v3);
    fprintf(v3, "%s=", "smFragCountMetaZoneDist");
    fprintf(v3, "%llu", a2[218]);
    for (ii = 0; ii != 16; ++ii)
    {
      fprintf(v3, ":%llu", a2[ii + 219]);
    }

    fputc(10, v3);
    fprintf(v3, "%s=", "smFragSizeMetaZoneDist");
    fprintf(v3, "%llu", a2[235]);
    for (jj = 0; jj != 16; ++jj)
    {
      fprintf(v3, ":%llu", a2[jj + 236]);
    }

    return fputc(10, v3);
  }

  return result;
}

uint64_t sub_100007FB4(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = 0xAAAAAAAA00000000;
  return sub_100007FE4(v2);
}

uint64_t sub_100007FE4(uint64_t a1)
{
  v1 = __chkstk_darwin(a1);
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = v8;
  v10 = v1;
  if (v2 && v3)
  {
    *v2 = 0;
    *v3 = 0;
  }

  bzero(&v84, 0x9A8uLL);
  bzero(v9, 0x7E0uLL);
  memset_pattern16((v9 + 1616), &unk_100051760, 0x80uLL);
  if (*v10)
  {
    v11 = v10[2];
    memset(__b, 170, 0x978uLL);
    outputStructCnt[0] = 2424;
    v12 = IOConnectCallStructMethod(v11, 6u, 0, 0, __b, outputStructCnt);
    v13 = rc_to_errno(v12);
    *v85 = vmovn_s64(__b[0]);
    *&v85[8] = __b[1].tv_sec;
    memcpy(v86, &__b[2].tv_nsec, sizeof(v86));
    memcpy(v87, &__b[77], sizeof(v87));
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v14 = *(v10 + 1);
    __b[0].tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v13 = sub_100009C74(v14, &__b[0].tv_sec);
    if (!v13)
    {
      v38 = *(__b[0].tv_sec + 376);
      *v85 = *(v38 + 336);
      *&v85[4] = *(v38 + 32);
      v13 = sub_100009CF8(v14, 0, v86);
      if (!v13)
      {
        v13 = sub_100009CF8(v14, 1u, v87);
      }

      obj_release(__b[0].tv_sec);
      if (!v13)
      {
LABEL_9:
        v84 = v9;
        v90 = v7;
        v91 = v6;
        v96 = v5;
        if (v5 != -1)
        {
          v97 = *&v85[8];
          __b[0].tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          __b[0].tv_sec = 0xAAAAAAAAAAAAAAAALL;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, __b);
          tv_sec = __b[0].tv_sec;
          v95 = SLODWORD(__b[0].tv_nsec) / 1000;
        }

        if (*&v85[10] || (v15 = (2 * (*&v87[32] + *&v86[32])), v15 > 0x100000))
        {
          v16 = 0;
          v88 = 0;
        }

        else
        {
          v88 = malloc_type_calloc(1uLL, (2 * (*&v87[32] + *&v86[32])), 0xD757AA42uLL);
          v16 = malloc_type_calloc(1uLL, v15, 0x65BD105AuLL);
        }

        v89 = v16;
        if (*v10)
        {
          v17 = v10[2];
          v18 = malloc_type_malloc(0xC3510uLL, 0x15FE2CB3uLL);
          if (!v18)
          {
            v13 = 12;
            goto LABEL_97;
          }

          v19 = v18;
          v77 = v9;
          v20 = 0;
          v21 = 0;
          v22 = 0;
          *v18 = 0;
          v23 = v18 + 4;
          v24 = (v18 + 2);
          v82 = (v18 + 3);
          do
          {
            outputStructCnt[0] = 800016;
            __b[0].tv_sec = 2;
            __b[0].tv_nsec = v20;
            memset(&__b[1], 170, 2408);
            v25 = IOConnectCallStructMethod(v17, 0x4Bu, __b, 0x18uLL, v19, outputStructCnt);
            v26 = rc_to_errno(v25);
            if (v26)
            {
              goto LABEL_42;
            }

            v27 = v19[1];
            if (v22 && v27)
            {
              if (v22 + v21 == *v24)
              {
                *v82 += v22;
                *v24 = v21;
              }

              else
              {
                v26 = sub_100008840(&v84, v21, v22);
                if (v26)
                {
                  goto LABEL_42;
                }
              }

              v22 = 0;
            }

            if (v27 < 2)
            {
              LODWORD(v28) = 0;
            }

            else
            {
              LODWORD(v28) = 0;
              v29 = (v27 & 0x7FFFFFFF) - 1;
              v30 = v23;
              do
              {
                v31 = &v24[2 * v28];
                v32 = v31[1];
                if (v32 + *v31 == *v30)
                {
                  v31[1] = v30[1] + v32;
                }

                else
                {
                  v28 = v28 + 1;
                  *&v24[2 * v28] = *v30;
                }

                v30 += 2;
                --v29;
              }

              while (v29);
              if (v28 >= 1)
              {
                v80 = v21;
                v33 = v17;
                v34 = v23;
                v35 = v28;
                v36 = v82;
                while (1)
                {
                  v26 = sub_100008840(&v84, *(v36 - 1), *v36);
                  if (v26)
                  {
                    goto LABEL_42;
                  }

                  v36 += 2;
                  if (!--v35)
                  {
                    v23 = v34;
                    v17 = v33;
                    v21 = v80;
                    break;
                  }
                }
              }
            }

            if (v27)
            {
              v37 = &v24[2 * v28];
              v21 = *v37;
              v22 = v37[1];
            }

            v20 = *v19;
          }

          while (*v19);
          if (v22)
          {
            v26 = sub_100008840(&v84, v21, v22);
LABEL_42:
            LODWORD(v13) = v26;
            goto LABEL_43;
          }

          LODWORD(v13) = 0;
LABEL_43:
          v9 = v77;
          free(v19);
        }

        else
        {
          LODWORD(v13) = sub_10000CDF0(*(v10 + 1), sub_100008840, &v84);
        }

        if (v13)
        {
          v13 = v13;
        }

        else
        {
          v13 = v93;
        }

        if (!v13)
        {
          v78 = v9;
          if (v88)
          {
            if (v89)
            {
              if (!v93)
              {
                v79 = (*&v87[32] + *&v86[32]);
                if (*&v87[32] + *&v86[32])
                {
                  v39 = 0;
                  do
                  {
                    v40 = *&v86[32];
                    v41 = *&v86[32] <= v39;
                    if (*&v86[32] > v39)
                    {
                      v40 = 0;
                    }

                    v42 = v39 - v40;
                    v43 = &v86[1192 * (*&v86[32] <= v39)];
                    if (v42 == *(v43 + 4) - 1)
                    {
                      v44 = *&v85[8];
                      v45 = v42 * *&v85[8];
                      v46 = *v43 - v45;
                    }

                    else
                    {
                      v46 = *&v85[8];
                      v45 = v42 * *&v85[8];
                      v44 = *&v85[8];
                    }

                    v47 = v84;
                    v48 = *(v88 + v39);
                    v49 = 100 * (v46 - v48) / v44;
                    v50 = *(v89 + v39);
                    if (v49 == 100)
                    {
                      v51 = (v84 + 272);
                    }

                    else if (v46 == v48)
                    {
                      v51 = (v84 + 280);
                    }

                    else
                    {
                      v52 = v49 / 0xA;
                      v53 = v84;
                      v54 = log2(v50);
                      v47 = v53;
                      v55 = v54;
                      if (v54 >= 0xE)
                      {
                        v55 = 14;
                      }

                      v51 = (v53 + 8 * (v55 - v52 + 16 * v52) + 288);
                    }

                    ++*v51;
                    if (*v85)
                    {
                      v56 = 0;
                      v57 = &v86[1192 * v41 + 128];
                      v81 = v47;
                      v83 = v39;
                      do
                      {
                        v58 = &v86[1192 * v41 + 136 * v56];
                        v59 = *(v58 + 116);
                        if ((v59 - 5) >= 0xFFFFFFFC)
                        {
                          v60 = 0;
                          v61 = v57;
                          v62 = v57;
                          while (1)
                          {
                            v63 = *v62;
                            v62 += 2;
                            if (v63)
                            {
                              if (*(v61 - 1) == v45)
                              {
                                break;
                              }
                            }

                            ++v60;
                            v61 = v62;
                            if (v60 == 7)
                            {
                              goto LABEL_88;
                            }
                          }

                          v64 = 0;
                          v65 = 4 * v59;
                          v66 = v47 + 32 * v59;
                          while (*(v66 + v64 + 1456) > v50)
                          {
                            v64 += 8;
                            if (v64 == 32)
                            {
                              goto LABEL_88;
                            }
                          }

                          v67 = v47 + 8 * v65 + v64;
                          if (v64 != 24)
                          {
                            v68 = 24 - v64;
                            memmove((v67 + 1464), (v67 + 1456), (24 - v64) & 0xFFFFFFF8);
                            v69 = v68 & 0xFFFFFFF8;
                            v39 = v83;
                            memmove((v67 + 1592), (v67 + 1584), v69);
                            v47 = v81;
                          }

                          v70 = *(v58 + 117);
                          v71 = ~v60 + v70;
                          v72 = v70 > v60;
                          LODWORD(v73) = v70 - v60 + 6;
                          if (v72)
                          {
                            v73 = v71;
                          }

                          else
                          {
                            v73 = v73;
                          }

                          *(v67 + 1456) = v50;
                          *(v67 + 1584) = v73;
                        }

LABEL_88:
                        ++v56;
                        v57 += 136;
                      }

                      while (v56 != 8);
                    }

                    ++v39;
                  }

                  while (v39 != v79);
                }
              }
            }
          }

          v13 = 0;
          if (!v90 || !v91)
          {
            goto LABEL_100;
          }

          v74 = *v91;
          if (!v74)
          {
            goto LABEL_95;
          }

          v75 = reallocf(*v90, 16 * v74);
          *v90 = v75;
          if (*v90)
          {
            qsort(*v90, *v91, 0x10uLL, sub_100008B40);
LABEL_95:
            v13 = 0;
LABEL_100:
            free(v88);
            free(v89);
            return v13;
          }

          v13 = 12;
          v9 = v78;
        }

LABEL_97:
        bzero(v9, 0x7E0uLL);
        memset_pattern16((v9 + 1616), &unk_100051760, 0x80uLL);
        if (v90 && v91)
        {
          free(*v90);
          *v90 = 0;
          *v91 = 0;
          v92 = 0;
        }

        goto LABEL_100;
      }
    }
  }

  return v13;
}

uint64_t sub_100008794(char *a1)
{
  connect = -1431655766;
  v1 = apfs_container_iouc(a1, 0, &connect, 0, 0);
  v2 = rc_to_errno(v1);
  if (!v2)
  {
    v6 = -1431655766;
    v4 = 0xAAAAAAAA00000001;
    v5 = connect;
    v2 = sub_100007FE4(&v4);
    IOServiceClose(connect);
  }

  return v2;
}

uint64_t sub_100008840(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = *a1 + 136;
  if (a3 <= 4)
  {
    v8 = a3 - 1;
  }

  else if (a3 >> 14)
  {
    v8 = 16;
  }

  else
  {
    v8 = (log2(a3) + 2.0);
  }

  if (v8 >= 0x10)
  {
    v8 = 16;
  }

  ++*(v6 + 8 * v8);
  *(v7 + 8 * v8) += a3;
  v9 = a1[8];
  if (v9 && a3 + a2 > v9 && a1[9] > a2)
  {
    v10 = v6 + 1744;
    v11 = v6 + 1880;
    if (a3 <= 4)
    {
      v12 = a3 - 1;
    }

    else if (a3 >> 14)
    {
      v12 = 16;
    }

    else
    {
      v12 = (log2(a3) + 2.0);
    }

    if (v12 >= 0x10)
    {
      v12 = 16;
    }

    ++*(v10 + 8 * v12);
    *(v11 + 8 * v12) += a3;
  }

  v13 = a1[301];
  if (v13)
  {
    v14 = a1[302];
    if (v14)
    {
      v15 = *(a1 + 4);
      v16 = 0xFFFFLL;
      if (v15 < 0xFFFF)
      {
        v16 = *(a1 + 4);
      }

      v17 = a3;
      v18 = a2;
      do
      {
        v19 = v18 / v15;
        v20 = v15 + v15 * (v18 / v15) - v18;
        if (v17 < v20)
        {
          v20 = v17;
        }

        v21 = *(v13 + 2 * v19);
        if (v20 + v21 > v16)
        {
          *(a1 + 611) = 55;
        }

        *(v13 + 2 * v19) = v21 + v20;
        ++*(v14 + 2 * v19);
        v18 += v20;
        v22 = v17 <= v20;
        v17 -= v20;
      }

      while (!v22);
    }
  }

  v23 = a1[303];
  if (v23)
  {
    v24 = a1[304];
    if (v24)
    {
      v25 = *(a1 + 610);
      if (v25 <= 0x3FFFFFFF)
      {
        if (!v25)
        {
          *a1[303] = malloc_type_malloc(0x10uLL, 0x1000040451B5BE8uLL);
          v24 = a1[304];
          *v24 = 0;
          v25 = 1;
          *(a1 + 610) = 1;
          v23 = a1[303];
        }

        if (*v24 >= v25)
        {
          *a1[303] = reallocf(*v23, 32 * v25);
          *(a1 + 610) *= 2;
          v23 = a1[303];
        }

        v26 = *v23;
        v27 = a1[304];
        if (!v26)
        {
          *v27 = 0;
          *(a1 + 610) = 0;
          return 12;
        }

        v28 = *v27;
        v29 = &v26[16 * v28];
        *v29 = a2;
        *(v29 + 1) = a3;
        *v27 = v28 + 1;
      }
    }
  }

  if (*(a1 + 616) == -1)
  {
    return 0;
  }

  v30 = *(a1 + 617);
  if (v30)
  {
    v31 = v30 - 1;
    *(a1 + 617) = v31;
    if (v31)
    {
      return 0;
    }
  }

  *(a1 + 617) = *(a1 + 4);
  __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  if (__tp.tv_sec - a1[306] - (*(a1 + 614) > SLODWORD(__tp.tv_nsec) / 1000) < *(a1 + 616))
  {
    return 0;
  }

  log_info("%s:%d: spaceman_stats took too more than %u seconds, aborting!\n", "spaceman_stats_free_extent_cb", 521, *(a1 + 616));
  return 60;
}

uint64_t sub_100008B40(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100008B58(uint64_t a1, unsigned int a2, _DWORD *a3)
{
  if (!a3)
  {
    return 22;
  }

  v3 = *a3;
  v4 = *(*a3 + 16);
  if (!v4)
  {
    return 22;
  }

  v5 = *(v3 + 128);
  if (!v5)
  {
    return 22;
  }

  v6 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v7 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v7;
  v8 = *(v3 + 32);
  v9 = *(v3 + 40);
  *(a1 + 64) = v8;
  *(a1 + 68) = v9;
  *(a1 + 72) = v4;
  v10 = *(v3 + 48);
  *(a1 + 96) = v10;
  v11 = *(v3 + 64);
  v12 = *(v3 + 72);
  *(a1 + 112) = v11;
  *(a1 + 116) = v12;
  *(a1 + 120) = v10;
  *(a1 + 152) = *(v3 + 104);
  v13 = *(v3 + 120);
  *(a1 + 144) = v6;
  *(a1 + 148) = v13;
  v14 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v15 = *(v3 + 112);
  *(a1 + 160) = v15;
  *(a1 + 164) = v5;
  *(a1 + 264) = v14;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v16 = 8 * v15 + 2520;
  *(a1 + 328) = v16;
  v17 = ((2 * v15 + 6) & 0xFFFFFFF8) + v16;
  *(a1 + 332) = v17;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v18 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v18 = 0;
  }

  else
  {
    v19 = (v18 + 7) & 0x1FFFFFFF8;
    v20 = vdupq_n_s64(v18 - 1);
    v21 = (v17 + a1 + 8);
    v22 = xmmword_100051790;
    v23 = xmmword_1000517A0;
    v24 = xmmword_1000516F0;
    v25 = xmmword_100051700;
    v26 = vdupq_n_s64(1uLL);
    v27 = vdupq_n_s64(8uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v20, v25));
      v29 = vaddq_s64(v25, v26);
      if (vuzp1_s8(vuzp1_s16(v28, *v20.i8), *v20.i8).u8[0])
      {
        *(v21 - 4) = v29.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v28, *&v20), *&v20).i8[1])
      {
        *(v21 - 3) = v29.i16[4];
      }

      v30 = vaddq_s64(v24, v26);
      if (vuzp1_s8(vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v24))), *&v20).i8[2])
      {
        *(v21 - 2) = v30.i16[0];
        *(v21 - 1) = v30.i16[4];
      }

      v31 = vaddq_s64(v23, v26);
      v32 = vmovn_s64(vcgeq_u64(v20, v23));
      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i32[1])
      {
        *v21 = v31.i16[0];
      }

      if (vuzp1_s8(*&v20, vuzp1_s16(v32, *&v20)).i8[5])
      {
        v21[1] = v31.i16[4];
      }

      v33 = vaddq_s64(v22, v26);
      if (vuzp1_s8(*&v20, vuzp1_s16(*&v20, vmovn_s64(vcgeq_u64(v20, *&v22)))).i8[6])
      {
        v21[2] = v33.i16[0];
        v21[3] = v33.i16[4];
      }

      v23 = vaddq_s64(v23, v27);
      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v21 += 8;
      v22 = vaddq_s64(v22, v27);
      v19 -= 8;
    }

    while (v19);
  }

  *(a1 + v17 + 2 * v18) = -1;
  v35 = v17 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v35;
  if (v9)
  {
    v8 = v9;
  }

  v36 = (v35 + 8 * v8);
  *(a1 + 128) = v36;
  if (v12)
  {
    v37 = v12;
  }

  else
  {
    v37 = v11;
  }

  if (8 * v37 + v36 <= a2)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100008DDC(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v81 = v4;
  v82 = v4;
  v79 = v4;
  v80 = v4;
  v77 = v4;
  v78 = v4;
  v75 = v4;
  v76 = v4;
  v73 = v4;
  v74 = v4;
  v71 = v4;
  v72 = v4;
  v70 = v4;
  v5 = *(v2 + 32);
  v6 = *(v3 + 376);
  v7 = *(v6 + 36);
  if (*(v3 + 624))
  {
    if (v5 == v7)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v6 + 40) || v5 != v7)
  {
    goto LABEL_9;
  }

LABEL_3:
  v8 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v13 = 2520;
    }

    else
    {
      v13 = 336;
    }

    v14 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v15 = 1;
    }

    else
    {
      v15 = 2;
    }

    if (v14 <= v13)
    {
      v8 = v13;
    }

    else
    {
      v8 = *(v2 + 340);
    }

    if (v14 >= v13)
    {
      v9 = *(v2 + 336) == 0;
    }

    else
    {
      v9 = v15;
    }
  }

  else
  {
    v9 = 0;
  }

  v16 = *(a1 + 48);
  v17 = sub_1000043F4(v5, *(v2 + 48), *(v6 + 180), &v70);
  if (v17)
  {
    return v17;
  }

  if (v8 < v16)
  {
    v18 = v9;
  }

  else
  {
    v18 = v9 + 1;
  }

  if (*(v2 + 36) != v75)
  {
    ++v18;
  }

  if (*(v2 + 40) != DWORD2(v75))
  {
    ++v18;
  }

  if (*(v2 + 44) != v76)
  {
    ++v18;
  }

  v19 = *(v2 + 48);
  if (*(v2 + 56) == *(&v71 + 1))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 + 1;
  }

  v21 = *(v2 + 64);
  v22 = *(v2 + 68);
  if (v21 != v72)
  {
    ++v20;
  }

  if (v22 != DWORD2(v72) && *(&v72 + 1) + v22 != 1)
  {
    ++v20;
  }

  if (*(v2 + 104) == *(&v73 + 1))
  {
    v24 = v20;
  }

  else
  {
    v24 = v20 + 1;
  }

  v25 = *(v2 + 112);
  v26 = *(v2 + 116);
  if (v25 != v74)
  {
    ++v24;
  }

  if (v26 != DWORD2(v74) && *(&v74 + 1) + v26 != 1)
  {
    ++v24;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v76 + 1))
  {
    ++v24;
  }

  v28 = *(v2 + 160);
  if (v28 != v77)
  {
    ++v24;
  }

  v29 = *(v2 + 164) & 0x7FFFFFFF;
  if (v29 > 0xFFFE)
  {
    ++v24;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v24;
  }

  if (v29 / v28 < 4)
  {
    ++v24;
  }

  if (*(v2 + 224) != v79)
  {
    ++v24;
  }

  if (*(v2 + 264) != DWORD2(v79))
  {
    ++v24;
  }

  if (*(v2 + 304) != v80)
  {
    ++v24;
  }

  v30 = *(v2 + 324);
  if (v30 < v8)
  {
    ++v24;
  }

  v31 = *(v2 + 328);
  if (v30 + 8 * v28 > v31)
  {
    ++v24;
  }

  v32 = *(v2 + 332);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v24;
  }

  v33 = *(v2 + 80);
  if (v32 + 2 * ((v29 + 3) & 0xFFFFFFFC) > v33)
  {
    ++v24;
  }

  v34 = *(v2 + 128);
  if (v22)
  {
    v21 = *(v2 + 68);
  }

  if (v33 + 8 * v21 <= v34)
  {
    v35 = v24;
  }

  else
  {
    v35 = v24 + 1;
  }

  if (v26)
  {
    v25 = *(v2 + 116);
  }

  if (v34 + 8 * v25 > *(a1 + 48))
  {
    ++v35;
  }

  if (*(v2 + 72) > v19)
  {
    ++v35;
  }

  v36 = *(v2 + 240);
  if (v36 < v19)
  {
    v37 = v35;
  }

  else
  {
    v37 = v35 + 1;
  }

  if (v36 && !*(v2 + 248))
  {
    ++v37;
  }

  v38 = *(v2 + 256);
  if (v38 <= obj_xid(a1))
  {
    v39 = v37;
  }

  else
  {
    v39 = v37 + 1;
  }

  v40 = *(v2 + 96);
  v41 = *(v2 + 120);
  v42 = *(v2 + 280);
  if (v40)
  {
    if (v41 > v40)
    {
      ++v39;
    }

    if (v42 < v40)
    {
      v43 = v39;
    }

    else
    {
      v43 = v39 + 1;
    }

    if (v42 && !*(v2 + 288))
    {
      ++v43;
    }

    v44 = *(v2 + 296);
    v45 = v44 > obj_xid(a1);
  }

  else
  {
    if (v41)
    {
      ++v39;
    }

    if (v42)
    {
      v46 = v39 + 1;
    }

    else
    {
      v46 = v39;
    }

    if (*(v2 + 288))
    {
      v43 = v46 + 1;
    }

    else
    {
      v43 = v46;
    }

    v45 = *(v2 + 296) != 0;
  }

  v47 = v43 + v45;
  v48 = *(v2 + 320);
  v49 = *(v2 + 164) & 0x7FFFFFFF;
  if (v48 != 0xFFFF && v49 <= v48)
  {
    ++v47;
  }

  v51 = *(v2 + 322);
  if (v51 != 0xFFFF && v49 <= v51)
  {
    ++v47;
  }

  if (!(v47 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v53 = *(v2 + 80);
    v54 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v55 = *(v2 + 48);
    *(a1 + 896) = v2 + v53;
    *(a1 + 904) = v2 + v54;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v55 >> 5;
    *(a1 + 1528) = *(v2 + 96) >> 5;
    if (*(v3 + 625) == 1)
    {
      *(a1 + 1536) = 0;
    }

    else if (*(v3 + 628) == 1)
    {
      *(a1 + 1536) = 32;
    }

    else
    {
      LODWORD(v70) = 0;
      dev_features(*(v3 + 384));
      if ((v70 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v56 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v56)
        {
          *(a1 + 1520) = v56;
        }

        if (*(a1 + 1528) > v56)
        {
          *(a1 + 1528) = v56;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v57 = 0;
    }

    else
    {
      v57 = obj_xid(a1);
    }

    v58 = 0;
    v59 = a1 + 1496;
    *(a1 + 920) = v57;
    v60 = 1;
    do
    {
      v61 = v60;
      v62 = v2 + 48 + 48 * v58;
      v65 = *(v62 + 8);
      v64 = (v62 + 8);
      v63 = v65;
      if (v65)
      {
        v66 = _apfs_calloc_typed(v63, 4uLL, 0x100004052888210uLL);
        *(v59 + 8 * v58) = v66;
        if (v66 && *v64)
        {
          v67 = 0;
          do
          {
            v68 = *(v59 + 8 * v58) + 4 * v67;
            *v68 = *(v2 + 36) & 0xFFFFFF | (*(v68 + 3) << 24);
            *(*(v59 + 8 * v58) + 4 * v67++ + 3) = 3;
          }

          while (v67 < *v64);
        }
      }

      else
      {
        *(v59 + 8 * v58) = 0;
      }

      v60 = 0;
      v58 = 1;
    }

    while ((v61 & 1) != 0);
    v12 = new_lock((a1 + 384));
    if (v12)
    {
      goto LABEL_164;
    }

    v12 = new_lock((a1 + 448));
    if (!v12)
    {
      v12 = new_lock((a1 + 512));
      if (!v12)
      {
        v12 = new_lock((a1 + 576));
        if (!v12)
        {
          v12 = new_lock((a1 + 640));
          if (!v12)
          {
            v12 = new_lock((a1 + 704));
            if (!v12)
            {
              v12 = new_cv((a1 + 768));
              if (!v12)
              {
LABEL_164:
                *(a1 + 1592) = _apfs_calloc_typed(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v12;
              }

              free_lock((a1 + 704));
            }

            free_lock((a1 + 640));
          }

          free_lock((a1 + 576));
        }

        free_lock((a1 + 512));
      }

      free_lock((a1 + 448));
    }

    free_lock((a1 + 384));
    goto LABEL_164;
  }

  v11 = v3;
LABEL_10:
  v12 = nx_corruption_detected_int(v11);
  if (!v12)
  {
    goto LABEL_130;
  }

  return v12;
}

uint64_t sub_100009440(uint64_t a1)
{
  _apfs_free(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  _apfs_free(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v2 = *(a1 + 1608);
  if (v2)
  {
    _apfs_free(v2, 16 * *(a1 + 1600));
  }

  v3 = *(a1 + 1592);
  if (v3)
  {
    _apfs_free(v3, 248);
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    _apfs_free(v4, 16 * *(a1 + 1538));
  }

  spaceman_datazone_destroy(a1);
  v5 = *(a1 + 1576);
  if (v5)
  {
    sub_10000095C(v5);
    _apfs_free(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    sub_10000095C(v6);
    _apfs_free(*(a1 + 1584), 1368);
  }

  free_lock((a1 + 384));
  free_lock((a1 + 448));
  free_lock((a1 + 512));
  free_lock((a1 + 576));
  free_lock((a1 + 640));
  free_lock((a1 + 704));
  free_cv((a1 + 768));
  return 0;
}

uint64_t sub_100009534(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (!a2)
  {
    goto LABEL_11;
  }

  v9 = *a2;
  v10 = *(a2 + 3);
  if (v5 == v7)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  if (*(v4 + 32) != v10)
  {
    v8 = v11;
  }

  v12 = v9 + 48 * *(a2 + 2);
  v13 = v10 == *(v12 + 68) - 1 ? *(v12 + 64) - *(v9 + 44) * v10 : *(v9 + 44);
  if (*(v4 + 36) == v13)
  {
LABEL_11:
    if (!v8)
    {
      return 0;
    }
  }

  return nx_corruption_detected_int(v6);
}

uint64_t sub_100009610(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = obj_size_phys(a1);
  v6 = *(*a1 + 392);
  v7 = *(*(v6 + 376) + 36);
  v8 = v5 != v7;
  if (a2)
  {
    v9 = *a2;
    v10 = *(a2 + 3);
    if (v5 == v7)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    if (*(v4 + 32) != v10)
    {
      v8 = v11;
    }

    v12 = v9 + 48 * *(a2 + 2);
    if (v10 == *(v12 + 64) - 1)
    {
      if (*(v4 + 36) != *(v12 + 56) - *(v9 + 40) * v10)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 36) != *(v9 + 40))
    {
      goto LABEL_12;
    }
  }

  if (!v8)
  {
    return 0;
  }

LABEL_12:

  return nx_corruption_detected_int(v6);
}

uint64_t sub_1000096FC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 320);
  if (v6 == 0xFFFF)
  {
    return 28;
  }

  if ((*(v5 + 164) & 0x7FFFFFFFu) <= v6)
  {

    return nx_corruption_detected_int(a1);
  }

  else
  {
    if (*(v5 + 322) == v6)
    {
      *(v5 + 322) = -1;
    }

    v10 = *(a2 + 888);
    *(v5 + 320) = *(v10 + 2 * v6);
    *(v10 + 2 * v6) = -1;
    obj_dirty(a2, a3, 0);
    *a5 = v6;

    return sub_100009C38(a1, v5, v6, a4);
  }
}

uint64_t sub_100009800(uint64_t a1, pthread_mutex_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0;
  v43 = 0;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (!xid_is_current_tx(a1, a3))
  {
    return 22;
  }

  v8 = 8 * *(v7 + 32);
  if (!v8)
  {
    return 22;
  }

  v34 = a4;
  pthread_mutex_lock(v5 + 7);
  v9 = v8;
  v37 = v5;
  v38 = v6;
  v35 = v8;
  v36 = v8;
LABEL_4:
  v10 = 0;
  v11 = *&v5[14].__opaque[8];
  v42 = 0;
  while (1)
  {
    v12 = *(v7 + 160);
    if (v10 > v12)
    {
LABEL_34:
      if (sub_10000A1D0(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      log_err("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", "spaceman_ip_block_alloc", 5413, (*(v6 + 384) + 212));
      v31 = 28;
      goto LABEL_38;
    }

    v13 = v11 / v9;
    v40 = v10;
    if (v10 == v12)
    {
      v14 = *&v5[14].__opaque[8] % v9;
      if (!v14)
      {
        goto LABEL_34;
      }
    }

    else
    {
      LODWORD(v14) = v13 == v12 - 1 ? *(v7 + 152) - (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) / v9 * v9 : v35;
    }

    v15 = *(*&v5[13].__opaque[40] + 2 * v13);
    v16 = v7;
    v17 = sub_100009C38(v6, v7, v15, &v44);
    if (v17 || (v17 = obj_get(*(v6 + 392), 1073741825, v44, &xmmword_1000517E0, 0, 0, 0, a3, &v46), v17))
    {
      v31 = v17;
      pthread_mutex_unlock(v5 + 7);
      return v31;
    }

    v18 = v11;
    v19 = v11 % v9;
    v20 = v46[7];
    if (bitmap_range_find_first(0, v20, v19, v14 - v19, &v45))
    {
      break;
    }

    v26 = v9 - v19 + v18;
    v7 = v16;
    if (v26 >= (*(v16 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = 0;
    }

    else
    {
      v11 = v26;
    }

    v5 = v37;
    v6 = v38;
LABEL_32:
    obj_release(v46);
    v10 = v40 + 1;
    if (v42)
    {
      v31 = 0;
LABEL_38:
      pthread_mutex_unlock(v5 + 7);
      *v34 = v42;
      return v31;
    }
  }

  v21 = v45;
  v22 = v45 + v13 * v9;
  v23 = *(v16 + 152);
  if ((v23 & 0x7FFFFFFFFFFFFFFFuLL) <= v22)
  {
    v31 = 22;
    goto LABEL_42;
  }

  v24 = v18;
  v7 = v16;
  if ((v23 & 0x8000000000000000) == 0)
  {
    v25 = *(v16 + 176) + v22;
    v42 = v25;
LABEL_24:
    bitmap_set_range(v20, v21, 1, v25);
    v5 = v37;
    v28 = a3;
    if (*(*&v37[13].__opaque[32] + 8 * v13) != a3)
    {
      v41 = 0;
      v29 = sub_1000096FC(v38, v37, a3, &v43, &v41);
      if (v29 || (v29 = sub_10000D764(v38, v37, v15, a3), v29))
      {
        v31 = v29;
        v32 = v37 + 7;
        goto LABEL_43;
      }

      v44 = v43;
      *(*&v37[13].__opaque[40] + 2 * v13) = v41;
      *(*&v37[13].__opaque[32] + 8 * v13) = a3;
      v7 = v16;
      v28 = a3;
    }

    v6 = v38;
    obj_dirty(v46, v28, v44);
    v30 = v24 - v19 + v45;
    if (v30 + 1 < (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = v30 + 1;
    }

    else
    {
      v11 = 0;
    }

    *&v37[14].__opaque[8] = v11;
    v9 = v36;
    goto LABEL_32;
  }

  v27 = sub_100006D48(v38, *(v16 + 176), v22, &v42, 0);
  if (!v27)
  {
    v21 = v45;
    v7 = v16;
    goto LABEL_24;
  }

  v31 = v27;
LABEL_42:
  v32 = v37 + 7;
LABEL_43:
  pthread_mutex_unlock(v32);
  obj_release(v46);
  return v31;
}

uint64_t sub_100009B88(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = nx_superblock_sanity_check_extent(*(a1 + 376), *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return sub_100006E1C(a1, a3, a4, 0);
  }

  return result;
}

uint64_t sub_100009BFC(uint64_t a1, uint64_t *a2)
{
  v3 = a2;
  if (!a2 && !sub_100009C74(a1, &v3))
  {
    obj_release(v3);
  }

  return 0;
}

uint64_t sub_100009C38(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return sub_100006D48(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t sub_100009C74(void *a1, uint64_t *a2)
{
  v3 = a1[51];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 152), &xmmword_1000517B0, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[51] = *a2;
LABEL_2:
    obj_retain(v3);
    return 0;
  }

  return result;
}

uint64_t sub_100009CF8(void *a1, unsigned int a2, int8x16_t *a3)
{
  v15 = 0;
  if (a2 > 1)
  {
    return 22;
  }

  result = sub_100009C74(a1, &v15);
  if (!result)
  {
    v7 = *&v15[5].__opaque[48];
    pthread_mutex_lock(v15 + 6);
    spaceman_zone_info_on_tier(a1, v15, a2, a3);
    pthread_mutex_lock(v15 + 9);
    v8 = (v7 + 48 * a2);
    v9 = v8[7];
    a3->i64[0] = v8[6];
    v10 = v15;
    v11 = &v15->__sig + a2;
    v12 = *(v7 + 40 * (a2 + 1) + 200) + v8[9] - v11[104];
    a3->i64[1] = v12;
    a3->i64[1] = v11[123] + v12;
    a3[2].i64[0] = v9;
    v13 = v8[8];
    v14.i64[0] = v13;
    v14.i64[1] = HIDWORD(v13);
    a3[1] = vextq_s8(v14, v14, 8uLL);
    pthread_mutex_unlock(v10 + 9);
    pthread_mutex_unlock(v15 + 6);
    obj_release(&v15->__sig);
    return 0;
  }

  return result;
}

uint64_t sub_100009DFC(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
{
  v11 = a1;
  if (obj_type(a1) == 13)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v11 = *(v12 + 392);
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_100009C74(v11, &v24);
  if (v13)
  {
    if (a3)
    {
      *a3 = 0;
    }

    if (a4)
    {
LABEL_10:
      *a4 = 0;
    }
  }

  else
  {
    v15 = *&v24[5].__opaque[48];
    pthread_mutex_lock(v24 + 9);
    if (v12)
    {
      p_sig = &v24->__sig;
      v17 = *(v12 + 376);
      v19 = *(v17 + 72);
      v18 = *(v17 + 80);
      v20 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      if (v18 >= v20)
      {
        v21 = *(*&v24[5].__opaque[48] + 96) + *(*&v24[5].__opaque[48] + 48) - *(*&v24[5].__opaque[48] + 184) + v19;
      }

      else
      {
        v21 = v18;
      }

      if (v18)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }
    }

    else
    {
      v22 = *(v15 + 96) + *(v15 + 48);
      p_sig = &v24->__sig;
    }

    v23 = sub_100009F38(p_sig, v12, a2, a6);
    pthread_mutex_unlock(v24 + 9);
    obj_release(&v24->__sig);
    if (a3)
    {
      *a3 = v22;
    }

    if (a4)
    {
      *a4 = v23;
    }

    a4 = a5;
    if (a5)
    {
      goto LABEL_10;
    }
  }

  return v13;
}

unint64_t sub_100009F38(uint64_t *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    sub_100009BFC(0, a1);
    v8 = a1[47];
  }

  if (a2)
  {
    v9 = *(a2 + 408);
    v10 = *(a2 + 376);
    v12 = v10[10];
    v11 = v10[11];
    v13 = v10[9];
    v14 = v12 - (v11 + v9);
    if (v12 < v11 + v9)
    {
      v14 = 0;
    }

    if (v13 - v11 >= v14)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13 - v11;
    }

    if (v12 <= v11 + v9)
    {
      v16 = v13 - v11;
    }

    else
    {
      v16 = v15;
    }

    v17 = v16 >= v9;
    v18 = v16 - v9;
    if (!v17)
    {
      v18 = 0;
    }

    if (v13 <= v11)
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
    v14 = 0;
  }

  v19 = v8[30] + v8[9] + a1[123] + v8[15] + v8[35] + a1[124];
  v21 = v8[23];
  v20 = v8[24];
  v17 = v21 >= v20;
  v22 = v21 - v20;
  if (v17)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = a1[105] + a1[104];
  v25 = a1[108];
  v17 = v24 >= v25;
  v26 = v24 - v25;
  if (!v17)
  {
    v26 = 0;
  }

  v27 = v26 + v23;
  v17 = v19 >= v27;
  v28 = v19 - v27;
  if (!v17)
  {
    v28 = 0;
  }

  if (!a1[202])
  {
    v41 = v28 + v18;
    if (!a2)
    {
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  v29 = a1[204];
  v17 = v26 >= v29;
  v30 = v26 - v29;
  if (!v17)
  {
    v30 = 0;
  }

  v31 = a1[203];
  v32 = a1[205];
  v17 = v31 >= v32;
  v33 = v31 - v32;
  if (!v17)
  {
    v33 = 0;
  }

  v17 = v33 >= v29;
  v34 = v33 - v29;
  if (!v17)
  {
    v34 = 0;
  }

  v35 = a1[206];
  v36 = a1[207];
  v17 = v35 >= v36;
  v37 = v35 - v36;
  if (!v17)
  {
    v37 = 0;
  }

  v17 = v37 >= v30;
  v38 = v37 - v30;
  if (!v17)
  {
    v38 = 0;
  }

  v39 = v38 + v34;
  v17 = v28 >= v39;
  v40 = v28 - v39;
  if (!v17)
  {
    v40 = 0;
  }

  v41 = v38 + v18 + v40;
  if (a2)
  {
LABEL_39:
    if (v41 < v14)
    {
      v14 = v41;
    }

    if (*(*(a2 + 376) + 80))
    {
      v41 = v14;
    }
  }

LABEL_43:
  v42 = v7[9] - v24 + v7[15];
  if (a4)
  {
    *a4 = v42 < v41;
  }

  if (v42 >= v41)
  {
    return v41;
  }

  else
  {
    return v42;
  }
}

uint64_t sub_10000A0D8(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = dev_features(*(result + 384));
    if (result)
    {
      if (!a4)
      {
        return result;
      }
    }

    else if ((a4 & 1) == 0)
    {
      return result;
    }

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    tv_nsec = __tp.tv_nsec;
    *a2 = __tp.tv_sec;
    tv_nsec /= 1000;
    *(a2 + 8) = tv_nsec;
    v9 = 1000000 * tv_sec + tv_nsec;
    *(a2 + 16) = v9;
    *(a2 + 24) = v9;
    if (a3)
    {
      v10 = a3;
    }

    else
    {
      v10 = 30;
    }

    *(a2 + 60) = v10;
    *(a2 + 62) = 1;
    *(a2 + 63) = a4 & 1;
  }

  return result;
}

uint64_t sub_10000A1D0(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, unint64_t a6)
{
  v6 = a5;
  v7 = *(a2 + 376);
  v69 = 0;
  memset(v68, 170, sizeof(v68));
  v56 = v7;
  v55 = *(v7 + 36);
  v8 = 1540;
  if (!a3)
  {
    v8 = 1542;
  }

  v54 = (a2 + 1542);
  if (a3)
  {
    v9 = (a2 + 1540);
  }

  else
  {
    v9 = (a2 + 1542);
  }

  if (a3)
  {
    v10 = 1560;
  }

  else
  {
    v10 = 1552;
  }

  if (a3)
  {
    v11 = 1568;
  }

  else
  {
    v11 = 1569;
  }

  v12 = *(a2 + v8);
  if (*(a2 + v8))
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (a2 + 512);
    v61 = (a2 + 448);
    do
    {
      if ((a4 & 2) == 0)
      {
        v13 = 16;
      }

      v17 = *(a2 + v10);
      *(a2 + v11) = 1;
      if (a3)
      {
        pthread_mutex_unlock(v16);
        v18 = v16;
      }

      else
      {
        v18 = v61;
        pthread_mutex_unlock(v61);
      }

      v14 += v17;
      v15 += v12;
      __rqtp = xmmword_100051710;
      nanosleep(&__rqtp, 0);
      pthread_mutex_lock(v18);
      v12 = *v9;
    }

    while (*v9);
    v6 = a5;
    if (v13)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  v19 = a3;
  if (!sub_10000B310(a1, a2, a3, 0, 0, &v69) && v69)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v67 = 8;
    v20 = bt_lookup_first(v69, 0, v68, &__rqtp, &v68[2], &v67);
    v21 = v68[0];
    if (a3 && !*(a2 + 1544))
    {
      pthread_mutex_lock((a2 + 384));
    }

    if (v20)
    {
LABEL_29:
      if (*(a2 + 1544))
      {
        sub_1000130B8(a1, a2, v19, v6, a6);
      }

      else
      {
        dev_unmap_flush(*(a1 + 384));
        if (v19)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_100012E9C(a1, v6);
      }

      obj_release(v69);
      return v14;
    }

    v23 = 0;
    v57 = v56 + 40 * a3;
    v62 = 2;
    while (1)
    {
      if ((v23 & 1) == 0 && obj_modify(a2, 0, a6))
      {
        goto LABEL_29;
      }

      if (v67)
      {
        v24 = v68[2];
      }

      else
      {
        v68[2] = 1;
        v24 = 1;
      }

      v25 = v68[0];
      if (v68[0] <= a6)
      {
        if (v68[0] > v21)
        {
          *(v57 + 216) = v68[0];
          if ((a4 & 2) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(a1 + 632) == 1)
        {
          v26 = *(a1 + 376);
          if (v25 >= *(v26 + 1408))
          {
            if (*(a2 + 928 + 8 * v19) < a6)
            {
              *(a2 + 928 + 8 * v19) = a6;
              log_info("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", "spaceman_free_completed", 6486, (*(a1 + 384) + 212), v19, v25, *(v26 + 1408));
            }

            goto LABEL_29;
          }
        }

        v27 = *(a2 + 920);
        if (v25 > v27)
        {
          if ((a4 & 3) != 0 && v62 && v25 != a6)
          {
            tx_barrier(a1, 208);
            --v62;
            v25 = v68[0];
            v27 = *(a2 + 920);
          }

          if (v25 > v27)
          {
            goto LABEL_29;
          }
        }

        if (v19)
        {
          if (sub_10000AE1C(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = sub_100009B88(a1, a2, v68[1], v68[2]);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            sub_100012F74(a1, a2, v19, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_59:
            if (sub_10000762C(a1))
            {
              log_err("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", "spaceman_free_completed", 6544, (*(a1 + 384) + 212), a3, v68[1], v24, v29);
            }

            goto LABEL_80;
          }

          if (v24 >= (4 * v55))
          {
            v24 = (4 * v55);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (a3 - 1)) += v24;
          sub_100012F74(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
          v30 = v68[1];
          v31 = *(a2 + 1544);
          if (v31)
          {
            v32 = *(a2 + 1540);
            *(a2 + 1540) = v32 + 1;
            v33 = *(a2 + 1560) + v24;
            *(a2 + 1560) = v33;
            v34 = *(*(a2 + 376) + 36);
            v35 = v31 + 16 * v32;
            *(v35 + 256) = v30;
            *(v35 + 264) = v24;
            if (v32 > 0xEE || v33 >= (4 * v34))
            {
              sub_1000130B8(a1, a2, v19, v6, a6);
            }

            goto LABEL_80;
          }

          dev_unmap(*(a1 + 384));
          sub_10000DD98(a1, a2, v30, v24, 1, a6);
        }

        else
        {
          sub_100012F74(a1, a2, 0, v24);
          v29 = sub_100013034(a1, a2, v68[1], v24, 0);
          if (v29)
          {
            goto LABEL_59;
          }

          v36 = v68[1];
          v37 = *(a2 + 1544);
          if (v37)
          {
            v38 = *(a2 + 1542);
            *(a2 + 1542) = v38 + 1;
            *(a2 + 1552) += v24;
            v39 = (v37 + 16 * v38);
            *v39 = v36;
            v39[1] = v24;
            if ((v38 + 1) >= 0x10u)
            {
              v40 = v21;
              pthread_mutex_unlock((a2 + 448));
              v41 = *v54;
              sub_100012E9C(a1, v6);
              if (v41)
              {
                v42 = 0;
                v43 = 16 * v41;
                do
                {
                  v44 = (*(a2 + 1544) + v42);
                  v45 = *v44;
                  v46 = v44[1];
                  dev_unmap(*(a1 + 384));
                  v42 += 16;
                }

                while (v43 != v42);
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v47 = 0;
                do
                {
                  sub_10001321C(a1, a2, *(*(a2 + 1544) + v47), *(*(a2 + 1544) + v47 + 8), a6);
                  v47 += 16;
                }

                while (v43 != v47);
              }

              else
              {
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v19 = a3;
              v21 = v40;
            }

            goto LABEL_80;
          }

          dev_unmap(*(a1 + 384));
          sub_10001321C(a1, a2, v36, v24, a6);
        }

        sub_100012E9C(a1, v6);
      }

      else
      {
        log_err("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v19, v68[0], v68[1], v24, a6);
        if (v19)
        {
          pthread_mutex_lock((a2 + 576));
          sub_100012F74(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_100012F74(a1, a2, 0, v24);
        }
      }

LABEL_80:
      if (v6 && *(v6 + 62) == 1)
      {
        v48.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v48.i64[1] = v24;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v48);
      }

      v49 = bt_remove_first(v69, 0, 0, 0, 0, 0, a6);
      if (v49)
      {
        log_err("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", "spaceman_free_completed", 6556, (*(a1 + 384) + 212), a3, v68[1], v68[2], v49);
      }

      v50 = v68[2] - v24;
      if (v68[2] != v24)
      {
        v68[1] += v24;
        v68[2] -= v24;
        v67 = 8 * (v50 != 1);
        v51 = bt_insert(v69, 0, v68, 16, &v68[2], v67, a6);
        if (v51)
        {
          log_err("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", "spaceman_free_completed", 6566, (*(a1 + 384) + 212), a3, v68[1], v68[2], v51);
        }
      }

      v14 += v24;
      LODWORD(__rqtp.tv_sec) = 16;
      v67 = 8;
      v52 = bt_lookup_first(v69, 0, v68, &__rqtp, &v68[2], &v67);
      v23 = 1;
      if (v52)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_31:
  if (v6 && *(v6 + 62) == 1)
  {
    v22 = *(v6 + 48) + v14;
    *(v6 + 40) += v15;
    *(v6 + 48) = v22;
  }

  return v14;
}

uint64_t sub_10000A9E8(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v8.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v8);
  tv_sec = v8.tv_sec;
  tv_nsec = v8.tv_nsec;
  *a2 = v8.tv_sec;
  tv_nsec /= 1000;
  *(a2 + 8) = tv_nsec;
  *(a2 + 32) = 1000000 * tv_sec + tv_nsec;
  *(a2 + 62) = 0;
  v6 = *(a2 + 56);
  if (!v6)
  {
    return 0;
  }

  atomic_fetch_add_explicit((*(a1 + 384) + 152), -v6, memory_order_relaxed);
  return 1;
}

void sub_10000AAA8(pthread_mutex_t **a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v4;
  *&v12[16] = v4;
  v10 = v4;
  v11 = v4;
  v5 = *(a2 + 16);
  if (!sub_100009C74(a1, &v13))
  {
    v6 = *&v13[5].__opaque[48];
    sub_10000A0D8(a1, &v10, 0, 1);
    pthread_mutex_lock(v13 + 7);
    if (sub_10000AE1C(a1, v13, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v7 = v13;
      if (v5 - v6[27] <= LOWORD(v13[24].__sig))
      {
        break;
      }

      if (!sub_10000A1D0(a1, v13, 0, 0, &v10, v5))
      {
        v7 = v13;
        break;
      }
    }

    pthread_mutex_unlock(v7 + 7);
    pthread_mutex_lock(v13 + 8);
    v8 = v13;
    if (v6[30] > *&v13[23].__opaque[40])
    {
      while (1)
      {
        v8 = v13;
        if (v6[30] <= *&v13[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!sub_10000A1D0(a1, v13, 1u, 1, &v10, v5))
        {
          v8 = v13;
          break;
        }
      }
    }

    if (v6[35] > *&v8[23].__opaque[48])
    {
        ;
      }
    }

    if (v6[30] > v6[9])
    {
        ;
      }
    }

    if (v6[35] > v6[15])
    {
        ;
      }
    }

    if (sub_10000AE1C(a1, v13, 1u, 0))
    {
        ;
      }
    }

    if (sub_10000AE1C(a1, v13, 2u, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v9 = v6[37];
    }

    while (v9 && v5 - v9 > LOWORD(v13[24].__sig) && sub_10000A1D0(a1, v13, 2u, 0, &v10, v5));
    sub_10000A9E8(a1, &v10);
    *(a2 + 88) = *&v12[8];
    *(a2 + 80) = *v12 - v11;
    pthread_mutex_unlock(v13 + 8);
    obj_release(&v13->__sig);
  }
}

uint64_t sub_10000AE1C(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0;
  if (!sub_10000B310(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = sub_10000D428(a2, a3, v9, a4);
    obj_release(v9);
  }

  return v7;
}

uint64_t sub_10000AE9C(pthread_mutex_t **a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100009C74(a1, &v14))
  {
    return 0;
  }

  v3 = *&v14[5].__opaque[48];
  pthread_mutex_lock(v14 + 9);
  v4 = v3[9];
  v5 = *&v14[23].__opaque[40] >> (v4 - v14[13].__sig < v3[6] >> 5);
  v6 = v3[30];
  v7 = v3[15];
  v8 = *&v14[23].__opaque[48] >> (v7 - *v14[13].__opaque < v3[12] >> 5);
  v9 = v3[35];
  pthread_mutex_unlock(v14 + 9);
  v12 = v9 > v7 || v9 > v8 || v6 > v4 || v6 > v5;
  if (v12 || sub_10000AE1C(a1, v14, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!sub_10000AE1C(a1, v14, 1u, 0))
    {
      v2 = sub_10000AE1C(a1, v14, 2u, 0);
    }
  }

  obj_release(&v14->__sig);
  return v2;
}

void sub_10000AFD0(uint64_t a1, uint64_t a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_100009C74(a1, &v4))
  {
    v3 = v4;
    *(v4 + 920) = a2;
    obj_release(v3);
  }
}

uint64_t sub_10000B018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = sub_10000B310(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10000B310(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10000B310(a1, a3, 2u, 0, 0, &v23);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v15 = obj_checkpoint_start(a3);
    v11 = v15;
    if (v15 || (v12 = v24) == 0)
    {
      if (v15 || (v13 = v25) == 0)
      {
        if (!v15)
        {
          v14 = v23;
          if (v23)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_50;
      }

      goto LABEL_32;
    }

    v16 = *(v24[49] + 32);
    if (v16 <= v8[112])
    {
      v17 = 0;
    }

    else if (*(a3 + 976))
    {
      v17 = 1;
    }

    else
    {
      log_err("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3419, (*(a1 + 384) + 212), v16, v8[112], *(a2 + 16));
      v17 = 1;
      v12 = v24;
    }

    *(a3 + 976) = v17;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v10 = obj_checkpoint_known(a3);
    v11 = v10;
    if (v10 || (v12 = v24) == 0)
    {
      if (v10 || (v13 = v25) == 0)
      {
        if (v10)
        {
          goto LABEL_50;
        }

        v14 = v23;
        if (!v23)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v12 = v24;
  if (v24)
  {
LABEL_28:
    v11 = btree_checkpoint_traverse(a1, a2, v12, a4);
    goto LABEL_29;
  }

  v11 = 0;
LABEL_29:
  if (!v11)
  {
    v13 = v25;
    if (v25)
    {
      if (a4 != 1)
      {
LABEL_38:
        v11 = btree_checkpoint_traverse(a1, a2, v13, a4);
        goto LABEL_39;
      }

LABEL_32:
      v18 = *(v13[49] + 32);
      if (v18 <= v8[132])
      {
        v19 = 0;
      }

      else if (*(a3 + 977))
      {
        v19 = 1;
      }

      else
      {
        log_err("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3434, (*(a1 + 384) + 212), v18, v8[132], *(a2 + 16));
        v19 = 1;
        v13 = v25;
      }

      *(a3 + 977) = v19;
      goto LABEL_38;
    }
  }

LABEL_39:
  if (!v11)
  {
    v14 = v23;
    if (v23)
    {
      if (a4 != 1)
      {
LABEL_48:
        v9 = btree_checkpoint_traverse(a1, a2, v14, a4);
LABEL_49:
        v11 = v9;
        goto LABEL_50;
      }

LABEL_42:
      v20 = *(v14[49] + 32);
      if (v20 <= v8[152])
      {
        v21 = 0;
      }

      else if (*(a3 + 978))
      {
        v21 = 1;
      }

      else
      {
        log_err("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3449, (*(a1 + 384) + 212), v20, v8[152], *(a2 + 16));
        v21 = 1;
        v14 = v23;
      }

      *(a3 + 978) = v21;
      goto LABEL_48;
    }
  }

LABEL_50:
  if (v24)
  {
    obj_release(v24);
  }

  if (v25)
  {
    obj_release(v25);
  }

  if (v23)
  {
    obj_release(v23);
  }

  return v11;
}

uint64_t sub_10000B310(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t **a6)
{
  if (a3 > 2)
  {
    return 22;
  }

  v10 = *(a2 + 376);
  v11 = a2 + 952;
  v12 = *(a2 + 952 + 8 * a3);
  *a6 = v12;
  if (v12)
  {
    goto LABEL_4;
  }

  v13 = a3;
  v14 = v10 + 40 * a3;
  v17 = *(v14 + 208);
  v16 = (v14 + 208);
  v15 = v17;
  if (v17)
  {
    result = btree_get(a1, 0x80000000, v15, 0, 0, 0, 9, sub_10000D16C, 0, a6);
    if (!result)
    {
LABEL_8:
      v12 = *a6;
      *(v11 + 8 * v13) = *a6;
LABEL_4:
      obj_retain(v12);
      return 0;
    }

    return result;
  }

  if (!a5)
  {
    result = 0;
    goto LABEL_14;
  }

  result = obj_modify(a2, 0, a4);
  if (result)
  {
LABEL_14:
    *a6 = 0;
    return result;
  }

  result = btree_create(a1, 0x80000000, 6, 9, 0, 0x10u, 8, sub_10000D16C, a4, a6);
  if (!result)
  {
    *v16 = obj_oid(*a6);
    obj_dirty(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_10000B45C(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(uint64_t *a1, unint64_t a2, int64_t a3), uint64_t *a5)
{
  v8 = a1;
  memset(v234, 0, 64);
  v233 = 0;
  v232 = 0;
  memset(v238, 0, 128);
  v231 = 0xAAAAAAAAAAAAAAAALL;
  v230 = 0xAAAAAAAAAAAAAAAALL;
  v219 = 0;
  pthread_mutex_lock((a1 + 864));
  if ((a2 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v229 = 0xAAAAAAAAAAAAAAAALL;
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v220 = v10;
  v221 = v10;
  v222 = v10;
  v223 = v10;
  v224 = v10;
  v225 = v10;
  v226 = v10;
  v227 = v10;
  v228 = 0xAAAAAAAAAAAAAAAALL;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v9 = sub_100009C74(v8, &v229);
  if (v9)
  {
    goto LABEL_360;
  }

  v11 = *&v229[5].__opaque[48];
  v183 = a2 & 0x30;
  if ((a2 & 0x40) != 0)
  {
    v12 = 4;
  }

  else if ((a2 & 0x20) != 0)
  {
    v12 = 8;
  }

  else if (a4 == sub_10000CB64)
  {
    v12 = 1;
  }

  else
  {
    v12 = *(v11 + 40);
  }

  v13 = _apfs_malloc_typed(16 * *(v11 + 40), 0x1000040F7F8B94BuLL);
  v14 = _apfs_malloc_typed(8 * *(v11 + 40), 0x100004000313F17uLL);
  v15 = v14;
  v9 = 12;
  if (!v13 || !v14)
  {
    goto LABEL_355;
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_lock(v229 + 6);
  }

  __base = v13;
  if (a3)
  {
    if ((a2 & 0x6C) != 0x40)
    {
      v9 = 22;
      goto LABEL_344;
    }

    v214 = 0;
  }

  else
  {
    if ((a2 & 4) != 0)
    {
      v214 = 0;
      v16 = 1;
      goto LABEL_24;
    }

    v214 = (a2 >> 3) & 1;
  }

  v16 = 2;
LABEL_24:
  v169 = v16;
  v9 = 0;
  v172 = 0;
  v179 = 0;
  v17 = 0;
  if ((a2 & 0x20) != 0)
  {
    v18 = &v219;
  }

  else
  {
    v18 = 0;
  }

  v173 = v18;
  v174 = v11 + 48;
  v186 = a2 & 0xFE;
  v176 = v13 + 8;
  v184 = v13 - 16;
  v202 = a2;
  v210 = a4;
  v201 = v15;
  v187 = v8;
  v196 = v11;
  while (1)
  {
    if (a2)
    {
      v228 = 0;
      v226 = 0u;
      v227 = 0u;
      v224 = 0u;
      v225 = 0u;
      v222 = 0u;
      v223 = 0u;
      v220 = 0u;
      v221 = 0u;
      LODWORD(v228) = spaceman_get_number_of_disabled_allocation_zones(v229, v214);
    }

    v219 = a3;
    v175 = sub_100002C8C(*&v229[24].__opaque[8 * v214 + 32], v173);
    v19 = v219;
    v20 = *(v11 + 36);
    if ((a2 & 0x40) == 0)
    {
      v19 = v219 / v20 * v20;
      v219 = v19;
    }

    v170 = v19;
    v21 = v174 + 48 * v214;
    v177 = -1;
    v22 = v19 / v20 / *(v11 + 40);
    v23 = v17;
    v180 = v21;
LABEL_33:
    v178 = v22;
    if (v22 < *(v21 + 16))
    {
      break;
    }

    if (a2)
    {
      if (v228)
      {
        qsort(&v220, 8uLL, 0x10uLL, sub_10000CDD8);
        if (v228)
        {
          if (DWORD2(v227))
          {
            v151 = v23;
            v152 = 6;
            v154 = &v227;
            v153 = &v227 + 2;
            while (1)
            {
              LOBYTE(v237) = 0;
              v155 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v229, v214, *v154, &v237);
              if (v155)
              {
                log_err("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v154, *v153, v155);
              }

              v156 = v228;
              if (v237 == 1)
              {
                v156 = v228 - 1;
                LODWORD(v228) = v228 - 1;
              }

              v9 = 0;
              a4 = v210;
              v23 = v151;
              if (!v156 || v152 == -1)
              {
                break;
              }

              v154 = (&v220 + v152);
              v153 = (v154 | 8);
              --v152;
              if (!*(v154 + 8))
              {
                v9 = 0;
                a4 = v210;
                v23 = v151;
                break;
              }
            }
          }
        }
      }
    }

    if (v175)
    {
      if (v170)
      {
        v157 = 0;
        v158 = v214;
      }

      else
      {
        v158 = v214;
        v157 = v178 == *(v174 + 48 * v214 + 16);
      }

      sub_100002D38(*&v229[24].__opaque[8 * v158 + 32], v219, v157);
    }

    v17 = v23;
    a3 = 0;
    if (++v214 == v169)
    {
      v161 = 0;
      goto LABEL_335;
    }
  }

  v182 = v12;
  v24 = v219;
  v25 = *(v11 + 36);
  v26 = *(v11 + 40);
  if (!v183)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      log_info("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v214, v22, *(v180 + 16));
      pthread_mutex_unlock((v8 + 864));
      v160 = 0;
      v161 = 0;
      v9 = 16;
      v11 = v196;
      a4 = v210;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  v215 = v26;
  v217 = v25;
  pthread_mutex_lock(&v229[v214 + 10]);
  v27 = *(v180 + 20);
  v185 = v22;
  if (v27)
  {
    v212 = v24;
    v28 = v9;
    v29 = v22 / v196[11];
    if (v29 == v177 && v23)
    {
      obj_lock(v233, 1);
      v29 = v177;
    }

    else
    {
      v31 = *(*(&v229[14].__sig + v214) + 8 * v29);
      if (v233)
      {
        obj_release(v233);
        v233 = 0;
      }

      v230 = v196;
      v231 = __PAIR64__(v29, v214);
      v32 = obj_get(*(v8 + 392), 0x140000004, v31, &xmmword_1000517C0, &v230, 0, 0, 0, &v233);
      if (v32)
      {
        v168 = v32;
        log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v29, v31, v32);
        v161 = 0;
        if (v175)
        {
          LOBYTE(v160) = 1;
          v11 = v196;
          a4 = v210;
          v9 = v168;
          goto LABEL_330;
        }

        v11 = v196;
        a4 = v210;
        v9 = v168;
        goto LABEL_333;
      }

      v28 = 0;
      v23 = v233[7];
      v177 = v29;
    }

    pthread_mutex_unlock(&v229[v214 + 10]);
    v30 = (v23 + 8 * (v22 - v196[11] * v29) + 40);
    v179 = 1;
    v9 = v28;
    v24 = v212;
  }

  else
  {
    v30 = (*(&v229[14].__sig + v214) + 8 * v22);
  }

  if (v232)
  {
    obj_lock(v232, 1);
  }

  else
  {
    v33 = v23;
    v34 = *v30;
    v230 = v196;
    v231 = __PAIR64__(v22, v214);
    v35 = obj_get(*(v8 + 392), 0x140000004, v34, &xmmword_1000517D0, &v230, 0, 0, 0, &v232);
    if (v35)
    {
      v167 = v35;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v22, v34, v35);
      v161 = 0;
      v9 = v167;
      LOBYTE(a2) = v202;
      v11 = v196;
      a4 = v210;
      v15 = v201;
      v160 = v27 == 0;
      goto LABEL_329;
    }

    LOBYTE(a2) = v202;
    v15 = v201;
    v23 = v33;
    v9 = 0;
  }

  v36 = v232[7];
  if (v210 == sub_10000CB64)
  {
    sub_10000A0D8(v8, v234, 125, 0);
    if (v27)
    {
      goto LABEL_53;
    }
  }

  else if (v27)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v229[v214 + 10]);
LABEL_53:
  if (v233)
  {
    obj_unlock(v233, 1);
    v179 = 0;
  }

  v37 = v24 / v217 - v215 * v22;
  v38 = v24 % v217;
  v11 = v196;
  bzero(v15, 8 * v196[10]);
  LODWORD(v39) = *(v36 + 36) - v37;
  v12 = v182;
  if (v182 >= v39)
  {
    v39 = v39;
  }

  else
  {
    v39 = v182;
  }

  __nel = v39;
  v188 = v37;
  if (v39)
  {
    v40 = 0;
    v41 = v196[9];
    v42 = v176;
    do
    {
      *(v42 - 2) = v37;
      *v42 = *(v36 + 40 + 32 * v37 + 24);
      v42 += 2;
      if (v40)
      {
        v43 = 0;
      }

      else
      {
        v43 = v38;
      }

      v219 += v41 - v43;
      ++v40;
      LODWORD(v37) = v37 + 1;
    }

    while (v40 < __nel);
    if ((a2 & 0x40) != 0)
    {
      goto LABEL_66;
    }
  }

  else if ((a2 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  qsort(__base, __nel, 0x10uLL, sub_10000CD00);
LABEL_66:
  v181 = v36;
  v44 = __nel;
  if (!__nel)
  {
    v204 = 0;
    a4 = v210;
LABEL_230:
    v22 = v178;
    goto LABEL_283;
  }

  v171 = v23;
  v45 = 0;
  v46 = 0;
  v47 = v176;
  v193 = v37;
  do
  {
    v48 = v45;
    v49 = *v47;
    if (*v47)
    {
      v50 = obj_get(*(v8 + 392), 0x140000080, v49, &xmmword_1000517E0, 0, 0, 0, 0, &v238[v46]);
      v44 = __nel;
      if (v50)
      {
        v51 = v50;
        if (v50 != 45 && v50 != 16)
        {
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v178, *(v47 - 2), v49, v50);
          v160 = 0;
          v161 = 1;
          v9 = v51;
          LOBYTE(a2) = v202;
          goto LABEL_328;
        }

        v238[v46] = 0;
      }

      ++v46;
      LOBYTE(a2) = v202;
      v15 = v201;
      if (v46 == 16)
      {
        break;
      }
    }

    v45 = v48 + 1;
    v47 += 2;
  }

  while (v48 + 1 < v44);
  v53 = 0;
  v204 = 0;
  v194 = v48 + 1;
  v54 = 0;
  v200 = v181 + 40;
  v55 = v196;
  while (1)
  {
    v197 = v53;
    v56 = &__base[16 * v53];
    v57 = *(v56 + 1);
    v58 = v55;
    v192 = v55[10];
    v59 = *v56;
    v60 = &v238[v54];
    v199 = v57;
    if (v57)
    {
      if (*v60)
      {
        v61 = obj_async_wait(*v60);
        if (v61)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v61 = obj_get(*(v8 + 392), 0x140000000, v57, &xmmword_1000517E0, 0, 0, 0, 0, &v238[v54]);
        if (v61)
        {
LABEL_325:
          v159 = v61;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v178, *v56, v199, v61);
          if (*v60)
          {
            obj_release(*v60);
            *v60 = 0;
          }

          v160 = 0;
          v161 = 1;
          a4 = v210;
          v11 = v58;
          v9 = v159;
          goto LABEL_329;
        }
      }

      v213 = *(*v60 + 56);
      v62 = *v56;
    }

    else
    {
      v213 = 0;
      v62 = *v56;
    }

    if ((a2 & 0x40) != 0 && v62)
    {
      *&v15[8 * v62] = *&v15[8 * v62 - 8];
      *&v15[8 * *v56 - 8] = 0;
      v62 = *v56;
    }

    v63 = 0;
    v191 = v59;
    v207 = &v15[8 * v62];
    v211 = v200 + 32 * v59;
    v64 = *(v211 + 16);
    v236 = 0;
    p_sig = &v229->__sig;
    v65 = v186;
    if (*&v229[23].__opaque[8 * v214 + 16])
    {
      v65 = a2;
    }

    v216 = v65;
    if ((v65 & 0x40) != 0)
    {
      v63 = *v207;
    }

    v190 = *&v229[23].__opaque[8 * v214 + 16];
    v195 = &v238[v54];
    v198 = v54;
    v66 = *&v64 & 0xFFFFFLL;
    v237 = 0xAAAAAAAAAAAAAAAALL;
    if ((v64 & 0xFFFFFu) <= v38)
    {
      LODWORD(v68) = 0;
      v218 = 0;
      v67 = 0;
      v71 = v213;
LABEL_144:
      LODWORD(v37) = v193;
      v54 = v198;
      if ((v216 & 0x40) != 0)
      {
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v67 = 0;
    v218 = 0;
    v68 = 0;
    v209 = &v229[24].__opaque[32];
    v69 = 1;
    v70 = v38;
    v71 = v213;
    while (1)
    {
      if (!v71)
      {
        v236 = v66;
        v237 = v70;
        v72 = v66;
        v73 = v70;
        goto LABEL_102;
      }

      if (!bitmap_range_find_first(0, v71, v70, v66 - v70, &v237))
      {
        break;
      }

      if (bitmap_range_find_first(1, v71, v237, v66 - v237, &v236))
      {
        v72 = v236;
      }

      else
      {
        v236 = v66;
        v72 = v66;
      }

      v73 = v237;
LABEL_102:
      v70 = v72;
      v74 = 100 * (v69 / 0x64) - 1;
      v75 = v72 - v73;
      if (v72 - v73 > v68)
      {
        v68 = v72 - v73;
      }

      if ((v216 & 0x40) != 0)
      {
        if (v63 && v73)
        {
          v76 = *(v211 + 8) - v63;
          sub_1000010D4(v209[v214], 0, v76, v63);
          if (v210)
          {
            v77 = v210(a5, v76, v63);
            if (BYTE6(v234[7]) == 1)
            {
              v78.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v78.i64[1] = v63;
              *&v234[5] = vaddq_s64(*&v234[5], v78);
            }
          }

          else
          {
            v77 = 0;
          }

          v71 = v213;
          v74 = 100 * (v69 / 0x64) - 1;
          v63 = 0;
          if (v218)
          {
            v81 = 1;
          }

          else
          {
            v81 = v77 == 0;
          }

          if (v81)
          {
            v82 = v218;
          }

          else
          {
            v82 = v77;
          }

          v218 = v82;
          v72 = v236;
        }

        if (v72 != v66)
        {
          v208 = v74;
          v79 = *(v211 + 8) - v63;
          v80 = v63 + v75;
LABEL_127:
          sub_1000010D4(v209[v214], 0, v79 + v73, v80);
          if (v210)
          {
            v83 = v210(a5, v79 + v73, v80);
            if (BYTE6(v234[7]) == 1)
            {
              v84 = 1;
              v85.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v85.i64[1] = v80;
              *&v234[5] = vaddq_s64(*&v234[5], v85);
            }

            else
            {
              v84 = 0;
            }
          }

          else
          {
            v83 = 0;
            v84 = BYTE6(v234[7]);
          }

          v71 = v213;
          v63 = 0;
          if (v218)
          {
            v86 = 1;
          }

          else
          {
            v86 = v83 == 0;
          }

          if (v86)
          {
            v87 = v218;
          }

          else
          {
            v87 = v83;
          }

          v218 = v87;
          if ((v84 & 1) != 0 && v208 == v67)
          {
            sub_100012E9C(*(*p_sig + 392), v234);
            v63 = 0;
          }

          goto LABEL_141;
        }

        v63 += v75;
      }

      else if (v73)
      {
        if (v72 != v66)
        {
          v208 = 100 * (v69 / 0x64) - 1;
          v79 = *(v211 + 8) - v63;
          v80 = v75 + v63;
          goto LABEL_127;
        }

        *(v207 + 1) = v75;
      }

      else
      {
        *v207 = v72;
      }

LABEL_141:
      ++v69;
      ++v67;
      if (v70 >= v66)
      {
        goto LABEL_144;
      }
    }

    if ((v216 & 0x40) == 0 || !v63 || v67)
    {
      goto LABEL_144;
    }

    v95 = *(v211 + 8) - v63;
    sub_1000010D4(v209[v214], 0, v95, v63);
    if (v210)
    {
      v96 = v210(a5, v95, v63);
      LODWORD(v37) = v193;
      v54 = v198;
      if (BYTE6(v234[7]) == 1)
      {
        v97.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v97.i64[1] = v63;
        *&v234[5] = vaddq_s64(*&v234[5], v97);
      }
    }

    else
    {
      v96 = 0;
      LODWORD(v37) = v193;
      v54 = v198;
    }

    v67 = 0;
    v63 = 0;
    if (v218)
    {
      v125 = 1;
    }

    else
    {
      v125 = v96 == 0;
    }

    if (v125)
    {
      v126 = v218;
    }

    else
    {
      v126 = v96;
    }

    v218 = v126;
LABEL_145:
    *v207 = v63;
LABEL_146:
    v9 = v218;
    if ((v216 & 1) == 0)
    {
      goto LABEL_186;
    }

    v88 = v191 + v192 * v185;
    v89 = *(v190 + 4 * v88);
    v90 = v89 & 0xFF000000 | v68 & 0xFFFFFF;
    *(v190 + 4 * v88) = v90;
    if (v71)
    {
      v91 = v89 & 0xFE000000 | v68 & 0xFFFFFF;
      v92 = v90 | 0x1000000;
      if (*v71)
      {
        v92 = v91;
      }

      *(v190 + 4 * v88) = v92;
      v93 = v190;
      if (v66 < 0x40 || (v71[(v66 >> 6) - 1] & 0x8000000000000000) != 0)
      {
        v94 = v92 & 0xFDFFFFFF;
        goto LABEL_161;
      }
    }

    else
    {
      v92 = v90 | 0x1000000;
      v93 = v190;
    }

    v94 = v92 | 0x2000000;
LABEL_161:
    *(v93 + 4 * v88) = v94;
    if (!v228)
    {
      goto LABEL_186;
    }

    v98 = *(v211 + 20) & 0xFFFFF;
    if (v98 == *(p_sig[47] + 36))
    {
      v235 = 0;
      v99 = spaceman_evaluate_chunk_for_disabled_allocation_zones(p_sig, v214, v88, &v235);
      if (v99)
      {
        v100 = p_sig[1];
        if (v100)
        {
          v101 = (v100 + 4040);
        }

        else
        {
          v101 = (*(*(*p_sig + 392) + 384) + 212);
        }

        log_err("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v101, v88, v99);
      }

      if (v235 == 1)
      {
        LODWORD(v228) = v228 - 1;
      }

      goto LABEL_186;
    }

    if (!v67 || v98 < 4)
    {
      goto LABEL_186;
    }

    v102 = v98 / v67;
    v103 = &v220 + HIDWORD(v228);
    v104 = v94 & 0xC000000;
    v105 = v94 & 0xFFFFFC;
    v106 = v102 > *(v103 + 2) && v104 == 0;
    if (!v106 || v105 == 0)
    {
      goto LABEL_186;
    }

    v108 = 0;
    *(v103 + 2) = v102;
    *v103 = v88;
    v109 = -7;
    v110 = DWORD2(v220);
    v111 = &v221 + 2;
    while (2)
    {
      v113 = *v111;
      v111 += 4;
      v112 = v113;
      if (v113 >= v110)
      {
LABEL_179:
        v121 = __CFADD__(v109++, 1);
        if (v121)
        {
          goto LABEL_224;
        }

        continue;
      }

      break;
    }

    if (v112)
    {
      v108 = v109 + 8;
      v110 = v112;
      goto LABEL_179;
    }

    v108 = v109 + 8;
LABEL_224:
    HIDWORD(v228) = v108;
LABEL_186:
    v114 = v204;
    if (v204)
    {
      v115 = 1;
    }

    else
    {
      v115 = v218 == 0;
    }

    if (!v115)
    {
      v114 = v218;
    }

    LOBYTE(a2) = v202;
    if ((v202 & 0x40) != 0)
    {
      if (v114)
      {
        break;
      }
    }

    v204 = v114;
    v8 = v187;
    v55 = v196;
    v15 = v201;
    if (!v199)
    {
      v116 = __nel;
      v124 = v197;
      goto LABEL_213;
    }

    obj_release(*v195);
    *v195 = 0;
    v116 = __nel;
    if (v194 >= __nel)
    {
      goto LABEL_208;
    }

    v117 = &v184[16 * v194];
    v118 = v194;
    v119 = v194 + 1;
    do
    {
      v120 = *(v117 + 3);
      v117 += 16;
      ++v118;
      if (v120)
      {
        v121 = 1;
      }

      else
      {
        v121 = v119 >= __nel;
      }

      ++v119;
    }

    while (!v121);
    v194 = v118;
    if (!v120)
    {
LABEL_208:
      v124 = v197;
      goto LABEL_212;
    }

    v122 = obj_get(*(v187 + 392), 0x140000080, v120, &xmmword_1000517E0, 0, 0, 0, 0, v195);
    if (v122 == 45 || v122 == 16)
    {
      v9 = 0;
      *v195 = 0;
      goto LABEL_211;
    }

    v9 = v122;
    if (v122)
    {
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v187 + 384) + 212), v178, *v117, v120, v122);
      v160 = 0;
      v161 = 1;
      a4 = v210;
      v11 = v196;
      goto LABEL_329;
    }

LABEL_211:
    v116 = __nel;
    v55 = v196;
    v124 = v197;
LABEL_212:
    v54 = (v54 + 1) & 0xF;
LABEL_213:
    v38 = 0;
    v53 = v124 + 1;
    if (v53 >= v116)
    {
      v127 = 0;
      v128 = 0;
      v129 = 0;
      while (1)
      {
        v130 = (v127 + v188);
        v131 = v200 + 32 * v130;
        v132 = &v201[8 * v130];
        if ((v202 & 0x40) != 0)
        {
          if (*v132)
          {
            v129 = *(v131 + 8) - *v132 + (*(v131 + 16) & 0xFFFFF);
            v116 = __nel;
            v128 = *v132;
          }

          goto LABEL_270;
        }

        v133 = *v132;
        if (v133)
        {
          break;
        }

        v136 = v9;
LABEL_252:
        v140 = *(v132 + 1);
        LODWORD(v37) = v193;
        if (v140)
        {
          v141 = *(v131 + 8) + (*(v131 + 16) & 0xFFFFF) - v140;
          if (v128)
          {
            if (v128 + v129 == v141)
            {
              v9 = 0;
              v140 += v128;
              v141 = v129;
              goto LABEL_258;
            }

            sub_1000010D4(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
            if (v210)
            {
              v9 = v210(a5, v129, v128);
              if (BYTE6(v234[7]) == 1)
              {
                v143.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v143.i64[1] = v128;
                *&v234[5] = vaddq_s64(*&v234[5], v143);
              }
            }

            else
            {
              v9 = 0;
            }

            v142 = v204;
            v116 = __nel;
          }

          else
          {
            v9 = 0;
LABEL_258:
            v142 = v204;
          }

          if (v142)
          {
            v144 = 1;
          }

          else
          {
            v144 = v9 == 0;
          }

          if (!v144)
          {
            v142 = v9;
          }

          v204 = v142;
          v129 = v141;
          v128 = v140;
          goto LABEL_270;
        }

        v9 = v136;
LABEL_270:
        if (++v127 >= v116)
        {
          a4 = v210;
          v12 = v182;
          if (!v128)
          {
            v11 = v196;
            v23 = v171;
            goto LABEL_230;
          }

          sub_1000010D4(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
          v22 = v178;
          if (v210)
          {
            v9 = v210(a5, v129, v128);
            if (BYTE6(v234[7]) == 1)
            {
              v145.i64[0] = vdupq_n_s64(1uLL).u64[0];
              v145.i64[1] = v128;
              *&v234[5] = vaddq_s64(*&v234[5], v145);
            }
          }

          else
          {
            v9 = 0;
          }

          v11 = v196;
          v23 = v171;
          v146 = v204;
          if (v204)
          {
            v147 = 1;
          }

          else
          {
            v147 = v9 == 0;
          }

          if (!v147)
          {
            v146 = v9;
          }

          v204 = v146;
LABEL_283:
          if (a4 == sub_10000CB64)
          {
            sub_10000CD18(v8);
          }

          obj_unlock(v232, 1);
          if (BYTE6(v234[7]) == 1)
          {
            if (sub_10000A9E8(v8, v234))
            {
              if (v12 <= 1)
              {
                v12 = 1;
              }

              else
              {
                v12 >>= 1;
              }

              v148 = 1;
            }

            else
            {
              v149 = *(v11 + 40);
              v150 = 4 * v12;
              if (v149 < 4 * v12)
              {
                v150 = *(v11 + 40);
              }

              if (v149 >= v12 + 1)
              {
                v149 = v12 + 1;
              }

              if (v172)
              {
                v12 = v149;
              }

              else
              {
                v12 = v150;
              }

              v148 = v172;
            }

            v172 = v148;
          }

          if (*(v181 + 36) == v37)
          {
            obj_release(v232);
            v232 = 0;
            v22 = (v22 + 1);
          }

          v21 = v174 + 48 * v214;
          if (v204)
          {
            v160 = 0;
            v161 = 0;
            v9 = v204;
            goto LABEL_329;
          }

          goto LABEL_33;
        }
      }

      v134 = *(v131 + 8);
      if (v128)
      {
        if (v128 + v129 == v134)
        {
          v135 = 0;
          v133 += v128;
          v134 = v129;
          goto LABEL_240;
        }

        sub_1000010D4(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
        if (v210)
        {
          v135 = v210(a5, v129, v128);
          if (BYTE6(v234[7]) == 1)
          {
            v138.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v138.i64[1] = v128;
            *&v234[5] = vaddq_s64(*&v234[5], v138);
          }
        }

        else
        {
          v135 = 0;
        }

        v137 = v204;
        v116 = __nel;
      }

      else
      {
        v135 = 0;
LABEL_240:
        v137 = v204;
      }

      if (v137)
      {
        v139 = 1;
      }

      else
      {
        v139 = v135 == 0;
      }

      v136 = v135;
      if (!v139)
      {
        v137 = v135;
      }

      v204 = v137;
      v129 = v134;
      v128 = v133;
      goto LABEL_252;
    }
  }

  v160 = 0;
  v161 = 1;
  v8 = v187;
LABEL_328:
  v11 = v196;
  a4 = v210;
  v15 = v201;
LABEL_329:
  if (((v9 != 0) & v175) != 0)
  {
LABEL_330:
    sub_100002D38(*&v229[24].__opaque[8 * v214 + 32], v219, 0);
    if (v160)
    {
      v162 = v214;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v160)
  {
    goto LABEL_335;
  }

LABEL_333:
  v162 = v214;
LABEL_334:
  pthread_mutex_unlock(&v229[v162 + 10]);
LABEL_335:
  if (v233 && (v179 & 1) != 0)
  {
    obj_unlock(v233, 1);
  }

  v163 = v161 ^ 1;
  if (!v232)
  {
    v163 = 1;
  }

  if ((v163 & 1) == 0)
  {
    sub_10000A9E8(v8, v234);
    if (a4 == sub_10000CB64)
    {
      sub_10000CD18(v8);
    }

    obj_unlock(v232, 1);
  }

LABEL_344:
  if (v233)
  {
    obj_release(v233);
  }

  if (v232)
  {
    obj_release(v232);
  }

  for (i = 0; i != 16; ++i)
  {
    v165 = v238[i];
    if (v165)
    {
      obj_async_wait(v165);
      obj_release(v238[i]);
    }
  }

  if ((a2 & 2) == 0)
  {
    pthread_mutex_unlock(v229 + 6);
  }

  v13 = __base;
LABEL_355:
  if (v15)
  {
    _apfs_free(v15, 8 * *(v11 + 40));
  }

  if (v13)
  {
    _apfs_free(v13, 16 * *(v11 + 40));
  }

  obj_release(&v229->__sig);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}