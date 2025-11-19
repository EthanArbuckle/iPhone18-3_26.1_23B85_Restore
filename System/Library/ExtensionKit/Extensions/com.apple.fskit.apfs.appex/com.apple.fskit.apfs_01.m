uint64_t sub_10000DA40(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4, _WORD *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a4 | a3) >> 52)
  {
    return 84;
  }

  v13 = a1 + 872;
  if (!a5 || !*a5)
  {
    sub_10000D018(a1, a4, a3, a4, a5, a6, a7, a8);
  }

  result = sub_10000D284(a1, a2, a3, a4, v13, a6, a7, a8);
  if (!result)
  {
    if (*(v13 + 4 * *(a1 + 969)))
    {
      v15 = (*(a1 + 80) + 24 * *(v13 + 4 * *(a1 + 969)));
      if ((*v15 & 0xFFFFFFFFFFFFFLL) != a3)
      {
        sub_1000A3F60();
      }

      if ((v15[1] & 0xFFFFFFFFFFFFFLL) != a4)
      {
        sub_1000A3F8C();
      }

      return 17;
    }

    else
    {

      return sub_10000D73C(a1, a3, a4, a5, v13);
    }
  }

  return result;
}

uint64_t sub_10000DB50(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a3 | a2) >> 52)
  {
    return 84;
  }

  v9 = a1 + 970;
  result = sub_10000D284(a1, 0, a2, a3, a1 + 970, a6, a7, a8);
  if (!result)
  {
    if (*(v9 + 4 * *(a1 + 1067)))
    {
      sub_10000DC64(a1, v9);
      return 0;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

uint64_t sub_10000DBCC(uint64_t result, unsigned int a2)
{
  if (a2 <= *(result + 88) >> 8)
  {
    v2 = *(result + 80);
    v3 = *(v2 + 24 * a2 + 8) & 0xFFFFFFFFFFFFFLL;
    if (*result && v3 >= *(*(*(result + 8) + 376) + 48 * *(result + 88) + 48))
    {
      sub_1000A3FB8();
    }

    v4 = *(result + 96);
    v5 = v4 >= v3;
    v6 = v4 - v3;
    if (!v5)
    {
      sub_1000A3FE4();
    }

    --*(result + 94);
    *(result + 96) = v6;
    *(v2 + 24 * a2) = *(result + 92);
    *(result + 92) = a2;
  }

  return result;
}

uint64_t sub_10000DC64(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 96);
  if (v2 >= 2)
  {
    sub_1000A3E2C();
  }

  v4 = *(a2 + 97);
  v5 = v4;
  v6 = (a2 + 4 * v4);
  v7 = *(result + 80);
  v8 = v7 + 24 * *v6;
  v9 = v8 + 4 * v2;
  v10 = *(v9 + 18);
  v11 = v5 - 1;
  if (v5 < 1)
  {
    v14 = 0;
    v13 = 0;
  }

  else
  {
    v12 = (a2 + 4 * v11);
    v13 = *v12;
    v14 = ((*(v12 + 3) + 1 + (((*(v12 + 3) + 1) & 0x8000u) >> 15)) >> 1);
  }

  v15 = 8 * (v2 != 0);
  v16 = *(v9 + 16);
  v17 = result + 2 * v2;
  if (!v10)
  {
    if (v5)
    {
      v36 = (v7 + 24 * v13 + 4 * v2 + 2 * v14 + 16);
    }

    else
    {
      v36 = (v17 + 104);
    }

    *v36 = v16;
    *(a2 + 97) = v11;
    if ((v11 & 0x80) != 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  v18 = *(v8 + 8 * (v2 != 0));
  v19 = v7 + 24 * v10 + 4 * v2;
  v22 = *(v19 + 16);
  v21 = (v19 + 16);
  v20 = v22;
  if (v22)
  {
    *(v6 + 3) = 1;
    v23 = v5 + 1;
    *(a2 + 97) = v5 + 1;
    v24 = a2 + 4 * (v5 + 1);
    *v24 = v10;
    *(v24 + 3) = 0;
    v25 = v10;
    do
    {
      v11 = v23;
      v26 = v25;
      v25 = v20;
      *(a2 + 4 * v23++ + 3) = -1;
      v27 = a2 + 4 * v23;
      *v27 = v25;
      *(v27 + 3) = 0;
      v28 = v7 + 24 * v25 + 4 * v2;
      v30 = *(v28 + 16);
      v29 = (v28 + 16);
      v20 = v30;
    }

    while (v30);
    v31 = v25;
    v32 = v7 + 24 * v25;
    v33 = v32 + 4 * v2;
    *(v7 + 24 * v26 + 4 * v2 + 16) = *(v33 + 18);
    *(v33 + 18) = v10;
    *v29 = v16;
    *(v32 + v15 + 7) = HIBYTE(v18);
    v34 = v7 + 24 * v13 + 4 * v2 + 2 * v14 + 16;
    if (v5)
    {
      v35 = v34;
    }

    else
    {
      v35 = (v17 + 104);
    }

    *v35 = v31;
    *(v6 + 3) = 1;
    *v6 = v31;
    *(a2 + 97) = v11;
    if ((v11 & 0x80) != 0)
    {
      return result;
    }

    goto LABEL_22;
  }

  *v21 = v16;
  v37 = (v7 + 24 * v13 + 4 * v2 + 2 * v14 + 16);
  if (!v5)
  {
    v37 = (v17 + 104);
  }

  *v37 = v10;
  *(v7 + 24 * v10 + v15 + 7) = HIBYTE(v18);
  *(v6 + 3) = 1;
  *v6 = v10;
  v11 = v5;
  if ((v5 & 0x80) == 0)
  {
LABEL_22:
    v53 = result;
    v54 = (v17 + 104);
    do
    {
      v38 = (a2 + 4 * v11);
      v39 = *(v38 + 3);
      if (!*(v38 + 3))
      {
        sub_1000A40EC();
      }

      v40 = *v38;
      v41 = *(result + 80);
      v42 = v41 + 24 * v40;
      v43 = *(v42 + 8 * (v2 != 0));
      v44 = HIBYTE(v43);
      v45 = (HIBYTE(v43) - v39);
      if (v45 < 0)
      {
        v45 = -v45;
      }

      if (v45 > 1)
      {
        v46 = v54;
        if (v11)
        {
          v46 = (v41 + 24 * *(a2 + 4 * (v11 - 1)) + 4 * v2 + 2 * ((*(a2 + 4 * (v11 - 1) + 3) + 1 + (((*(a2 + 4 * (v11 - 1) + 3) + 1) & 0x8000u) >> 15)) >> 1) + 16);
        }

        v47 = -v39;
        v48 = *(v41 + 24 * v40 + 4 * v2 + 2 * ((v47 + 1 + (((v47 + 1) & 0x8000u) >> 15)) >> 1) + 16);
        v49 = v41 + 24 * v48;
        v50 = HIBYTE(*(v49 + 8 * (v2 != 0)));
        if (v50 == v39)
        {
          sub_10000FB30(result, v2, -v39, v40, v48, v46);
          result = v53;
        }

        else
        {
          result = sub_10000FA14(result, v2, v39, v40, v46);
          v51 = HIBYTE(*(v42 + 8 * (v2 != 0)));
          if (!v50)
          {
            if (v51 != v47)
            {
              sub_1000A4068();
            }

            if (*(v49 + v15 + 7) != v39)
            {
              sub_1000A4094();
            }

            return result;
          }

          if (v51)
          {
            sub_1000A4010();
          }

          result = v53;
          if (*(v49 + v15 + 7))
          {
            sub_1000A403C();
          }
        }
      }

      else
      {
        *(v42 + 8 * (v2 != 0)) = v43 & 0xFFFFFFFFFFFFFFLL | ((HIBYTE(v43) - v39) << 56);
        if (!v44)
        {
          return result;
        }

        if (v44 != v39)
        {
          sub_1000A40C0();
        }
      }

      v52 = v11--;
    }

    while (v52 > 0);
  }

  return result;
}

void sub_10000DFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_10000F938(a1, a2, 1, a4, a5, a6, a7, a8);
  if (v10 == 2)
  {
    *(a1 + 112) = 0;
    *(a1 + 120) = 0;
  }

  else if (v10)
  {
    v19 = *(a1 + 88);
    v18 = *(*a1 + 384) + 212;
    log_err("%s:%d: %s dev %d Failed to find successor node from length tree while updating smallest: %d\n", v11, v12, v13, v14, v15, v16, v17, "spaceman_fxc_update_smallest_with_successor");
  }

  else
  {
    *(a1 + 112) = vandq_s8(*(*(a1 + 80) + 24 * *(a2 + 4 * *(a2 + 97))), vdupq_n_s64(0xFFFFFFFFFFFFFuLL));
  }
}

uint64_t spaceman_free_extent_cache_remove(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
    v11 = (a1 + 1068);
    v90 = 0;
    v12 = sub_10000D284(a1, 0, a2, a3, a1 + 1068, a6, a7, a8);
    if (v12)
    {
LABEL_8:
      v20 = v12;
LABEL_9:
      v86 = *(a1 + 88);
      v82 = *(*a1 + 384) + 212;
      log_err("%s:%d: %s dev %d Error %d, reinitializing\n", v13, v14, v15, v16, v17, v18, v19, "spaceman_free_extent_cache_remove");
      spaceman_free_extent_cache_reset(a1);
      goto LABEL_10;
    }

    v22 = (a1 + 1166);
    v23 = a3 + a2;
    v24 = 4 * *(a1 + 1165);
    v25 = *(v11 + v24);
    if (*(v11 + v24))
    {
      goto LABEL_20;
    }

    v38 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v38;
    *(a1 + 1262) = *(a1 + 1164);
    v39 = *(a1 + 1084);
    *v22 = *v11;
    *(a1 + 1182) = v39;
    v40 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v40;
    v41 = sub_10000F938(a1, a1 + 1166, 0xFFFFFFFFLL, v15, v16, v17, v18, v19);
    if (v41 == 2)
    {
      goto LABEL_44;
    }

    v20 = v41;
    if (v41)
    {
      goto LABEL_9;
    }

    v16 = *(v22 + 2 * *(a1 + 1263));
    v42 = (*(a1 + 80) + 24 * v16);
    v43 = v42[1] & 0xFFFFFFFFFFFFFLL;
    v44 = v43 + (*v42 & 0xFFFFFFFFFFFFFLL);
    if (v44 <= a2)
    {
      goto LABEL_44;
    }

    v12 = sub_10000D3BC(a1, *v42 & 0xFFFFFFFFFFFFFLL, v43, a2 - (*v42 & 0xFFFFFFFFFFFFFLL), v16, v17, v18, v19);
    if (v12)
    {
      goto LABEL_8;
    }

    v45 = v44 - v23;
    if (v44 <= v23)
    {
LABEL_44:
      v74 = sub_10000F938(a1, a1 + 1068, 1, v15, v16, v17, v18, v19);
      if (v74 != 2)
      {
        v20 = v74;
        if (v74)
        {
          goto LABEL_9;
        }

        v25 = *(v11 + 2 * *(a1 + 1165));
LABEL_20:
        v26 = (*(a1 + 80) + 24 * v25);
        v27 = *v26;
        v28 = *v26 & 0xFFFFFFFFFFFFFLL;
        v29 = v26[1] & 0xFFFFFFFFFFFFFLL;
        v30 = v29 + v28;
        if (v23 >= v29 + v28)
        {
          while (1)
          {
            sub_10000DC64(a1, a1 + 1068);
            v52 = sub_10000D284(a1, 1u, v28, v29, a1 + 1068, v49, v50, v51);
            if (v52)
            {
              v75 = v52;
              v88 = *(a1 + 88);
              v84 = *(*a1 + 384) + 212;
              log_err("%s:%d: %s dev %d Failed to delete covered node from length tree: %d\n", v53, v54, v55, v56, v57, v58, v59, "spaceman_free_extent_cache_remove");
              v20 = v75;
              goto LABEL_9;
            }

            if (v28 == *(a1 + 112))
            {
              if (v29 != *(a1 + 120))
              {
                sub_1000A4118();
              }

              v60 = *(a1 + 1148);
              *(a1 + 1230) = *(a1 + 1132);
              *(a1 + 1246) = v60;
              *(a1 + 1262) = *(a1 + 1164);
              v61 = *(a1 + 1084);
              *v22 = *v11;
              *(a1 + 1182) = v61;
              v62 = *(a1 + 1116);
              *(a1 + 1198) = *(a1 + 1100);
              *(a1 + 1214) = v62;
              sub_10000DFE0(a1, a1 + 1166, v54, v55, v56, v57, v58, v59);
            }

            sub_10000DC64(a1, a1 + 1068);
            sub_10000DBCC(a1, v25);
            if (v29 == *(a1 + 128))
            {
              sub_10000E560(a1, v63, v64, v65, v66, v67, v68, v69);
            }

            v20 = sub_10000D284(a1, 0, v28, v29, a1 + 1068, v67, v68, v69);
            if (!v20)
            {
              v20 = sub_10000F938(a1, a1 + 1068, 1, v72, v73, v17, v18, v19);
            }

            if (v20)
            {
              break;
            }

            v25 = *(v11 + 2 * *(a1 + 1165));
            v26 = (*(a1 + 80) + 24 * *(v11 + 2 * *(a1 + 1165)));
            v27 = *v26;
            v28 = *v26 & 0xFFFFFFFFFFFFFLL;
            v29 = v26[1] & 0xFFFFFFFFFFFFFLL;
            v30 = v29 + v28;
            if (v23 < v29 + v28)
            {
              goto LABEL_21;
            }
          }

          if (v20 == 2)
          {
            goto LABEL_48;
          }

          v89 = *(a1 + 88);
          v85 = *(*a1 + 384) + 212;
          log_err("%s:%d: %s dev %d Failed to get next extent: %d\n", v70, v71, v72, v73, v17, v18, v19, "spaceman_free_extent_cache_remove");
          goto LABEL_9;
        }

LABEL_21:
        if (v23 > v28)
        {
          if (v28 == *(a1 + 112))
          {
            *(a1 + 112) = v23;
          }

          *v26 = v27 & 0xFFF0000000000000 | v23 & 0xFFFFFFFFFFFFFLL;
          v20 = sub_10000D3BC(a1, v23, v29, v30 - v23, v25, v17, v18, v19);
          if (!v20)
          {
            goto LABEL_10;
          }

          v87 = *(a1 + 88);
          v83 = *(*a1 + 384) + 212;
          log_err("%s:%d: %s dev %d Failed to update partially-covered node in length tree: %d\n", v31, v32, v33, v34, v35, v36, v37, "spaceman_free_extent_cache_remove");
          goto LABEL_9;
        }
      }
    }

    else
    {
      v90 = 0;
      if (sub_10000DA40(a1, 0, v23, v44 - v23, &v90, v17, v18, v19))
      {
LABEL_32:
        sub_10000D23C(a1, v23, v44 - v23);
        goto LABEL_48;
      }

      if (sub_10000DA40(a1, 1u, v23, v44 - v23, &v90, v46, v47, v48))
      {
        if (!sub_10000DB50(a1, v23, v44 - v23, v76, v77, v78, v79, v80))
        {
          sub_10000DBCC(a1, v90);
        }

        goto LABEL_32;
      }

      v81 = *(a1 + 120);
      if (v45 < v81 || v45 == v81 && v23 > *(a1 + 112))
      {
        *(a1 + 112) = v23;
        *(a1 + 120) = v45;
      }

      if (v45 > *(a1 + 128))
      {
        v20 = 0;
        *(a1 + 128) = v45;
LABEL_10:
        if (*a1)
        {
          pthread_mutex_unlock((a1 + 16));
        }

        return v20;
      }
    }

LABEL_48:
    v20 = 0;
    goto LABEL_10;
  }

  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 45;
}

uint64_t sub_10000E560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 + 676;
  result = sub_10000E5C8(a1, a1 + 676, 1u, a4, a5, a6, a7, a8);
  if (result == 2)
  {
    v11 = 0;
  }

  else
  {
    if (result)
    {
      return result;
    }

    v11 = *(*(a1 + 80) + 24 * *(v9 + 4 * *(a1 + 773)) + 8) & 0xFFFFFFFFFFFFFLL;
  }

  *(a1 + 128) = v11;
  return result;
}

uint64_t sub_10000E5C8(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = a3;
  v10 = *(a1 + 2 * a3 + 104);
  *a2 = v10;
  if (v10)
  {
    if (a3 >= 2)
    {
      sub_1000A3E2C();
    }

    *(a2 + 2) = *(*(a1 + 80) + 24 * v10 + 8 * (a3 != 0) + 7);
  }

  while (1)
  {
    v11 = *(a2 + 97);
    if (!*(a2 + 4 * v11))
    {
      break;
    }

    result = sub_10000F83C(a1, a2, 1, a4, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }
  }

  v13 = v11 - 1;
  *(a2 + 97) = v13;
  return (v13 >> 6) & 2;
}

uint64_t spaceman_free_extent_cache_bitmap_scan_begin(uint64_t a1, uint64_t *a2)
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

uint64_t spaceman_free_extent_cache_bitmap_scan_finished(uint64_t result, unint64_t a2, char a3)
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

      result = sub_10000E8EC(v5 + 184, *(v5 + 160), *(v5 + 168));
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

uint64_t sub_10000E8EC(uint64_t result, uint64_t a2, uint64_t a3)
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

unint64_t spaceman_free_extent_cache_search_better_length(__int16 a1, unint64_t a2, unint64_t a3)
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

uint64_t spaceman_free_extent_cache_search(uint64_t a1, uint64_t a2, int64_t *a3, unint64_t *a4)
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

  v83 = 0;
  v84[0] = 0;
  v79 = 0;
  v80 = 0;
  pthread_mutex_lock((a1 + 16));
  if ((*(a1 + 280) & 2) != 0)
  {
    if (*a1)
    {
      pthread_mutex_unlock((a1 + 16));
    }

    return 6;
  }

  v18 = (a1 + 1068);
  v81 = 0;
  v82 = 0;
  v77 = 0;
  v78 = 0;
  if (!sub_10000D284(a1, 1u, v4, v5, a1 + 1068, v15, v16, v17))
  {
    if (*(v18 + 2 * *(a1 + 1165)))
    {
      v26 = (*(a1 + 80) + 24 * *(v18 + 2 * *(a1 + 1165)));
      v82 = *v26 & 0xFFFFFFFFFFFFFLL;
      v27 = v26[1] & 0xFFFFFFFFFFFFFLL;
      v78 = v27;
      if (v82 != v4)
      {
        sub_1000A4144();
      }

      if (v27 != v5)
      {
        sub_1000A4170();
      }

      v28 = v4;
      v29 = v5;
      if (v12 && (spaceman_clip_extent(v4, v5, v13, v11, a2, v4, &v82, &v78), v29 = v78, v28 = v82, !v78))
      {
        v31 = 0;
      }

      else
      {
        v30 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v28, v29, a2, v4, &v81, &v77);
        v28 = v82;
        v31 = v78;
        if (v30)
        {
          v83 = v82;
          v79 = v78;
          v28 = v81;
          v82 = v81;
          v31 = v77;
          v78 = v77;
        }
      }

      v84[0] = v28;
      v80 = v31;
      if (v31 == v5)
      {
        goto LABEL_22;
      }
    }

    v36 = v12;
    v37 = v13;
    v38 = (a1 + 1166);
    v39 = *(a1 + 1148);
    *(a1 + 1230) = *(a1 + 1132);
    *(a1 + 1246) = v39;
    *(a1 + 1262) = *(a1 + 1164);
    v40 = *(a1 + 1084);
    *(a1 + 1166) = *v18;
    *(a1 + 1182) = v40;
    v41 = *(a1 + 1116);
    *(a1 + 1198) = *(a1 + 1100);
    *(a1 + 1214) = v41;
    v76 = v36;
    if (!sub_10000F098(a1, a1 + 1166, v36, v37, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v84, &v80, &v83, &v79, 0x301u))
    {
      v42 = *(a1 + 1148);
      *(a1 + 1230) = *(a1 + 1132);
      *(a1 + 1246) = v42;
      *(a1 + 1262) = *(a1 + 1164);
      v43 = *(a1 + 1084);
      *v38 = *v18;
      *(a1 + 1182) = v43;
      v44 = *(a1 + 1116);
      *(a1 + 1198) = *(a1 + 1100);
      *(a1 + 1214) = v44;
      if (!sub_10000F098(a1, a1 + 1166, v76, v37, v11, a2, v4, v5, 0xFFFFFFFFFFFFFFFFLL, v84, &v80, &v83, &v79, 0x502u))
      {
        v75 = v37;
        v47 = v79;
        if (v80 >= v5)
        {
          v49 = v79;
          v47 = v80;
          v48 = v76;
        }

        else
        {
          v48 = v76;
          if (v79 <= v80)
          {
            v49 = v79;
            v47 = v80;
          }

          else
          {
            v49 = 0;
            v50 = v83;
            v83 = 0;
            v84[0] = v50;
            v79 = 0;
            v80 = v47;
            a2 = a2 & 0xFFFFDFFF;
          }
        }

        if (v47 < v5 && (a2 & 0x1000) == 0)
        {
          goto LABEL_22;
        }

        if (v4 <= v84[0])
        {
          v53 = v84[0] - v4;
        }

        else
        {
          if (v4 - v84[0] < v47)
          {
            goto LABEL_22;
          }

          v53 = v4 - (v47 + v84[0]);
        }

        if (!v53)
        {
          goto LABEL_22;
        }

        v69 = v49;
        v72 = v84[0];
        v73 = v47;
        v74 = v53;
        if (!sub_10000D284(a1, 0, v4, v5, a1 + 1068, v23, v24, v25))
        {
          if (*(v18 + 2 * *(a1 + 1165)))
          {
            v54 = (*(a1 + 80) + 24 * *(v18 + 2 * *(a1 + 1165)));
            v55 = *v54 & 0xFFFFFFFFFFFFFLL;
            v82 = v55;
            v56 = v54[1];
            v57 = v56 & 0xFFFFFFFFFFFFFLL;
            v78 = v56 & 0xFFFFFFFFFFFFFLL;
            if (v48)
            {
              spaceman_clip_extent(v55, v56 & 0xFFFFFFFFFFFFFLL, v75, v11, a2, v4, &v82, &v78);
              v57 = v78;
              v55 = v82;
            }

            if (v57)
            {
              v58 = spaceman_clip_extent_to_zones(*a1, *(a1 + 8), *(a1 + 88), v55, v57, a2, v4, &v81, &v77);
              v55 = v82;
              v59 = v78;
              if (v58)
              {
                v60 = v69;
                v67 = v82;
                v70 = v78;
                if (sub_10000F374(v4, v5, v83, v60, v82, v78, a2))
                {
                  v83 = v67;
                  v79 = v70;
                }

                v55 = v81;
                v82 = v81;
                v59 = v77;
                v78 = v77;
              }
            }

            else
            {
              v59 = 0;
            }

            v68 = v55;
            v71 = v59;
            if (sub_10000F374(v4, v5, v72, v73, v55, v59, a2))
            {
              v84[0] = v68;
              v80 = v71;
              goto LABEL_22;
            }
          }

          v61 = *(a1 + 1148);
          *(a1 + 1230) = *(a1 + 1132);
          *(a1 + 1246) = v61;
          *(a1 + 1262) = *(a1 + 1164);
          v62 = *(a1 + 1084);
          *v38 = *v18;
          *(a1 + 1182) = v62;
          v63 = *(a1 + 1116);
          *(a1 + 1198) = *(a1 + 1100);
          *(a1 + 1214) = v63;
          if (!sub_10000F098(a1, a1 + 1166, v48, v75, v11, a2, v4, v5, v74, v84, &v80, &v83, &v79, 0x1802u))
          {
            v64 = *(a1 + 1148);
            *(a1 + 1230) = *(a1 + 1132);
            *(a1 + 1246) = v64;
            *(a1 + 1262) = *(a1 + 1164);
            v65 = *(a1 + 1084);
            *v38 = *v18;
            *(a1 + 1182) = v65;
            v66 = *(a1 + 1116);
            *(a1 + 1198) = *(a1 + 1100);
            *(a1 + 1214) = v66;
            if (!sub_10000F098(a1, a1 + 1166, v76, v75, v11, a2, v4, v5, v74, v84, &v80, &v83, &v79, 0x1801u))
            {
LABEL_22:
              if (*a1)
              {
                pthread_mutex_unlock((a1 + 16));
              }

              v32 = v80;
              if (!v80 && v79)
              {
                v84[0] = v83;
                v32 = v79;
              }

              v33 = v32 - v5;
              if (v32 > v5)
              {
                v34.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v34.i64[1] = v32 - v5;
                *(a1 + 360) = vaddq_s64(*(a1 + 360), v34);
                if (v33 == 1)
                {
                  result = 0;
                  v35 = 400;
                }

                else if (v33 >= 8)
                {
                  result = 0;
                  v51 = v33 >= 0x10;
                  v35 = 376;
                  if (!v51)
                  {
                    v35 = 384;
                  }
                }

                else
                {
                  result = 0;
                  v35 = 392;
                }

                goto LABEL_55;
              }

              if (v32 >= v5)
              {
                result = 0;
                v35 = 408;
              }

              else
              {
                if ((a2 & 0x1000) != 0)
                {
                  v46 = 0;
                }

                else
                {
                  v46 = 28;
                }

                if (sub_10000F520(a1, a2, v5, v32))
                {
                  result = 3;
                }

                else
                {
                  result = v46;
                }

                if ((a2 & 0x1000) == 0)
                {
                  v5 = 0;
                  v84[0] = 0;
LABEL_78:
                  v52 = 424;
                  goto LABEL_56;
                }

                if (!v32)
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

                  goto LABEL_78;
                }

                v35 = 416;
              }

              v5 = v32;
LABEL_55:
              ++*(a1 + v35);
              v52 = 352;
LABEL_56:
              ++*(a1 + v52);
              *a3 = v84[0];
              *a4 = v5;
              return result;
            }
          }
        }
      }
    }
  }

  v45 = *(*a1 + 384) + 212;
  *(a1 + 88);
  log_err("%s:%d: %s dev %d Error searching %s free extent cache: %d; Reinitializing.\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_free_extent_cache_search");
  spaceman_free_extent_cache_reset(a1);
  if (*a1)
  {
    pthread_mutex_unlock((a1 + 16));
  }

  return 3;
}

uint64_t sub_10000F098(uint64_t a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5, uint64_t a6, int64_t a7, unint64_t a8, unint64_t a9, uint64_t *a10, unint64_t *a11, uint64_t *a12, unint64_t *a13, unsigned int a14)
{
  if ((a14 & 3) == 0 || (a14 & 0x1F00) == 0)
  {
    return 22;
  }

  v17 = a6;
  v19 = a2;
  v20 = a1;
  v50 = 0;
  v51 = 0;
  v48 = 0;
  v49 = 0;
  if (a14)
  {
    v21 = 1;
  }

  else
  {
    v21 = 0xFFFFFFFFLL;
  }

  v15 = sub_10000F938(a1, a2, v21, a4, a5, a6, a7, a8);
  if ((v15 & 0xFFFFFFFD) == 0)
  {
    v40 = a5;
    v27 = 0;
    v43 = v21;
    v45 = v17;
    v41 = v20;
    v42 = v19;
    do
    {
      if (v15 == 2)
      {
        return 0;
      }

      v28 = (*(v20 + 80) + 24 * *(v19 + 4 * *(v19 + 97)));
      v29 = *v28 & 0xFFFFFFFFFFFFFLL;
      v51 = v29;
      v30 = v28[1] & 0xFFFFFFFFFFFFFLL;
      v49 = v30;
      if (a3)
      {
        spaceman_clip_extent(v29, v30, a4, v40, v17, a7, &v51, &v49);
        v31 = v49;
        if (!v49)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v31 = v30;
        if (!v30)
        {
LABEL_42:
          if ((a14 & 0x1000) != 0 && v27 > 0x7E)
          {
            return v15;
          }

          goto LABEL_47;
        }
      }

      v32 = spaceman_clip_extent_to_zones(*v20, *(v20 + 8), *(v20 + 88), v51, v31, v17, a7, &v50, &v48);
      v33 = v51;
      v34 = v49;
      if (v32)
      {
        if (sub_10000F374(a7, a8, *a12, *a13, v51, v49, v17))
        {
          *a12 = v33;
          *a13 = v34;
        }

        v33 = v50;
        v51 = v50;
        v34 = v48;
        v49 = v48;
      }

      v35 = *a11;
      if (sub_10000F374(a7, a8, *a10, *a11, v33, v34, v45))
      {
        *a10 = v33;
        *a11 = v34;
        v35 = v34;
        if ((a14 & 0x800) != 0)
        {
          return v15;
        }
      }

      v36 = v30 == a8 && v34 == v30;
      v37 = v36;
      if ((*&v37 & ((a14 & 0x100) >> 8) & 1) != 0 || ((v35 > a8) & (a14 >> 9)) != 0)
      {
        return v15;
      }

      if ((a14 & 0x400) != 0 && v30 < a8 && v30 <= v35)
      {
        return v15;
      }

      v17 = v45;
      v20 = v41;
      v19 = v42;
      if ((a14 & 0x1000) != 0)
      {
        if (v27 > 0x7E)
        {
          return v15;
        }

        v39 = v33 - a7;
        if (v33 < a7)
        {
          if (a7 - v33 >= v34)
          {
            v39 = a7 - (v33 + v34);
          }

          else
          {
            v39 = 0;
          }
        }

        if (v39 >= a9)
        {
          return v15;
        }
      }

LABEL_47:
      v15 = sub_10000F938(v20, v19, v43, v22, v31, v23, v24, v25);
      ++v27;
    }

    while ((v15 & 0xFFFFFFFD) == 0);
  }

  return v15;
}

BOOL sub_10000F374(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, __int16 a7)
{
  if (!a6)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  if (a4 < a2)
  {
    if (a6 <= a4)
    {
      if (a6 != a4 || (a7 & 0x4000) == 0)
      {
        return 0;
      }

      if (a1 <= a3)
      {
        v9 = a3 - a1;
      }

      else
      {
        v9 = a1 - a3 >= a6 ? a1 - (a3 + a6) : 0;
      }

      if (a1 <= a5)
      {
        v12 = a5 - a1;
      }

      else
      {
        v12 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
      }

      if (v12 >= v9)
      {
        return 0;
      }
    }

    return 1;
  }

  if (a4 != a2)
  {
    v10 = a4 - a2;
    if (a4 > a2)
    {
      v11 = a6 - a2;
      if (a6 >= a2)
      {
        if (a6 == a2 || v10 <= 0xF && v11 > v10)
        {
          return 1;
        }

        if ((a7 & 0x4000) != 0)
        {
          if (a1 <= a3)
          {
            v14 = a3 - a1;
          }

          else if (a1 - a3 >= a4)
          {
            v14 = a1 - (a3 + a4);
          }

          else
          {
            v14 = 0;
          }

          if (a1 <= a5)
          {
            v15 = a5 - a1;
          }

          else if (a1 - a5 >= a6)
          {
            v15 = a1 - (a5 + a6);
          }

          else
          {
            v15 = 0;
          }

          return v11 >= 0x10 && v15 < v14;
        }

        if (v11 < v10 && v11 > 0xF)
        {
          return 1;
        }
      }
    }

    return 0;
  }

  if (a6 < a4 || a6 != a4 && (a7 & 0x4000) == 0)
  {
    return 0;
  }

  if (a1 <= a3)
  {
    v8 = a3 - a1;
  }

  else
  {
    v8 = a1 - a3 >= a4 ? a1 - (a3 + a4) : 0;
  }

  if (a1 <= a5)
  {
    v13 = a5 - a1;
  }

  else
  {
    v13 = a1 - a5 >= a6 ? a1 - (a5 + a6) : 0;
  }

  if (v13 >= v8)
  {
    return 0;
  }

  result = 1;
  if (a6 != a4 && a6 - a4 <= 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10000F520(uint64_t a1, __int16 a2, unint64_t a3, unint64_t a4)
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

uint64_t sub_10000F7A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(a2 + 96) = 0;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 96) = 0;
  v10 = *(a1 + 104);
  *a2 = v10;
  if (v10)
  {
    *(a2 + 2) = *(*(a1 + 80) + 24 * v10 + 7);
  }

  while (1)
  {
    v11 = *(a2 + 97);
    if (!*(a2 + 4 * v11))
    {
      break;
    }

    result = sub_10000F83C(a1, a2, 0xFFFFFFFFLL, a4, a5, a6, a7, a8);
    if (result)
    {
      return result;
    }
  }

  v13 = v11 - 1;
  *(a2 + 97) = v13;
  return (v13 >> 6) & 2;
}

uint64_t sub_10000F83C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 97);
  v9 = (a2 + 4 * *(a2 + 97));
  *(v9 + 3) = a3;
  if (v8 < 23)
  {
    v11 = v8 + 1;
    *(a2 + 97) = v8 + 1;
    v12 = *(a1 + 80);
    v13 = *v9;
    v14 = *(a2 + 96);
    v15 = *(v12 + 24 * v13 + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16);
    v16 = a2 + 4 * v11;
    *v16 = v15;
    *(v16 + 3) = 0;
    if (v15)
    {
      if (v14 >= 2)
      {
        sub_1000A3E2C();
      }

      v17 = *(v12 + 24 * v15 + 8 * (v14 != 0) + 7);
    }

    else
    {
      v17 = 0;
    }

    result = 0;
    *(v16 + 2) = v17;
  }

  else
  {
    *(a2 + 96);
    v18 = *(*a1 + 384) + 212;
    v19 = *(a1 + 88);
    log_err("%s:%d: %s dev %d %s tree: PATH TOO LONG: %d\n", a2, a3, a4, a5, a6, a7, a8, "spaceman_fxtp_add_child");
    return 84;
  }

  return result;
}

uint64_t sub_10000F938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  v9 = -a3;
  v10 = *(a2 + 97);
  if (*(*(a1 + 80) + 24 * *(a2 + 4 * v10) + 4 * *(a2 + 96) + ((a3 + 1) & 0x1FE) + 16))
  {
    v11 = a1;
    while (1)
    {
      result = sub_10000F83C(a1, a2, a3, a4, a5, a6, a7, a8);
      if (result)
      {
        break;
      }

      v13 = *(v8 + 97);
      if (!*(v8 + 4 * v13))
      {
        v18 = v13 - 1;
        *(v8 + 97) = v18;
        v16 = (v8 + 4 * v18 + 3);
        goto LABEL_12;
      }

      a1 = v11;
      a2 = v8;
      a3 = v9;
    }
  }

  else
  {
    LODWORD(v10) = v10;
    do
    {
      v14 = __OFSUB__(v10, 1);
      LODWORD(v10) = v10 - 1;
      if (v10 < 0 != v14)
      {
        return 2;
      }

      v15 = a2 + 4 * v10;
      v17 = *(v15 + 3);
      v16 = (v15 + 3);
    }

    while (v17 != -a3);
    *(a2 + 97) = v10;
LABEL_12:
    result = 0;
    *v16 = 0;
  }

  return result;
}

uint64_t sub_10000FA14(uint64_t result, unsigned int a2, int a3, unsigned int a4, _WORD *a5)
{
  if (!a4)
  {
    sub_1000A41C8();
  }

  v5 = *(result + 80);
  v6 = v5 + 24 * a4 + 4 * a2 + 16;
  v7 = ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v8 = *(v6 + 2 * v7);
  if (!*(v6 + 2 * v7))
  {
    sub_1000A419C();
  }

  v9 = v5 + 24 * *(v6 + 2 * v7) + 4 * a2 + 2 * ((a3 + 1 + (((a3 + 1) & 0x8000u) >> 15)) >> 1);
  *(v6 + 2 * v7) = *(v9 + 16);
  *(v9 + 16) = a4;
  *a5 = v8;
  if (a2 >= 2)
  {
    sub_1000A3E2C();
  }

  v10 = v5 + 24 * v8;
  if (*(v10 + 8 * (a2 != 0) + 7))
  {
    *(v5 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v13 = *(v10 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v5 + 24 * a4;
    v12 = *(v11 + 8 * (a2 != 0));
    if (a3 == -1)
    {
      *(v11 + 8 * (a2 != 0)) = v12 & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
      v13 = *(v10 + 8 * (a2 != 0)) | 0xFF00000000000000;
    }

    else
    {
      *(v11 + 8 * (a2 != 0)) = v12 | 0xFF00000000000000;
      v13 = *(v10 + 8 * (a2 != 0)) & 0xFFFFFFFFFFFFFFLL | 0x100000000000000;
    }
  }

  *(v10 + 8 * (a2 != 0)) = v13;
  return result;
}

uint64_t sub_10000FB30(uint64_t a1, unsigned int a2, int a3, unsigned int a4, unsigned int a5, _WORD *a6)
{
  if (!a4)
  {
    sub_1000A4278();
  }

  if (!a5)
  {
    sub_1000A424C();
  }

  v6 = -a3;
  v7 = *(a1 + 80);
  v8 = v7 + 24 * a5 + 4 * a2 + 16;
  v9 = ((-a3 + 1 + (((-a3 + 1) & 0x8000u) >> 15)) >> 1);
  v10 = *(v8 + 2 * v9);
  if (!*(v8 + 2 * v9))
  {
    sub_1000A4220();
  }

  v11 = v7 + 24 * *(v8 + 2 * v9) + 4 * a2 + 16;
  v12 = a3 + 1 + (((a3 + 1) & 0x8000u) >> 15);
  v13 = v12 >> 1;
  v14 = (v12 >> 1);
  result = *(v11 + 2 * v14);
  *(v8 + 2 * v9) = result;
  *(v11 + 2 * v14) = a5;
  *(v7 + 24 * a4 + 4 * a2 + 2 * v13 + 16) = *(v11 + 2 * v9);
  *(v11 + 2 * v9) = a4;
  *a6 = v10;
  if (a2 >= 2)
  {
    sub_1000A3E2C();
  }

  v16 = v7 + 24 * v10;
  v17 = 8 * (a2 != 0);
  v18 = HIBYTE(*(v16 + v17));
  if (v18 == a3)
  {
    *(v7 + 24 * a4 + v17 + 7) = v6;
    v19 = v7 + 24 * a5;
LABEL_9:
    *(v19 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    goto LABEL_12;
  }

  if (!v18)
  {
    *(v7 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
    v19 = v7 + 24 * a5;
    goto LABEL_9;
  }

  if (v18 != v6)
  {
    sub_1000A41F4();
  }

  *(v7 + 24 * a4 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  *(v7 + 24 * a5 + v17 + 7) = a3;
LABEL_12:
  *(v16 + 8 * (a2 != 0)) &= 0xFFFFFFFFFFFFFFuLL;
  return result;
}

uint64_t xf_init(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2)
  {
    v2 = a2;
    *(a1 + 2) = 4;
    v4 = _apfs_malloc_typed(0x10uLL, 0x100004052888210uLL);
    *(a1 + 8) = v4;
    if (!v4)
    {
      *(a1 + 2) = 0;
    }

    *(a1 + 6) = (v2 + 7) & 0xFFF8;
    v5 = _apfs_malloc_typed((v2 + 7) & 0xFFF8, 0xD97FBADFuLL);
    *(a1 + 16) = v5;
    if (!v5)
    {
      *(a1 + 6) = 0;
    }
  }

  return 0;
}

uint64_t xf_init_with_blob(unsigned __int16 *a1, unsigned __int16 *a2, unint64_t a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  if (a3 < 4)
  {
    return 28;
  }

  v6 = *a2;
  *a1 = v6;
  v7 = a2[1];
  a1[2] = v7;
  a1[1] = v6;
  if (v7 + 4 * v6 + 4 > a3)
  {
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = 0;
    v9 = a2 + 3;
    v10 = v6;
    while (v7 > v8)
    {
      v11 = *v9;
      if ((v7 - v8) < v11)
      {
        break;
      }

      v8 += (v11 + 7) & 0x1FFF8;
      v9 += 2;
      if (!--v10)
      {
        goto LABEL_9;
      }
    }

    goto LABEL_10;
  }

LABEL_9:
  v12 = (v7 + 7) & 0xFFF8;
  a1[3] = v12;
  if (v12 < v7)
  {
LABEL_10:
    result = 22;
LABEL_11:
    *a1 = 0;
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return result;
  }

  v13 = 4 * v6;
  *(a1 + 1) = _apfs_malloc_typed(4 * v6, 0x100004052888210uLL);
  v14 = _apfs_malloc_typed(a1[3], 0x8CB4D706uLL);
  *(a1 + 2) = v14;
  v15 = *(a1 + 1);
  v16 = *a1;
  if (!v15 || !v14)
  {
    _apfs_free(v15, 4 * v16);
    _apfs_free(*(a1 + 2), a1[3]);
    result = 12;
    goto LABEL_11;
  }

  v17 = (a2 + 2);
  memcpy(v15, v17, 4 * v16);
  memcpy(*(a1 + 2), &v17[v13], a1[2]);
  bzero((*(a1 + 2) + a1[2]), a1[3] - a1[2]);
  return 0;
}

uint64_t xf_get_from_blob(unsigned __int16 *a1, unint64_t a2, int a3, _DWORD *a4, void *a5, _DWORD *a6)
{
  if (a2 < 4)
  {
    return 28;
  }

  v7 = *a1;
  v8 = a1[1];
  if (v8 + 4 * v7 + 4 > a2)
  {
    return 22;
  }

  if (*a1)
  {
    v9 = 0;
    v10 = &a1[2 * v7 + 2];
    for (i = a1 + 3; ; i += 2)
    {
      v12 = *i;
      if (v9 + v12 > v8)
      {
        break;
      }

      if (*(i - 2) == a3)
      {
        if (a4)
        {
          *a4 = *(i - 1);
        }

        if (a6)
        {
          *a6 = v12;
        }

        result = 0;
        *a5 = v10 + v9;
        return result;
      }

      v9 += (v12 + 7) & 0x1FFF8;
      if (!--v7)
      {
        return 2;
      }
    }

    return 22;
  }

  return 2;
}

uint64_t xf_set_in_blob(unsigned __int16 *a1, unint64_t a2, int a3, const void *a4, int a5)
{
  v9 = 0;
  __dst = 0;
  result = xf_get_from_blob(a1, a2, a3, 0, &__dst, &v9);
  if (!result)
  {
    if (v9 == a5)
    {
      memcpy(__dst, a4, a5);
      return 0;
    }

    else
    {
      return 34;
    }
  }

  return result;
}

uint64_t xf_deep_copy(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a2 + 2))
  {
    v4 = _apfs_malloc_typed(a2[3], 0x3B1F33ADuLL);
    if (!v4)
    {
      return 12;
    }

    v5 = v4;
    memcpy(v4, *(a2 + 2), a2[3]);
  }

  else
  {
    v5 = 0;
  }

  if (!*(a2 + 1))
  {
    v7 = 0;
    goto LABEL_9;
  }

  v6 = _apfs_malloc_typed(4 * a2[1], 0x100004052888210uLL);
  if (v6)
  {
    v7 = v6;
    memcpy(v6, *(a2 + 1), 4 * *a2);
LABEL_9:
    result = 0;
    *a1 = *a2;
    *(a1 + 8) = v7;
    *(a1 + 16) = v5;
    return result;
  }

  _apfs_free(v5, a2[3]);
  return 12;
}

uint64_t xf_release(uint64_t a1)
{
  _apfs_free(*(a1 + 8), 4 * *(a1 + 2));
  _apfs_free(*(a1 + 16), *(a1 + 6));
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  return 0;
}

uint64_t xf_serialize(unsigned __int16 *a1, _WORD *a2, unint64_t a3)
{
  v3 = *a1;
  if (a1[2] + 4 * v3 + 4 > a3)
  {
    return 28;
  }

  *a2 = v3;
  a2[1] = a1[2];
  v6 = a2 + 2;
  memcpy(a2 + 2, *(a1 + 1), 4 * *a1);
  memcpy(&v6[2 * *a1], *(a1 + 2), a1[2]);
  return 0;
}

uint64_t xf_set(unsigned __int16 *a1, int a2, char a3, void *__src, uint64_t __n)
{
  v8 = a2;
  v10 = *a1;
  if (*a1)
  {
    v11 = 0;
    v12 = 0;
    v13 = *a1;
    v14 = v10 - 1;
    v15 = (*(a1 + 1) + 2);
    v16 = 2;
    while (*(v15 - 2) != a2)
    {
      v17 = *v15;
      v15 += 2;
      v12 += (v17 + 7) & 0x1FFF8;
      ++v11;
      v16 += 4;
      if (v10 == v11)
      {
        goto LABEL_14;
      }
    }

    v18 = *(a1 + 2);
    *(v15 - 1) = a3;
    if (v18)
    {
      v19 = (v18 + v12);
      v20 = *v15;
      if (v20 == __n)
      {
        goto LABEL_22;
      }

      v21 = (v20 + 7) & 0x1FFF8;
      v22 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
      v23 = v22 - v21;
      if (v22 < v21)
      {
        if (v14 > v11)
        {
          memmove((v18 + v12 + v22), (v18 + v12 + v21), a1[3] - (v12 + v21));
        }

        v24 = a1[2] - (v21 - v22);
LABEL_32:
        a1[2] = v24;
LABEL_33:
        *(*(a1 + 1) + v16) = __n;
        if (!v19)
        {
          return 22;
        }

        goto LABEL_22;
      }

      if (v22 <= v21)
      {
        goto LABEL_33;
      }

      v33 = v12;
      v34 = a1[2];
      if (v23 + v34 <= a1[3])
      {
LABEL_29:
        if (v14 > v11)
        {
          memmove(&v19[v22], &v19[v21], v34 - (v21 + v33));
          LOWORD(v34) = a1[2];
        }

        v24 = v34 + v23;
        goto LABEL_32;
      }

      if (!sub_1000103A0(a1, __n))
      {
        v19 = (*(a1 + 2) + v33);
        LODWORD(v34) = a1[2];
        v14 = *a1 - 1;
        goto LABEL_29;
      }

      return 28;
    }

    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

LABEL_14:
  v25 = a1[1];
  if (v10 >= v25)
  {
    v26 = v25 + 4;
    v27 = _apfs_realloc_typed(*(a1 + 1), 4 * v25, (4 * (v25 + 4)), 0x100004052888210uLL);
    if (!v27)
    {
      return 28;
    }

    *(a1 + 1) = v27;
    a1[1] = v26;
  }

  v28 = a1[2];
  v29 = (__n + 7) & 0xFFFFFFFFFFFFFFF8;
  if (v29 + v28 > a1[3])
  {
    if (sub_1000103A0(a1, __n))
    {
      return 28;
    }

    v28 = a1[2];
  }

  v31 = *(a1 + 2);
  v32 = *(a1 + 1) + 4 * v13;
  *v32 = v8;
  *(v32 + 1) = a3;
  *(v32 + 2) = __n;
  ++*a1;
  v19 = (v31 + v28);
  a1[2] = v28 + v29;
  if (!(v31 + v28))
  {
    return 22;
  }

LABEL_22:
  memcpy(v19, __src, __n);
  if ((__n & 7) != 0)
  {
    bzero(&v19[__n], 8 - (__n & 7));
  }

  return 0;
}

uint64_t sub_1000103A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 6);
  v4 = ((a2 + 7) & 0xFFFFFFFFFFFFFFF8) + v3;
  v5 = _apfs_realloc_typed(*(a1 + 16), v3, v4, 0x669DD06FuLL);
  if (!v5)
  {
    return 28;
  }

  v6 = v5;
  result = 0;
  *(a1 + 16) = v6;
  *(a1 + 6) = v4;
  return result;
}

uint64_t xf_get(unsigned __int16 *a1, int a2, _DWORD *a3, char *__dst, size_t __n)
{
  if (!*a1)
  {
    return 2;
  }

  v9 = 0;
  v10 = 0;
  v11 = (*(a1 + 1) + 2);
  while (*(v11 - 2) != a2)
  {
    v12 = *v11;
    v11 += 2;
    v10 += (v12 + 7) & 0x1FFF8;
    v9 += 4;
    if (4 * *a1 == v9)
    {
      return 2;
    }
  }

  v14 = (*(a1 + 2) + v10);
  v15 = *v11;
  if (v15 >= __n)
  {
    memcpy(__dst, v14, __n);
  }

  else
  {
    memcpy(__dst, v14, v15);
    v16 = *(*(a1 + 1) + v9 + 2);
    bzero(&__dst[v16], __n - v16);
  }

  result = 0;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v9 + 1);
  }

  return result;
}

uint64_t xf_get_ptr_and_size(unsigned __int16 *a1, int a2, _DWORD *a3, void *a4, _DWORD *a5)
{
  if (!*a1)
  {
    return 2;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(a1 + 1);
  while (*(v7 + v5) != a2)
  {
    v6 += (*(v7 + v5 + 2) + 7) & 0x1FFF8;
    v5 += 4;
    if (4 * *a1 == v5)
    {
      return 2;
    }
  }

  *a4 = *(a1 + 2) + v6;
  if (a3)
  {
    *a3 = *(*(a1 + 1) + v5 + 1);
  }

  v8 = 0;
  if (a5)
  {
    *a5 = *(*(a1 + 1) + v5 + 2);
  }

  return v8;
}

uint64_t xf_remove(unsigned __int16 *a1, int a2)
{
  if (!*a1)
  {
    return 2;
  }

  v3 = 0;
  v4 = *(a1 + 1);
  v5 = 1;
  for (i = 2; *(v4 + i - 2) != a2; i += 4)
  {
    v3 += (*(v4 + i) + 7) & 0x1FFF8;
    if (++v5 - *a1 == 1)
    {
      return 2;
    }
  }

  v8 = (*(v4 + i) + 7) & 0x1FFF8;
  memmove((*(a1 + 2) + v3), (*(a1 + 2) + v3 + v8), (a1[3] - v3 - v8));
  a1[2] -= v8;
  memmove((*(a1 + 1) + i - 2), (*(a1 + 1) + i + 2), 4 * (*a1 - v5));
  result = 0;
  --*a1;
  return result;
}

uint64_t tx_mgr_init(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *(*(a1 + 376) + 36);
  v7 = _apfs_calloc_typed(1uLL, 0x130uLL, 0x10A0040BC325467uLL);
  if (v7)
  {
    v8 = v7;
    v7[1].__sig = a2;
    *v7[1].__opaque = 0;
    *&v7[1].__opaque[40] = 0;
    *&v7[1].__opaque[8] = 0;
    *&v7[1].__opaque[12] = (v6 - 40) / 0x28uLL;
    *&v7[1].__opaque[48] = v7 + 112;
    v7[2].__sig = 0;
    *v7[2].__opaque = v7 + 2;
    inited = new_lock(v7);
    if (!inited)
    {
      v11 = new_cv((v8 + 256));
      if (v11)
      {
        v10 = v11;
        free_lock(v8);
        goto LABEL_7;
      }

      if ((*(a1 + 627) & 1) != 0 || (inited = tx_mgr_init_tx(v8, v6), !inited))
      {
        v10 = 0;
        v13 = *(a1 + 376);
        v14 = *(v13 + 104) & 0x7FFFFFFF7FFFFFFFLL;
        *(v8 + 88) = v14;
        *(v8 + 96) = *(v13 + 128);
        *(v8 + 104) = v14;
        *a3 = v8;
        return v10;
      }
    }

    v10 = inited;
LABEL_7:
    _apfs_free(v8, 304);
    return v10;
  }

  return 12;
}

uint64_t tx_mgr_init_tx(uint64_t a1, unsigned int a2)
{
  v3 = a2;
  v4 = (a1 + 120);
  v5 = 4;
  while (1)
  {
    v6 = _apfs_calloc_typed(1uLL, 0x78uLL, 0x10A004067E43129uLL);
    if (!v6)
    {
      break;
    }

    v7 = v6;
    v6[7] = _apfs_malloc_typed(v3, 0x256D25E1uLL);
    v7[8] = _apfs_malloc_typed(v3, 0x60A3118CuLL);
    v8 = *v4;
    *v7 = 0;
    v7[1] = v8;
    *v8 = v7;
    *v4 = v7;
    if (!v7[7] || !v7[8])
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  while (1)
  {
    v15 = *(a1 + 112);
    if (!v15)
    {
      break;
    }

    v10 = *v15;
    v11 = v15[1];
    v12 = (*v15 + 8);
    if (!*v15)
    {
      v12 = v4;
    }

    *v12 = v11;
    *v11 = v10;
    v13 = v15[7];
    if (v13)
    {
      _apfs_free(v13, v3);
    }

    v14 = v15[8];
    if (v14)
    {
      _apfs_free(v14, v3);
    }

    _apfs_free(v15, 120);
  }

  return 12;
}

void tx_mgr_free_tx(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = a2[18];
  if (v11)
  {
    v23 = *(a1 + 384) + 212;
    v25 = *(v11 + 16);
    log_err("%s:%d: %s Trash unfinished tx xid=0x%llx\n", a2, a3, a4, a5, a6, a7, a8, "tx_mgr_free_tx");
    v12 = a2[18];
    v13 = a2[15];
    *v12 = 0;
    v12[1] = v13;
    *v13 = v12;
    a2[15] = v12;
    a2[18] = 0;
  }

  v14 = a2[16];
  if (v14)
  {
    v26 = *(v14 + 16);
    v27 = *(**(a2[17] + 8) + 16);
    v24 = *(a1 + 384) + 212;
    log_err("%s:%d: %s Trash unfinished pending tx, xid range = 0x%llx - 0x%llx\n", a2, a3, a4, a5, a6, a7, a8, "tx_mgr_free_tx");
    v15 = a2[16];
    if (v15)
    {
      *a2[15] = v15;
      *(a2[16] + 8) = a2[15];
      a2[15] = a2[17];
      a2[16] = 0;
      a2[17] = a2 + 16;
    }
  }

  v16 = a2[14];
  if (v16)
  {
    v17 = a2 + 15;
    do
    {
      v19 = *v16;
      v18 = v16[1];
      v20 = (*v16 + 8);
      if (!*v16)
      {
        v20 = v17;
      }

      *v20 = v18;
      *v18 = v19;
      v21 = v16[7];
      if (v21)
      {
        _apfs_free(v21, v8);
      }

      v22 = v16[8];
      if (v22)
      {
        _apfs_free(v22, v8);
      }

      _apfs_free(v16, 120);
      v16 = v19;
    }

    while (v19);
  }
}

void tx_mgr_destroy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  tx_mgr_free_tx(a1, a2, a3, a4, a5, a6, a7, a8);
  free_lock(a2);
  free_cv((a2 + 256));

  _apfs_free(a2, 304);
}

BOOL xid_is_current_tx(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 624) == 1)
  {
    v2 = (*(a1 + 376) + 96);
    return *v2 == a2;
  }

  v3 = *(a1 + 400);
  if (v3)
  {
    v4 = *(v3 + 144);
    if (v4)
    {
      v2 = (v4 + 16);
      return *v2 == a2;
    }
  }

  return 0;
}

uint64_t tx_checkpoint_desc_zero(void *a1, int a2)
{
  v4 = a1[50];
  v5 = *(a1[47] + 36);
  v6 = _apfs_calloc_typed(1uLL, v5, 0x7BA1CA01uLL);
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  v21 = 0;
  if (a2)
  {
    v8 = *(v4 + 96);
    while (1)
    {
      v21 = -1;
      v9 = nx_checkpoint_desc_block_address(a1, v8, &v21);
      if (v9)
      {
        break;
      }

      v9 = dev_write(a1[48]);
      if (v9)
      {
        break;
      }

      v8 = (*(v4 + 96) + 1) % *(v4 + 88);
      *(v4 + 96) = v8;
      if (!--a2)
      {
        goto LABEL_7;
      }
    }

    v17 = v9;
    v19 = a1[48] + 212;
    v20 = *(v4 + 96);
    log_err("%s:%d: %s failed to zero checkpoint descriptor block %d @ %lld: %d\n", v10, v11, v12, v13, v14, v15, v16, "tx_checkpoint_desc_zero");
  }

  else
  {
LABEL_7:
    v17 = 0;
  }

  _apfs_free(v7, v5);
  return v17;
}

uint64_t tx_checkpoint_space_check(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  v11 = 0;
  v12 = *(a1 + 400);
  while (1)
  {
    v13 = *(v12 + 96);
    v14 = *(v12 + 104);
    v15 = v14;
    if (v13 > v14)
    {
      v15 = *(v12 + 88) + v14;
    }

    v16 = *(v12 + 100);
    v17 = *(v12 + 108);
    v18 = v17;
    if (v16 > v17)
    {
      v18 = *(v12 + 92) + v17;
    }

    v19 = v15 - v13;
    if (*(a2 + 48) + v8 <= v18 - v16 && !(v11 & 1 | (*(a2 + 40) + 1 > v19)))
    {
      return 0;
    }

    if ((v11 & 1) != 0 || !*(v12 + 128))
    {
      break;
    }

    sub_100010CC8(a1, 80, 0);
    v11 = 1;
  }

  if (!*(v12 + 82))
  {
    v27 = (*(a2 + 40) + 1);
    v28 = (*(a2 + 48) + v8);
    v26 = *(a2 + 16);
    v25 = *(v12 + 100);
    v23 = *(v12 + 108);
    v24 = *(v12 + 96);
    v21 = *(a1 + 384) + 212;
    v22 = *(v12 + 104);
    log_err("%s:%d: %s checkpoint area out of space: stable: %d %d - next %d %d available %d %d tx[%lld] %d %d\n", a2, a3, a4, a5, a6, a7, a8, "tx_checkpoint_space_check");
  }

  *(v12 + 82) = 1;
  return 28;
}

uint64_t sub_100010CC8(uint64_t a1, char a2, int a3)
{
  v5 = *(a1 + 400);
  if ((a2 & 0x40) != 0)
  {
    v6 = *(v5 + 128);
    if (!v6 || (*(v6 + 24) & 0x40) == 0)
    {
      return 0;
    }
  }

  if (a3)
  {
    pthread_mutex_unlock(*(a1 + 400));
  }

  v7 = dev_barrier(*(a1 + 384));
  if (a3)
  {
    pthread_mutex_lock(v5);
  }

  if (v7 == 25 || v7 == 0)
  {
    v9 = *(v5 + 128);
    if (v9)
    {
      do
      {
        v10 = *v9;
        v11 = *(v9 + 6);
        if ((v11 & 0x40) != 0)
        {
          *(v9 + 6) = v11 & 0xFFFFFFBF;
          v21.tv_sec = 0;
          v21.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v21);
          v12 = 1000000 * v21.tv_sec + SLODWORD(v21.tv_nsec) / 1000;
          v13 = v12 - v9[9];
          v9[9] = v12;
          v9[13] += v13;
          v14 = v9[2];
          if (*(a1 + 632) != 1 || v14 < *(*(a1 + 376) + 1408))
          {
            v15 = *(v9 + 11);
            *(v5 + 104) = *(v9 + 9);
            *(v5 + 108) = v15;
          }

          spaceman_tx_complete(a1, v14);
          v16 = *v9;
          v17 = v9[1];
          v18 = (*v9 + 8);
          if (!*v9)
          {
            v18 = (v5 + 136);
          }

          *v18 = v17;
          *v17 = v16;
          v19 = *(v5 + 120);
          *v9 = 0;
          v9[1] = v19;
          *v19 = v9;
          *(v5 + 120) = v9;
          cv_wakeup((v5 + 256));
        }

        v9 = v10;
      }

      while (v10);
    }

    return 0;
  }

  return v7;
}

uint64_t tx_checkpoint_write_prepare(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = (*(*(a1 + 376) + 36) + *(a3 + 48) - 1) / *(*(a1 + 376) + 36);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == *(*(a1 + 400) + 84))
  {
    ++*(a2 + 40);
    *(v11 + 36) = 0;
  }

  v12 = tx_checkpoint_space_check(a1, a2, v10, a4, a5, a6, a7, a8);
  if (!v12)
  {
    if ((*(a3 + 19) & 0x20) == 0)
    {
      v15 = *(a3 + 56);
      v13.i64[0] = *(a3 + 36);
      v15[3] = v13.i64[0];
      v16 = *(a2 + 16);
      v15[1] = *(a3 + 112);
      v15[2] = v16;
      obj_checksum_set(a3, v13, v14);
    }

    *(a3 + 120) = *(a2 + 16);
    *(a3 + 144) = 0;
    ++*(*(a2 + 64) + 36);
    *(a2 + 48) += v10;
  }

  return v12;
}

uint64_t tx_checkpoint_write(void *a1, uint64_t a2, uint64_t a3, int8x16_t a4, int8x16_t a5)
{
  v8 = a1[50];
  v75 = 0;
  v73 = 0;
  v9 = *(a1[47] + 36);
  v10 = *(a3 + 48);
  v11 = *(a2 + 64);
  if (*(v11 + 36) == v8[21])
  {
    obj_checksum_set_phys(a1, v11, *(a1[47] + 36), a4, a5);
    v12 = *(*(a2 + 64) + 8);
    v13 = dev_write(a1[48]);
    if (v13)
    {
      v21 = v13;
      if (!v8[19])
      {
        v70 = *(*(a2 + 64) + 8);
        v66 = a1[48] + 212;
        log_err("%s:%d: %s failed to write checkpoint map block %lld: %d\n", v14, v15, v16, v17, v18, v19, v20, "tx_checkpoint_write");
      }

      return v21;
    }

    v22 = (*(a2 + 40) + v8[24]) % v8[22];
    v75 = -1;
    v23 = nx_checkpoint_desc_block_address(a1, v22, &v75);
    if (v23)
    {
      v21 = v23;
      if (!v8[19])
      {
        v67 = a1[48] + 212;
        log_err("%s:%d: %s error getting next checkpoint map block address %d: %d\n", v24, v25, v26, v27, v28, v29, v30, "tx_checkpoint_write");
      }

      return v21;
    }

    bzero(*(a2 + 64), v9);
    v31 = *(a2 + 64);
    *(v31 + 24) = 1073741836;
    v32 = *(a2 + 16);
    *(v31 + 8) = v75;
    *(v31 + 16) = v32;
    ++*(a2 + 40);
  }

  v33 = (*(a2 + 48) + v8[25]) % v8[23];
  v74 = -1;
  v34 = nx_checkpoint_data_block_address(a1, v33, &v74, &v73);
  if (v34)
  {
    v21 = v34;
    if (!v8[19])
    {
      v68 = a1[48] + 212;
      log_err("%s:%d: %s error getting next checkpoint data block address %d: %d\n", v35, v36, v37, v38, v39, v40, v41, "tx_checkpoint_write");
    }
  }

  else
  {
    v42 = (v9 + v10 - 1) / v9;
    pthread_mutex_lock((a1[49] + 328));
    for (i = (a3 + 32); (atomic_fetch_or_explicit(i, 8u, memory_order_relaxed) & 8) != 0; i = (a3 + 32))
    {
      pthread_mutex_unlock((a1[49] + 328));
      pthread_mutex_lock((a1[49] + 328));
    }

    v72 = *(a3 + 64);
    *(a3 + 128) = v74;
    v71 = v42;
    if (v42 < 1)
    {
LABEL_27:
      if (v72 == *(a3 + 56))
      {
        v48 = 0;
      }

      else
      {
        v48 = v72;
      }

      *(a3 + 64) = 0;
      v49 = a1[49];
      v50 = *(v49 + 872);
      if (v50 != a3)
      {
        sub_1000A42A4();
      }

      v51 = *(v50 + 104);
      *(v49 + 872) = v51;
      if (!v51)
      {
        *(v49 + 880) = v49 + 872;
      }

      *(a3 + 104) = 3735928559;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      v52 = *(a2 + 64);
      v53 = *(v52 + 36);
      v54 = v52 + 40 * v53;
      *(v54 + 40) = *(a3 + 36);
      *(v54 + 48) = *(a3 + 48);
      v55 = *(a3 + 8);
      if (v55)
      {
        v55 = obj_oid(v55);
        v52 = *(a2 + 64);
        v53 = *(v52 + 36);
      }

      v56 = (v52 + 40 * v53);
      v57 = *(a3 + 112);
      v56[7] = v55;
      v56[8] = v57;
      v56[9] = *(a3 + 128);
      *(v52 + 36) = v53 + 1;
      *(a2 + 48) += v71;
      if (v48)
      {
        fs_obj_zfree_oc(v48, *(a3 + 48), *(a3 + 16), a1[49]);
      }

      return 0;
    }

    else
    {
      v44 = v72;
      v45 = v71;
      while (1)
      {
        v46 = v73 >= v45 ? v45 : v73;
        v47 = dev_write(a1[48]);
        if (v47)
        {
          break;
        }

        v45 -= v46;
        if (!v45)
        {
          goto LABEL_27;
        }

        v33 = v33 + v46 >= (*(a1[47] + 108) & 0x7FFFFFFFu) ? 0 : (v33 + v46);
        v47 = nx_checkpoint_data_block_address(a1, v33, &v74, &v73);
        if (v47)
        {
          break;
        }

        v44 += v46 * v9;
        if (v45 <= 0)
        {
          goto LABEL_27;
        }
      }

      v21 = v47;
      atomic_fetch_and_explicit((a3 + 32), 0xFFFFFFF7, memory_order_relaxed);
      pthread_mutex_unlock((a1[49] + 328));
      if (!v8[19])
      {
        v69 = a1[48] + 212;
        log_err("%s:%d: %s failed to write checkpoint data block %lld: %d\n", v58, v59, v60, v61, v62, v63, v64, "tx_checkpoint_write");
      }
    }
  }

  return v21;
}

uint64_t tx_barrier(uint64_t a1, char a2)
{
  v4 = *(a1 + 400);
  if (a2 < 0 && (v5 = *(v4 + 144)) != 0 && (*(v5 + 24) & 8) != 0)
  {
    v6 = 0;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    pthread_mutex_lock(*(a1 + 400));
    v6 = 1;
    if ((a2 & 0x40) == 0)
    {
      goto LABEL_11;
    }
  }

  v7 = *(v4 + 128);
  if (!v7 || (*(v7 + 24) & 0x40) == 0)
  {
    if (v6)
    {
      pthread_mutex_unlock(v4);
    }

    return 0;
  }

LABEL_11:
  v8 = sub_100010CC8(a1, a2, 0);
  if (v6)
  {
    pthread_mutex_unlock(v4);
  }

  return v8;
}

void tx_unmount(uint64_t a1)
{
  v2 = *(a1 + 400);
  pthread_mutex_lock(v2);
  v3 = *(v2 + 72);
  if (v3)
  {
    sub_1000A42D0();
  }

  *(v2 + 72) = v3 | 1;
  pthread_mutex_unlock(v2);
  while (1)
  {
    v4 = tx_finish(a1, 8);
    if (v4 != 16)
    {
      break;
    }

    v37 = *(a1 + 384) + 212;
    log_debug("%s:%d: %s waiting for transaction to finish\n", v5, v6, v7, v8, v9, v10, v11, "tx_unmount");
    sleep(1u);
  }

  if (v4)
  {
    v41 = *(a1 + 384) + 212;
    log_err("%s:%d: %s tx_finish() failed, %d\n", v5, v6, v7, v8, v9, v10, v11, "tx_unmount");
    if (*(a1 + 629))
    {
      return;
    }

    pthread_mutex_lock(v2);
  }

  else
  {
    if (*(a1 + 629))
    {
      return;
    }

    pthread_mutex_lock(v2);
    if ((*(v2 + 72) & 2) != 0)
    {
      if (sub_100010CC8(a1, 16, 0))
      {
        v38 = *(a1 + 384) + 212;
        log_err("%s:%d: %s First sync/barrier failed: %d\n", v12, v13, v14, v15, v16, v17, v18, "tx_unmount");
      }

      if ((*(a1 + 628) & 1) == 0)
      {
        v21 = *(a1 + 376);
        if (*(v21 + 140))
        {
          if (*(v21 + 148))
          {
            *(v21 + 1264) |= 2uLL;
          }
        }
      }

      obj_checksum_set(a1, v19, v20);
      v22 = *(a1 + 376);
      if (dev_write(*(a1 + 384)))
      {
        v39 = *(a1 + 384) + 212;
        log_err("%s:%d: %s failed to write superblock to block 0: %d\n", v23, v24, v25, v26, v27, v28, v29, "tx_unmount");
      }

      if (sub_100010CC8(a1, 16, 0))
      {
        v40 = *(a1 + 384) + 212;
        log_err("%s:%d: %s Final sync/barrier failed: %d\n", v30, v31, v32, v33, v34, v35, v36, "tx_unmount");
      }
    }
  }

  pthread_mutex_unlock(v2);
}

uint64_t tx_finish(uint64_t a1, __int16 a2)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v5 = *(a1 + 400);
  pthread_mutex_lock(v5);
  v6 = *(v5 + 72);
  if ((a2 & 8) != 0 || (v6 & 1) == 0)
  {
    while (1)
    {
      v7 = *(v5 + 144);
      if ((v6 & 0x40) == 0)
      {
        break;
      }

      if (v7)
      {
        *(v7 + 24) |= 0x100000u;
      }

      if ((a2 & 0x100) != 0)
      {
        *(v5 + 72) = v6 & 0xFFFFFFF3;
        cv_wakeup((v5 + 256));
        v7 = *(v5 + 144);
      }

      if (v7)
      {
        v2 = *(v7 + 52);
        if (v2)
        {
          goto LABEL_66;
        }
      }

      cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait_for_dirty_data", 0);
      v8 = *(v5 + 144);
      if (v8)
      {
        v9 = *(v8 + 52);
        if (v9 | a2 & 0x100)
        {
          if (v9)
          {
            v2 = v9;
          }

          else
          {
            v2 = 35;
          }

          goto LABEL_66;
        }
      }

      else if ((a2 & 0x100) != 0)
      {
        v2 = 35;
LABEL_66:
        pthread_mutex_unlock(v5);
        return v2;
      }

      v6 = *(v5 + 72);
      if (a2 & 8) == 0 && (v6)
      {
        goto LABEL_18;
      }
    }

    if (!v7)
    {
      v7 = **(*(v5 + 136) + 8);
      if (!v7 || (*(v7 + 24) & 0x30) == 0)
      {
        if ((a2 & 0x11) != 0)
        {
          v2 = sub_100010CC8(a1, a2 & 0x10, 0);
        }

        else
        {
          v2 = 0;
        }

        goto LABEL_66;
      }
    }

    if ((a2 & 2) == 0 && (v6 & 0xC) == 8)
    {
      pthread_mutex_unlock(v5);
      return 16;
    }

    v10 = *(v7 + 16);
    if ((a2 & 8) == 0)
    {
      ++*(v5 + 176);
    }

    v11 = *(v7 + 24);
    if (v11 & 0x100000 | a2 & 0x10 | a2 & 1 | a2 & 0x20)
    {
      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFFDFFFF | ((a2 & 1) << 17) | v11 & 0xFFEFFFFF;
    }

    if (v11)
    {
      if ((v11 & 2) != 0)
      {
        sub_1000A42FC();
      }

      *(v7 + 24) = ((a2 & 0x30) << 14) & 0xFFEDFFFC | ((a2 & 1) << 17) & 0xFFEFFFFC | v11 & 0xFFEFFFFC | 2;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      *(v7 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    }

    if (*(v7 + 28))
    {
      v2 = (16 * (a2 & 1)) ^ 0x10u;
    }

    else
    {
      if ((*(v7 + 24) & 2) != 0)
      {
        v19 = sub_100011F08(v7, 2, 4);
        if (v19 > 0xF4240)
        {
          v26 = *(v7 + 16);
          v25 = *(a1 + 384) + 212;
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", v12, v13, v14, v15, v16, v17, v18, "tx_finish");
        }

        *(v5 + 248) = (*(v5 + 248) + v19) >> 1;
      }

      v2 = sub_100011FB4(a1);
      if (!v2)
      {
        v20 = *(v5 + 72);
        if ((v20 & 0x40) != 0)
        {
          *(v5 + 72) = v20 & 0xFFFFFFF3;
          if ((a2 & 0x100) != 0)
          {
LABEL_68:
            pthread_mutex_unlock(v5);
            return 35;
          }

          cv_wakeup((v5 + 256));
        }

        v2 = 0;
      }
    }

    if ((a2 & 9) != 0)
    {
      if (a2)
      {
        v21 = 126;
      }

      else
      {
        v21 = 62;
      }

      do
      {
        if (*(v7 + 16) != v10 || (*(v7 + 24) & v21) == 0)
        {
          break;
        }

        if (!v2)
        {
          cv_wait((v5 + 256), v5, 8, "nx_tx_finish_wait", 0);
        }

        v22 = *(v5 + 72);
        if (a2 & 8) == 0 && (v22)
        {
          goto LABEL_18;
        }

        if ((a2 & 0x100) != 0 && (v22 & 4) == 0)
        {
          goto LABEL_68;
        }
      }

      while (!*(v5 + 76));
      v23 = **(*(v5 + 136) + 8);
      if (!v23 || (v2 = *(v23 + 52), !v2))
      {
        v2 = *(v7 + 52);
      }
    }

    goto LABEL_66;
  }

LABEL_18:
  pthread_mutex_unlock(v5);
  return 1;
}

uint64_t sub_10001196C(uint64_t a1, uint64_t *a2, char a3)
{
  if (*(a1 + 627))
  {
    return 30;
  }

  v7 = *(a1 + 400);
  pthread_mutex_lock(v7);
  if (*(v7 + 72))
  {
LABEL_38:
    pthread_mutex_unlock(v7);
    return 1;
  }

  v8 = *a2;
  if (*a2 != -1)
  {
    if (v8)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  v11 = *(v7 + 144);
  if (v11)
  {
    v12 = (*(v7 + 72) & 0xC) == 8;
  }

  else
  {
    v12 = 1;
  }

  if (v12 || (*(v11 + 24) & 0x1C) != 0)
  {
    *a2 = 0;
LABEL_16:
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v22 = 0;
    tv_sec = __tp.tv_sec;
    v62 = SLODWORD(__tp.tv_nsec) / 1000;
    while (1)
    {
      v9 = *(v7 + 144);
      if (v9 && (*(v9 + 24) & 0x1E) != 0)
      {
        if (*(v7 + 80) > 9u)
        {
          goto LABEL_70;
        }

        v23 = "nx_tx_wait";
        if ((a3 & 2) != 0)
        {
LABEL_21:
          v24 = *(v9 + 24);
          v22 = "nx_tx_wait_closing";
          if ((v24 & 2) == 0)
          {
            if ((v24 & 4) != 0)
            {
              v25 = **(*(v7 + 136) + 8);
              if (!v25 || (v22 = "nx_tx_wait_closed_prev_flushing", (*(v25 + 24) & 0x30) == 0))
              {
                v22 = "nx_tx_wait_closed";
              }
            }

            else if ((v24 & 0x18) != 0)
            {
              v22 = "nx_tx_wait_flush";
            }

            else
            {
              v22 = v23;
            }
          }

          goto LABEL_37;
        }
      }

      else
      {
        if ((a3 & 2) != 0 || (*(v7 + 72) & 8) == 0)
        {
          v3 = 0;
          v64 = 0;
          if (!v9)
          {
            goto LABEL_43;
          }

LABEL_41:
          if (*(v9 + 24))
          {
            if (!v3)
            {
              ++*(v9 + 28);
              *a2 = *(v9 + 16);
              if (v22)
              {
                v10 = v64;
                if (v64)
                {
                  if (strcmp(v22, "nx_tx_wait_frozen"))
                  {
                    __tp.tv_sec = 0;
                    __tp.tv_nsec = 0;
                    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
                    v41 = 1000000 * (__tp.tv_sec - tv_sec) - v62 + SLODWORD(__tp.tv_nsec) / 1000;
                    *(v7 + 168) += v41;
                    if (v41 > 0xF4240 && nx_ratelimit_log_allowed(a1))
                    {
                      v61 = *(v9 + 16);
                      v57 = *(a1 + 384) + 212;
                      log_warn("%s:%d: %s waited %lld us to open tx xid %lld (%s)\n", v42, v43, v44, v45, v46, v47, v48, "tx_enter_internal");
                    }

                    ++*(v7 + 160);
                  }

                  v10 = 1;
                }
              }

              else
              {
                v10 = v64;
              }

LABEL_85:
              ++*(v9 + 32);
              pthread_mutex_unlock(v7);
              if (v10)
              {
                spaceman_manage_free_queues(a1, v9);
              }

              return 0;
            }

LABEL_83:
            pthread_mutex_unlock(v7);
            return v3;
          }

          while (1)
          {
            v31 = *(v9 + 24);
            if ((v31 & 1) == 0)
            {
              break;
            }

            do
            {
              v55 = *(a1 + 384) + 212;
              v59 = *(v7 + 64);
              log_debug("%s:%d: %s waiting for available tx to open: xid %lld\n", v13, v14, v15, v16, v17, v18, v19, "tx_enter_internal");
              cv_wait((v7 + 256), v7, 8, "nx_tx_wait_open", 0);
LABEL_59:
              v9 = *(v7 + 144);
              if (v9)
              {
                goto LABEL_41;
              }

LABEL_43:
              v26 = *(v7 + 112);
            }

            while (!v26);
            *(v7 + 144) = v26;
            v28 = *v26;
            v27 = v26[1];
            v29 = (v28 + 8);
            if (!v28)
            {
              v29 = (v7 + 120);
            }

            *v29 = v27;
            *v27 = v28;
            v30 = *(v7 + 64);
            *(v7 + 64) = v30 + 1;
            v9 = *(v7 + 144);
            *(v9 + 16) = v30;
            *(v9 + 24) = 0;
            *(v9 + 32) = 0;
            *(v9 + 52) = 0;
          }

          if (*(a1 + 626) == 1)
          {
            obj_checksum_set(a1, v20, v21);
            v32 = *(a1 + 376);
            v33 = dev_write(*(a1 + 384));
            if (v33)
            {
              v3 = v33;
              v58 = *(*(v7 + 144) + 16);
              v54 = *(a1 + 384) + 212;
              log_err("%s:%d: %s Error: tx[%lld] failed to unclean superblock: %d\n", v34, v35, v36, v37, v38, v39, v40, "tx_enter_internal");
              v9 = *(v7 + 144);
LABEL_53:
              v60 = *(v9 + 16);
              v56 = *(a1 + 384) + 212;
              log_err("%s:%d: %s Error: tx[%lld] failed to start: %d\n", v13, v14, v15, v16, v17, v18, v19, "tx_enter_internal");
              goto LABEL_59;
            }

            *(a1 + 626) = 0;
            v9 = *(v7 + 144);
            v31 = *(v9 + 24);
          }

          else if (v3)
          {
            goto LABEL_53;
          }

          if (v31)
          {
            sub_1000A42FC();
          }

          *(v9 + 24) = v31 | 1;
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(v9 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          if ((a3 & 2) != 0)
          {
            *(*(v7 + 144) + 24) |= 0x10000u;
          }

          cv_wakeup((v7 + 256));
          v3 = 0;
          v64 = 1;
          goto LABEL_59;
        }

        if (*(v7 + 80) >= 0xAu)
        {
LABEL_70:
          v49 = **(*(v7 + 136) + 8);
          if (v49)
          {
            if (*(v49 + 24) & 0x30)
            {
              v51 = 0;
            }

            else
            {
              v49 = *(v7 + 144);
              v51 = v9 == 0;
            }

            if (!v51)
            {
              v9 = v49;
              goto LABEL_79;
            }
          }

          else if (v9)
          {
LABEL_79:
            v52 = *(v9 + 52);
            if (v52)
            {
              v3 = v52;
            }

            else
            {
              v3 = 5;
            }

            goto LABEL_83;
          }

          v3 = 5;
          goto LABEL_83;
        }
      }

      if ((*(v7 + 72) & 8) != 0)
      {
        v23 = "nx_tx_wait_frozen";
      }

      else
      {
        v23 = "nx_tx_wait";
      }

      if (v9)
      {
        goto LABEL_21;
      }

      v22 = v23;
LABEL_37:
      cv_wait((v7 + 256), v7, 8, v22, 0);
      if (*(v7 + 72))
      {
        goto LABEL_38;
      }
    }
  }

  v8 = *(v11 + 16);
  *a2 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_6:
  v9 = *(v7 + 144);
  if (v9 && v8 == *(v9 + 16))
  {
    if ((*(v9 + 24) & 0xF) == 0)
    {
      sub_1000A4328();
    }

    v10 = 0;
    ++*(v9 + 28);
    goto LABEL_85;
  }

  pthread_mutex_unlock(v7);
  return 22;
}

__darwin_time_t sub_100011F08(uint64_t a1, int a2, int a3)
{
  if (a2 && (*(a1 + 24) & a2) == 0)
  {
    sub_1000A4354();
  }

  v4 = *(a1 + 24);
  if (a3 && (v4 & a3) != 0)
  {
    sub_1000A42FC();
  }

  *(a1 + 24) = v4 & ~a2 | a3;
  v7.tv_sec = 0;
  v7.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v7);
  v5 = 1000000 * v7.tv_sec + SLODWORD(v7.tv_nsec) / 1000;
  result = v5 - *(a1 + 72);
  *(a1 + 72) = v5;
  return result;
}

uint64_t sub_100011FB4(uint64_t a1)
{
  v2 = *(a1 + 400);
  for (i = *(v2 + 72); (i & 0x10) != 0; i = *(v2 + 72))
  {
    *(v2 + 72) = i | 0x20;
    cv_wait((v2 + 256), v2, 8, "nx_tx_flush_busy", 0);
  }

  *(v2 + 72) = i | 0x10;
  v4 = **(*(v2 + 136) + 8);
  if (!v4 || (v5 = *(v4 + 24), (v5 & 0x10) == 0))
  {
    v4 = *(v2 + 144);
    if (!v4)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
  }

  if ((v5 & 0x14) == 0 || (v6 = sub_1000123C0(a1, v4), !v6))
  {
LABEL_9:
    v7 = *(v2 + 144);
    if (v7 && (*(v7 + 24) & 4) != 0)
    {
      v6 = sub_1000123C0(a1, v7);
    }

    else
    {
      v6 = 0;
    }
  }

  v8 = *(v2 + 72);
  *(v2 + 72) = v8 & 0xFFFFFFCF;
  if ((v8 & 0x20) != 0)
  {
    cv_wakeup((v2 + 256));
  }

  return v6;
}

uint64_t tx_leave(uint64_t a1, uint64_t a2, char a3)
{
  if ((*(a1 + 627) & 1) == 0)
  {
    v7 = *(a1 + 400);
    pthread_mutex_lock(v7);
    v8 = *(v7 + 144);
    if (*(v8 + 16) != a2)
    {
      sub_1000A4380();
    }

    v9 = *(v8 + 24);
    if ((v9 & 3) == 0)
    {
      sub_1000A4404();
    }

    if ((a3 & 5) == 1)
    {
      sub_1000A43D8();
    }

    if (v9)
    {
      if ((a3 & 4) != 0)
      {
        v10 = 0;
        ++*(v7 + 176);
      }

      else
      {
        v10 = *(v8 + 32) <= 0x186A0u && !obj_cache_tx_start_closing(*(a1 + 392)) && spaceman_tx_start_closing(a1) == 0;
      }

      if ((*(v7 + 72) & 0x40) != 0)
      {
        if (!v10)
        {
          *(v8 + 24) |= 0x100000u;
        }
      }

      else
      {
        v11 = *(v8 + 24);
        if ((v11 & 0x100000) != 0)
        {
          v11 &= ~0x100000u;
          *(v8 + 24) = v11;
        }

        else if (v10)
        {
          goto LABEL_22;
        }

        if ((v11 & 1) == 0)
        {
          sub_1000A4354();
        }

        if ((v11 & 2) != 0)
        {
          sub_1000A42FC();
        }

        *(v8 + 24) = v11 & 0xFFEFFFFC | 2;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        *(v8 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      }
    }

LABEL_22:
    if ((a3 & 5) == 5)
    {
      *(v8 + 24) |= 0x20000u;
      if ((a3 & 0x10) == 0)
      {
LABEL_24:
        if ((a3 & 0x20) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }
    }

    else if ((a3 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    *(v8 + 24) |= 0x40000u;
    if ((a3 & 0x20) == 0)
    {
LABEL_26:
      v12 = *(v8 + 28);
      if (!v12)
      {
        sub_1000A43AC();
      }

      v13 = v12 - 1;
      *(v8 + 28) = v13;
      if (!v13 && (v14 = *(v8 + 24), (v14 & 2) != 0))
      {
        if ((v14 & 4) != 0)
        {
          sub_1000A42FC();
        }

        *(v8 + 24) = v14 & 0xFFFFFFF9 | 4;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v24 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v25 = v24 - *(v8 + 72);
        *(v8 + 72) = v24;
        if (v25 > 0xF4240)
        {
          v27 = *(v8 + 16);
          v26 = *(a1 + 384) + 212;
          log_warn("%s:%d: %s tx xid %lld took %lld us to close\n", v17, v18, v19, v20, v21, v22, v23, "tx_leave");
        }

        *(v7 + 248) = (*(v7 + 248) + v25) >> 1;
        v3 = sub_100011FB4(a1);
        if ((a3 & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v3 = 0;
        if ((a3 & 1) == 0)
        {
LABEL_39:
          pthread_mutex_unlock(v7);
          return v3;
        }
      }

      if ((a3 & 4) != 0)
      {
        v15 = 127;
      }

      else
      {
        v15 = 63;
      }

      do
      {
        if (*(v8 + 16) != a2 || (*(v8 + 24) & v15) == 0)
        {
          break;
        }

        if (!v3)
        {
          cv_wait((v7 + 256), v7, 8, "nx_tx_finish_wait", 0);
        }
      }

      while (!*(v7 + 76));
      v3 = *(v8 + 52);
      goto LABEL_39;
    }

LABEL_25:
    *(v8 + 24) |= 0x80000u;
    goto LABEL_26;
  }

  return 30;
}

uint64_t sub_1000123C0(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 392);
  v4 = *(a1 + 400);
  v284 = 0;
  *(a1 + 660) = -1;
  v6 = **(*(v4 + 136) + 8);
  if (v6 && (*(v6 + 24) & 0x10) != 0)
  {
    if (v6 != a2)
    {
      panic("not handling the flushing tx!\n");
    }
  }

  else
  {
    if (*(v4 + 144) != a2)
    {
      panic("not handling the current tx!\n");
    }

    if ((*(a2 + 24) & 0x14) == 0)
    {
      panic("current tx not closed/flushing?!\n");
    }
  }

  v7 = *(a2 + 24);
  if ((v7 & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if ((v7 & 4) == 0)
  {
    sub_1000A4354();
  }

  if ((v7 & 8) != 0)
  {
    sub_1000A42FC();
  }

  *(a2 + 24) = v7 & 0xFFFFFFE3 | 8;
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
  v15 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
  v16 = v15 - *(a2 + 72);
  *(a2 + 72) = v15;
  if (v16 > 0xF4240)
  {
    v241 = *(a2 + 16);
    v219 = *(a1 + 384) + 212;
    log_warn("%s:%d: %s tx xid %lld was closed for %lld us waiting to prepare to flush\n", v8, v9, v10, v11, v12, v13, v14, "tx_flush");
  }

  if (*(a1 + 629))
  {
    v17 = 0;
  }

  else
  {
    v17 = 2;
  }

  v18 = obj_cache_flush_prepare(v5, 0, v17, *(a2 + 16));
  if (v18)
  {
    v26 = v18;
    if (!*(v4 + 76))
    {
      v242 = *(a2 + 16);
      v220 = *(a1 + 384) + 212;
      log_err("%s:%d: %s xid %lld error preparing to flush object cache: %d\n", v19, v20, v21, v22, v23, v24, v25, "tx_flush");
    }

    v27 = 858;
    goto LABEL_21;
  }

  if (*(a1 + 629) == 1)
  {
    v34 = *(a2 + 24);
    if ((v34 & 8) == 0)
    {
      sub_1000A4354();
    }

    if ((v34 & 0x10) != 0)
    {
      sub_1000A42FC();
    }

    *(a2 + 24) = v34 & 0xFFFFFFE7 | 0x10;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v42 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v43 = v42 - *(a2 + 72);
    *(a2 + 72) = v42;
    if (v43 <= 0xF4240)
    {
      goto LABEL_42;
    }

    v243 = *(a2 + 16);
    v221 = *(a1 + 384) + 212;
  }

  else
  {
    *(a2 + 36) = *(v4 + 96);
    *(a2 + 44) = *(v4 + 100);
    *(a2 + 48) = 0;
    *(a2 + 40) = 0;
    v284 = -1;
    v71 = nx_checkpoint_desc_block_address(a1, *(*(a1 + 376) + 128), &v284);
    if (v71)
    {
      v26 = v71;
      if (!*(v4 + 76))
      {
        v263 = *(*(a1 + 376) + 128);
        v224 = *(a1 + 384) + 212;
        v246 = *(a2 + 16);
        log_err("%s:%d: %s xid %lld error getting first checkpoint map block address %d: %d\n", v72, v73, v74, v75, v76, v77, v78, "tx_flush");
      }

      v27 = 890;
      goto LABEL_21;
    }

    bzero(*(a2 + 64), *(*(a1 + 376) + 36));
    v113 = *(a2 + 64);
    *(v113 + 24) = 1073741836;
    *(v113 + 8) = v284;
    *(v113 + 16) = *(a2 + 16);
    ++*(a2 + 40);
    v26 = nx_checkpoint_traverse(a1, a2, 1);
    if (v26)
    {
      goto LABEL_22;
    }

    for (i = *(v5 + 744); i; i = *(i + 88))
    {
      if (i != a1)
      {
        v120 = tx_checkpoint_write_prepare(a1, a2, i, v114, v115, v116, v117, v118);
        if (v120)
        {
          v26 = v120;
          if (!*(v4 + 76))
          {
            v275 = *(i + 40);
            v268 = *(i + 112);
            v272 = *(i + 36);
            v236 = *(a1 + 384) + 212;
            v257 = *(a2 + 16);
            log_err("%s:%d: %s xid %lld error preparing ephemeral object (oid 0x%llx type 0x%x/0x%x): %d\n", v121, v122, v123, v124, v125, v126, v127, "tx_flush");
          }

          v27 = 918;
LABEL_21:
          *(v4 + 76) = v27;
          ++*(v4 + 80);
LABEL_22:
          obj_cache_flush_unprepare(v5);
          v28 = *(v5 + 872);
          if (v28)
          {
            v29 = (v5 + 872);
            do
            {
              v30 = v28[13];
              *v29 = v30;
              if (!v30)
              {
                *(v5 + 880) = v29;
              }

              v28[13] = 3735928559;
              v28[8] = 0;
              obj_checkpoint_done(v28);
              obj_release(v28);
              v28 = *v29;
            }

            while (*v29);
          }

          for (j = *(v5 + 744); j; j = *(j + 88))
          {
            if ((*(j + 32) & 4) != 0)
            {
              obj_checkpoint_done(j);
            }
          }

          v32 = *(v4 + 72);
          if ((v32 & 0x40) != 0)
          {
            *(v4 + 72) = v32 & 0xFFFFFFBF;
          }

          v33 = *(a2 + 24);
          if ((v33 & 8) == 0)
          {
            sub_1000A4354();
          }

          if (v33)
          {
            sub_1000A42FC();
          }

          *(a2 + 24) = v33 & 0xFFFFFFF6 | 1;
          __tp.tv_sec = 0;
          __tp.tv_nsec = 0;
          clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
          *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
          goto LABEL_59;
        }

        obj_retain_ephemeral_no_ref(i);
        if ((*(i + 32) & 4) == 0 && (*(i + 20) & 0x20) == 0)
        {
          v265 = *(i + 36);
          v270 = *(i + 40);
          v228 = *(a1 + 384) + 212;
          v250 = *(i + 112);
          log_warn("%s:%d: %s Unknown NEW persistent ephemeral object found: oid 0x%llx type 0x%x/0x%x\n", v128, v129, v114, v115, v116, v117, v118, "tx_flush");
        }

        *(i + 64) = *(i + 56);
        *(i + 104) = 0;
        **(v5 + 880) = i;
        *(v5 + 880) = i + 104;
      }
    }

    v130 = *(v4 + 96);
    *(a2 + 112) = -1;
    v131 = nx_checkpoint_desc_block_address(a1, (*(a2 + 40) + v130) % *(v4 + 88), (a2 + 112));
    if (v131)
    {
      v26 = v131;
      if (!*(v4 + 76))
      {
        v229 = *(a1 + 384) + 212;
        v251 = *(a2 + 16);
        log_err("%s:%d: %s xid %lld error getting next checkpoint superblock address %d: %d\n", v132, v133, v134, v135, v136, v137, v138, "tx_flush");
      }

      v27 = 939;
      goto LABEL_21;
    }

    ++*(a2 + 40);
    if (*(a2 + 48) != *(v5 + 928) - 1)
    {
      v267 = *(a2 + 48);
      v271 = (*(v5 + 928) - 1);
      v234 = *(a1 + 384) + 212;
      v256 = *(a2 + 16);
      log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", v132, v133, v134, v135, v136, v137, v138, "tx_flush");
    }

    v178 = *(a1 + 376);
    *(v178 + 88) = *(v5 + 400);
    *(v178 + 96) = *(v4 + 64);
    memcpy(*(a2 + 56), v178, *(v178 + 36));
    v188 = *(a2 + 56);
    *(v188 + 16) = *(a2 + 16);
    v189 = *(v4 + 96);
    *(v188 + 136) = v189;
    v190 = *(v4 + 100);
    *(v188 + 144) = v190;
    v191 = *(a2 + 40);
    *(v188 + 140) = v191;
    v192 = *(a2 + 48);
    *(v188 + 148) = v192;
    v193 = *(v4 + 88);
    v194 = *(v4 + 92);
    v195 = (v191 + v189) % v193;
    if (!*(v4 + 76))
    {
      if (v191 <= v193 >> 2)
      {
        v197 = *(v4 + 92);
        v196 = v192;
      }

      else
      {
        v235 = *(a1 + 384) + 212;
        log_err("%s:%d: %s xid %lld checkpoint descriptor count is larger than expected: %d > %d\n", v179, v180, v181, v182, v183, v184, v185, "tx_flush");
        v196 = *(a2 + 48);
        v197 = *(v4 + 92);
      }

      if (v196 > v197 >> 2)
      {
        v238 = *(a1 + 384) + 212;
        v259 = *(a2 + 16);
        log_err("%s:%d: %s xid %lld checkpoint data block count is larger than expected: %d > %d\n", v179, v180, v181, v182, v183, v184, v185, "tx_flush");
        v196 = *(a2 + 48);
      }

      if (v196 != *(v5 + 928) - 1)
      {
        v274 = (*(v5 + 928) - 1);
        v239 = *(a1 + 384) + 212;
        v260 = *(a2 + 16);
        log_err("%s:%d: %s xid %lld checkpoint data block count is not value tracked by cache: %d != %d\n", v179, v180, v181, v182, v183, v184, v185, "tx_flush");
      }
    }

    v211 = *(a2 + 56);
    v212 = *(v211 + 136);
    v213 = v195;
    if (v195 <= v212)
    {
      v213 = *(v4 + 88) + v195;
    }

    if (*(a2 + 40) != v213 - v212)
    {
      sub_1000A4430();
    }

    v214 = (v192 + v190) % v194;
    v215 = *(v211 + 144);
    v216 = v214;
    if (v214 <= v215)
    {
      v216 = *(v4 + 92) + v214;
    }

    if (*(a2 + 48) != v216 - v215)
    {
      sub_1000A445C();
    }

    *(v211 + 128) = v195;
    *(v211 + 132) = v214;
    obj_checksum_set_phys(a1, v211, *(*(a1 + 376) + 36), v186, v187);
    *(a2 + 48) = 0;
    *(a2 + 40) = 1;
    *(*(a2 + 64) + 36) = 0;
    v217 = *(a2 + 24);
    if ((v217 & 8) == 0)
    {
      sub_1000A4354();
    }

    if ((v217 & 0x10) != 0)
    {
      sub_1000A42FC();
    }

    *(a2 + 24) = v217 & 0xFFFFFFE7 | 0x10;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v218 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v43 = v218 - *(a2 + 72);
    *(a2 + 72) = v218;
    if (v43 <= 0xF4240)
    {
      goto LABEL_42;
    }

    v261 = *(a2 + 16);
    v240 = *(a1 + 384) + 212;
  }

  log_warn("%s:%d: %s tx xid %lld took %lld us to prepare to flush\n", v35, v36, v37, v38, v39, v40, v41, "tx_flush");
LABEL_42:
  *(v4 + 232) = (*(v4 + 232) + v43) >> 1;
LABEL_43:
  if (*(a1 + 629) == 1)
  {
    v44 = *(a2 + 24);
    if ((v44 & 0x10) == 0)
    {
      sub_1000A4354();
    }

    if (v44)
    {
      sub_1000A42FC();
    }

    *(a2 + 24) = v44 & 0xFFFFFFEE | 1;
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    *(a2 + 72) = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    *(a2 + 32) = 0;
    *(a2 + 52) = 0;
  }

  else if (*(v4 + 144) == a2)
  {
    *a2 = 0;
    v45 = *(v4 + 136);
    *(a2 + 8) = v45;
    *v45 = a2;
    *(v4 + 136) = a2;
    *(v4 + 144) = 0;
  }

  pthread_mutex_unlock(v4);
  cv_wakeup((v4 + 256));
  if (*(a1 + 629))
  {
    v46 = 0;
  }

  else
  {
    v46 = 2;
  }

  v47 = obj_cache_flush_write(v5, v46);
  if (*(a1 + 629) == 1)
  {
    pthread_mutex_lock(v4);
    obj_cache_flush_unprepare(v5);
    sub_100010CC8(a1, 0, 0);
    cv_wakeup((v4 + 256));
    v26 = 0;
    *(a2 + 52) = 0;
    return v26;
  }

  v26 = v47;
  if (v47)
  {
    pthread_mutex_lock(v4);
    if (!*(v4 + 76))
    {
      v244 = *(a2 + 16);
      v222 = *(a1 + 384) + 212;
      log_err("%s:%d: %s xid %lld error flushing objects from the cache: %d\n", v50, v51, v52, v53, v54, v55, v56, "tx_flush");
    }

    v57 = 1119;
    goto LABEL_58;
  }

  while (1)
  {
    v60 = *(v5 + 872);
    if (!v60)
    {
      v61 = *(a2 + 64);
      if (*(v61 + 8))
      {
        *(v61 + 32) |= 1u;
        obj_checksum_set_phys(a1, v61, *(*(a1 + 376) + 36), v48, v49);
        v62 = *(*(a2 + 64) + 8);
        v63 = dev_write(*(a1 + 384));
        if (v63)
        {
          v26 = v63;
          pthread_mutex_lock(v4);
          if (!*(v4 + 76))
          {
            v262 = *(*(a2 + 64) + 8);
            v223 = *(a1 + 384) + 212;
            v245 = *(a2 + 16);
            log_err("%s:%d: %s xid %lld failed to write last checkpoint map block %lld: %d\n", v64, v65, v66, v67, v68, v69, v70, "tx_flush");
          }

          v57 = 1156;
          goto LABEL_58;
        }
      }

      ++*(a2 + 40);
      pthread_mutex_lock(v4);
      v79 = *(a2 + 40);
      v80 = *(a2 + 56);
      v81 = *(a2 + 48);
      v82 = v80[37];
      if (v79 != v80[35] || v81 != v82)
      {
        panic("flush phase checkpoint lengths (%d %d) don't match prepare phase (%d %d)\n", v79, v81, v80[35], v82);
      }

      v84 = *(a1 + 376);
      v84[34] = v80[34];
      v84[35] = v79;
      v84[36] = v80[36];
      v84[37] = v81;
      v85 = *(a2 + 24);
      if ((v85 & 0x10) == 0)
      {
        sub_1000A4354();
      }

      if ((v85 & 0x20) != 0)
      {
        sub_1000A42FC();
      }

      *(a2 + 24) = v85 & 0xFFFFFFCF | 0x20;
      __tp.tv_sec = 0;
      __tp.tv_nsec = 0;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      v93 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
      v94 = v93 - *(a2 + 72);
      *(a2 + 72) = v93;
      if (v94 > 0xF4240)
      {
        v247 = *(a2 + 16);
        v225 = *(a1 + 384) + 212;
        log_warn("%s:%d: %s tx xid %lld took %lld us to flush\n", v86, v87, v88, v89, v90, v91, v92, "tx_flush");
      }

      *(a2 + 104) = v94;
      cv_wakeup((v4 + 256));
      v95 = sub_100010CC8(a1, 0, 1);
      if (v95)
      {
        v26 = v95;
        if (!*(v4 + 76))
        {
          v248 = *(a2 + 16);
          v226 = *(a1 + 384) + 212;
          log_err("%s:%d: %s xid %lld sync/barrier failed: %d\n", v96, v97, v98, v99, v100, v101, v102, "tx_flush");
        }

        *(v4 + 76) = 1196;
        ++*(v4 + 80);
        --*(a2 + 40);
        v103 = *(a2 + 24);
        if ((v103 & 0x20) == 0)
        {
          sub_1000A4354();
        }

        if ((v103 & 0x10) != 0)
        {
          sub_1000A42FC();
        }

        *(a2 + 24) = v103 & 0xFFFFFFCF | 0x10;
        __tp.tv_sec = 0;
        __tp.tv_nsec = 0;
        clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
        v104 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
        v105 = v104 - *(a2 + 72);
        *(a2 + 72) = v104;
        *(a2 + 104) += v105;
        cv_wakeup((v4 + 256));
        *(a2 + 52) = v26;
        return v26;
      }

      pthread_mutex_unlock(v4);
      if (*(a1 + 632) == 1)
      {
        *(a2 + 24) |= 0x80000u;
        bzero(*(a2 + 64), *(*(a1 + 376) + 36));
      }

      else
      {
        v139 = *(a2 + 56);
      }

      v140 = *(a2 + 112);
      v141 = dev_write(*(a1 + 384));
      if (v141)
      {
        v26 = v141;
        pthread_mutex_lock(v4);
        if (!*(v4 + 76))
        {
          v266 = *(a2 + 112);
          v230 = *(a1 + 384) + 212;
          v252 = *(a2 + 16);
          log_err("%s:%d: %s xid %lld failed to write checkpoint superblock %lld: %d\n", v142, v143, v144, v145, v146, v147, v148, "tx_flush");
        }

        v149 = 1225;
      }

      else
      {
        if ((*(a2 + 26) & 8) == 0 || (v152 = *(a2 + 56), v153 = dev_write(*(a1 + 384)), !v153))
        {
          if (*(a1 + 628) == 1 && (*(a1 + 632) & 1) == 0)
          {
            *(a1 + 660) = (*(*(a1 + 376) + 136) + *(*(a1 + 376) + 140) - 1) % *(v4 + 88);
          }

          pthread_mutex_lock(v4);
          v168 = sub_100011F08(a2, 32, 64);
          if (v168 > 0xF4240)
          {
            v254 = *(a2 + 16);
            v232 = *(a1 + 384) + 212;
            log_warn("%s:%d: %s tx xid %lld took %lld us to sync and write superblock\n", v161, v162, v163, v164, v165, v166, v167, "tx_flush");
          }

          *(a2 + 104) += v168;
          v169 = *(a2 + 24);
          if ((v169 & 0x20000) == 0)
          {
            goto LABEL_138;
          }

          ++*(v4 + 184);
          if ((v169 & 0x40000) != 0)
          {
            ++*(v4 + 192);
          }

          v170 = sub_100010CC8(a1, (v169 >> 14) & 0x10, 0);
          if (!v170)
          {
LABEL_138:
            *(a2 + 52) = 0;
            *(v4 + 72) |= 2u;
            *(v4 + 76) = 0;
            v198 = *(a2 + 56);
            v199 = *(v198 + 128);
            v200 = *(a1 + 376);
            *(v200 + 128) = v199;
            *(v4 + 96) = v199;
            v201 = *(v198 + 132);
            *(v200 + 132) = v201;
            *(v4 + 100) = v201;
            *(v200 + 16) = *(v198 + 16);
            v202 = *(v4 + 152);
            *(v4 + 152) = v202 + 1;
            if (v202)
            {
              *(v4 + 200) = (*(v4 + 200) + *(a2 + 32)) >> 1;
              *(v4 + 208) = vshrq_n_u64(vaddq_s64(*(a2 + 80), *(v4 + 208)), 1uLL);
              *(v4 + 224) = (*(a2 + 96) + *(v4 + 224)) >> 1;
              *(v4 + 240) = (*(a2 + 104) + *(v4 + 240)) >> 1;
              if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * (v202 + 1), 2) <= 0xCCCCCCCCCCCCCCCuLL && nx_ratelimit_log_allowed(a1))
              {
                if (*(v4 + 160) <= 1uLL)
                {
                  v210 = 1;
                }

                else
                {
                  v210 = *(v4 + 160);
                }

                v282 = *(v4 + 232);
                v283 = *(v4 + 240);
                v280 = *(v4 + 208);
                v281 = *(v4 + 248);
                v279 = *(v4 + 216);
                v278 = *(v4 + 192);
                v277 = *(v4 + 176);
                v269 = *(v4 + 152);
                v273 = *(v4 + 160);
                v237 = *(a1 + 384) + 212;
                v258 = *(a2 + 16);
                v276 = *(v4 + 168) / v210;
                log_debug("%s:%d: %s xid %llu tx stats: # %llu owait %llu %lluus finish %llu bar2 %lld f %lld enter %llu fq %llu %llu %lluus close %lluus prep %lluus flush %lluus\n", v203, v204, v205, v206, v207, v208, v209, "tx_flush");
              }
            }

            else
            {
              *(v4 + 200) = *(a2 + 32);
              *(v4 + 208) = *(a2 + 80);
              *(v4 + 224) = *(a2 + 96);
              *(v4 + 240) = *(a2 + 104);
            }

            cv_wakeup((v4 + 256));
            return 0;
          }

          v26 = v170;
          if (!*(v4 + 76))
          {
            v255 = *(a2 + 16);
            v233 = *(a1 + 384) + 212;
            log_err("%s:%d: %s xid %lld second sync/barrier failed: %d\n", v171, v172, v173, v174, v175, v176, v177, "tx_flush");
          }

          *(v4 + 76) = 1294;
          ++*(v4 + 80);
          --*(a2 + 40);
          v150 = a2;
          v151 = 64;
LABEL_112:
          *(a2 + 104) += sub_100011F08(v150, v151, 16);
          goto LABEL_59;
        }

        v26 = v153;
        if (!*(v4 + 76))
        {
          v253 = *(a2 + 16);
          v231 = *(a1 + 384) + 212;
          log_err("%s:%d: %s xid %lld failed to write block 0 superblock: %d\n", v154, v155, v156, v157, v158, v159, v160, "tx_flush");
        }

        pthread_mutex_lock(v4);
        v149 = 1249;
      }

      *(v4 + 76) = v149;
      ++*(v4 + 80);
      --*(a2 + 40);
      v150 = a2;
      v151 = 32;
      goto LABEL_112;
    }

    v59 = tx_checkpoint_write(a1, a2, *(v5 + 872), v48, v49);
    if (v59)
    {
      break;
    }

    obj_checkpoint_done(v60);
    obj_release(v60);
  }

  v26 = v59;
  pthread_mutex_lock(v4);
  if (!*(v4 + 76))
  {
    v264 = v60[16];
    v227 = *(a1 + 384) + 212;
    v249 = *(a2 + 16);
    log_err("%s:%d: %s xid %lld failed to write checkpoint data @ 0x%llx: %d\n", v106, v107, v108, v109, v110, v111, v112, "tx_flush");
  }

  v57 = 1135;
LABEL_58:
  *(v4 + 76) = v57;
  ++*(v4 + 80);
LABEL_59:
  cv_wakeup((v4 + 256));
  *(a2 + 52) = v26;
  return v26;
}

uint64_t sub_100013480(uint64_t a1, unsigned int a2, _DWORD *a3)
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

  if (*(v3 + 136) != a2)
  {
    sub_1000A4488();
  }

  v6 = a2;
  v7 = a3[2] | 1;
  *(a1 + 336) = 0x9D800000001;
  *(a1 + 32) = *(v3 + 8);
  *(a1 + 36) = vmovn_s64(*(v3 + 80));
  *(a1 + 44) = *(v3 + 96);
  v8 = *(v3 + 24);
  *(a1 + 48) = v4;
  *(a1 + 56) = v8;
  v9 = *(v3 + 32);
  v10 = *(v3 + 40);
  *(a1 + 64) = v9;
  *(a1 + 68) = v10;
  *(a1 + 72) = v4;
  v11 = *(v3 + 48);
  *(a1 + 96) = v11;
  v12 = *(v3 + 64);
  v13 = *(v3 + 72);
  *(a1 + 112) = v12;
  *(a1 + 116) = v13;
  *(a1 + 120) = v11;
  *(a1 + 152) = *(v3 + 104);
  v14 = *(v3 + 120);
  *(a1 + 144) = v7;
  *(a1 + 148) = v14;
  v15 = *(v3 + 152);
  *(a1 + 224) = *(v3 + 144);
  v16 = *(v3 + 112);
  *(a1 + 160) = v16;
  *(a1 + 164) = v5;
  *(a1 + 264) = v15;
  *(a1 + 304) = *(v3 + 160);
  *(a1 + 324) = 2520;
  v17 = 8 * v16 + 2520;
  *(a1 + 328) = v17;
  v18 = ((2 * v16 + 6) & 0xFFFFFFF8) + v17;
  *(a1 + 332) = v18;
  *(a1 + 322) = v5 - 1;
  *(a1 + 320) = 0;
  v19 = (v5 & 0x7FFFFFFF) - 1;
  if ((v5 & 0x7FFFFFFF) == 1)
  {
    v19 = 0;
  }

  else
  {
    v20 = (v19 + 7) & 0x1FFFFFFF8;
    v21 = vdupq_n_s64(v19 - 1);
    v22 = (v18 + a1 + 8);
    v23 = xmmword_1000AAE00;
    v24 = xmmword_1000AAE10;
    v25 = xmmword_1000AAE20;
    v26 = xmmword_1000AAE30;
    v27 = vdupq_n_s64(1uLL);
    v28 = vdupq_n_s64(8uLL);
    do
    {
      v29 = vmovn_s64(vcgeq_u64(v21, v26));
      v30 = vaddq_s64(v26, v27);
      if (vuzp1_s8(vuzp1_s16(v29, *v21.i8), *v21.i8).u8[0])
      {
        *(v22 - 4) = v30.i16[0];
      }

      if (vuzp1_s8(vuzp1_s16(v29, *&v21), *&v21).i8[1])
      {
        *(v22 - 3) = v30.i16[4];
      }

      v31 = vaddq_s64(v25, v27);
      if (vuzp1_s8(vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v25))), *&v21).i8[2])
      {
        *(v22 - 2) = v31.i16[0];
        *(v22 - 1) = v31.i16[4];
      }

      v32 = vaddq_s64(v24, v27);
      v33 = vmovn_s64(vcgeq_u64(v21, v24));
      if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i32[1])
      {
        *v22 = v32.i16[0];
      }

      if (vuzp1_s8(*&v21, vuzp1_s16(v33, *&v21)).i8[5])
      {
        v22[1] = v32.i16[4];
      }

      v34 = vaddq_s64(v23, v27);
      if (vuzp1_s8(*&v21, vuzp1_s16(*&v21, vmovn_s64(vcgeq_u64(v21, *&v23)))).i8[6])
      {
        v22[2] = v34.i16[0];
        v22[3] = v34.i16[4];
      }

      v24 = vaddq_s64(v24, v28);
      v25 = vaddq_s64(v25, v28);
      v26 = vaddq_s64(v26, v28);
      v22 += 8;
      v23 = vaddq_s64(v23, v28);
      v20 -= 8;
    }

    while (v20);
  }

  *(a1 + v18 + 2 * v19) = -1;
  v36 = v18 + ((2 * v5 + 6) & 0xFFFFFFF8);
  *(a1 + 80) = v36;
  if (v10)
  {
    v9 = v10;
  }

  v37 = (v36 + 8 * v9);
  *(a1 + 128) = v37;
  if (v13)
  {
    v38 = v13;
  }

  else
  {
    v38 = v12;
  }

  if (8 * v38 + v37 <= v6)
  {
    return 0;
  }

  else
  {
    return 22;
  }
}

uint64_t sub_100013728(uint64_t a1)
{
  v2 = *(a1 + 56);
  v3 = *(*a1 + 392);
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  v4 = *(v2 + 32);
  v5 = *(v3 + 376);
  v6 = *(v5 + 36);
  if (*(v3 + 624))
  {
    if (v4 == v6)
    {
      goto LABEL_3;
    }

LABEL_9:
    v10 = v3;
    goto LABEL_10;
  }

  if (*(v2 + 96) + *(v2 + 48) != *(v5 + 40) || v4 != v6)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 336;
  if (*(v2 + 144))
  {
    if (*(v2 + 336))
    {
      v12 = 2520;
    }

    else
    {
      v12 = 336;
    }

    v13 = *(v2 + 340);
    if (*(v2 + 336))
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 <= v12)
    {
      v7 = v12;
    }

    else
    {
      v7 = *(v2 + 340);
    }

    if (v13 >= v12)
    {
      v8 = *(v2 + 336) == 0;
    }

    else
    {
      v8 = v14;
    }
  }

  else
  {
    v8 = 0;
  }

  v15 = *(a1 + 48);
  v16 = nx_calculate_metadata_parameters(v4, *(v2 + 48), *(v5 + 180), &v69);
  if (v16)
  {
    return v16;
  }

  if (v7 < v15)
  {
    v17 = v8;
  }

  else
  {
    v17 = v8 + 1;
  }

  if (*(v2 + 36) != v74)
  {
    ++v17;
  }

  if (*(v2 + 40) != DWORD2(v74))
  {
    ++v17;
  }

  if (*(v2 + 44) != v75)
  {
    ++v17;
  }

  v18 = *(v2 + 48);
  if (*(v2 + 56) == *(&v70 + 1))
  {
    v19 = v17;
  }

  else
  {
    v19 = v17 + 1;
  }

  v20 = *(v2 + 64);
  v21 = *(v2 + 68);
  if (v20 != v71)
  {
    ++v19;
  }

  if (v21 != DWORD2(v71) && *(&v71 + 1) + v21 != 1)
  {
    ++v19;
  }

  if (*(v2 + 104) == *(&v72 + 1))
  {
    v23 = v19;
  }

  else
  {
    v23 = v19 + 1;
  }

  v24 = *(v2 + 112);
  v25 = *(v2 + 116);
  if (v24 != v73)
  {
    ++v23;
  }

  if (v25 != DWORD2(v73) && *(&v73 + 1) + v25 != 1)
  {
    ++v23;
  }

  if ((*(v2 + 152) & 0x7FFFFFFFFFFFFFFFLL) != *(&v75 + 1))
  {
    ++v23;
  }

  v27 = *(v2 + 160);
  if (v27 != v76)
  {
    ++v23;
  }

  v28 = *(v2 + 164) & 0x7FFFFFFF;
  if (v28 > 0xFFFE)
  {
    ++v23;
  }

  if (*(v2 + 148) < 4u)
  {
    ++v23;
  }

  if (v28 / v27 < 4)
  {
    ++v23;
  }

  if (*(v2 + 224) != v78)
  {
    ++v23;
  }

  if (*(v2 + 264) != DWORD2(v78))
  {
    ++v23;
  }

  if (*(v2 + 304) != v79)
  {
    ++v23;
  }

  v29 = *(v2 + 324);
  if (v29 < v7)
  {
    ++v23;
  }

  v30 = *(v2 + 328);
  if (v29 + 8 * v27 > v30)
  {
    ++v23;
  }

  v31 = *(v2 + 332);
  if (v30 + 2 * ((v27 + 3) & 0xFFFFFFFC) > v31)
  {
    ++v23;
  }

  v32 = *(v2 + 80);
  if (v31 + 2 * ((v28 + 3) & 0xFFFFFFFC) > v32)
  {
    ++v23;
  }

  v33 = *(v2 + 128);
  if (v21)
  {
    v20 = *(v2 + 68);
  }

  if (v32 + 8 * v20 <= v33)
  {
    v34 = v23;
  }

  else
  {
    v34 = v23 + 1;
  }

  if (v25)
  {
    v24 = *(v2 + 116);
  }

  if (v33 + 8 * v24 > *(a1 + 48))
  {
    ++v34;
  }

  if (*(v2 + 72) > v18)
  {
    ++v34;
  }

  v35 = *(v2 + 240);
  if (v35 < v18)
  {
    v36 = v34;
  }

  else
  {
    v36 = v34 + 1;
  }

  if (v35 && !*(v2 + 248))
  {
    ++v36;
  }

  v37 = *(v2 + 256);
  if (v37 <= obj_xid(a1))
  {
    v38 = v36;
  }

  else
  {
    v38 = v36 + 1;
  }

  v39 = *(v2 + 96);
  v40 = *(v2 + 120);
  v41 = *(v2 + 280);
  if (v39)
  {
    if (v40 > v39)
    {
      ++v38;
    }

    if (v41 < v39)
    {
      v42 = v38;
    }

    else
    {
      v42 = v38 + 1;
    }

    if (v41 && !*(v2 + 288))
    {
      ++v42;
    }

    v43 = *(v2 + 296);
    v44 = v43 > obj_xid(a1);
  }

  else
  {
    if (v40)
    {
      ++v38;
    }

    if (v41)
    {
      v45 = v38 + 1;
    }

    else
    {
      v45 = v38;
    }

    if (*(v2 + 288))
    {
      v42 = v45 + 1;
    }

    else
    {
      v42 = v45;
    }

    v44 = *(v2 + 296) != 0;
  }

  v46 = v42 + v44;
  v47 = *(v2 + 320);
  v48 = *(v2 + 164) & 0x7FFFFFFF;
  if (v47 != 0xFFFF && v48 <= v47)
  {
    ++v46;
  }

  v50 = *(v2 + 322);
  if (v50 != 0xFFFF && v48 <= v50)
  {
    ++v46;
  }

  if (!(v46 | (*(v2 + 192) > *(v2 + 184))))
  {
LABEL_130:
    *(a1 + 376) = v2;
    *(a1 + 872) = v2 + *(v2 + 324);
    *(a1 + 880) = v2 + *(v2 + 328);
    *(a1 + 888) = v2 + *(v2 + 332);
    v52 = *(v2 + 80);
    v53 = *(v2 + 128);
    *(a1 + 1000) = 0u;
    v54 = *(v2 + 48);
    *(a1 + 896) = v2 + v52;
    *(a1 + 904) = v2 + v53;
    *(a1 + 912) = 0;
    *(a1 + 1536) = 8;
    *(a1 + 1520) = v54 >> 5;
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
      LODWORD(v69) = 0;
      dev_features(*(v3 + 384));
      if ((v69 & 2) != 0)
      {
        *(a1 + 1536) = 2;
        v55 = 0x40000000u / *(v2 + 32);
        if (*(a1 + 1520) > v55)
        {
          *(a1 + 1520) = v55;
        }

        if (*(a1 + 1528) > v55)
        {
          *(a1 + 1528) = v55;
        }
      }
    }

    if ((*(a1 + 16) & 0x40) != 0)
    {
      v56 = 0;
    }

    else
    {
      v56 = obj_xid(a1);
    }

    v57 = 0;
    v58 = a1 + 1496;
    *(a1 + 920) = v56;
    v59 = 1;
    do
    {
      v60 = v59;
      v61 = v2 + 48 + 48 * v57;
      v64 = *(v61 + 8);
      v63 = (v61 + 8);
      v62 = v64;
      if (v64)
      {
        v65 = _apfs_calloc_typed(v62, 4uLL, 0x100004052888210uLL);
        *(v58 + 8 * v57) = v65;
        if (v65 && *v63)
        {
          v66 = 0;
          do
          {
            v67 = *(v58 + 8 * v57) + 4 * v66;
            *v67 = *(v2 + 36) & 0xFFFFFF | (*(v67 + 3) << 24);
            *(*(v58 + 8 * v57) + 4 * v66++ + 3) = 3;
          }

          while (v66 < *v63);
        }
      }

      else
      {
        *(v58 + 8 * v57) = 0;
      }

      v59 = 0;
      v57 = 1;
    }

    while ((v60 & 1) != 0);
    v11 = new_lock((a1 + 384));
    if (v11)
    {
      goto LABEL_164;
    }

    v11 = new_lock((a1 + 448));
    if (!v11)
    {
      v11 = new_lock((a1 + 512));
      if (!v11)
      {
        v11 = new_lock((a1 + 576));
        if (!v11)
        {
          v11 = new_lock((a1 + 640));
          if (!v11)
          {
            v11 = new_lock((a1 + 704));
            if (!v11)
            {
              v11 = new_cv((a1 + 768));
              if (!v11)
              {
LABEL_164:
                *(a1 + 1592) = _apfs_calloc_typed(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v11;
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

  v10 = v3;
LABEL_10:
  v11 = nx_corruption_detected_int(v10);
  if (!v11)
  {
    goto LABEL_130;
  }

  return v11;
}

uint64_t sub_100013D8C(uint64_t a1)
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
    spaceman_free_extent_cache_destroy(v5);
    _apfs_free(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    spaceman_free_extent_cache_destroy(v6);
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

uint64_t sub_100013E80(void *a1, uint64_t *a2)
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

uint64_t sub_100013F5C(void *a1, uint64_t *a2)
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

uint64_t spaceman_create(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 384);
  v184 = 0;
  v185 = 0;
  v182 = 0;
  v183 = 0;
  v176 = 0;
  v177 = a3;
  v175 = 0;
  *a5 = 0;
  v186 = 0;
  v179 = 0;
  v178 = 0;
  v180 = 64;
  v181 = _apfs_malloc_typed(0x400uLL, 0x1000040451B5BE8uLL);
  if (v181)
  {
    if (!a3)
    {
      v178 = *(a2 + 16);
      v179 = 1;
    }

    LODWORD(v184) = 0;
    v183 = a2;
    bootstrap = obj_create_bootstrap(*(a1 + 392), 0x80000000, 0, &sm_desc, &v183, *(a2 + 136), a4, &v186);
    if (bootstrap)
    {
      goto LABEL_9;
    }

    obj_dirty(v186, a4, 0);
    v12 = *&v186[5].__opaque[48];
    *a5 = *&v186[1].__opaque[40];
    v13 = *(a1 + 376);
    v182 = *(v13 + 104);
    bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v177, (v13 + 112), &v182, 0);
    if (bootstrap)
    {
      goto LABEL_9;
    }

    v14 = *(a1 + 376);
    *(v14 + 104) = v182;
    v182 = *(v14 + 108);
    bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v177, (v14 + 120), &v182, 0);
    if (bootstrap || (*(*(a1 + 376) + 108) = v182, v182 = *(v12 + 164), bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v177, (v12 + 168), &v182, 0), bootstrap) || (*(v12 + 164) = v182, v182 = *(v12 + 152), bootstrap = nx_allocate_metadata_range(a1, sub_100014B4C, &v177, (v12 + 176), &v182, 1), bootstrap))
    {
LABEL_9:
      v15 = bootstrap;
    }

    else
    {
      v174 = v12;
      *(v12 + 152) = v182;
      if (v177 && *(v177 + 16) && HIDWORD(v180))
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(v177 + 16))(*v177, *&v181[v18], *&v181[v18 + 8]);
          if (v20)
          {
            return v20;
          }

          ++v19;
          v18 += 16;
        }

        while (v19 < HIDWORD(v180));
      }

      v21 = _apfs_malloc_typed(v174[8], 0xE4C85275uLL);
      v22 = _apfs_malloc_typed(v174[8], 0xA9487841uLL);
      v15 = 12;
      v168 = v22;
      v165 = _apfs_malloc_typed(v174[8], 0x7D523A3FuLL);
      if (v165 && v22 && v21)
      {
        bzero(v21, v174[8]);
        v25 = v174;
        if (v174[40])
        {
          v26 = 0;
          while (1)
          {
            v27 = v25;
            p_sig = &v186->__sig;
            *(*&v186[13].__opaque[32] + 8 * v26) = a4;
            v29 = sub_100014CC0(a1, p_sig, a4, &v176, &v175);
            if (v29)
            {
              v15 = v29;
              v152 = *(a1 + 384) + 212;
              log_err("%s:%d: %s failed to allocate bitmap block from IP bitmap pool: %d\n", v30, v31, v32, v33, v34, v35, v36, "spaceman_create");
              goto LABEL_97;
            }

            *(*&v186[13].__opaque[40] + 2 * v26) = v175;
            v37 = dev_write(v10);
            if (v37)
            {
              break;
            }

            ++v26;
            v25 = v27;
            if (v26 >= v27[40])
            {
              goto LABEL_34;
            }
          }

          v15 = v37;
        }

        else
        {
LABEL_34:
          v38 = 0;
          v39 = v25 + 12;
          v40 = v165;
          v163 = v21;
          v41 = 0xFFFFFFFFLL;
          v42 = 1;
          v160 = v25 + 12;
          do
          {
            v161 = v42;
            v43 = &v39[12 * v38];
            if (v43[4])
            {
              v44 = 0;
              v166 = v38;
              v164 = v43;
              do
              {
                if (v43[5])
                {
                  v45 = v25[11];
                  if (v44 / v45 != v41)
                  {
                    if (v41 == -1)
                    {
                      v56 = v44 / v45;
                    }

                    else
                    {
                      v46 = v25;
                      obj_checksum_set_phys(a1, v40, v25[8], v23, v24);
                      v47 = *(*(&v186[14].__sig + v166) + 8 * v41);
                      v48 = dev_write(v10);
                      if (v48)
                      {
                        v15 = v48;
                        v155 = *(a1 + 384) + 212;
                        log_err("%s:%d: %s failed to write cab %d: %d\n", v49, v50, v51, v52, v53, v54, v55, "spaceman_create");
                        goto LABEL_95;
                      }

                      v56 = v44 / v46[11];
                      LODWORD(v38) = v166;
                    }

                    v41 = v56;
                    v59 = sub_100014DC4(a1, v186, v38, v56, v40, a4);
                    if (v59)
                    {
                      v145 = v59;
                      v154 = *(a1 + 384) + 212;
                      log_err("%s:%d: %s failed to initialize cab %d: %d\n", v60, v61, v62, v63, v64, v65, v66, "spaceman_create");
                      v15 = v145;
                      goto LABEL_95;
                    }

                    v45 = v174[11];
                    LODWORD(v38) = v166;
                  }

                  v171 = v41;
                  v169 = v44 - v45 * v41;
                  ++*(v40 + 36);
                  v57 = &v186->__sig;
                  v58 = (v165 + 5);
                }

                else
                {
                  v171 = v41;
                  v57 = &v186->__sig;
                  v58 = *(&v186[14].__sig + v38);
                  v169 = v44;
                }

                v67 = sub_100014E94(a1, v57, v38, v44, v168, a4, &v185);
                if (v67)
                {
                  v15 = v67;
                  v151 = *(a1 + 384) + 212;
                  log_err("%s:%d: %s failed to initialize cib %d: %d\n", v68, v69, v70, v71, v72, v73, v74, "spaceman_create");
                  goto LABEL_95;
                }

                *(v58 + 8 * v169) = v185;
                obj_checksum_set_phys(a1, v168, v174[8], v75, v76);
                v77 = *(v58 + 8 * v169);
                v78 = dev_write(v10);
                if (v78)
                {
                  v15 = v78;
                  v153 = *(a1 + 384) + 212;
                  log_err("%s:%d: %s failed to write cib %d: %d\n", v79, v80, v81, v82, v83, v84, v85, "spaceman_create");
                  goto LABEL_95;
                }

                ++v44;
                v43 = v164;
                v40 = v165;
                v41 = v171;
                v25 = v174;
                v38 = v166;
              }

              while (v44 < v164[4]);
            }

            v172 = v41;
            v21 = v163;
            if (v43[5])
            {
              v86 = v38;
              obj_checksum_set_phys(a1, v40, v25[8], v23, v24);
              v87 = *(*(&v186[14].__sig + v86) + 8 * v172);
              v88 = dev_write(v10);
              v25 = v174;
              if (v88)
              {
                v15 = v88;
                v156 = *(a1 + 384) + 212;
                log_err("%s:%d: %s failed to write cab %d: %d\n", v89, v90, v91, v92, v93, v94, v95, "spaceman_create");
                goto LABEL_97;
              }
            }

            v42 = 0;
            v38 = 1;
            v39 = v160;
            v41 = v172;
          }

          while ((v161 & 1) != 0);
          if (a3)
          {
            v170 = 0;
            v15 = 0;
            v96 = 1;
            v97 = v160;
            do
            {
              if (!v15)
              {
                v98 = 0;
                v99 = &v97[12 * v170];
                v100 = -1;
                v162 = v96;
                while (2)
                {
                  if (v98 >= v99[4])
                  {
                    v15 = 0;
                  }

                  else
                  {
                    v167 = v98;
                    if (v99[5])
                    {
                      v101 = v174[11];
                      if (v98 / v101 != v100)
                      {
                        v173 = v98 / v101;
                        v102 = *(*(&v186[14].__sig + v170) + 8 * (v98 / v101));
                        v103 = dev_read(v10);
                        if (v103 || (v103 = obj_checksum_verify_phys(v165, v174[8], v111, v112), v103))
                        {
                          v15 = v103;
                          v157 = *(a1 + 384) + 212;
                          log_err("%s:%d: %s failed to read cab %d: %d\n", v104, v105, v106, v107, v108, v109, v110, "spaceman_create");
                          goto LABEL_95;
                        }

                        v101 = v174[11];
                        v100 = v173;
                        LODWORD(v98) = v167;
                      }

                      v159 = v100;
                      v113 = &v165[v98 - v101 * v100 + 5];
                    }

                    else
                    {
                      v159 = v100;
                      v113 = (*(&v186[14].__sig + v170) + 8 * v98);
                    }

                    v158 = *v113;
                    v114 = dev_read(*(a1 + 384));
                    if (v114 || (v114 = obj_checksum_verify_phys(v168, v174[8], v122, v123), v114))
                    {
                      v15 = v114;
                      v150 = *(a1 + 384) + 212;
                      log_err("%s:%d: %s failed to read cib %d: %d\n", v115, v116, v117, v118, v119, v120, v121, "spaceman_create");
LABEL_84:
                      v97 = v160;
                      v96 = v162;
                    }

                    else
                    {
                      v126 = 0;
                      while (v126 < *(v168 + 36))
                      {
                        v127 = v168 + 40 + 32 * v126;
                        v128 = (*(a3 + 24))(*a3, v170, *(v127 + 8) / (8 * v174[8]) * v174[8], v174[8], v163);
                        if (v128)
                        {
                          goto LABEL_83;
                        }

                        if (!(v167 | v126))
                        {
                          bitmap_clear_range(v163, 0, 1);
                        }

                        v129 = *(v127 + 16) & 0xFFFFF;
                        if (v129)
                        {
                          v130 = 0;
                          v131 = *(v127 + 20);
                          v132 = *(v99 + 3);
                          v133 = v163;
                          do
                          {
                            v134 = *v133++;
                            v135 = vcnt_s8(v134);
                            v135.i16[0] = vaddlv_u8(v135);
                            v131 -= v135.i32[0];
                            v132 -= v135.u32[0];
                            *(v99 + 3) = v132;
                            v130 += 64;
                          }

                          while (v130 < v129);
                          *(v127 + 20) = v131;
                        }

                        if (!*(v127 + 24))
                        {
                          v136 = sub_100014FFC(a1, v186, a4, &v185);
                          if (v136)
                          {
                            v15 = v136;
                            v149 = *(a1 + 384) + 212;
                            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v137, v138, v139, v140, v141, v142, v143, "spaceman_create");
                            goto LABEL_84;
                          }

                          *(v127 + 24) = v185;
                        }

                        v128 = dev_write(v10);
                        ++v126;
                        if (v128)
                        {
LABEL_83:
                          v15 = v128;
                          goto LABEL_84;
                        }
                      }

                      obj_checksum_set_phys(a1, v168, v174[8], v124, v125);
                      v15 = dev_write(v10);
                      v98 = v167 + 1;
                      v97 = v160;
                      v96 = v162;
                      v100 = v159;
                      if (!v15)
                      {
                        continue;
                      }
                    }
                  }

                  break;
                }
              }

              v144 = v96 & (*(a2 + 48) != 0);
              v170 = 1;
              v96 = 0;
            }

            while ((v144 & 1) != 0);
            v21 = v163;
            if (v15)
            {
              goto LABEL_97;
            }
          }

          v146 = sub_10001536C(a1, v186, v10, 0, 1uLL, a4);
          if (v146 || (*(*(a1 + 376) + 65) & 1) != 0 && (v146 = sub_10001536C(a1, v186, v10, 0, 1uLL, a4), v146))
          {
            v15 = v146;
          }

          else if (HIDWORD(v180))
          {
            v147 = 0;
            v148 = 0;
            while (1)
            {
              v15 = sub_10001536C(a1, v186, v10, *&v181[v147], *&v181[v147 + 8], a4);
              if (v15)
              {
                break;
              }

              ++v148;
              v147 += 16;
              v21 = v163;
              if (v148 >= HIDWORD(v180))
              {
                goto LABEL_97;
              }
            }
          }

          else
          {
            v15 = 0;
          }

LABEL_95:
          v21 = v163;
        }
      }

LABEL_97:
      if (v165)
      {
        _apfs_free(v165, v174[8]);
      }

      if (v168)
      {
        _apfs_free(v168, v174[8]);
      }

      if (v21)
      {
        _apfs_free(v21, v174[8]);
      }
    }

    if (v181)
    {
      _apfs_free(v181, 16 * v180);
    }
  }

  else
  {
    v15 = 12;
  }

  v16 = &v186->__sig;
  if (v15 && v186)
  {
    obj_delete_and_free(&v186->__sig, a4);
LABEL_18:
    *a5 = 0;
    return v15;
  }

  if (!v186)
  {
    goto LABEL_18;
  }

  *a5 = *&v186[1].__opaque[40];
  obj_release(v16);
  return v15;
}

uint64_t sub_100014B4C(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t *a5)
{
  v7 = a3;
  v23 = 0;
  if (*a2)
  {
    result = (*(*a2 + 8))(**a2, a3, &v23, a5);
    if (result)
    {
      return result;
    }

    if (a5)
    {
      v7 = *a5;
    }
  }

  else
  {
    v11 = *(a2 + 8);
    v10 = *(a2 + 16);
    v23 = v10;
    if (v11 - v10 < a3)
    {
      return 28;
    }

    if (a5)
    {
      *a5 = a3;
      v10 = *(a2 + 16);
    }

    *(a2 + 16) = v10 + a3;
  }

  v12 = v23;
  *a4 = v23;
  v13 = *(a2 + 28);
  if (v13)
  {
    v14 = *(a2 + 32);
    v15 = v13 - 1;
    v16 = (v14 + 16 * v15);
    v18 = *v16;
    v17 = v16[1];
    if (v12 == v17 + v18)
    {
      result = 0;
      *(v14 + 16 * v15 + 8) = v17 + v7;
      return result;
    }
  }

  v19 = *(a2 + 24);
  if (v13 >= v19)
  {
    v21 = _apfs_malloc_typed(16 * (v19 + 64), 0x1000040451B5BE8uLL);
    if (!v21)
    {
      return 12;
    }

    v20 = v21;
    memcpy(v21, *(a2 + 32), 16 * *(a2 + 24));
    bzero(&v20[16 * *(a2 + 24)], 0x400uLL);
    _apfs_free(*(a2 + 32), 16 * *(a2 + 24));
    *(a2 + 32) = v20;
    v13 = *(a2 + 28);
    *(a2 + 24) += 64;
    v12 = v23;
  }

  else
  {
    v20 = *(a2 + 32);
  }

  result = 0;
  v22 = &v20[16 * v13];
  *v22 = v12;
  *(v22 + 1) = v7;
  *(a2 + 28) = v13 + 1;
  return result;
}

uint64_t sub_100014CC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
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

    return spaceman_ip_bm_block_address(a1, v5, v6, a4);
  }
}

uint64_t sub_100014DC4(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v24 = 0;
  v20 = sub_100014FFC(a1, a2, a6, &v24);
  if (v20)
  {
    v23 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v13, v14, v15, v16, v17, v18, v19, "spaceman_init_cab");
  }

  else
  {
    v21 = v24;
    *(*(a2 + 8 * a3 + 896) + 8 * a4) = v24;
    bzero(a5, *(v12 + 32));
    *(a5 + 24) = 1073741830;
    *(a5 + 8) = v21;
    *(a5 + 16) = a6;
    *(a5 + 32) = a4;
  }

  return v20;
}

uint64_t sub_100014E94(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a2 + 376);
  v34 = 0;
  v21 = sub_100014FFC(a1, a2, a6, &v34);
  if (v21)
  {
    v33 = *(a1 + 384) + 212;
    log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v14, v15, v16, v17, v18, v19, v20, "spaceman_init_cib");
    return v21;
  }

  v22 = v34;
  *a7 = v34;
  bzero(a5, v13[8]);
  *(a5 + 24) = 1073741831;
  *(a5 + 8) = v22;
  *(a5 + 16) = a6;
  *(a5 + 32) = a4;
  v23 = &v13[12 * a3];
  if (v23[16] - 1 != a4)
  {
    LODWORD(v24) = v13[10];
LABEL_7:
    *(a5 + 36) = v24;
    if (!v24)
    {
      return v21;
    }

    goto LABEL_8;
  }

  v24 = v13[10];
  v25 = *(v23 + 7) % v24;
  if (!v25)
  {
    goto LABEL_7;
  }

  *(a5 + 36) = v25;
  LODWORD(v24) = v25;
LABEL_8:
  v26 = v13[9];
  v27 = v13[10] * a4;
  v24 = v24;
  v28 = v27 * v26;
  v29 = ~v27 + *(v23 + 7);
  v30 = (a5 + 64);
  do
  {
    *(v30 - 3) = a6;
    *(v30 - 2) = v28;
    LODWORD(v31) = v26;
    if (!v29)
    {
      v31 = *(v23 + 6) % v26;
      if (!v31)
      {
        LODWORD(v31) = v26;
      }
    }

    *(v30 - 2) = v31;
    *(v30 - 1) = v31 & 0xFFFFF;
    *v30 = 0;
    v30 += 4;
    v28 += v26;
    --v29;
    --v24;
  }

  while (v24);
  return v21;
}

uint64_t sub_100014FFC(uint64_t a1, pthread_mutex_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v48 = 0;
  v49 = 0;
  v46 = 0;
  v47 = 0;
  if (!xid_is_current_tx(a1, a3))
  {
    return 22;
  }

  v8 = 8 * *(v7 + 32);
  if (!v8)
  {
    return 22;
  }

  v38 = a4;
  pthread_mutex_lock(v5 + 7);
  v9 = v8;
  v41 = v5;
  v42 = v6;
  v39 = v8;
  v40 = v8;
LABEL_4:
  v10 = 0;
  v11 = *&v5[14].__opaque[8];
  v45 = 0;
  while (1)
  {
    v12 = *(v7 + 160);
    if (v10 > v12)
    {
LABEL_35:
      if (sub_100015F48(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      v37 = *(v6 + 384) + 212;
      log_err("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", v27, v28, v29, v30, v31, v32, v33, "spaceman_ip_block_alloc");
      v34 = 28;
      goto LABEL_39;
    }

    v13 = v11 / v9;
    if (v10 == v12)
    {
      v14 = *&v5[14].__opaque[8] % v9;
      if (!v14)
      {
        goto LABEL_35;
      }
    }

    else
    {
      LODWORD(v14) = v13 == v12 - 1 ? *(v7 + 152) - (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL) / v9 * v9 : v39;
    }

    v15 = *(*&v5[13].__opaque[40] + 2 * v13);
    v16 = spaceman_ip_bm_block_address(v6, v7, v15, &v47);
    if (v16 || (v16 = obj_get(*(v6 + 392), 1073741825, v47, &sm_bm_desc, 0, 0, 0, a3, &v49), v16))
    {
      v34 = v16;
      pthread_mutex_unlock(v5 + 7);
      return v34;
    }

    v17 = v11 % v9;
    v18 = v49[7];
    if (bitmap_range_find_first(0, v18, v11 % v9, v14 - v11 % v9, &v48))
    {
      break;
    }

    if (v9 + v13 * v9 >= (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = 0;
    }

    else
    {
      v11 += v9 - v17;
    }

    v5 = v41;
LABEL_33:
    obj_release(v49);
    ++v10;
    v6 = v42;
    if (v45)
    {
      v34 = 0;
LABEL_39:
      pthread_mutex_unlock(v5 + 7);
      *v38 = v45;
      return v34;
    }
  }

  v19 = v48;
  v20 = v48 + v13 * v9;
  v21 = *(v7 + 152);
  if ((v21 & 0x7FFFFFFFFFFFFFFFuLL) <= v20)
  {
    v34 = 22;
    goto LABEL_43;
  }

  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = *(v7 + 176) + v20;
    v45 = v22;
LABEL_24:
    if (!bitmap_range_is_clear(v18, v19, 1, v22))
    {
      sub_1000A44B4();
    }

    bitmap_set_range(v18, v48, 1, v24);
    v5 = v41;
    if (*(*&v41[13].__opaque[32] + 8 * v13) != a3)
    {
      v44 = 0;
      v25 = sub_100014CC0(v42, v41, a3, &v46, &v44);
      if (v25 || (v25 = sub_10001F150(v42, v41, v15, a3), v25))
      {
        v34 = v25;
        v35 = v41 + 7;
        goto LABEL_44;
      }

      v47 = v46;
      *(*&v41[13].__opaque[40] + 2 * v13) = v44;
      *(*&v41[13].__opaque[32] + 8 * v13) = a3;
      v9 = v40;
    }

    obj_dirty(v49, a3, v47);
    v26 = v11 - v17 + v48;
    if (v26 + 1 < (*(v7 + 152) & 0x7FFFFFFFFFFFFFFFuLL))
    {
      v11 = v26 + 1;
    }

    else
    {
      v11 = 0;
    }

    *&v41[14].__opaque[8] = v11;
    goto LABEL_33;
  }

  v23 = nx_metadata_fragmented_block_address_lookup(v42, *(v7 + 176), v20, &v45, 0);
  if (!v23)
  {
    v19 = v48;
    goto LABEL_24;
  }

  v34 = v23;
LABEL_43:
  v35 = v41 + 7;
LABEL_44:
  pthread_mutex_unlock(v35);
  obj_release(v49);
  return v34;
}

uint64_t sub_10001536C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 376);
  v7 = *(v6 + 48);
  v8 = v7 > a4;
  v9 = v7 - a4;
  if (!v8 || v9 < a5)
  {
    return 22;
  }

  v12 = a5;
  v13 = a4;
  if (*(v6 + 68))
  {
    v15 = _apfs_malloc_typed(*(v6 + 32), 0xBBCB36uLL);
    if (!v15)
    {
      return 12;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = _apfs_malloc_typed(*(v6 + 32), 0x40CDA009uLL);
  if (!v16)
  {
    return 12;
  }

  v17 = v16;
  v18 = _apfs_malloc_typed(*(v6 + 32), 0xFCE2FE6EuLL);
  if (!v18)
  {
    v11 = 12;
    v19 = v17;
    goto LABEL_54;
  }

  v19 = v18;
  v74 = v15;
  if (v12 < 1)
  {
    v11 = 0;
    goto LABEL_51;
  }

  v75 = (v15 + 5);
  v79 = v17 + 10;
  v76 = -1;
  v73 = v17;
  while (1)
  {
    v20 = v13 / *(v6 + 36);
    v21 = v20 / *(v6 + 40);
    if (!*(v6 + 68))
    {
      v36 = (*(a2 + 896) + 8 * v21);
      goto LABEL_21;
    }

    v22 = *(v6 + 44);
    v23 = v21 / v22;
    v24 = v76;
    if (v21 / v22 != v76)
    {
      break;
    }

LABEL_19:
    v76 = v24;
    v36 = &v75[8 * (v21 - v22 * v24)];
LABEL_21:
    v37 = *v36;
    v38 = dev_read(a3);
    if (v38 || (v38 = obj_checksum_verify_phys(v17, *(v6 + 32), v46, v47), v38))
    {
      v68 = v38;
      v71 = *(a1 + 384) + 212;
      log_err("%s:%d: %s failed to read cib %d: %d\n", v39, v40, v41, v42, v43, v44, v45, "spaceman_allocated");
      v11 = v68;
      goto LABEL_51;
    }

    if (v12 < 1)
    {
      v52 = 0;
    }

    else
    {
      v50 = v20 % *(v6 + 40);
      while (v50 < v17[9])
      {
        v51 = &v79[8 * v50];
        if (*(v51 + 3))
        {
          v52 = 1;
          if (dev_read(a3))
          {
            goto LABEL_43;
          }
        }

        else
        {
          v81 = 0;
          if (sub_100014FFC(a1, a2, a6, &v81))
          {
            v70 = *(a1 + 384) + 212;
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", v53, v54, v55, v56, v57, v58, v59, "spaceman_allocated");
            break;
          }

          *(v51 + 3) = v81;
          bzero(v19, *(v6 + 32));
        }

        v60 = *(v6 + 36);
        v61 = v13 % v60;
        v62 = v60 - (v13 % v60);
        if (v12 >= v62)
        {
          v63 = v62;
        }

        else
        {
          v63 = v12;
        }

        v64 = v61;
        if (!bitmap_range_is_clear(v19, v61, v63, v62))
        {
          sub_1000A44E0();
        }

        bitmap_set_range(v19, v64, v63, v65);
        sub_10001EF94(a2, v19, v13 / *(v6 + 36));
        v51[5] -= v63;
        *(v6 + 72) -= v63;
        v66 = *(v51 + 3);
        if (dev_write(a3))
        {
          v52 = 1;
          goto LABEL_43;
        }

        ++v50;
        v13 += v63;
        v8 = v12 <= v63;
        v12 -= v63;
        if (v8)
        {
          v52 = 0;
          goto LABEL_43;
        }
      }

      v52 = 1;
    }

LABEL_43:
    obj_checksum_set_phys(a1, v17, *(v6 + 32), v48, v49);
    v67 = dev_write(a3);
    v11 = v67;
    if (!v52 || v67)
    {
      goto LABEL_51;
    }
  }

  v25 = *(*(a2 + 896) + 8 * v23);
  v26 = dev_read(a3);
  if (!v26)
  {
    v26 = obj_checksum_verify_phys(v74, *(v6 + 32), v34, v35);
    if (!v26)
    {
      v22 = *(v6 + 44);
      v24 = v23;
      v17 = v73;
      goto LABEL_19;
    }
  }

  v11 = v26;
  v17 = v73;
  v72 = *(a1 + 384) + 212;
  log_err("%s:%d: %s failed to read cab %d: %d\n", v27, v28, v29, v30, v31, v32, v33, "spaceman_allocated");
LABEL_51:
  if (v74)
  {
    _apfs_free(v74, *(v6 + 32));
  }

  _apfs_free(v17, *(v6 + 32));
LABEL_54:
  _apfs_free(v19, *(v6 + 32));
  return v11;
}

uint64_t spaceman_extent_check(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = nx_superblock_sanity_check_extent(*(a1 + 376), *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return nx_metadata_range_overlap_check(a1, a3, a4, 0);
  }

  return result;
}

uint64_t spaceman_entitled_reserve_active(void *a1, uint64_t *a2)
{
  v3 = a2;
  if (!a2 && !spaceman_get(a1, &v3))
  {
    obj_release(v3);
  }

  return 0;
}

uint64_t spaceman_ip_bm_block_address(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return nx_metadata_fragmented_block_address_lookup(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t spaceman_get(void *a1, void *a2)
{
  if (!a1)
  {
    sub_1000A450C();
  }

  v4 = a1[51];
  *a2 = v4;
  if (v4)
  {
    goto LABEL_3;
  }

  result = obj_get(a1[49], 0x80000000, *(a1[47] + 152), &sm_desc, 0, 0, 0, 0, a2);
  if (!result)
  {
    a1[51] = *a2;
LABEL_3:
    obj_retain();
    return 0;
  }

  return result;
}

uint64_t spaceman_currently_available_space(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
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

  v24 = 0;
  v13 = spaceman_get(v11, &v24);
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

    v23 = sub_100015A30(p_sig, v12, a2, a6);
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

unint64_t sub_100015A30(uint64_t *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    spaceman_entitled_reserve_active(0, a1);
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

uint64_t spaceman_compare_currently_available_space(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, atomic_ullong *a5, unint64_t *a6, unint64_t *a7, BOOL *a8, void *a9, unint64_t *a10, BOOL *a11)
{
  v17 = a1;
  if (obj_type(a1) == 13)
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v17 = *(v18 + 392);
  }

  v31 = 0;
  if (!a5)
  {
    return 22;
  }

  v19 = spaceman_get(v17, &v31);
  if (!v19)
  {
    pthread_mutex_lock(v31 + 9);
    v20 = sub_100015A30(&v31->__sig, v18, 0, a8);
    add_explicit = atomic_fetch_add_explicit(a5, a2, memory_order_relaxed);
    v22 = a3 + a2 + add_explicit;
    v23 = v22 > v20;
    v24 = v22 - v20;
    if (v23)
    {
      atomic_fetch_add_explicit(a5, -a2, memory_order_relaxed);
      v25 = v24 <= add_explicit;
      v19 = 28;
    }

    else
    {
      v24 = 0;
      v25 = 0;
      v19 = 0;
    }

    *a6 = v24;
    *a11 = v25;
    *a7 = v20;
    v26 = v31;
    v27 = *&v31[5].__opaque[48];
    *a9 = v27[35] + v27[30];
    v28 = v27[32];
    *a10 = v28;
    v29 = v27[37];
    if (v29)
    {
      if (v28 >= v29)
      {
        v28 = v29;
      }

      *a10 = v28;
    }

    pthread_mutex_unlock(v26 + 9);
    obj_release(&v31->__sig);
  }

  return v19;
}

uint64_t spaceman_free_up_some_blocks(void *a1, void *a2, uint64_t a3)
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v6 = 0;
  if (!spaceman_get(a1, &v11))
  {
    v7 = *&v11[5].__opaque[48];
    sub_100015E54(a1, v10, 0, 0);
    pthread_mutex_lock(v11 + 7);
    sub_100015F48(a1, v11, 0, 1, v10, a3);
    pthread_mutex_unlock(v11 + 7);
    pthread_mutex_lock(v11 + 8);
    v8 = sub_100015F48(a1, v11, 2u, 1, v10, a3);
    v6 = sub_100015F48(a1, v11, 1u, 1, v10, a3) + v8;
    *a2 = *(v7 + 240) + *(v7 + 280);
    pthread_mutex_unlock(v11 + 8);
    sub_100016780(a1, v10);
    obj_release(&v11->__sig);
  }

  return v6;
}

uint64_t sub_100015E54(uint64_t result, uint64_t a2, int a3, int a4)
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

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
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

uint64_t sub_100015F48(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6)
{
  v6 = a5;
  v7 = *(a2 + 376);
  v101 = 0;
  v102 = 0;
  v99 = 0;
  v100 = 0;
  v87 = v7;
  v86 = *(v7 + 36);
  v8 = 1540;
  if (!a3)
  {
    v8 = 1542;
  }

  v85 = (a2 + 1542);
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
    v92 = (a2 + 448);
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
        v18 = v92;
        pthread_mutex_unlock(v92);
      }

      v14 += v17;
      v15 += v12;
      __rqtp = xmmword_1000AAE40;
      nanosleep(&__rqtp, 0);
      pthread_mutex_lock(v18);
      v12 = *v9;
    }

    while (*v9);
    v6 = a5;
    if (v13)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  if (!spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v102) && v102)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v98 = 8;
    v26 = bt_lookup_first(v102, 0, &v99, &__rqtp, &v101, &v98);
    v27 = v99;
    if (a3 && !*(a2 + 1544))
    {
      pthread_mutex_lock((a2 + 384));
    }

    v28 = a6;
    if (v26)
    {
LABEL_29:
      if (*(a2 + 1544))
      {
        sub_10001F338(a1, a2, a3, v6, v28);
        if (!a3)
        {
LABEL_95:
          obj_release(v102);
          return v14;
        }
      }

      else
      {
        dev_unmap_flush(*(a1 + 384));
        if (a3)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_10001F07C(a1, v6);
        if (!a3)
        {
          goto LABEL_95;
        }
      }

      if (*(a2 + 8 * (a3 - 1) + 984))
      {
        sub_1000A4538();
      }

      goto LABEL_95;
    }

    v30 = 0;
    v88 = v87 + 40 * a3;
    v93 = 2;
    while (1)
    {
      if ((v30 & 1) == 0 && obj_modify(a2, 0, v28))
      {
        goto LABEL_29;
      }

      if (v98)
      {
        v31 = v101;
      }

      else
      {
        v101 = 1;
        v31 = 1;
      }

      v32 = v99;
      if (v99 <= v28)
      {
        if (v99 > v27)
        {
          *(v88 + 216) = v99;
          if ((a4 & 2) == 0)
          {
            goto LABEL_29;
          }
        }

        if (*(a1 + 632) == 1)
        {
          v33 = *(a1 + 376);
          if (v32 >= *(v33 + 1408))
          {
            if (*(a2 + 928 + 8 * a3) < v28)
            {
              *(a2 + 928 + 8 * a3) = v28;
              v83 = *(v33 + 1408);
              v82 = *(a1 + 384) + 212;
              log_info("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_free_completed");
            }

            goto LABEL_29;
          }
        }

        v34 = *(a2 + 920);
        if (v32 > v34)
        {
          if ((a4 & 3) != 0 && v93 && v32 != v28)
          {
            tx_barrier(a1, 208);
            --v93;
            v32 = v99;
            v34 = *(a2 + 920);
          }

          if (v32 > v34)
          {
            goto LABEL_29;
          }
        }

        if (a3)
        {
          if (spaceman_fq_over_threshold(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          if (spaceman_extent_check(a1, a2, v100, v101))
          {
            pthread_mutex_lock((a2 + 576));
            sub_10001F1F8(a1, a2, a3, v31);
            pthread_mutex_unlock((a2 + 576));
LABEL_60:
            if (nx_ratelimit_log_allowed(a1))
            {
              v79 = *(a1 + 384) + 212;
              log_err("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", v35, v36, v37, v38, v39, v40, v41, "spaceman_free_completed");
            }

            goto LABEL_81;
          }

          if (v31 >= (4 * v86))
          {
            v31 = (4 * v86);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (a3 - 1)) += v31;
          sub_10001F1F8(a1, a2, a3, v31);
          pthread_mutex_unlock((a2 + 576));
          v42 = v100;
          v43 = *(a2 + 1544);
          if (v43)
          {
            v44 = *(a2 + 1540);
            *(a2 + 1540) = v44 + 1;
            v45 = *(a2 + 1560) + v31;
            *(a2 + 1560) = v45;
            v46 = *(*(a2 + 376) + 36);
            v47 = v43 + 16 * v44;
            *(v47 + 256) = v42;
            *(v47 + 264) = v31;
            if (v44 > 0xEE || v45 >= (4 * v46))
            {
              sub_10001F338(a1, a2, a3, v6, v28);
            }

            goto LABEL_81;
          }

          dev_unmap(*(a1 + 384));
          sub_10001F6F0(a1, a2, v42, v31, 1, v28);
        }

        else
        {
          sub_10001F1F8(a1, a2, 0, v31);
          if (sub_10001F2B8(a1, a2, v100, v31, 0))
          {
            goto LABEL_60;
          }

          v48 = v100;
          v49 = *(a2 + 1544);
          if (v49)
          {
            v50 = *(a2 + 1542);
            *(a2 + 1542) = v50 + 1;
            *(a2 + 1552) += v31;
            v51 = (v49 + 16 * v50);
            *v51 = v48;
            v51[1] = v31;
            if ((v50 + 1) >= 0x10u)
            {
              v84 = v27;
              pthread_mutex_unlock((a2 + 448));
              v52 = *v85;
              sub_10001F07C(a1, v6);
              if (v52)
              {
                v53 = 0;
                v54 = 16 * v52;
                do
                {
                  v55 = (*(a2 + 1544) + v53);
                  v56 = *v55;
                  v57 = v55[1];
                  dev_unmap(*(a1 + 384));
                  v53 += 16;
                }

                while (v54 != v53);
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v58 = 0;
                v59 = a6;
                do
                {
                  sub_10001F49C(a1, a2, *(*(a2 + 1544) + v58), *(*(a2 + 1544) + v58 + 8), a6);
                  v58 += 16;
                }

                while (v54 != v58);
              }

              else
              {
                dev_unmap_flush(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v59 = a6;
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v28 = v59;
              v27 = v84;
            }

            goto LABEL_81;
          }

          dev_unmap(*(a1 + 384));
          sub_10001F49C(a1, a2, v48, v31, v28);
        }

        sub_10001F07C(a1, v6);
      }

      else
      {
        v78 = *(a1 + 384) + 212;
        log_err("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", v19, v20, v21, v22, v23, v24, v25, "spaceman_free_completed");
        if (a3)
        {
          pthread_mutex_lock((a2 + 576));
          sub_10001F1F8(a1, a2, a3, v31);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_10001F1F8(a1, a2, 0, v31);
        }
      }

LABEL_81:
      if (v6 && *(v6 + 62) == 1)
      {
        v60.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v60.i64[1] = v31;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v60);
      }

      if (bt_remove_first(v102, 0, 0, 0, 0, 0, v28))
      {
        v80 = *(a1 + 384) + 212;
        log_err("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", v61, v62, v63, v64, v65, v66, v67, "spaceman_free_completed");
      }

      v68 = v101 - v31;
      if (v101 != v31)
      {
        v100 += v31;
        v101 -= v31;
        v98 = 8 * (v68 != 1);
        if (bt_insert(v102, 0, &v99, 16, &v101, v98, v28))
        {
          v81 = *(a1 + 384) + 212;
          log_err("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", v69, v70, v71, v72, v73, v74, v75, "spaceman_free_completed");
        }
      }

      v14 += v31;
      LODWORD(__rqtp.tv_sec) = 16;
      v98 = 8;
      v76 = bt_lookup_first(v102, 0, &v99, &__rqtp, &v101, &v98);
      v30 = 1;
      if (v76)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  if (v6 && *(v6 + 62) == 1)
  {
    v29 = *(v6 + 48) + v14;
    *(v6 + 40) += v15;
    *(v6 + 48) = v29;
  }

  return v14;
}

uint64_t sub_100016780(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*(a2 + 62) != 1)
  {
    return 0;
  }

  v8.tv_sec = 0;
  v8.tv_nsec = 0;
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

void spaceman_manage_free_queues(pthread_mutex_t **a1, uint64_t a2)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v9 = 0u;
  v10 = 0u;
  v4 = *(a2 + 16);
  if (!spaceman_get(a1, &v12))
  {
    v5 = *&v12[5].__opaque[48];
    sub_100015E54(a1, &v9, 0, 1);
    pthread_mutex_lock(v12 + 7);
    if (spaceman_fq_over_threshold(a1, v12, 0, 0))
    {
        ;
      }
    }

    while (1)
    {
      v6 = v12;
      if (v4 - v5[27] <= LOWORD(v12[24].__sig))
      {
        break;
      }

      if (!sub_100015F48(a1, v12, 0, 0, &v9, v4))
      {
        v6 = v12;
        break;
      }
    }

    pthread_mutex_unlock(v6 + 7);
    pthread_mutex_lock(v12 + 8);
    v7 = v12;
    if (v5[30] > *&v12[23].__opaque[40])
    {
      while (1)
      {
        v7 = v12;
        if (v5[30] <= *&v12[23].__opaque[40] >> 1)
        {
          break;
        }

        if (!sub_100015F48(a1, v12, 1u, 1, &v9, v4))
        {
          v7 = v12;
          break;
        }
      }
    }

    if (v5[35] > *&v7[23].__opaque[48])
    {
        ;
      }
    }

    if (v5[30] > v5[9])
    {
        ;
      }
    }

    if (v5[35] > v5[15])
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v12, 1u, 0))
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v12, 2u, 0))
    {
        ;
      }
    }

      ;
    }

    do
    {
      v8 = v5[37];
    }

    while (v8 && v4 - v8 > LOWORD(v12[24].__sig) && sub_100015F48(a1, v12, 2u, 0, &v9, v4));
    sub_100016780(a1, &v9);
    *(a2 + 88) = *(v11 + 8);
    *(a2 + 80) = *&v11[0] - v10;
    pthread_mutex_unlock(v12 + 8);
    obj_release(&v12->__sig);
  }
}

uint64_t spaceman_fq_over_threshold(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = 0;
  v7 = 0;
  if (!spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = spaceman_fq_tree_over_threshold(a2, a3, v9, a4);
    obj_release(v9);
  }

  return v7;
}

uint64_t spaceman_tx_start_closing(pthread_mutex_t **a1)
{
  v14 = 0;
  if (spaceman_get(a1, &v14))
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
  if (v12 || spaceman_fq_over_threshold(a1, v14, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!spaceman_fq_over_threshold(a1, v14, 1u, 0))
    {
      v2 = spaceman_fq_over_threshold(a1, v14, 2u, 0);
    }
  }

  obj_release(&v14->__sig);
  return v2;
}

void spaceman_tx_complete(void *a1, uint64_t a2)
{
  v4 = 0;
  if (!spaceman_get(a1, &v4))
  {
    v3 = v4;
    v4[115] = a2;
    obj_release(v3);
  }
}

uint64_t spaceman_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v37 = 0;
  v35 = 0;
  v36 = 0;
  v9 = spaceman_fq_tree_get(a1, a3, 0, 0, 0, &v36);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 1u, 0, 0, &v37);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 2u, 0, 0, &v35);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v21 = obj_checkpoint_start(a3);
    v17 = v21;
    if (v21 || (v18 = v36) == 0)
    {
      if (v21 || (v19 = v37) == 0)
      {
        if (!v21)
        {
          v20 = v35;
          if (v35)
          {
            goto LABEL_42;
          }
        }

        goto LABEL_50;
      }

      goto LABEL_32;
    }

    if (*(v36[49] + 32) <= v8[112])
    {
      v22 = 0;
    }

    else if (*(a3 + 976))
    {
      v22 = 1;
    }

    else
    {
      v29 = v8[112];
      v32 = *(a2 + 16);
      v26 = *(a1 + 384) + 212;
      log_err("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", v10, v36, v11, v12, v13, v14, v15, "spaceman_checkpoint_traverse");
      v22 = 1;
      v18 = v36;
    }

    *(a3 + 976) = v22;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v16 = obj_checkpoint_known(a3);
    v17 = v16;
    if (v16 || (v18 = v36) == 0)
    {
      if (v16 || (v19 = v37) == 0)
      {
        if (v16)
        {
          goto LABEL_50;
        }

        v20 = v35;
        if (!v35)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

      goto LABEL_38;
    }

    goto LABEL_28;
  }

  v18 = v36;
  if (v36)
  {
LABEL_28:
    v17 = btree_checkpoint_traverse(a1, a2, v18, a4);
    goto LABEL_29;
  }

  v17 = 0;
LABEL_29:
  if (!v17)
  {
    v19 = v37;
    if (v37)
    {
      if (a4 != 1)
      {
LABEL_38:
        v17 = btree_checkpoint_traverse(a1, a2, v19, a4);
        goto LABEL_39;
      }

LABEL_32:
      if (*(v19[49] + 32) <= v8[132])
      {
        v23 = 0;
      }

      else if (*(a3 + 977))
      {
        v23 = 1;
      }

      else
      {
        v30 = v8[132];
        v33 = *(a2 + 16);
        v27 = *(a1 + 384) + 212;
        log_err("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", v10, v19, v11, v12, v13, v14, v15, "spaceman_checkpoint_traverse");
        v23 = 1;
        v19 = v37;
      }

      *(a3 + 977) = v23;
      goto LABEL_38;
    }
  }

LABEL_39:
  if (!v17)
  {
    v20 = v35;
    if (v35)
    {
      if (a4 != 1)
      {
LABEL_48:
        v9 = btree_checkpoint_traverse(a1, a2, v20, a4);
LABEL_49:
        v17 = v9;
        goto LABEL_50;
      }

LABEL_42:
      if (*(v20[49] + 32) <= v8[152])
      {
        v24 = 0;
      }

      else if (*(a3 + 978))
      {
        v24 = 1;
      }

      else
      {
        v31 = v8[152];
        v34 = *(a2 + 16);
        v28 = *(a1 + 384) + 212;
        log_err("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", v10, v20, v11, v12, v13, v14, v15, "spaceman_checkpoint_traverse");
        v24 = 1;
        v20 = v35;
      }

      *(a3 + 978) = v24;
      goto LABEL_48;
    }
  }

LABEL_50:
  if (v36)
  {
    obj_release(v36);
  }

  if (v37)
  {
    obj_release(v37);
  }

  if (v35)
  {
    obj_release(v35);
  }

  return v17;
}

uint64_t spaceman_fq_tree_get(pthread_mutex_t **a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t *a6)
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
    result = btree_get(a1, 0x80000000, v15, 0, 0, 0, 9, spaceman_free_queue_key_cmp, 0, a6);
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

  result = btree_create(a1, 0x80000000, 6, 9, 0, 0x10u, 8, spaceman_free_queue_key_cmp, a4, a6);
  if (!result)
  {
    *v16 = obj_oid(*a6);
    obj_dirty(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t spaceman_iterate_free_extents_internal(uint64_t a1, int a2, unint64_t a3, uint64_t (*a4)(void *a1, unint64_t a2, int64_t a3), void *a5)
{
  LODWORD(v7) = a2;
  v8 = a1;
  memset(v281, 0, 64);
  v280 = 0;
  v279 = 0;
  memset(v285, 0, 128);
  v266 = 0;
  pthread_mutex_lock((a1 + 864));
  v9 = v7 & 0x30;
  if ((v7 & 0x30) == 0 && *(v8 + 639) == 1)
  {
    pthread_mutex_unlock((v8 + 864));
    return 16;
  }

  v278 = 0;
  v277 = 0;
  v276 = 0;
  __base = 0u;
  v268 = 0u;
  v269 = 0u;
  v270 = 0u;
  v271 = 0u;
  v272 = 0u;
  v273 = 0u;
  v274 = 0u;
  v275 = 0;
  ++*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  v10 = spaceman_get(v8, &v276);
  if (v10)
  {
    goto LABEL_359;
  }

  v250 = *&v276[5].__opaque[48];
  v259 = a4;
  if ((v7 & 0x40) != 0)
  {
    v11 = 4;
  }

  else if ((v7 & 0x20) != 0)
  {
    v11 = 8;
  }

  else if (a4 == sub_100018900)
  {
    v11 = 1;
  }

  else
  {
    v11 = v250[10];
  }

  v232 = v11;
  v12 = _apfs_malloc_typed(16 * v250[10], 0x1000040F7F8B94BuLL);
  v13 = _apfs_malloc_typed(8 * v250[10], 0x100004000313F17uLL);
  v14 = v13;
  v10 = 12;
  if (!v12 || !v13)
  {
    goto LABEL_354;
  }

  if ((v7 & 2) == 0)
  {
    pthread_mutex_lock(v276 + 6);
  }

  if (a3)
  {
    if ((v7 & 0x6C) != 0x40)
    {
      v10 = 22;
      goto LABEL_344;
    }

    v15 = 0;
  }

  else
  {
    if ((v7 & 4) != 0)
    {
      v15 = 0;
      v16 = 1;
      goto LABEL_24;
    }

    v15 = (v7 >> 3) & 1;
  }

  v16 = 2;
LABEL_24:
  v218 = v16;
  v10 = 0;
  v221 = 0;
  v228 = 0;
  v17 = 0;
  if ((v7 & 0x20) != 0)
  {
    v18 = &v266;
  }

  else
  {
    v18 = 0;
  }

  v223 = v18;
  v224 = v250 + 12;
  v236 = v7 & 0xFE;
  v226 = v12 + 8;
  v231 = v12 - 16;
  v246 = v14;
  v237 = v8;
  v240 = v7;
  v239 = v12;
  v225 = v7 & 0x30;
  while (1)
  {
    if (v7)
    {
      v275 = 0;
      v273 = 0u;
      v274 = 0u;
      v271 = 0u;
      v272 = 0u;
      v269 = 0u;
      v270 = 0u;
      __base = 0u;
      v268 = 0u;
      LODWORD(v275) = spaceman_get_number_of_disabled_allocation_zones(v276, v15);
    }

    v266 = a3;
    v222 = spaceman_free_extent_cache_bitmap_scan_begin(*&v276[24].__opaque[8 * v15 + 32], v223);
    v19 = v266;
    v20 = v250[9];
    if ((v7 & 0x40) == 0)
    {
      v19 = v266 / v20 * v20;
      v266 = v19;
    }

    v219 = v19;
    v21 = &v224[12 * v15];
    v227 = -1;
    v22 = v19 / v20 / v250[10];
    v262 = v15;
    v23 = v17;
    v229 = v21;
LABEL_33:
    v234 = v22;
    if (v22 < v21[4])
    {
      break;
    }

    if ((v7 & 1) != 0 && v275)
    {
      v17 = v23;
      qsort(&__base, 8uLL, 0x10uLL, sub_100018B5C);
      if (v275 && DWORD2(v274))
      {
        v184 = 6;
        v186 = &v274;
        v185 = &v274 + 2;
        while (1)
        {
          LOBYTE(v284) = 0;
          if (spaceman_evaluate_chunk_for_disabled_allocation_zones(v276, v262, *v186, &v284))
          {
            v213 = *v185;
            v205 = *(v8 + 384) + 212;
            v212 = *v186;
            log_err("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", v187, v188, v189, v190, v191, v192, v193, "spaceman_iterate_free_extents_internal");
          }

          v194 = v275;
          if (v284 == 1)
          {
            v194 = v275 - 1;
            LODWORD(v275) = v275 - 1;
          }

          v10 = 0;
          v15 = v262;
          if (!v194 || v184 == -1)
          {
            break;
          }

          v186 = (&__base + v184);
          v185 = (v186 | 8);
          --v184;
          if (!*(v186 + 8))
          {
            v10 = 0;
            v15 = v262;
            break;
          }
        }
      }
    }

    else
    {
      v17 = v23;
    }

    if (v222)
    {
      if (v219)
      {
        v195 = 0;
      }

      else
      {
        v195 = v234 == v224[12 * v15 + 4];
      }

      spaceman_free_extent_cache_bitmap_scan_finished(*&v276[24].__opaque[8 * v15 + 32], v266, v195);
    }

    a3 = 0;
    if (++v15 == v218)
    {
      v197 = 0;
      goto LABEL_335;
    }
  }

  v264 = v266;
  v25 = v250[9];
  v24 = v250[10];
  if (!v9)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      v217 = v229[4];
      v209 = *(v8 + 384) + 212;
      log_info("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", v26, v27, v28, v29, v30, v31, v32, "spaceman_iterate_free_extents_internal");
      pthread_mutex_unlock((v8 + 864));
      v196 = 0;
      v197 = 0;
      v10 = 16;
      v12 = v239;
      goto LABEL_329;
    }

    pthread_mutex_unlock((v8 + 864));
  }

  pthread_mutex_lock(&v276[v15 + 10]);
  v33 = v229[5];
  if (v33)
  {
    v34 = v10;
    v35 = v234 / v250[11];
    if (v35 == v227 && v23)
    {
      obj_lock(v280, 1u);
      v35 = v227;
    }

    else
    {
      v37 = *(*(&v276[14].__sig + v262) + 8 * v35);
      if (v280)
      {
        obj_release(v280);
        v280 = 0;
      }

      v277 = v250;
      v278 = __PAIR64__(v35, v262);
      v38 = obj_get(*(v8 + 392), 0x140000004, v37, &sm_cab_desc, &v277, 0, 0, 0, &v280);
      if (v38)
      {
        v204 = v38;
        v211 = *(v8 + 384) + 212;
        log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", v39, v40, v41, v42, v43, v44, v45, "spaceman_iterate_free_extents_internal");
        v197 = 0;
        if (v222)
        {
          LOBYTE(v196) = 1;
          v12 = v239;
          v10 = v204;
          goto LABEL_330;
        }

        v12 = v239;
        v10 = v204;
        goto LABEL_333;
      }

      v34 = 0;
      v23 = v280[7];
      v227 = v35;
    }

    pthread_mutex_unlock(&v276[v262 + 10]);
    v36 = (v23 + 8 * (v234 - v250[11] * v35) + 40);
    v228 = 1;
    v10 = v34;
  }

  else
  {
    v36 = (*(&v276[14].__sig + v15) + 8 * v234);
  }

  v230 = v23;
  if (v279)
  {
    obj_lock(v279, 1u);
    v46 = v234;
  }

  else
  {
    v47 = *v36;
    v277 = v250;
    v278 = __PAIR64__(v234, v262);
    v46 = v234;
    v48 = obj_get(*(v8 + 392), 0x140000004, v47, &sm_cib_desc, &v277, 0, 0, 0, &v279);
    if (v48)
    {
      v203 = v48;
      v210 = *(v8 + 384) + 212;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", v49, v50, v51, v52, v53, v54, v55, "spaceman_iterate_free_extents_internal");
      v197 = 0;
      v10 = v203;
      v12 = v239;
      v14 = v246;
      v196 = v33 == 0;
      goto LABEL_329;
    }

    v10 = 0;
    v14 = v246;
  }

  v233 = v279[7];
  if (v259 == sub_100018900)
  {
    sub_100015E54(v8, v281, 125, 0);
    if (v33)
    {
      goto LABEL_53;
    }
  }

  else if (v33)
  {
    goto LABEL_53;
  }

  pthread_mutex_unlock(&v276[v262 + 10]);
LABEL_53:
  if (v280)
  {
    obj_unlock(v280, 1u);
    v228 = 0;
  }

  v56 = v264 / v25 - v24 * v46;
  bzero(v14, 8 * v250[10]);
  v61 = *(v233 + 36);
  v238 = v56;
  if (v232 >= v61 - v56)
  {
    v62 = v61 - v56;
  }

  else
  {
    v62 = v232;
  }

  v63 = v250[10];
  if (v61 > v63)
  {
    sub_1000A4640();
  }

  if (v62 > v63)
  {
    sub_1000A4614();
  }

  v64 = v264 % v25;
  __nel = v62;
  if (v62)
  {
    v65 = 0;
    v66 = v250[9];
    v67 = v226;
    v12 = v239;
    v68 = v56;
    v23 = v230;
    do
    {
      *(v67 - 2) = v68;
      *v67 = *(v233 + 40 + 32 * v68 + 24);
      v67 += 2;
      if (v65)
      {
        v69 = 0;
      }

      else
      {
        v69 = v64;
      }

      v266 += v66 - v69;
      ++v65;
      ++v68;
    }

    while (v65 < __nel);
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v12 = v239;
    v68 = v56;
    v23 = v230;
    if ((v7 & 0x40) != 0)
    {
      goto LABEL_68;
    }
  }

  qsort(v12, __nel, 0x10uLL, sub_100018A90);
LABEL_68:
  v70 = __nel;
  if (!__nel)
  {
    v158 = 0;
    v159 = v259;
    v9 = v225;
    goto LABEL_281;
  }

  v220 = v68;
  v71 = 0;
  v72 = 0;
  v73 = v226;
  while (1)
  {
    v74 = v71;
    if (*v73)
    {
      break;
    }

LABEL_79:
    v71 = v74 + 1;
    v73 += 2;
    if (v74 + 1 >= v70)
    {
LABEL_80:
      v81 = 0;
      v82 = 0;
      v248 = 0;
      v235 = v74 + 1;
      v245 = v233 + 40;
      v12 = v239;
      while (1)
      {
        v244 = v81;
        v83 = &v12[16 * v81];
        v243 = v250[10];
        v84 = *v83;
        v85 = &v285[v248];
        v249 = v85;
        v247 = *(v83 + 1);
        if (!v247)
        {
          break;
        }

        if (*v85)
        {
          v86 = obj_async_wait(*v85);
        }

        else
        {
          v86 = obj_get(*(v8 + 392), 0x140000000, v247, &sm_bm_desc, 0, 0, 0, 0, &v285[v248]);
        }

        v10 = v86;
        if (v86)
        {
          v214 = *v83;
          v206 = *(v8 + 384) + 212;
          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", v87, v88, v89, v57, v58, v59, v60, "spaceman_iterate_free_extents_internal");
          if (!*v249)
          {
            goto LABEL_327;
          }

          obj_release(*v249);
          v196 = 0;
          *v249 = 0;
LABEL_328:
          v197 = 1;
          goto LABEL_329;
        }

        v261 = (*v249)[7];
        v90 = *v83;
        if ((v7 & 0x40) != 0)
        {
          goto LABEL_89;
        }

LABEL_91:
        v91 = 0;
        v242 = v84;
        v256 = &v14[8 * v90];
        v260 = v245 + 32 * v84;
        v92 = *(v260 + 16);
        v283 = 0;
        p_sig = &v276->__sig;
        v93 = v236;
        if (*&v276[23].__opaque[8 * v262 + 16])
        {
          v93 = v7;
        }

        v263 = v93;
        if ((v93 & 0x40) != 0)
        {
          v91 = *v256;
        }

        v241 = *&v276[23].__opaque[8 * v262 + 16];
        v251 = v82;
        v94 = *&v92 & 0xFFFFFLL;
        v284 = 0;
        if ((v92 & 0xFFFFFu) <= v64)
        {
          LODWORD(v96) = 0;
          v265 = 0;
          v95 = 0;
          v99 = v261;
LABEL_146:
          v8 = v237;
          v82 = v251;
          if ((v263 & 0x40) != 0)
          {
            goto LABEL_147;
          }

          goto LABEL_148;
        }

        v95 = 0;
        v265 = 0;
        v96 = 0;
        v258 = &v276[24].__opaque[32];
        v97 = 1;
        v98 = v64;
        v99 = v261;
        while (1)
        {
          if (!v99)
          {
            v283 = v94;
            v284 = v98;
            v100 = v94;
            v101 = v98;
            goto LABEL_104;
          }

          if (!bitmap_range_find_first(0, v99, v98, v94 - v98, &v284))
          {
            break;
          }

          if (bitmap_range_find_first(1, v99, v284, v94 - v284, &v283))
          {
            v100 = v283;
          }

          else
          {
            v283 = v94;
            v100 = v94;
          }

          v101 = v284;
LABEL_104:
          v98 = v100;
          v102 = 100 * (v97 / 0x64) - 1;
          v103 = v100 - v101;
          if (v100 - v101 > v96)
          {
            v96 = v100 - v101;
          }

          if ((v263 & 0x40) != 0)
          {
            if (v91 && v101)
            {
              v104 = *(v260 + 8) - v91;
              spaceman_free_extent_cache_insert(v258[v262], 0, v104, v91, v57, v58, v59, v60);
              if (v259)
              {
                v105 = v259(a5, v104, v91);
                if (BYTE6(v281[7]) == 1)
                {
                  v106.i64[0] = vdupq_n_s64(1uLL).u64[0];
                  v106.i64[1] = v91;
                  *&v281[5] = vaddq_s64(*&v281[5], v106);
                }
              }

              else
              {
                v105 = 0;
              }

              v99 = v261;
              v102 = 100 * (v97 / 0x64) - 1;
              v91 = 0;
              if (v265)
              {
                v109 = 1;
              }

              else
              {
                v109 = v105 == 0;
              }

              if (v109)
              {
                v110 = v265;
              }

              else
              {
                v110 = v105;
              }

              v265 = v110;
              v100 = v283;
            }

            if (v100 != v94)
            {
              v257 = v102;
              v107 = *(v260 + 8) - v91;
              v108 = v91 + v103;
LABEL_129:
              spaceman_free_extent_cache_insert(v258[v262], 0, v107 + v101, v108, v57, v58, v59, v60);
              if (v259)
              {
                v111 = v259(a5, v107 + v101, v108);
                if (BYTE6(v281[7]) == 1)
                {
                  v112 = 1;
                  v113.i64[0] = vdupq_n_s64(1uLL).u64[0];
                  v113.i64[1] = v108;
                  *&v281[5] = vaddq_s64(*&v281[5], v113);
                }

                else
                {
                  v112 = 0;
                }
              }

              else
              {
                v111 = 0;
                v112 = BYTE6(v281[7]);
              }

              v99 = v261;
              v91 = 0;
              if (v265)
              {
                v114 = 1;
              }

              else
              {
                v114 = v111 == 0;
              }

              if (v114)
              {
                v115 = v265;
              }

              else
              {
                v115 = v111;
              }

              v265 = v115;
              if ((v112 & 1) != 0 && v257 == v95)
              {
                sub_10001F07C(*(*p_sig + 392), v281);
                v91 = 0;
              }

              goto LABEL_143;
            }

            v91 += v103;
          }

          else if (v101)
          {
            if (v100 != v94)
            {
              v257 = 100 * (v97 / 0x64) - 1;
              v107 = *(v260 + 8) - v91;
              v108 = v103 + v91;
              goto LABEL_129;
            }

            *(v256 + 1) = v103;
          }

          else
          {
            *v256 = v100;
          }

LABEL_143:
          ++v97;
          ++v95;
          if (v98 >= v94)
          {
            goto LABEL_146;
          }
        }

        if ((v263 & 0x40) == 0 || !v91 || v95)
        {
          goto LABEL_146;
        }

        v123 = *(v260 + 8) - v91;
        spaceman_free_extent_cache_insert(v258[v262], 0, v123, v91, v57, v58, v59, v60);
        if (v259)
        {
          v124 = v259(a5, v123, v91);
          v8 = v237;
          v82 = v251;
          if (BYTE6(v281[7]) == 1)
          {
            v125.i64[0] = vdupq_n_s64(1uLL).u64[0];
            v125.i64[1] = v91;
            *&v281[5] = vaddq_s64(*&v281[5], v125);
          }
        }

        else
        {
          v124 = 0;
          v8 = v237;
          v82 = v251;
        }

        v95 = 0;
        v91 = 0;
        if (v265)
        {
          v156 = 1;
        }

        else
        {
          v156 = v124 == 0;
        }

        if (v156)
        {
          v157 = v265;
        }

        else
        {
          v157 = v124;
        }

        v265 = v157;
LABEL_147:
        *v256 = v91;
LABEL_148:
        v10 = v265;
        if ((v263 & 1) == 0)
        {
          goto LABEL_188;
        }

        v116 = v242 + v243 * v234;
        v117 = *(v241 + 4 * v116);
        v118 = v117 & 0xFF000000 | v96 & 0xFFFFFF;
        *(v241 + 4 * v116) = v118;
        if (v99)
        {
          v119 = v117 & 0xFE000000 | v96 & 0xFFFFFF;
          v120 = v118 | 0x1000000;
          if (*v99)
          {
            v120 = v119;
          }

          *(v241 + 4 * v116) = v120;
          v121 = v241;
          if (v94 < 0x40 || (v99[(v94 >> 6) - 1] & 0x8000000000000000) != 0)
          {
            v122 = v120 & 0xFDFFFFFF;
            goto LABEL_163;
          }
        }

        else
        {
          v120 = v118 | 0x1000000;
          v121 = v241;
        }

        v122 = v120 | 0x2000000;
LABEL_163:
        *(v121 + 4 * v116) = v122;
        if (!v275)
        {
          goto LABEL_188;
        }

        v126 = *(v260 + 20) & 0xFFFFF;
        if (v126 == *(p_sig[47] + 36))
        {
          v282 = 0;
          if (spaceman_evaluate_chunk_for_disabled_allocation_zones(p_sig, v262, v116, &v282))
          {
            if (!p_sig[1])
            {
              v142 = *(*(*p_sig + 392) + 384) + 212;
            }

            log_err("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", v127, v128, v129, v57, v58, v59, v60, "spaceman_iterate_process_bitmap_block");
          }

          if (v282 == 1)
          {
            LODWORD(v275) = v275 - 1;
          }

          goto LABEL_188;
        }

        if (!v95 || v126 < 4)
        {
          goto LABEL_188;
        }

        v130 = v126 / v95;
        v131 = &__base + HIDWORD(v275);
        v132 = v122 & 0xC000000;
        v133 = v122 & 0xFFFFFC;
        v134 = v130 > *(v131 + 2) && v132 == 0;
        if (!v134 || v133 == 0)
        {
          goto LABEL_188;
        }

        v136 = 0;
        *(v131 + 2) = v130;
        *v131 = v116;
        v137 = -7;
        v138 = DWORD2(__base);
        v139 = &v268 + 2;
        while (2)
        {
          v141 = *v139;
          v139 += 4;
          v140 = v141;
          if (v141 >= v138)
          {
LABEL_181:
            v149 = __CFADD__(v137++, 1);
            if (v149)
            {
              goto LABEL_227;
            }

            continue;
          }

          break;
        }

        if (v140)
        {
          v136 = v137 + 8;
          v138 = v140;
          goto LABEL_181;
        }

        v136 = v137 + 8;
LABEL_227:
        HIDWORD(v275) = v136;
LABEL_188:
        if (v82)
        {
          v143 = 1;
        }

        else
        {
          v143 = v265 == 0;
        }

        if (!v143)
        {
          v82 = v265;
        }

        LOBYTE(v7) = v240;
        if ((v240 & 0x40) != 0 && v82)
        {
          v196 = 0;
          v197 = 1;
          goto LABEL_324;
        }

        v12 = v239;
        v14 = v246;
        if (v247)
        {
          obj_release(*v249);
          *v249 = 0;
          v144 = __nel;
          v145 = v235;
          if (v235 < __nel)
          {
            v146 = &v231[16 * v235];
            v144 = __nel;
            v147 = v235 + 1;
            do
            {
              v148 = *(v146 + 3);
              if ((v240 & 0x40) == 0 && !v148)
              {
                sub_1000A4564();
              }

              v146 += 16;
              ++v145;
              if (v148)
              {
                v149 = 1;
              }

              else
              {
                v149 = v147 >= __nel;
              }

              ++v147;
            }

            while (!v149);
            v235 = v145;
            if (v148)
            {
              v150 = obj_get(*(v8 + 392), 0x140000080, v148, &sm_bm_desc, 0, 0, 0, 0, v249);
              if (v150 == 45 || v150 == 16)
              {
                v10 = 0;
                *v249 = 0;
                goto LABEL_214;
              }

              v10 = v150;
              if (!v150)
              {
LABEL_214:
                v144 = __nel;
                goto LABEL_215;
              }

              v216 = *v146;
              v208 = *(v8 + 384) + 212;
              log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", v151, v152, v153, v57, v58, v59, v60, "spaceman_iterate_free_extents_internal");
LABEL_327:
              v196 = 0;
              goto LABEL_328;
            }
          }

LABEL_215:
          v155 = v244;
          v248 = (v248 + 1) & 0xF;
        }

        else
        {
          v144 = __nel;
          v155 = v244;
        }

        v64 = 0;
        v81 = v155 + 1;
        if (v81 >= v144)
        {
          v252 = v82;
          v160 = 0;
          v161 = 0;
          v162 = 0;
          v163 = (v144 - 1);
          while (1)
          {
            v164 = (v160 + v238);
            v165 = v245 + 32 * v164;
            v166 = &v246[8 * v164];
            if ((v7 & 0x40) != 0)
            {
              if (*v166)
              {
                if (v163 != v160)
                {
                  sub_1000A4590();
                }

                if (v162)
                {
                  sub_1000A45BC();
                }

                if (v161)
                {
                  sub_1000A45E8();
                }

                v162 = *(v165 + 8) - *v166 + (*(v165 + 16) & 0xFFFFF);
                v144 = __nel;
                v161 = *v166;
              }

              goto LABEL_268;
            }

            v167 = v10;
            v168 = *v166;
            if (v168)
            {
              break;
            }

LABEL_253:
            v173 = *(v166 + 1);
            if (v173)
            {
              v174 = *(v165 + 8) + (*(v165 + 16) & 0xFFFFF) - v173;
              if (v161)
              {
                if (v161 + v162 == v174)
                {
                  v10 = 0;
                  v173 += v161;
                  v174 = v162;
LABEL_262:
                  v144 = __nel;
                  v176 = v252;
                  if (v252)
                  {
                    v177 = 1;
                  }

                  else
                  {
                    v177 = v10 == 0;
                  }

                  if (!v177)
                  {
                    v176 = v10;
                  }

                  v252 = v176;
                  v162 = v174;
                  v161 = v173;
                  goto LABEL_268;
                }

                spaceman_free_extent_cache_insert(*&v276[24].__opaque[8 * v262 + 32], 0, v162, v161, v57, v58, v59, v60);
                if (v259)
                {
                  v10 = v259(a5, v162, v161);
                  if (BYTE6(v281[7]) == 1)
                  {
                    v175.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v175.i64[1] = v161;
                    *&v281[5] = vaddq_s64(*&v281[5], v175);
                  }

                  goto LABEL_262;
                }
              }

              v10 = 0;
              goto LABEL_262;
            }

            v10 = v167;
            v144 = __nel;
LABEL_268:
            if (++v160 >= v144)
            {
              if (v161)
              {
                spaceman_free_extent_cache_insert(*&v276[24].__opaque[8 * v262 + 32], 0, v162, v161, v57, v58, v59, v60);
                v159 = v259;
                v9 = v225;
                v68 = v220;
                if (v259)
                {
                  v10 = v259(a5, v162, v161);
                  if (BYTE6(v281[7]) == 1)
                  {
                    v178.i64[0] = vdupq_n_s64(1uLL).u64[0];
                    v178.i64[1] = v161;
                    *&v281[5] = vaddq_s64(*&v281[5], v178);
                  }
                }

                else
                {
                  v10 = 0;
                }

                v12 = v239;
                v23 = v230;
                if (v252)
                {
                  v179 = 1;
                }

                else
                {
                  v179 = v10 == 0;
                }

                if (v179)
                {
                  v158 = v252;
                }

                else
                {
                  v158 = v10;
                }
              }

              else
              {
                v159 = v259;
                v12 = v239;
                v9 = v225;
                v23 = v230;
                v68 = v220;
                v158 = v252;
              }

LABEL_281:
              if (v159 == sub_100018900)
              {
                sub_100018AA8(v8);
              }

              obj_unlock(v279, 1u);
              v15 = v262;
              if (BYTE6(v281[7]) == 1)
              {
                if (sub_100016780(v8, v281))
                {
                  v180 = v232 >> 1;
                  if (v232 <= 1)
                  {
                    v180 = 1;
                  }

                  v232 = v180;
                  v181 = 1;
                }

                else
                {
                  v182 = v250[10];
                  v183 = 4 * v232;
                  if (v182 < 4 * v232)
                  {
                    v183 = v250[10];
                  }

                  if (v182 >= v232 + 1)
                  {
                    v182 = v232 + 1;
                  }

                  if (!v221)
                  {
                    v182 = v183;
                  }

                  v232 = v182;
                  v181 = v221;
                }

                v221 = v181;
              }

              if (*(v233 + 36) == v68)
              {
                obj_release(v279);
                v279 = 0;
                v234 = (v234 + 1);
              }

              v21 = v229;
              v22 = v234;
              if (v158)
              {
                v196 = 0;
                v197 = 0;
                v10 = v158;
                goto LABEL_329;
              }

              goto LABEL_33;
            }
          }

          v7 = *(v165 + 8);
          if (v161)
          {
            if (v161 + v162 == v7)
            {
              v169 = 0;
              v168 += v161;
              v7 = v162;
LABEL_247:
              v171 = v252;
              if (v252)
              {
                v172 = 1;
              }

              else
              {
                v172 = v169 == 0;
              }

              v167 = v169;
              if (!v172)
              {
                v171 = v169;
              }

              v252 = v171;
              v162 = v7;
              v161 = v168;
              LOBYTE(v7) = v240;
              goto LABEL_253;
            }

            spaceman_free_extent_cache_insert(*&v276[24].__opaque[8 * v262 + 32], 0, v162, v161, v57, v58, v59, v60);
            if (v259)
            {
              v169 = v259(a5, v162, v161);
              if (BYTE6(v281[7]) == 1)
              {
                v170.i64[0] = vdupq_n_s64(1uLL).u64[0];
                v170.i64[1] = v161;
                *&v281[5] = vaddq_s64(*&v281[5], v170);
              }

              goto LABEL_247;
            }
          }

          v169 = 0;
          goto LABEL_247;
        }
      }

      v261 = 0;
      v90 = *v83;
      if ((v7 & 0x40) == 0)
      {
        goto LABEL_91;
      }

LABEL_89:
      if (v90)
      {
        *&v14[8 * v90] = *&v14[8 * (v90 - 1)];
        *&v14[8 * (*v83 - 1)] = 0;
        v90 = *v83;
      }

      goto LABEL_91;
    }
  }

  v75 = obj_get(*(v8 + 392), 0x140000080, *v73, &sm_bm_desc, 0, 0, 0, 0, &v285[v72]);
  v70 = __nel;
  if (!v75)
  {
LABEL_78:
    ++v72;
    v14 = v246;
    if (v72 == 16)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v79 = v75;
  if (v75 == 45 || v75 == 16)
  {
    v285[v72] = 0;
    goto LABEL_78;
  }

  v215 = *(v73 - 2);
  v207 = *(v8 + 384) + 212;
  log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", v76, v77, v78, v57, v58, v59, v60, "spaceman_iterate_free_extents_internal");
  v196 = 0;
  v197 = 1;
  v10 = v79;
LABEL_324:
  v12 = v239;
  v14 = v246;
LABEL_329:
  if (((v10 != 0) & v222) != 0)
  {
LABEL_330:
    spaceman_free_extent_cache_bitmap_scan_finished(*&v276[24].__opaque[8 * v262 + 32], v266, 0);
    if (v196)
    {
      v198 = v262;
      goto LABEL_334;
    }

    goto LABEL_335;
  }

  if (!v196)
  {
    goto LABEL_335;
  }

LABEL_333:
  v198 = v262;
LABEL_334:
  pthread_mutex_unlock(&v276[v198 + 10]);
LABEL_335:
  if (v280 && (v228 & 1) != 0)
  {
    obj_unlock(v280, 1u);
  }

  v199 = v197 ^ 1;
  if (!v279)
  {
    v199 = 1;
  }

  if ((v199 & 1) == 0)
  {
    sub_100016780(v8, v281);
    if (v259 == sub_100018900)
    {
      sub_100018AA8(v8);
    }

    obj_unlock(v279, 1u);
  }

LABEL_344:
  if (v280)
  {
    obj_release(v280);
  }

  if (v279)
  {
    obj_release(v279);
  }

  for (i = 0; i != 16; ++i)
  {
    v201 = v285[i];
    if (v201)
    {
      obj_async_wait(v201);
      obj_release(v285[i]);
    }
  }

  if ((v7 & 2) == 0)
  {
    pthread_mutex_unlock(v276 + 6);
  }

LABEL_354:
  if (v14)
  {
    _apfs_free(v14, 8 * v250[10]);
  }

  if (v12)
  {
    _apfs_free(v12, 16 * v250[10]);
  }

  obj_release(&v276->__sig);
LABEL_359:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v10;
}

uint64_t sub_100018900(void *a1, unint64_t a2, int64_t a3)
{
  v22 = 0;
  if (spaceman_get(a1, &v22) || (v13 = spaceman_extent_check(a1, v22, a2, a3), obj_release(v22), !v13))
  {
    a1[120] += a3;
    if (a3 < 2)
    {
      v8 = 0;
    }

    else
    {
      v6 = 0;
      v7 = a3;
      do
      {
        v8 = v6 + 1;
        if (v7 < 4)
        {
          break;
        }

        v7 >>= 2;
      }

      while (v6++ < 4);
    }

    ++a1[v8 + 121];
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    dev_unmap(a1[48]);
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (nx_ratelimit_log_allowed(a1))
  {
    v21 = a1[48] + 212;
    log_err("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", v14, v15, v16, v17, v18, v19, v20, "spaceman_trim_free_extent_callback");
  }

  return 0;
}

uint64_t sub_100018A90(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 < v3;
  v5 = v2 > v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_100018AA8(uint64_t a1)
{
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  dev_unmap_flush(*(a1 + 384));
  v5.tv_sec = 0;
  v5.tv_nsec = 0;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_100018B5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t spaceman_scan_free_blocks(void *a1, int a2, unsigned int a3)
{
  dev_features(a1[48]);
  v6 = 0;
  if (a3)
  {
    if (a2)
    {
      v7 = 2;
    }

    else
    {
      v7 = 0;
    }

    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[118] = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v6 = spaceman_iterate_free_extents_internal(a1, v7 | a3, 0, 0, a1);
    __tp.tv_sec = 0;
    __tp.tv_nsec = 0;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000 - a1[118];
    v17 = a1[48] + 212;
    log_debug("%s:%d: %s scan took %lld.%06lld s (no trims)\n", v9, v10, v11, v12, v13, v14, v15, "spaceman_scan_free_blocks");
  }

  return v6;
}

uint64_t spaceman_free_queue_key_cmp(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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
        v10 = v8 < v9;
        v7 = v8 > v9;
        if (v10)
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

uint64_t spaceman_fq_tree_find_overlap(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v37 = 0;
  v13 = spaceman_fq_tree_get();
  if (v13)
  {
    v21 = v13;
    v36 = *(v7 + 208);
    v34 = *(a1 + 384) + 212;
    log_err("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", v14, v15, v16, v17, v18, v19, v20, "spaceman_fq_tree_find_overlap");
  }

  else
  {
    v22 = *(v7 + 216);
    if (v22 > obj_xid(a2))
    {
LABEL_23:
      v21 = 0;
    }

    else
    {
      v23 = a5 + a4;
      do
      {
        v37 = 0x1000000008;
        v38 = v22;
        v39 = a4;
        v24 = bt_lookup_variant(v41, 0, &v38, &v37 + 1, 0x10u, &v40, &v37, 1u, 0, 0);
        if (v24 != 2)
        {
          v21 = v24;
          if (v24)
          {
            break;
          }

          if (!v37)
          {
            v40 = 1;
          }

          if (v22 == v38 && v40 + v39 > a4 && v23 > v39)
          {
            goto LABEL_27;
          }
        }

        v37 = 0x1000000008;
        v38 = v22;
        v39 = a4;
        v32 = bt_lookup_variant(v41, 0, &v38, &v37 + 1, 0x10u, &v40, &v37, 4u, 0, 0);
        v21 = v32;
        if (v32 != 2)
        {
          if (v32)
          {
            break;
          }

          if (!v37)
          {
            v40 = 1;
          }

          if (v22 == v38 && v40 + v39 > a4 && v23 > v39)
          {
LABEL_27:
            v21 = 0;
            *a6 = 1;
            goto LABEL_24;
          }
        }

        ++v22;
      }

      while (v22 <= obj_xid(a2));
      if ((v21 | 2) == 2)
      {
        goto LABEL_23;
      }

      v35 = *(a1 + 384) + 212;
      log_err("%s:%d: %s error searching spaceman free queue tree: %d\n", v25, v26, v27, v28, v29, v30, v31, "spaceman_fq_tree_find_overlap");
    }

LABEL_24:
    obj_release(v41);
  }

  return v21;
}