uint64_t spaceman_space_info_on_tier(void *a1, unsigned int a2, uint64_t a3)
{
  if (a2 > 1)
  {
    return 22;
  }

  v16 = 0;
  v3 = spaceman_get(a1, &v16);
  if (!v3)
  {
    v6 = *&v16[5].__opaque[48];
    pthread_mutex_lock(v16 + 9);
    v7 = (v6 + 48 * a2);
    v8 = v7[7];
    *a3 = v7[6];
    v9 = v16;
    v10 = &v16->__sig + a2;
    v11 = 80;
    if (!a2)
    {
      v11 = 40;
    }

    v12 = *(v6 + v11 + 200);
    *(a3 + 8) = v7[9] - v10[104];
    *(a3 + 16) = v12;
    *(a3 + 24) = v10[104];
    *(a3 + 32) = v10[106];
    *(a3 + 40) = v8;
    v13 = v7[8];
    *&v14 = v13;
    *(&v14 + 1) = HIDWORD(v13);
    *(a3 + 48) = v14;
    pthread_mutex_unlock(v9 + 9);
    obj_release(&v16->__sig);
  }

  return v3;
}

uint64_t spaceman_info(uint64_t a1, _DWORD *a2, unint64_t *a3, void *a4, void *a5, unint64_t *a6, unint64_t *a7)
{
  v13 = a1;
  if (obj_type(a1) == 13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (v14)
  {
    v13 = v14[49];
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  v15 = spaceman_get(v13, &v58);
  if (!v15)
  {
    v16 = *&v58[5].__opaque[48];
    spaceman_entitled_reserve_active(v13, v58);
    pthread_mutex_lock(v58 + 9);
    if (a2)
    {
      *a2 = *(v16 + 32);
    }

    v17 = v58;
    v18 = *&v58[5].__opaque[48];
    if (v14)
    {
      v19 = v14[51];
      v20 = v14[47];
      v22 = v20[10];
      v21 = v20[11];
      v23 = v21 + v19;
      v24 = v20[9];
      v25 = v22 - (v21 + v19);
      if (v22 < v21 + v19)
      {
        v25 = 0;
      }

      if (v24 - v21 >= v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24 - v21;
      }

      if (v22 <= v23)
      {
        v27 = v24 - v21;
      }

      else
      {
        v27 = v26;
      }

      v28 = v27 >= v19;
      v29 = v27 - v19;
      if (!v28)
      {
        v29 = 0;
      }

      if (v24 > v21)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }
    }

    else
    {
      v23 = 0;
      v30 = 0;
      v25 = 0;
    }

    v31 = v18[30] + v18[9] + *&v58[15].__opaque[16] + v18[15] + v18[35] + *&v58[15].__opaque[24];
    v32 = v18[23];
    v33 = v18[24];
    v28 = v32 >= v33;
    v34 = v32 - v33;
    if (!v28)
    {
      v34 = 0;
    }

    v35 = *v58[13].__opaque + v58[13].__sig;
    v36 = *&v58[13].__opaque[24];
    v28 = v35 >= v36;
    v37 = v35 - v36;
    if (!v28)
    {
      v37 = 0;
    }

    v38 = v37 + v34;
    v28 = v31 >= v38;
    v39 = v31 - v38;
    if (!v28)
    {
      v39 = 0;
    }

    if (*&v58[25].__opaque[8])
    {
      v40 = *&v58[25].__opaque[24];
      v28 = v37 >= v40;
      v41 = v37 - v40;
      if (!v28)
      {
        v41 = 0;
      }

      v42 = *&v58[25].__opaque[16];
      v43 = *&v58[25].__opaque[32];
      v28 = v42 >= v43;
      v44 = v42 - v43;
      if (!v28)
      {
        v44 = 0;
      }

      v28 = v44 >= v40;
      v45 = v44 - v40;
      if (!v28)
      {
        v45 = 0;
      }

      v46 = *&v58[25].__opaque[40];
      v47 = *&v58[25].__opaque[48];
      v28 = v46 >= v47;
      v48 = v46 - v47;
      if (!v28)
      {
        v48 = 0;
      }

      v28 = v48 >= v41;
      v49 = v48 - v41;
      if (!v28)
      {
        v49 = 0;
      }

      v50 = v49 + v45;
      v28 = v39 >= v50;
      v51 = v39 - v50;
      if (!v28)
      {
        v51 = 0;
      }

      v52 = v49 + v30 + v51;
      if (v14)
      {
LABEL_44:
        v53 = v14[47];
        v54 = *(v53 + 80);
        if (v52 < v25)
        {
          v25 = v52;
        }

        if (!v54)
        {
          v25 = v52;
        }

        if (a3)
        {
          v55 = v18[6] - v32 + v18[12] + *(v53 + 72);
          if (v54 >= v55)
          {
            v56 = v55;
          }

          else
          {
            v56 = *(v53 + 80);
          }

          if (v54)
          {
            v55 = v56;
          }

          *a3 = v55;
        }

        if (a6)
        {
          *a6 = v25;
        }

        if (a4)
        {
          *a4 = *(v53 + 72);
        }

        if (a5)
        {
          *a5 = *(v53 + 80);
        }

        if (!a7)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else
    {
      v52 = v39 + v30;
      if (v14)
      {
        goto LABEL_44;
      }
    }

    if (a3)
    {
      *a3 = *(v16 + 96) + *(v16 + 48);
    }

    if (a4)
    {
      *a4 = *(v16 + 184);
    }

    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = v31 - (v17[13].__sig + *v17[13].__opaque);
    }

    if (!a7)
    {
      goto LABEL_75;
    }

    v23 = *(v16 + 48) - v31 + *(v16 + 96) + v17[13].__sig + *v17[13].__opaque;
LABEL_74:
    *a7 = v23;
LABEL_75:
    pthread_mutex_unlock(v17 + 9);
    obj_release(&v58->__sig);
  }

  return v15;
}

uint64_t spaceman_free_up_some_blocks(void *a1, void *a2, unint64_t a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v6;
  v11[3] = v6;
  v11[0] = v6;
  v11[1] = v6;
  if (spaceman_get(a1, &v12))
  {
    return 0;
  }

  v8 = *&v12[5].__opaque[48];
  sub_1000672B8(a1, v11, 0, 0);
  pthread_mutex_lock(v12 + 7);
  sub_1000673B0(a1, v12, 0, 1, v11, a3);
  pthread_mutex_unlock(v12 + 7);
  pthread_mutex_lock(v12 + 8);
  v9 = sub_1000673B0(a1, v12, 2u, 1, v11, a3);
  v7 = sub_1000673B0(a1, v12, 1u, 1, v11, a3) + v9;
  *a2 = *(v8 + 240) + *(v8 + 280);
  pthread_mutex_unlock(v12 + 8);
  sub_100067BC8(a1, v11);
  obj_release(&v12->__sig);
  return v7;
}

uint64_t sub_1000672B8(uint64_t result, uint64_t a2, int a3, int a4)
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

uint64_t sub_1000673B0(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, unint64_t a6)
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
      __rqtp = xmmword_10009DDA0;
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
  if (!spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v69) && v69)
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
        sub_100070204(a1, a2, v19, v6, a6);
      }

      else
      {
        dev_unmap_flush(*(a1 + 384));
        if (v19)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_10006FF40(a1, v6);
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
          if (spaceman_fq_over_threshold(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = spaceman_extent_check(a1, a2, v68[1], v68[2]);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            sub_1000700C0(a1, a2, v19, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_59:
            if (nx_ratelimit_log_allowed(a1))
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
          sub_1000700C0(a1, a2, v19, v24);
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
              sub_100070204(a1, a2, v19, v6, a6);
            }

            goto LABEL_80;
          }

          dev_unmap(*(a1 + 384));
          sub_1000705A8(a1, a2, v30, v24, 1, a6);
        }

        else
        {
          sub_1000700C0(a1, a2, 0, v24);
          v29 = sub_100070180(a1, a2, v68[1], v24, 0);
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
              sub_10006FF40(a1, v6);
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
                  sub_100070368(a1, a2, *(*(a2 + 1544) + v47), *(*(a2 + 1544) + v47 + 8), a6);
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
          sub_100070368(a1, a2, v36, v24, a6);
        }

        sub_10006FF40(a1, v6);
      }

      else
      {
        log_err("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v19, v68[0], v68[1], v24, a6);
        if (v19)
        {
          pthread_mutex_lock((a2 + 576));
          sub_1000700C0(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_1000700C0(a1, a2, 0, v24);
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

uint64_t sub_100067BC8(uint64_t a1, uint64_t a2)
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

void spaceman_manage_free_queues(void *a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v4;
  *&v12[16] = v4;
  v10 = v4;
  v11 = v4;
  v5 = *(a2 + 16);
  if (!spaceman_get(a1, &v13))
  {
    v6 = *&v13[5].__opaque[48];
    sub_1000672B8(a1, &v10, 0, 1);
    pthread_mutex_lock(v13 + 7);
    if (spaceman_fq_over_threshold(a1, v13, 0, 0))
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

      if (!sub_1000673B0(a1, v13, 0, 0, &v10, v5))
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

        if (!sub_1000673B0(a1, v13, 1u, 1, &v10, v5))
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

    if (spaceman_fq_over_threshold(a1, v13, 1u, 0))
    {
        ;
      }
    }

    if (spaceman_fq_over_threshold(a1, v13, 2u, 0))
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

    while (v9 && v5 - v9 > LOWORD(v13[24].__sig) && sub_1000673B0(a1, v13, 2u, 0, &v10, v5));
    sub_100067BC8(a1, &v10);
    *(a2 + 88) = *&v12[8];
    *(a2 + 80) = *v12 - v11;
    pthread_mutex_unlock(v13 + 8);
    obj_release(&v13->__sig);
  }
}

uint64_t spaceman_fq_over_threshold(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0;
  if (!spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = spaceman_fq_tree_over_threshold(a2, a3, v9, a4);
    obj_release(v9);
  }

  return v7;
}

uint64_t spaceman_tx_start_closing(void *a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
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

uint64_t spaceman_tx_complete(uint64_t a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = spaceman_get(a1, &v5);
  if (!result)
  {
    v4 = v5;
    *(v5 + 920) = a2;
    return obj_release(v4);
  }

  return result;
}

uint64_t spaceman_checkpoint_traverse(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = spaceman_fq_tree_get(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = spaceman_fq_tree_get(a1, a3, 2u, 0, 0, &v23);
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

uint64_t spaceman_fq_tree_get(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, atomic_ullong **a6)
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

  result = btree_create(a1, 0x80000000uLL, 6, 9, 0, 0x10u, 8, spaceman_free_queue_key_cmp, a4, a6);
  if (!result)
  {
    *v16 = obj_oid(*a6);
    obj_dirty(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t spaceman_iterate_free_extents_internal(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(uint64_t *a1, unint64_t a2, int64_t a3), uint64_t *a5)
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
  v9 = spaceman_get(v8, &v229);
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

  else if (a4 == sub_100069D44)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11[10];
  }

  v13 = _apfs_malloc_typed(16 * v11[10], 0x1000040F7F8B94BuLL);
  v14 = _apfs_malloc_typed(8 * v11[10], 0x100004000313F17uLL);
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
  v174 = v11 + 12;
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
    v175 = spaceman_free_extent_cache_bitmap_scan_begin(*&v229[24].__opaque[8 * v214 + 32], v173);
    v19 = v219;
    v20 = v11[9];
    if ((a2 & 0x40) == 0)
    {
      v19 = v219 / v20 * v20;
      v219 = v19;
    }

    v170 = v19;
    v21 = &v174[12 * v214];
    v177 = -1;
    v22 = v19 / v20 / v11[10];
    v23 = v17;
    v180 = v21;
LABEL_33:
    v178 = v22;
    if (v22 < v21[4])
    {
      break;
    }

    if (a2)
    {
      if (v228)
      {
        qsort(&v220, 8uLL, 0x10uLL, sub_100069FB8);
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
        v157 = v178 == v174[12 * v214 + 4];
      }

      spaceman_free_extent_cache_bitmap_scan_finished(*&v229[24].__opaque[8 * v158 + 32], v219, v157);
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
  v25 = v11[9];
  v26 = v11[10];
  if (!v183)
  {
    pthread_mutex_lock((v8 + 864));
    if (*(v8 + 639) == 1)
    {
      log_info("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v214, v22, v180[4]);
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
  v27 = v180[5];
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
      v32 = obj_get(*(v8 + 392), 0x140000004, v31, &sm_cab_desc, &v230, 0, 0, 0, &v233);
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
      v23 = *(v233 + 56);
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
    v35 = obj_get(*(v8 + 392), 0x140000004, v34, &sm_cib_desc, &v230, 0, 0, 0, &v232);
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

  v36 = *(v232 + 56);
  if (v210 == sub_100069D44)
  {
    sub_1000672B8(v8, v234, 125, 0);
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

  qsort(__base, __nel, 0x10uLL, sub_100069EE0);
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
      v50 = obj_get(*(v8 + 392), 0x140000080, v49, &sm_bm_desc, 0, 0, 0, 0, &v238[v46]);
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
        v61 = obj_get(*(v8 + 392), 0x140000000, v57, &sm_bm_desc, 0, 0, 0, 0, &v238[v54]);
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
    v205 = v229;
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
          spaceman_free_extent_cache_insert(*&v209[8 * v214], 0, v76, v63);
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
          spaceman_free_extent_cache_insert(*&v209[8 * v214], 0, v79 + v73, v80);
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
            sub_10006FF40(*(v205->__sig + 392), v234);
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
    spaceman_free_extent_cache_insert(*&v209[8 * v214], 0, v95, v63);
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
    if (v98 == *(*&v205[5].__opaque[48] + 36))
    {
      v235 = 0;
      v99 = spaceman_evaluate_chunk_for_disabled_allocation_zones(v205, v214, v88, &v235);
      if (v99)
      {
        v100 = *v205->__opaque;
        if (v100)
        {
          v101 = (v100 + 4040);
        }

        else
        {
          v101 = (*(*(v205->__sig + 392) + 384) + 212);
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

    v122 = obj_get(*(v187 + 392), 0x140000080, v120, &sm_bm_desc, 0, 0, 0, 0, v195);
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

            spaceman_free_extent_cache_insert(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
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

          spaceman_free_extent_cache_insert(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
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
          if (a4 == sub_100069D44)
          {
            sub_100069EF8(v8);
          }

          obj_unlock(v232, 1);
          if (BYTE6(v234[7]) == 1)
          {
            if (sub_100067BC8(v8, v234))
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
              v149 = v11[10];
              v150 = 4 * v12;
              if (v149 < 4 * v12)
              {
                v150 = v11[10];
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

          v21 = &v174[12 * v214];
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

        spaceman_free_extent_cache_insert(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
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
    spaceman_free_extent_cache_bitmap_scan_finished(*&v229[24].__opaque[8 * v214 + 32], v219, 0);
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
    sub_100067BC8(v8, v234);
    if (a4 == sub_100069D44)
    {
      sub_100069EF8(v8);
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
    _apfs_free(v15, 8 * v11[10]);
  }

  if (v13)
  {
    _apfs_free(v13, 16 * v11[10]);
  }

  obj_release(v229);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}

uint64_t sub_100069D44(uint64_t *a1, unint64_t a2, int64_t a3)
{
  v14 = 0;
  if (spaceman_get(a1, &v14) || (v13 = spaceman_extent_check(a1, v14, a2, a3), obj_release(v14), !v13))
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
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    tv_sec = __tp.tv_sec;
    v11 = SLODWORD(__tp.tv_nsec) / 1000;
    dev_unmap(a1[48]);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (nx_ratelimit_log_allowed(a1))
  {
    log_err("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t sub_100069EE0(uint64_t a1, uint64_t a2)
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

uint64_t sub_100069EF8(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  dev_unmap_flush(*(a1 + 384));
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_100069FB8(uint64_t a1, uint64_t a2)
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

uint64_t spaceman_scan_free_blocks(uint64_t *a1, int a2, unsigned int a3)
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

    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[118] = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000;
    v6 = spaceman_iterate_free_extents_internal(a1, v7 | a3, 0, 0, a1);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000 - a1[118];
    v10 = a1[48] + 212;
    log_debug("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
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

uint64_t spaceman_free_queue_key_val_snprintf(char *a1, int a2, uint64_t *a3, int a4, char *a5, int a6, uint64_t *a7, int a8)
{
  if (a4 == 16)
  {
    v12 = *a3;
    v15 = a3[1];
    result = snprintf(a1, a2, "%lld:%lld");
  }

  else
  {
    result = snprintf(a1, a2, "<BAD-KEY-LEN>");
  }

  if (a5)
  {
    if (a8)
    {
      if (a8 == 8)
      {
        v14 = *a7;
        return snprintf(a5, a6, "%lld");
      }

      else
      {

        return snprintf(a5, a6, "<BAD-VAL-LEN>");
      }
    }

    else
    {
      return snprintf(a5, a6, "%d");
    }
  }

  return result;
}

uint64_t spaceman_fq_tree_find_overlap(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
{
  v6 = *(a2 + 376);
  memset(v23, 170, sizeof(v23));
  *a6 = 0;
  v7 = v6 + 40 * a3;
  if (!*(v7 + 208))
  {
    return 0;
  }

  v21 = -1431655766;
  v22 = -1431655766;
  v14 = spaceman_fq_tree_get(a1, a2, a3, 0, 0, &v23[3]);
  if (v14)
  {
    v15 = v14;
    log_err("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", "spaceman_fq_tree_find_overlap", 4969, (*(a1 + 384) + 212), a3, *(v7 + 208), v14);
  }

  else
  {
    v16 = *(v7 + 216);
    if (v16 > obj_xid(a2))
    {
LABEL_23:
      v15 = 0;
    }

    else
    {
      v17 = a5 + a4;
      do
      {
        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v18 = bt_lookup_variant(v23[3], 0, v23, &v22, 0x10u, &v23[2], &v21, 1u, 0, 0);
        if (v18 != 2)
        {
          v15 = v18;
          if (v18)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
            goto LABEL_27;
          }
        }

        v21 = 8;
        v22 = 16;
        v23[0] = v16;
        v23[1] = a4;
        v19 = bt_lookup_variant(v23[3], 0, v23, &v22, 0x10u, &v23[2], &v21, 4u, 0, 0);
        v15 = v19;
        if (v19 != 2)
        {
          if (v19)
          {
            break;
          }

          if (!v21)
          {
            v23[2] = 1;
          }

          if (v16 == v23[0] && v23[2] + v23[1] > a4 && v17 > v23[1])
          {
LABEL_27:
            v15 = 0;
            *a6 = 1;
            goto LABEL_24;
          }
        }

        ++v16;
      }

      while (v16 <= obj_xid(a2));
      if ((v15 | 2) == 2)
      {
        goto LABEL_23;
      }

      log_err("%s:%d: %s error searching spaceman free queue tree: %d\n", "spaceman_fq_tree_find_overlap", 5023, (*(a1 + 384) + 212), v15);
    }

LABEL_24:
    obj_release(v23[3]);
  }

  return v15;
}

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
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
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

  v15 = (a2 + 1512);
  if (*(a2 + 1512))
  {
    goto LABEL_8;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v17 = btree_create(a1, 0x88000000uLL, 0, 0, 0, 8u, 16, extent_list_key_cmp, 0, (a2 + 1512));
  if (v17)
  {
    return v17;
  }

  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[0] = v18;
  v32[1] = v18;
  v32[2] = v18;
  v32[3] = v18;
  v33 = 0xAAAAAAAAAAAAAAAALL;
  v17 = nx_metadata_fragmented_extent_list_tree_get(a1, *(*(a2 + 376) + 176), &v34);
  if (v17)
  {
    return v17;
  }

  v31 = 0;
  bt_iterator_init(v32, v34, 0, 0, &v31, 8, 8u, &v29, 0x10u);
  v13 = v20;
  if (!bt_iterator_ended(v32))
  {
    while (1)
    {
      v27 = v29;
      v28[0] = v31;
      v28[1] = v30;
      v22 = bt_insert(*v15, 0, &v27, 8, v28, 16, 0);
      if (v22)
      {
        break;
      }

      v21 = bt_iterator_next(v32);
      if (v21)
      {
        v13 = v21;
        v23 = (*(a1 + 384) + 212);
        v24 = strerror(v21);
        log_err("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v23, v24, v13);
        goto LABEL_26;
      }

      if (bt_iterator_ended(v32))
      {
        obj_release(v34);
        goto LABEL_8;
      }
    }

    v13 = v22;
LABEL_26:
    obj_release(v34);
    return v13;
  }

  obj_release(v34);
  if (!v13)
  {
LABEL_8:
    *&v32[0] = a3;
    LODWORD(v29) = 8;
    LODWORD(v28[0]) = 16;
    v13 = bt_lookup_variant(*v15, 0, v32, &v29, 8u, &v25, v28, 1u, 0, 0);
    if (v13)
    {
      return v13;
    }

    if (a3 - *&v32[0] >= v26)
    {
      return 2;
    }

    v13 = 0;
    v11 = v25 + a3 - *&v32[0];
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

uint64_t spaceman_alloc(const char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
{
  v164 = 0;
  v162 = 0u;
  v163 = 0u;
  v160 = 0u;
  v161 = 0u;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v150 = v11;
  v151 = v11;
  v149 = v11;
  v166 = 0;
  v147 = 0;
  v12 = 0;
  v13 = a1;
  if (obj_type(a1) == 13)
  {
    v13 = *(a1 + 49);
    v12 = a1;
  }

  BYTE8(v163) = a6 != 0;
  BYTE9(v163) = 1;
  if (a6)
  {
    v14 = a2 | 0x1000;
  }

  else
  {
    v14 = a2 & 0xFFFFEBFF;
  }

  DWORD2(v162) = v14;
  LODWORD(v163) = 0;
  v15 = *(v13 + 376);
  v16 = *(v15 + 1240);
  v17 = a3;
  v155.i64[0] = a3;
  *&v157 = v16;
  v18 = *(v15 + 1248);
  *(&v157 + 1) = v18 + v16;
  if (!v18)
  {
    v157 = 0uLL;
  }

  DWORD1(v163) = 0;
  v19 = *(v13 + 1024);
  v20 = v19 + *(v13 + 1016);
  *&v156 = *(v13 + 1016);
  *(&v156 + 1) = v20;
  if ((*(v13 + 634) & 1) != 0 || !v19)
  {
    v156 = 0uLL;
    if ((v14 & 0x80) == 0)
    {
LABEL_11:
      if ((v14 & 0x200) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_21;
    }
  }

  else if ((v14 & 0x80) == 0)
  {
    goto LABEL_11;
  }

  v14 |= 0x8100u;
  DWORD2(v162) = v14;
  if ((v14 & 0x200) == 0)
  {
LABEL_12:
    if ((v14 & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

LABEL_21:
  v14 |= 0x102u;
  DWORD2(v162) = v14;
  *a5 = *(v13 + 1032);
  if ((v14 & 0x400) != 0)
  {
LABEL_13:
    v14 |= 0x100u;
    DWORD2(v162) = v14;
  }

LABEL_14:
  if (*(v13 + 637) == 1)
  {
    v14 |= 0x900u;
    DWORD2(v162) = v14;
  }

  if ((v14 & 2) != 0)
  {
    v14 &= ~0x40u;
    DWORD2(v162) = v14;
    v137 = *a5;
    if ((v14 & 0x40) != 0)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v137 = 0;
    if ((v14 & 0x40) != 0)
    {
LABEL_18:
      BYTE11(v163) = 1;
      v21 = *a5;
      goto LABEL_25;
    }
  }

  v21 = 3;
LABEL_25:
  v142 = v21;
  *a5 = 0;
  if ((v14 & 4) != 0)
  {
    if (a3 < 1)
    {
      return 22;
    }
  }

  else
  {
    v22 = 22;
    if (!xid_is_current_tx(v13, a4) || a3 < 1)
    {
      return v22;
    }
  }

  v165 = 0xAAAAAAAAAAAAAAAALL;
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v148[0] = v23;
  v148[1] = v23;
  v148[2] = v23;
  v148[3] = v23;
  v22 = spaceman_get(v13, &v165);
  if (v22)
  {
    return v22;
  }

  v24 = v165;
  v136 = v165[47];
  v25 = v165[199];
  if (v25)
  {
    v26 = v155.i64[0];
    v27.i64[0] = vdupq_n_s64(1uLL).u64[0];
    v27.i64[1] = v155.i64[0];
    *v25 = vaddq_s64(*v25, v27);
    if (BYTE11(v163) == 1)
    {
      ++v25[1].i64[0];
      goto LABEL_34;
    }

    if (v26 > 2)
    {
      if (v26 == 4)
      {
        v28 = 7;
      }

      else
      {
        if (v26 != 3)
        {
LABEL_34:
          if (v26 <= 1)
          {
            goto LABEL_49;
          }

          goto LABEL_46;
        }

        v28 = 6;
      }
    }

    else
    {
      if (v26 == 1)
      {
        v29 = 2;
LABEL_48:
        ++v25[v29].i64[0];
        goto LABEL_49;
      }

      if (v26 != 2)
      {
        goto LABEL_34;
      }

      v28 = 5;
    }

    ++v25->i64[v28];
LABEL_46:
    if (BYTE8(v163))
    {
      goto LABEL_49;
    }

    v29 = 4;
    goto LABEL_48;
  }

LABEL_49:
  v30 = DWORD2(v162);
  if ((WORD4(v162) & 0x200) != 0)
  {
    v31 = *(v136 + 48 * DWORD1(v163) + 48);
    *&v156 = *(&v156 + 1);
    *(&v156 + 1) = v31;
  }

  if ((BYTE8(v163) & 1) == 0 && v155.i64[0] >= *(v136 + 96) + *(v136 + 48))
  {
    v22 = 28;
LABEL_289:
    v112 = v165;
    v113 = v165[199];
    if (v113)
    {
      ++*(v113 + 72);
    }

    obj_release(v112);
    return v22;
  }

  if ((BYTE8(v162) & 2) != 0 && v137 >= *(v136 + 48))
  {
    v30 = DWORD2(v162) & 0xFFFFFFFD;
    DWORD2(v162) &= ~2u;
  }

  if ((v30 & 0x1A) == 2)
  {
    v30 |= 8u;
    DWORD2(v162) = v30;
  }

  v22 = sub_10006BF20(v24, v30, &v166, &v147, (*(*(v13 + 376) + 48) >> 1) & 1);
  if (v22)
  {
    goto LABEL_289;
  }

  pthread_mutex_lock(v165 + 6);
  if (BYTE11(v163) & 1) != 0 || (BYTE9(v162))
  {
    BYTE9(v163) = 0;
  }

  v135 = v12;
  v131 = a5;
  if (!v165[187])
  {
    DWORD2(v162) |= 0x100u;
  }

  v32 = 0;
  v134 = a1 + 4040;
  v33 = v136 + 48;
  v132 = 2;
  v133 = 0;
LABEL_65:
  v139 = v147;
  v34 = v133;
  while (2)
  {
    v35 = v17;
    v133 = v34;
    v143 = v32;
    while (1)
    {
      do
      {
        while (1)
        {
          v32 = v143;
          v36 = v35;
          if (v139 > v143)
          {
            goto LABEL_77;
          }

          if (BYTE9(v163) == 1)
          {
            BYTE9(v163) = 0;
            if (!v156)
            {
              v32 = 0;
              goto LABEL_77;
            }
          }

          else if (!v156)
          {
            goto LABEL_287;
          }

          if ((BYTE9(v162) & 2) == 0)
          {
            v37 = obj_type(a1);
            v38 = a1 + 4040;
            if (v37 != 13)
            {
              v38 = (*(a1 + 48) + 212);
            }

            log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v38);
            *(v13 + 634) = 1;
            *(v13 + 1048) = 0;
          }

          v32 = 0;
          v156 = 0uLL;
LABEL_77:
          v39 = *(&v166 + v32);
          HIDWORD(v162) = v39;
          v143 = v32 + 1;
          BYTE12(v163) = 0;
          v41 = v39 == DWORD1(v163) && *(&v156 + 1) != 0;
          BYTE10(v163) = v41;
          v155 = v35;
          if ((v14 & 4) != 0)
          {
            v42 = v35;
            goto LABEL_85;
          }

          v46 = DWORD2(v162);
          v47 = v165;
          if (BYTE8(v162))
          {
            v49 = &v165[v39];
            if ((BYTE8(v162) & 0x40) != 0)
            {
              v51 = v49[106];
              v42 = v35;
              if (v51 >= v35)
              {
                goto LABEL_85;
              }

              v104 = obj_type(a1);
              if (v104 == 13)
              {
                v105 = &v165[HIDWORD(v162)];
                v127 = v105[106];
                v129 = v105[104];
              }

              else
              {
                v110 = *(a1 + 48) + 212;
                v111 = &v165[HIDWORD(v162)];
                v128 = v111[106];
                v130 = v111[104];
              }

              log_err("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v50 = v49[104] - v49[106];
              v42 = v35;
              if (v50 >= v35)
              {
                goto LABEL_85;
              }

              v103 = obj_type(a1);
              if (v103 != 13)
              {
                v109 = *(a1 + 48) + 212;
              }

              v126 = v165[HIDWORD(v162) + 104] - v165[HIDWORD(v162) + 106];
              log_err("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_287:
            v22 = 28;
            goto LABEL_288;
          }

          if ((DWORD2(v162) & 0x30000) == 0)
          {
            spaceman_entitled_reserve_active(v13, v165);
            v47 = v165;
            LODWORD(v39) = HIDWORD(v162);
            v46 = DWORD2(v162);
          }

          v48 = sub_10006BFF8(v13, v135, v47, v39, v46, v155.i64, a4);
          if (v48 != 7)
          {
            break;
          }

          if (v139 <= v143)
          {
            BYTE9(v163) = 0;
          }
        }

        v22 = v48;
        if (v48)
        {
          goto LABEL_288;
        }

        LODWORD(v39) = HIDWORD(v162);
        v42 = v155.i64[0];
LABEL_85:
        v43 = 0;
        v140 = v165[13 * v39 + 139] & BYTE11(v163);
        if ((v140 & 1) == 0 && (v42 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
        {
          v43 = v42 - 1;
          v44 = &v165[17 * v39 + 153];
          if (LOBYTE(v44[4 * v43 + 3]) == 1 && (BYTE9(v162) & 1) == 0)
          {
            BYTE12(v163) = 1;
            metazone_alloc_index = v44[4 * v43];
LABEL_98:
            *(&v159 + 1) = metazone_alloc_index;
            goto LABEL_113;
          }
        }

        if (((v165[13 * v39 + 139] & BYTE11(v163)) & (v142 < 3)) == 1)
        {
          metazone_alloc_index = spaceman_get_metazone_alloc_index(v165, v39, v142);
          goto LABEL_98;
        }

        if (v39 || (BYTE8(v162) & 2) == 0)
        {
          if ((WORD4(v162) & 0x800) == 0)
          {
            metazone_alloc_index = v165[v39 + 125];
            goto LABEL_98;
          }

          metazone_alloc_index = 0;
          *(&v159 + 1) = 0;
        }

        else
        {
          metazone_alloc_index = v137;
          v155.i64[1] = v137;
          *(&v159 + 1) = v137;
        }

        DWORD2(v162) |= 0x4000u;
LABEL_113:
        if (BYTE12(v163))
        {
          v52 = v165;
          v53 = HIDWORD(v162);
          if ((BYTE9(v162) & 1) != 0 || v155.i64[0] <= (*(v165[HIDWORD(v162) + 187] + 4 * (metazone_alloc_index / *(v136 + 36))) & 0xFFFFFFu))
          {
            v54 = 1;
          }

          else
          {
            v54 = 0;
            BYTE12(v163) = 0;
          }
        }

        else
        {
          v54 = 0;
          v52 = v165;
          v53 = HIDWORD(v162);
        }

        BYTE14(v163) = 0;
        v158 = 0uLL;
        v160 = 0uLL;
        *(&v161 + 1) = 0;
        *&v162 = 0;
        v55 = v52[v53 + 197];
        v56 = BYTE11(v163);
        v138 = v43;
        if (!v55 || (BYTE11(v163) & 1) != 0 || (v54 & 1) != 0)
        {
          goto LABEL_145;
        }

        if ((WORD4(v162) & 0x8400) != 0)
        {
          goto LABEL_146;
        }

        v158 = vextq_s8(v155, v155, 8uLL);
        BYTE14(v163) = 1;
        if (BYTE9(v163))
        {
          v57 = DWORD2(v162) | 0x2000;
        }

        else
        {
          v57 = DWORD2(v162) & 0xFFFF5BFF;
        }

        DWORD2(v162) = v57;
        v58 = spaceman_free_extent_cache_search(v55, v57, v158.i64, &v158.u64[1]);
      }

      while (v58 == 28);
      v59 = v158.u64[1];
      v60 = v158.i64[0];
      if (v158.i64[1] && !v158.i64[0])
      {
        v158 = 0uLL;
        v59 = 0;
      }

      v53 = HIDWORD(v162);
      if (v132 == HIDWORD(v162))
      {
        v61 = 0;
      }

      else
      {
        v61 = 3;
      }

      if (v58 != 3)
      {
        v61 = v58;
      }

      if (v61 == 3)
      {
        *&v85 = 0xAAAAAAAAAAAAAAAALL;
        *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v145 = v85;
        v146 = v85;
        v144 = v85;
        *&v144 = v165[HIDWORD(v162) + 197];
        *(&v144 + 1) = v155.i64[0];
        *&v145 = v59;
        *(&v145 + 1) = spaceman_free_extent_cache_search_better_length(SWORD4(v162), v155.u64[0], v59);
        *&v146 = 0;
        *(&v146 + 1) = DWORD2(v162);
        v86 = v165;
        v87 = &v165[HIDWORD(v162)];
        v88 = v87 + 102;
        v89 = v87[102];
        if ((v89 & 0x10) != 0)
        {
          v90 = v87[102];
          do
          {
            *v88 = v90 | 0x20;
            cv_wait(v86 + 16, v86 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
            v86 = v165;
            v91 = &v165[HIDWORD(v162)];
            v88 = v91 + 102;
            v90 = v91[102];
          }

          while ((v90 & 0x10) != 0);
          *v88 = v90 | 0x10;
          if ((v89 & 0x10) == 0 || *(v91[197] + 128) < *(&v145 + 1))
          {
            goto LABEL_245;
          }

          v22 = 0;
        }

        else
        {
          *v88 = v89 | 0x10;
LABEL_245:
          pthread_mutex_unlock(v86 + 6);
          v132 = HIDWORD(v162);
          if (HIDWORD(v162) == 1)
          {
            v92 = 42;
          }

          else
          {
            v92 = 38;
          }

          v93 = spaceman_iterate_free_extents_internal(v13, v92, 0, sub_10006C34C, &v144);
          pthread_mutex_lock(v165 + 6);
          if (v93 == 34 || v93 == 37)
          {
            v95 = 0;
          }

          else
          {
            v95 = v93;
          }

          if (v93 == HIDWORD(v146))
          {
            v22 = v95;
          }

          else
          {
            v22 = v93;
          }
        }

        v17 = a3;
        v158 = 0uLL;
        v96 = v165;
        v97 = HIDWORD(v162);
        v98 = v165[HIDWORD(v162) + 102];
        if ((v98 & 0x20) != 0)
        {
          cv_wakeup(v165 + 16);
          v96 = v165;
          v97 = HIDWORD(v162);
          v98 = v165[HIDWORD(v162) + 102];
        }

        v96[v97 + 102] = v98 & 0xFFFFFFFFFFFFFFCFLL;
        if (v22)
        {
LABEL_288:
          pthread_mutex_unlock(v165 + 6);
          goto LABEL_289;
        }

        goto LABEL_65;
      }

      v36 = v35;
      if (!v61 && v59 && v60)
      {
        *(&v161 + 1) = v60;
        *&v162 = v59;
        if (BYTE10(v163) != 1)
        {
          goto LABEL_143;
        }

        v22 = 0;
        if ((BYTE9(v162) & 2) == 0 && v60 < *(&v156 + 1))
        {
          if ((v59 + v60) < v156)
          {
LABEL_143:
            v22 = 0;
            goto LABEL_207;
          }

          v77 = obj_type(a1);
          v78 = a1 + 4040;
          if (v77 != 13)
          {
            v78 = (*(a1 + 48) + 212);
          }

          log_debug("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v78);
          v22 = 0;
          *(v13 + 634) = 1;
          *(v13 + 1048) = 0;
        }

        goto LABEL_207;
      }

      DWORD2(v162) |= 0x100u;
      v56 = BYTE11(v163);
LABEL_145:
      if ((v56 & 1) == 0)
      {
LABEL_146:
        if ((BYTE12(v163) & 1) == 0 && v165[v53 + 187] && (BYTE9(v162) & 1) == 0)
        {
          *&v149 = *(&v159 + 1);
          *(&v149 + 1) = v155.i64[0];
          LOBYTE(v150) = BYTE9(v163);
          BYTE8(v151) = BYTE8(v163) ^ 1;
          *(&v150 + 1) = 0;
          *&v151 = 0;
          if (BYTE10(v163) == 1)
          {
            *(&v150 + 1) = v156;
            *&v151 = *(&v156 + 1) - v156;
          }

          sub_10006C3C4(v165, v53, &v149, &v152);
          if (v62)
          {
            v63 = v62;
            BYTE9(v163) = 0;
            if (v62 != 28)
            {
              if (obj_type(a1) == 13)
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v134, v63);
              }

              else
              {
                log_err("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (*(a1 + 48) + 212), v63);
              }
            }
          }

          else
          {
            BYTE13(v163) = 1;
            BYTE9(v163) = v153;
            *(&v159 + 1) = v152;
            if (BYTE8(v163) == 1)
            {
              v155.i64[0] = *(&v152 + 1);
            }
          }

          v36 = a3;
          if ((BYTE9(v163) & 1) == 0 && BYTE10(v163) == 1)
          {
            if ((BYTE9(v162) & 2) == 0)
            {
              *(v13 + 634) = 1;
              *(v13 + 1048) = 0;
            }

            v156 = 0uLL;
          }
        }

        goto LABEL_167;
      }

      do
      {
LABEL_167:
        v64 = HIDWORD(v162);
        if (HIDWORD(v162) == v163 && *(&v159 + 1) >= v157 && *(&v159 + 1) < *(&v157 + 1))
        {
          *(&v159 + 1) = *(&v157 + 1);
          if ((BYTE14(v163) & 1) == 0 && HIDWORD(v162) == DWORD1(v163) && *(&v157 + 1) >= v156 && *(&v157 + 1) < *(&v156 + 1))
          {
            *(&v159 + 1) = *(&v156 + 1);
          }
        }

        if ((BYTE14(v163) & 1) == 0 && HIDWORD(v162) == DWORD1(v163) && *(&v159 + 1) >= v156 && *(&v159 + 1) < *(&v156 + 1))
        {
          *(&v159 + 1) = *(&v156 + 1);
          if (HIDWORD(v162) == v163 && *(&v156 + 1) >= v157 && *(&v156 + 1) < *(&v157 + 1))
          {
            *(&v159 + 1) = *(&v157 + 1);
          }
        }

        v65 = v165[HIDWORD(v162) + 197];
        if (v65)
        {
          if (BYTE14(v163))
          {
            v66 = &v159 + 1;
          }

          else
          {
            v66 = 0;
          }

          HIBYTE(v163) = spaceman_free_extent_cache_bitmap_scan_begin(v65, v66);
          LOBYTE(v164) = 0;
          v64 = HIDWORD(v162);
        }

        else
        {
          HIBYTE(v163) = 0;
        }

        v67 = *(&v159 + 1);
        if (*(&v159 + 1) >= *(v33 + 48 * v64))
        {
          v67 = 0;
          *(&v159 + 1) = 0;
        }

        *&v159 = v67;
        v68 = sub_10006C7C8(a1, v13, v165, &v152);
      }

      while (v68 == 3);
      v22 = v68;
      if ((v164 & 0x100) != 0)
      {
        if (!HIBYTE(v163))
        {
          goto LABEL_207;
        }

        v69 = BYTE14(v163) == 1 ? *(v165[47] + 48 * HIDWORD(v162) + 48) : 0;
        v71 = v165[HIDWORD(v162) + 197];
        v72 = 1;
      }

      else
      {
        if (!HIBYTE(v163))
        {
          goto LABEL_207;
        }

        if (BYTE14(v163) == 1)
        {
          v69 = v159;
          if (!v68 && v159 > *(&v159 + 1))
          {
            v70 = *(&v160 + 1) || !v162 ? v161 + *(&v160 + 1) + v160 : *(&v161 + 1) + v162;
            if (v159 <= v70)
            {
              v69 = v70;
            }
          }
        }

        else
        {
          v69 = 0;
        }

        v71 = v165[HIDWORD(v162) + 197];
        v72 = 0;
      }

      spaceman_free_extent_cache_bitmap_scan_finished(v71, v69, v72);
      HIBYTE(v163) = 0;
LABEL_207:
      v35 = v36;
      v73 = v32;
      v74 = *(&v160 + 1);
      if (*(&v160 + 1))
      {
        if (v22)
        {
          goto LABEL_279;
        }

        v79 = v160 + v161;
        goto LABEL_226;
      }

      v74 = v162;
      if (v22 || v162)
      {
        break;
      }

      if (BYTE1(v164) != 1)
      {
        v74 = 0;
        v79 = 0;
        goto LABEL_226;
      }

      if ((v14 & 4) == 0)
      {
        pthread_mutex_unlock(v165 + 6);
        pthread_mutex_lock(v165 + 8);
        sub_1000672B8(v13, v148, 0, 0);
        v75 = sub_1000673B0(v13, v165, HIDWORD(v162) + 1, 1, v148, a4);
        v76 = v143;
        if (v75)
        {
          v76 = v73;
        }

        v143 = v76;
        sub_100067BC8(v13, v148);
        pthread_mutex_unlock(v165 + 8);
        pthread_mutex_lock(v165 + 6);
      }
    }

    if (v162)
    {
      v79 = *(&v161 + 1);
    }

    else
    {
      v79 = 0;
    }

    if (v22)
    {
      goto LABEL_279;
    }

LABEL_226:
    v80 = spaceman_extent_check(v13, v165, v79, v74);
    if (v80)
    {
      v106 = v80;
      if (nx_ratelimit_log_allowed(*(*a1 + 392)))
      {
        v107 = obj_type(a1);
        v108 = a1 + 4040;
        if (v107 != 13)
        {
          v108 = (*(a1 + 48) + 212);
        }

        log_err("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v108, v79, v74, v106);
      }

      v22 = nx_corruption_detected_int(v13);
LABEL_279:
      pthread_mutex_unlock(v165 + 6);
      v99 = v131;
      v100 = a6;
      if (v22)
      {
        goto LABEL_289;
      }

      goto LABEL_318;
    }

    v81 = v79 + v74;
    if (v79 + v74 >= *(v33 + 48 * HIDWORD(v162)))
    {
      v81 = 0;
    }

    *&v159 = v81;
    if ((v14 & 4) == 0 && v74 >= 1)
    {
      if (*(v13 + 627))
      {
        v22 = 30;
        goto LABEL_288;
      }

      v82 = obj_modify(v165, 0, a4);
      if (v82)
      {
        v22 = v82;
        goto LABEL_288;
      }

      v22 = sub_10006D808(v13, v135, v165, v79, v74, a4, 0, SDWORD2(v162));
      spaceman_free_extent_cache_remove(v165[HIDWORD(v162) + 197], v79, v74);
      if (v22)
      {
        v83 = obj_type(a1);
        v84 = a1 + 4040;
        if (v83 != 13)
        {
          v84 = (*(a1 + 48) + 212);
        }

        log_err("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v84, v79, v74, v22);
        if (BYTE14(v163) != 1)
        {
          goto LABEL_288;
        }

        spaceman_free_extent_cache_reset(v165[HIDWORD(v162) + 197]);
        v34 = 1;
        v32 = v73;
        v17 = a3;
        if (v133)
        {
          goto LABEL_288;
        }

        continue;
      }
    }

    break;
  }

  v99 = v131;
  *v131 = v79;
  v100 = a6;
  if (a6)
  {
    *a6 = v74;
  }

  v101 = v165;
  v102 = v165[199];
  if (v102)
  {
    v102[10] += v74;
    if (v74 < a3)
    {
      ++v102[11];
    }

    if (BYTE12(v163))
    {
      ++v102[3];
      goto LABEL_294;
    }

LABEL_299:
    if ((WORD4(v162) & 0x200) != 0)
    {
      v117 = *(v13 + 1016);
      if (HIDWORD(v162) || v159 < v117 || v159 >= *(v13 + 1024) + v117)
      {
        *(v13 + 1032) = v117;
      }

      else
      {
        *(v13 + 1032) = v159;
      }
    }

    else
    {
      v116 = HIDWORD(v162);
      if ((WORD4(v162) & 0x142) == 0 || HIDWORD(v162))
      {
        v118 = v159;
        v101[HIDWORD(v162) + 125] = v159;
        if (BYTE9(v163) == 1 && spaceman_should_avoid_data_allocation_at_block(v101, v116, v118, 5))
        {
          *&v149 = v159;
          *(&v149 + 1) = 1;
          LOBYTE(v150) = 1;
          BYTE8(v151) = 1;
          *(&v150 + 1) = 0;
          *&v151 = 0;
          sub_10006C3C4(v165, HIDWORD(v162), &v149, &v152);
          if (v119)
          {
            if (v119 != 28)
            {
              if (obj_type(a1) != 13)
              {
                v125 = *(a1 + 48) + 212;
              }

              log_err("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
            }
          }

          else if (*(&v152 + 1) >= 1)
          {
            v165[HIDWORD(v162) + 125] = v152;
          }
        }
      }

      else if (v140)
      {
        spaceman_update_metazone_alloc_index(v101, 0, v142, v159);
      }
    }
  }

  else
  {
    if ((BYTE12(v163) & 1) == 0)
    {
      goto LABEL_299;
    }

LABEL_294:
    if ((*(v101[HIDWORD(v162) + 187] + 4 * (v101[17 * HIDWORD(v162) + 153 + 4 * v138] / *(v136 + 36))) & 0xFFFFFFu) <= v138)
    {
      new_chunk_for_allocation_zone = spaceman_get_new_chunk_for_allocation_zone(v13, v101, HIDWORD(v162), v138);
      if (new_chunk_for_allocation_zone)
      {
        if (new_chunk_for_allocation_zone != 28)
        {
          if (obj_type(a1) != 13)
          {
            v120 = *(a1 + 48) + 212;
          }

          log_err("%s:%d: %s failed to update chunk for alloc zone %d: %d\n");
        }
      }
    }
  }

  pthread_mutex_unlock(v165 + 6);
LABEL_318:
  obj_release(v165);
  if ((BYTE8(v162) & 4) != 0)
  {
    return 0;
  }

  v22 = 0;
  if ((WORD4(v162) & 0x200) != 0)
  {
    return v22;
  }

  v121 = *(v13 + 1024);
  if (!v121)
  {
    return v22;
  }

  v122 = *(v13 + 1016);
  if (*v99 >= v122 && *v99 < v122 + v121)
  {
    return 0;
  }

  if (*(v13 + 634) == 1)
  {
    v123 = &v155;
    if (v100)
    {
      v123 = v100;
    }

    v124 = *(v13 + 1048) + v123->i64[0];
    *(v13 + 1048) = v124;
    if (v124 >= 0x401)
    {
      if (obj_type(a1) != 13)
      {
        v134 = (*(a1 + 48) + 212);
      }

      log_debug("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v134);
      v22 = 0;
      *(v13 + 634) = 0;
      return v22;
    }

    return 0;
  }

  if (!v100 || 10000 * v100->i64[0] >= v155.i64[0] || v100->i64[0] * *(*(v13 + 376) + 36) >= 0x40000)
  {
    return 0;
  }

  if (obj_type(a1) != 13)
  {
    v134 = (*(a1 + 48) + 212);
  }

  log_debug("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v134, v155.i64[0], v100->i64[0]);
  v22 = 0;
  *(v13 + 634) = 1;
  *(v13 + 1048) = 0;
  return v22;
}

uint64_t sub_10006BF20(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
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

uint64_t sub_10006BFF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7)
{
  v55 = *a6;
  if (*a6 < 1)
  {
    return 0;
  }

  v13 = *(a3 + 376);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v59[2] = v14;
  v59[3] = v14;
  v59[0] = v14;
  v59[1] = v14;
  v58 = a3 + 832;
  v15 = v13 + 48 * a4;
  v56 = a4 + 1;
  v53 = v13 + 40 * (a4 + 1);
  v54 = a3 + 984;
  v16 = 1;
  while (1)
  {
    pthread_mutex_lock((a3 + 576));
    if (a2)
    {
      v17 = *(a2 + 408);
      v18 = *(a2 + 376);
      v20 = v18[10];
      v19 = v18[11];
      v21 = v18[9];
      if (v20 >= v19 + v17)
      {
        v22 = v20 - (v19 + v17);
      }

      else
      {
        v22 = 0;
      }

      if (v21 - v19 >= v22)
      {
        v23 = v22;
      }

      else
      {
        v23 = v21 - v19;
      }

      if (v20 <= v19 + v17)
      {
        v24 = v21 - v19;
      }

      else
      {
        v24 = v23;
      }

      v25 = v24 >= v17;
      v26 = v24 - v17;
      if (!v25)
      {
        v26 = 0;
      }

      if (v21 <= v19)
      {
        v26 = 0;
      }
    }

    else
    {
      v26 = 0;
      v22 = 0;
    }

    v27 = *(a3 + 376);
    v28 = v27[30] + v27[9] + *(a3 + 984) + v27[15] + v27[35] + *(a3 + 992);
    v30 = v27[23];
    v29 = v27[24];
    v25 = v30 >= v29;
    v31 = v30 - v29;
    if (!v25)
    {
      v31 = 0;
    }

    v32 = *(a3 + 840) + *(a3 + 832);
    v33 = *(a3 + 864);
    v25 = v32 >= v33;
    v34 = v32 - v33;
    if (!v25)
    {
      v34 = 0;
    }

    v35 = v34 + v31;
    v25 = v28 >= v35;
    v36 = v28 - v35;
    if (!v25)
    {
      v36 = 0;
    }

    if (*(a3 + 1616))
    {
      v37 = *(a3 + 1632);
      v25 = v34 >= v37;
      v38 = v34 - v37;
      if (!v25)
      {
        v38 = 0;
      }

      v39 = *(a3 + 1624);
      v40 = *(a3 + 1640);
      v25 = v39 >= v40;
      v41 = v39 - v40;
      if (!v25)
      {
        v41 = 0;
      }

      v25 = v41 >= v37;
      v42 = v41 - v37;
      if (!v25)
      {
        v42 = 0;
      }

      v43 = *(a3 + 1648);
      v44 = *(a3 + 1656);
      v25 = v43 >= v44;
      v45 = v43 - v44;
      if (!v25)
      {
        v45 = 0;
      }

      v25 = v45 >= v38;
      v46 = v45 - v38;
      if (!v25)
      {
        v46 = 0;
      }

      v25 = v36 >= v46 + v42;
      v47 = v36 - (v46 + v42);
      if (!v25)
      {
        v47 = 0;
      }

      if ((a5 & 0x10000) != 0)
      {
        v46 = v42;
      }

      v48 = v46 + v26 + v47;
      if (!a2)
      {
LABEL_53:
        pthread_mutex_unlock((a3 + 576));
        v50 = *a6;
LABEL_54:
        v22 = v50;
        if (v50 <= v48)
        {
          goto LABEL_57;
        }

        if ((a5 & 0x1000) == 0)
        {
          return 28;
        }

LABEL_56:
        *a6 = v48;
        v22 = v48;
        if (v48 < 1)
        {
          return 28;
        }

        goto LABEL_57;
      }
    }

    else
    {
      v48 = v36 + v26;
      if (!a2)
      {
        goto LABEL_53;
      }
    }

    if (v48 >= v22)
    {
      v49 = v22;
    }

    else
    {
      v49 = v48;
    }

    if (*(*(a2 + 376) + 80))
    {
      v48 = v49;
    }

    pthread_mutex_unlock((a3 + 576));
    v50 = *a6;
    if (!*(*(a2 + 376) + 80) || v50 <= v22)
    {
      goto LABEL_54;
    }

    if ((a5 & 0x1000) == 0)
    {
      return 69;
    }

    *a6 = v22;
    if (v22 < 1)
    {
      return 69;
    }

    if (v22 > v48)
    {
      goto LABEL_56;
    }

LABEL_57:
    v51 = *(v15 + 72) - *(v58 + 8 * a4);
    if (v22 > v51)
    {
      break;
    }

LABEL_65:
    if (v22 <= v51)
    {
      return 0;
    }
  }

  if (v16)
  {
    v51 += *(v53 + 200) + *(v54 + 8 * a4);
    if (v22 <= v51)
    {
      goto LABEL_62;
    }
  }

  if ((a5 & 0x1000) == 0)
  {
    return 7;
  }

  *a6 = v51;
  if (v51 > 0 && v16)
  {
LABEL_62:
    pthread_mutex_unlock((a3 + 384));
    pthread_mutex_lock((a3 + 512));
    sub_1000672B8(a1, v59, 0, 0);
    v16 = sub_1000673B0(a1, a3, v56, 1, v59, a7) != 0;
    sub_100067BC8(a1, v59);
    pthread_mutex_unlock((a3 + 512));
    pthread_mutex_lock((a3 + 384));
    v51 = 0;
    if ((a5 & 0x1000) != 0)
    {
      v22 = v55;
      *a6 = v55;
    }

    else
    {
      v22 = *a6;
    }

    goto LABEL_65;
  }

  if (v51 <= 0)
  {
    return 7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10006C34C(uint64_t a1, uint64_t a2, unint64_t a3)
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

double sub_10006C3C4(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
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
      goto LABEL_24;
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
LABEL_23:
  v29 = v14;
LABEL_24:
  v30 = v55;
  if (v55 < 2)
  {
    goto LABEL_53;
  }

  v31 = *v29;
  LODWORD(v29) = *v29 & 0xFFFFFF;
  if (v55 <= (*&v31 & 0xFFFFFFuLL))
  {
    goto LABEL_53;
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
          goto LABEL_54;
        }

        v34 = *(v56 + 36);
        goto LABEL_33;
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

LABEL_53:
      v35 = a4;
      v33 = v56;
      goto LABEL_54;
    }
  }

  v33 = v56;
  v34 = *(v56 + 36);
  v35 = a4;
  v36 = v50;
  if (!v50)
  {
LABEL_37:
    *&v61[0] = v52 * v34;
    sub_100070644(a1, a2, 0, v61, v35);
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

LABEL_33:
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
    goto LABEL_37;
  }

LABEL_54:
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
    sub_100070644(a1, a2, 3uLL, v61, &v58);
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

uint64_t sub_10006C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  LODWORD(v7) = 0;
  v8 = 0;
  v9 = 0;
  v10 = *(a3 + 376);
  v117 = 0;
  v118 = 0;
  v11 = v10 + 12;
  v98 = a3 + 896;
  v116 = 0;
  memset(v115, 170, sizeof(v115));
  v104 = v10 + 12;
  v105 = (a1 + 4040);
  v107 = a3 + 1576;
  v99 = -1;
  v114 = 0xAAAAAAAAAAAAAAAALL;
  v12 = *(a4 + 172);
  v109 = v10;
  do
  {
    v13 = *(a4 + 112) / v10[9] / v10[10];
    v103 = v8;
    if (v11[12 * v12 + 5])
    {
      v14 = v10[11];
      v15 = v13 / v14;
      v16 = v118;
      if (v13 / v14 == v99)
      {
        LODWORD(v17) = *(a4 + 112) / v10[9] / v10[10];
        v15 = v99;
      }

      else
      {
        v19 = *(*(v98 + 8 * v12) + 8 * v15);
        if (v118)
        {
          obj_release(v118);
          v10 = v109;
          v118 = 0;
          LODWORD(v12) = *(a4 + 172);
        }

        v115[1] = v10;
        v115[2] = __PAIR64__(v15, v12);
        v20 = v10;
        v21 = obj_get(*(a2 + 392), 0x40000000, v19, &sm_cab_desc, &v115[1], 0, 0, 0, &v118);
        if (v21)
        {
          v93 = v21;
          v8 = v103;
          break;
        }

        v14 = v20[11];
        v16 = v118;
        LODWORD(v12) = *(a4 + 172);
        v99 = v15;
        v17 = *(a4 + 112) / v20[9] / v20[10];
        v10 = v20;
      }

      v18 = (*(v16 + 56) + 8 * (v13 - v14 * v15) + 40);
      LODWORD(v13) = v17;
      v8 = v103;
    }

    else
    {
      v18 = (*(v98 + 8 * v12) + 8 * v13);
    }

    v22 = *v18;
    v115[1] = v10;
    v115[2] = __PAIR64__(v13, v12);
    v106 = v22;
    v23 = v10;
    v24 = obj_get(*(a2 + 392), 0x40000000, v22, &sm_cib_desc, &v115[1], 0, 0, 0, &v117);
    if (v24)
    {
      v93 = v24;
      break;
    }

    v5 = *(v117 + 56);
    v25 = *(v5 + 32);
    v27 = v23[9];
    v26 = v23[10];
    v28 = v26 * v25;
    v29 = v23;
    if (v8 == v11[12 * *(a4 + 172) + 4])
    {
      v30 = *(a4 + 120) / v27 - v28 + 1;
    }

    else
    {
      v30 = *(v5 + 36);
    }

    v7 = *(a4 + 112) / v27 - v26 * v25;
    if (v30 <= v7)
    {
      v93 = 0;
      goto LABEL_276;
    }

    v110 = v5 + 40;
    v101 = *(v117 + 56);
    v7 = v7;
    v111 = v26 * v25;
    while (1)
    {
      if (v6 >= 3 && *(a4 + 189) == 1)
      {
        v31 = *(a4 + 32);
        if (v31 >= 1 && *(a4 + 48) <= (2 * v29[9]))
        {
          *(a4 + 189) = 0;
          *(a4 + 120) = *(a4 + 24);
          if (*(a4 + 184) == 1)
          {
            *(a4 + 48) = v31;
          }

          v94 = *(a4 + 40);
          *(a4 + 185) = v94;
          if ((v94 & 1) == 0 && *(a4 + 186) == 1)
          {
            if ((*(a4 + 169) & 2) == 0)
            {
              *(a2 + 634) = 1;
              *(a2 + 1048) = 0;
            }

            *(a4 + 64) = 0;
            *(a4 + 72) = 0;
          }

          v93 = 3;
          goto LABEL_276;
        }
      }

      v32 = v110 + 32 * v7;
      v33 = *(v32 + 8);
      v34 = v28 + v7;
      v35 = v29[9];
      if (v33 != (v28 + v7) * v35)
      {
        v39 = obj_type(a1);
        v40 = v105;
        if (v39 != 13)
        {
          v40 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s skip bad chunk info ci @ block %lld (cib %lld) ci_index 0x%x ci_addr 0x%llx (expect 0x%llx)\n", "spaceman_alloc_iterate_chunks", 7327, v40, v106, *(v5 + 8), v7, *(v32 + 8), v34 * v109[9]);
        v29 = v109;
        if (v29[9] + v29[9] * v34 >= *&v11[12 * *(a4 + 172)])
        {
          v9 = 0;
        }

        else
        {
          v9 = v109[9] + v109[9] * v34;
        }

        v28 = v111;
LABEL_105:
        *(a4 + 112) = v9;
        goto LABEL_106;
      }

      v36 = *(a4 + 172);
      if (v8 == v11[12 * v36 + 4] && (v37 = *(a4 + 120), v37 / v35 - v28 == v7))
      {
        v38 = v37 - v33;
      }

      else
      {
        v38 = *(v32 + 16) & 0xFFFFFLL;
      }

      v41 = *(a4 + 176);
      if (v36 == v41)
      {
        v42 = *(a4 + 80);
        v43 = v42 - v33;
        if (v42 - v33 >= v38)
        {
          v43 = v38;
        }

        if (v42 > v33 && v42 < v38 + v33)
        {
          v38 = v43;
        }
      }

      v45 = *(a4 + 180);
      v112 = v6;
      should_avoid_data_allocation_at_block = 0;
      if (v36 == v45)
      {
        v52 = *(a4 + 64);
        if (v52 > v33 && v52 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            should_avoid_data_allocation_at_block = 0;
            if (v52 - v33 < v38)
            {
              v38 = v52 - v33;
            }
          }
        }
      }

      v47 = *(a4 + 112);
      v48 = v47 - v33;
      if (v36 == v41)
      {
        v49 = *(a4 + 88);
        if (v49 > v33 && v49 < v38 + v33)
        {
          if (v49 - v33 > v48)
          {
            v48 = v49 - v33;
          }

          v47 = v48 + v33;
          *(a4 + 112) = v48 + v33;
          if (v48 > 0)
          {
            v9 = 0;
          }
        }
      }

      if (v36 == v45)
      {
        v53 = *(a4 + 72);
        if (v53 > v33 && v53 < v38 + v33)
        {
          if (*(a4 + 190))
          {
            should_avoid_data_allocation_at_block = 1;
          }

          else
          {
            if (v53 - v33 > v48)
            {
              v48 = v53 - v33;
            }

            v47 = v48 + v33;
            *(a4 + 112) = v48 + v33;
            if (v48 > 0)
            {
              v9 = 0;
            }
          }
        }
      }

      if ((*(a4 + 184) & 1) == 0)
      {
        v50 = *(v32 + 20) & 0xFFFFF;
        if (!v9 || v50 < (*(v32 + 16) & 0xFFFFFu) && *(a4 + 48) - v9 > v50)
        {
          if (v50)
          {
            if (v7 >= v30 - 1 || (v51 = *(v32 + 52) & 0xFFFFF, *(a4 + 48) <= (v51 + v50)))
            {
              v9 = 0;
            }

            else
            {
              v9 = 0;
              if (v51 < (*(v32 + 48) & 0xFFFFFu))
              {
                should_avoid_data_allocation_at_block = 1;
              }
            }
          }

          else
          {
            v9 = 0;
            should_avoid_data_allocation_at_block = 2;
          }
        }
      }

      if (v36 == v41 && *(a4 + 80) <= v48 + v33 && *(a4 + 88) >= v38 + v33)
      {
        should_avoid_data_allocation_at_block = 2;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v36 != v45 || should_avoid_data_allocation_at_block)
        {
          goto LABEL_85;
        }

        if (*(a4 + 64) <= v48 + v33)
        {
          should_avoid_data_allocation_at_block = *(a4 + 72) >= v38 + v33;
LABEL_85:
          if (!*(a4 + 184))
          {
            goto LABEL_88;
          }

          goto LABEL_86;
        }

        should_avoid_data_allocation_at_block = 0;
        if (!*(a4 + 184))
        {
          goto LABEL_88;
        }
      }

LABEL_86:
      if ((*(v32 + 20) & 0xFFFFF) == 0)
      {
        should_avoid_data_allocation_at_block = 2;
      }

LABEL_88:
      v54 = *(v32 + 24);
      if (!v54 && ((*(v32 + 16) ^ *(v32 + 20)) & 0xFFFFF) != 0)
      {
        LOBYTE(v55) = *(a4 + 190);
LABEL_96:
        v56 = v47 + v38 - v48;
        *(a4 + 112) = v56;
        v11 = v104;
        v28 = v111;
        v6 = v112;
        if (v36 == v41 && v56 >= *(a4 + 80) && v56 < *(a4 + 88) || (v55 & 1) == 0 && v36 == *(a4 + 180) && v56 >= *(a4 + 64) && v56 < *(a4 + 72))
        {
          v56 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
          *(a4 + 112) = v56;
        }

        v9 = 0;
        if (v56 < *&v104[12 * v36])
        {
          goto LABEL_107;
        }

        goto LABEL_105;
      }

      if (!should_avoid_data_allocation_at_block)
      {
        if (*(a4 + 185) != 1)
        {
          v57 = 1;
          goto LABEL_111;
        }

        should_avoid_data_allocation_at_block = spaceman_should_avoid_data_allocation_at_block(a3, v36, v33, *(a4 + 48));
        v29 = v109;
      }

      v55 = *(a4 + 190);
      if (should_avoid_data_allocation_at_block > v55)
      {
        v47 = *(a4 + 112);
        v36 = *(a4 + 172);
        v41 = *(a4 + 176);
        goto LABEL_96;
      }

      v54 = *(v32 + 24);
      v57 = should_avoid_data_allocation_at_block == 0;
LABEL_111:
      v113 = (v112 + 1);
      v116 = 0;
      if (v54)
      {
        v58 = obj_get(*(a2 + 392), 0x40000000, v54, &sm_bm_desc, 0, 0, 0, 0, &v116);
        if (v58)
        {
          v93 = v58;
          goto LABEL_274;
        }
      }

      if (v9)
      {
        v59 = v38;
        if (v57)
        {
          if (*(a4 + 48) - v9 >= v38)
          {
            v59 = v38;
          }

          else
          {
            v59 = *(a4 + 48) - v9;
          }
        }

        if (!v116 || !bitmap_range_find_first(1, *(v116 + 56), 0, v59, (a4 + 128)))
        {
          v6 = v113;
          if (v57)
          {
            v63 = *(a4 + 48);
            if (v63 == v59 + v9)
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              *(a4 + 160) = v63;
              v11 = v104;
              if (v116)
              {
                obj_release(v116);
              }

              v9 = 0;
              v93 = 0;
              v116 = 0;
              v5 = v101;
              v8 = v103;
              goto LABEL_276;
            }
          }

          v11 = v104;
          if (*(a4 + 190) == 1)
          {
            v64 = *(a4 + 191);
          }

          else
          {
            v64 = 0;
          }

          v65 = v59 + v9;
          spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v64 & 1, *(a4 + 112) - v9, v59 + v9);
          if (*(a4 + 184) == 1 && v65 > *(a4 + 160))
          {
            if (v57 || !spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v59 + v9, *(a4 + 168), *(a4 + 56), v115, &v114))
            {
              *(a4 + 152) = *(a4 + 112) - v9;
              v66 = *(a4 + 48);
              if (v65 < v66)
              {
                v66 = v59 + v9;
              }

LABEL_145:
              *(a4 + 160) = v66;
            }

            else
            {
              v66 = v114;
              if (v114 >= *(a4 + 48))
              {
                v66 = *(a4 + 48);
              }

              v114 = v66;
              if (v66 > *(a4 + 160))
              {
                *(a4 + 152) = v115[0];
                goto LABEL_145;
              }
            }
          }

          v67 = *(a4 + 112) + v59;
          *(a4 + 112) = v67;
          v68 = *(a4 + 172);
          v5 = v101;
          v8 = v103;
          if (v68 == *(a4 + 176) && v67 >= *(a4 + 80) && v67 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v68 == *(a4 + 180) && v67 >= *(a4 + 64) && v67 < *(a4 + 72))
          {
            v65 = 0;
            v67 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
            *(a4 + 112) = v67;
          }

          v9 = v65;
          if (v67 >= *&v104[12 * v68])
          {
            v9 = 0;
            *(a4 + 112) = 0;
          }

          if (v116)
          {
            obj_release(v116);
          }

          v116 = 0;
          if (v9)
          {
            goto LABEL_262;
          }

          v28 = v111;
          v29 = v109;
          if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
          {
            v9 = 0;
            v93 = 0;
            goto LABEL_276;
          }

          goto LABEL_106;
        }

        v5 = v101;
        if (*(a4 + 184) != 1)
        {
          goto LABEL_168;
        }

        v60 = *(a4 + 128) + v9;
        if (v60 <= *(a4 + 160))
        {
          goto LABEL_168;
        }

        if (!v57)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), *(a4 + 112) - v9, v60, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v61 = *(a4 + 48);
            if (v114 < v61)
            {
              v61 = v114;
            }

            v114 = v61;
            v62 = *(a4 + 160);
            if (v61 > v62)
            {
              *(a4 + 152) = v115[0];
              *(a4 + 160) = v61;
LABEL_167:
              if ((*(a4 + 169) & 4) != 0)
              {
                if (v116)
                {
                  obj_release(v116);
                }

                v9 = 0;
                v93 = 0;
                v116 = 0;
LABEL_274:
                v8 = v103;
                goto LABEL_275;
              }

LABEL_168:
              if (*(a4 + 190) == 1)
              {
                v69 = *(a4 + 191);
              }

              else
              {
                v69 = 0;
              }

              spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v69 & 1, *(a4 + 112) - v9, *(a4 + 128) + v9);
              v70 = *(a4 + 128);
              *(a4 + 112) += v70 - v48;
              v48 = v70;
              goto LABEL_172;
            }

LABEL_166:
            if (v62)
            {
              goto LABEL_167;
            }

            goto LABEL_168;
          }

          v60 = *(a4 + 128) + v9;
        }

        v62 = *(a4 + 48);
        if (v60 < v62)
        {
          v62 = v60;
        }

        *(a4 + 152) = *(a4 + 112) - v9;
        *(a4 + 160) = v62;
        goto LABEL_166;
      }

LABEL_172:
      if (!v116)
      {
        break;
      }

      if (*(v107 + 8 * *(a4 + 172)))
      {
        if (v38 > v48)
        {
          v71 = 0;
          v72 = 0;
          v73 = v48;
          while (1)
          {
            bitmap_range_find_first_clear_range(*(v116 + 56), v38 - v73, v73, v38, (a4 + 128), (a4 + 136));
            v74 = *(a4 + 136);
            if (!v74)
            {
              goto LABEL_212;
            }

            if (v74 <= v71)
            {
              break;
            }

            if ((*(a4 + 169) & 4) != 0)
            {
              if (v71)
              {
                break;
              }

              v75 = *(a4 + 48);
            }

            else
            {
              v75 = *(a4 + 48);
              if (v71 >= v75)
              {
                break;
              }
            }

            v72 = *(a4 + 128);
            if (v75 >= v74)
            {
              v71 = *(a4 + 136);
            }

            else
            {
              v71 = v75;
            }

            if (!v57)
            {
              goto LABEL_192;
            }

LABEL_183:
            v76 = *(a4 + 48);
            if (v71 >= v76 && ((*(a4 + 187) & 1) != 0 || (*(a4 + 188) & 1) != 0))
            {
              *(a4 + 128) = v72;
              *(a4 + 136) = v71;
              goto LABEL_214;
            }

LABEL_192:
            if (*(a4 + 190) == 1)
            {
              v77 = *(a4 + 191);
            }

            else
            {
              v77 = 0;
            }

            spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v77 & 1, *(a4 + 112) - v48 + *(a4 + 128), v74);
            v73 = *(a4 + 136) + *(a4 + 128);
            if (v73 >= v38)
            {
              goto LABEL_212;
            }
          }

          if (!v57)
          {
            goto LABEL_192;
          }

          goto LABEL_183;
        }

        v72 = 0;
        v71 = 0;
LABEL_212:
        *(a4 + 128) = v72;
        *(a4 + 136) = v71;
        if (v57)
        {
          v76 = *(a4 + 48);
LABEL_214:
          if (v71 >= v76)
          {
            v9 = 0;
            v93 = 0;
            *(a4 + 112) += v38 - v48;
            v5 = v101;
            goto LABEL_274;
          }

          v82 = 0;
          v5 = v101;
        }

        else
        {
          v82 = 0;
          v5 = v101;
        }
      }

      else
      {
        if (bitmap_range_find_desired_or_first_clear_range(*(v116 + 56), *(a4 + 48), v48, v38, (a4 + 128), (a4 + 136), (*(a4 + 168) >> 10) & 1))
        {
          v9 = 0;
          v93 = 0;
          goto LABEL_274;
        }

        v82 = 0;
      }

LABEL_219:
      if (*(a4 + 184) != 1)
      {
        goto LABEL_228;
      }

      v9 = *(a4 + 136);
      if (v9 > *(a4 + 160))
      {
        v84 = *(a4 + 112);
        v85 = *(a4 + 128);
        if (!v57)
        {
          if (spaceman_clip_extent_to_zones(a2, a3, *(a4 + 172), v84 - v48 + v85, v9, *(a4 + 168), *(a4 + 56), v115, &v114))
          {
            v9 = v114;
            if (v114 > *(a4 + 160))
            {
              v86 = v115[0];
              goto LABEL_227;
            }

            goto LABEL_228;
          }

          v84 = *(a4 + 112);
          v85 = *(a4 + 128);
          v9 = *(a4 + 136);
        }

        v86 = v84 - v48 + v85;
LABEL_227:
        *(a4 + 152) = v86;
        *(a4 + 160) = v9;
LABEL_228:
        v9 = *(a4 + 136);
      }

      v8 = v103;
      if (v9 && *(a4 + 128) + v9 == v38)
      {
        goto LABEL_243;
      }

      if ((*(a4 + 169) & 4) != 0 && *(a4 + 160))
      {
        v9 = 0;
        v93 = 0;
        *(a4 + 112) += v38 - v48;
LABEL_275:
        v11 = v104;
        v6 = v113;
        goto LABEL_276;
      }

      v9 = v82;
      if (!v82)
      {
        v87 = *(a4 + 48);
        v88 = v38 - v87;
        if (v38 < v87)
        {
          v88 = 0;
          v87 = v38;
        }

        if (bitmap_range_find_last_set(*(v116 + 56), v88, v87, (a4 + 128)) && (v89 = *(a4 + 128), v89 < v38 - 1))
        {
          if (*(a4 + 190) == 1)
          {
            v90 = *(a4 + 191);
          }

          else
          {
            v90 = 0;
          }

          v9 = v38 + ~v89;
          spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v90 & 1, v89 - v48 + *(a4 + 112) + 1, v9);
        }

        else
        {
          v9 = 0;
        }
      }

LABEL_243:
      *(a4 + 136) = 0;
      v91 = *(a4 + 112) + v38 - v48;
      *(a4 + 112) = v91;
      v92 = *(a4 + 172);
      v11 = v104;
      v6 = v113;
      if (v92 == *(a4 + 176) && v91 >= *(a4 + 80) && v91 < *(a4 + 88) || (*(a4 + 190) & 1) == 0 && v92 == *(a4 + 180) && v91 >= *(a4 + 64) && v91 < *(a4 + 72))
      {
        v9 = 0;
        v91 = *(v32 + 8) + (*(v32 + 16) & 0xFFFFF);
        *(a4 + 112) = v91;
      }

      if (v91 >= *&v104[12 * v92])
      {
        v9 = 0;
        *(a4 + 112) = 0;
      }

      if (v116)
      {
        obj_release(v116);
      }

      v116 = 0;
      if (!v113)
      {
        goto LABEL_262;
      }

      v28 = v111;
      v29 = v109;
      if ((*(a4 + 190) & 1) == 0 || v9)
      {
        goto LABEL_107;
      }

      if (*(a4 + 160) || *(a4 + 104))
      {
        if (!spaceman_free_extent_cache_scan_should_pause(*(v107 + 8 * *(a4 + 172)), v113))
        {
          v9 = 0;
LABEL_262:
          v28 = v111;
          v29 = v109;
          goto LABEL_107;
        }

        v96 = *(a4 + 104);
        if (v96 > *(a4 + 160))
        {
          *(a4 + 152) = *(a4 + 96);
          *(a4 + 160) = v96;
        }

        v9 = 0;
        v93 = 0;
        *(a4 + 192) = 1;
LABEL_276:
        if (*(a4 + 136))
        {
          goto LABEL_302;
        }

        goto LABEL_277;
      }

LABEL_106:
      v9 = 0;
LABEL_107:
      if (++v7 >= v30)
      {
        v93 = 0;
        LODWORD(v7) = v30;
        goto LABEL_276;
      }
    }

    v78 = *(a4 + 48);
    v79 = v78 <= v38 - v48;
    if (v78 >= v38 - v48)
    {
      v80 = v38 - v48;
    }

    else
    {
      v80 = *(a4 + 48);
    }

    *(a4 + 128) = v48;
    *(a4 + 136) = v80;
    v81 = v78 <= v38 - v48 && v57;
    if (v79)
    {
      v82 = v38 - v48;
    }

    else
    {
      v82 = 0;
    }

    if (!v81)
    {
      if (*(a4 + 190) == 1)
      {
        v83 = *(a4 + 191);
      }

      else
      {
        v83 = 0;
      }

      spaceman_free_extent_cache_insert(*(v107 + 8 * *(a4 + 172)), v83 & 1, *(a4 + 112), v80);
      goto LABEL_219;
    }

    v9 = 0;
    v93 = 0;
    v8 = v103;
    v11 = v104;
    v6 = v113;
    if (v80)
    {
      break;
    }

LABEL_277:
    v95 = *(a4 + 160);
    if (v95 == *(a4 + 48))
    {
      break;
    }

    if (v9 || !v95)
    {
      if (v93)
      {
        break;
      }
    }

    else if (*(a4 + 168) & 0x400 | v93)
    {
      break;
    }

    if (*(a4 + 192))
    {
      break;
    }

    obj_release(v117);
    v117 = 0;
    ++v8;
    v12 = *(a4 + 172);
    v10 = v109;
  }

  while (v8 <= v11[12 * v12 + 4]);
LABEL_302:
  *(a4 + 193) = v8 == v11[12 * *(a4 + 172) + 4] + 1;
  if (*(a4 + 136))
  {
    *(a4 + 144) = *(v5 + 32 * v7 + 48);
  }

  if (v118)
  {
    obj_release(v118);
    v118 = 0;
  }

  if (v117)
  {
    obj_release(v117);
    v117 = 0;
  }

  if (v116)
  {
    obj_release(v116);
  }

  return v93;
}

uint64_t sub_10006D808(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int a8)
{
  v8 = a6;
  v10 = a4;
  v11 = a3;
  v120 = 0;
  v124 = 0;
  v122 = 0;
  v12 = *(a3 + 376);
  v144 = 0;
  v145 = 0;
  v143 = 0;
  memset(v142, 170, sizeof(v142));
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    v13 = a1;
  }

  v119 = v13;
  v117 = (v13 + 505);
  v118 = (a2 + 505);
  v121 = a8 & 0x10001;
  v123 = -1;
  v137 = a4;
  v130 = v12;
  while (1)
  {
    pthread_mutex_lock((v11 + 640));
    v14 = v10 / v12[9];
    v15 = v14 / v12[10];
    v140 = v12[17];
    if (v140)
    {
      v16 = v15 / v12[11];
      if (v16 != v123 || v120 == 0)
      {
        v18 = *(*(v11 + 896) + 8 * v16);
        if (v145)
        {
          obj_release(v145);
          v145 = 0;
        }

        v142[1] = v12;
        LODWORD(v142[2]) = 0;
        HIDWORD(v142[2]) = v16;
        v124 = v18;
        v19 = obj_get(a1[49], 1073741829, v18, &sm_cab_desc, &v142[1], 0, 0, v8, &v145);
        if (v19)
        {
          v109 = v19;
          log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_modify_bits", 5882, (a1[48] + 212), v16, v124, v19);
          v110 = 1;
          goto LABEL_158;
        }

        v120 = *(v145 + 56);
        v123 = v16;
      }

      else
      {
        obj_lock(v145, 2);
      }

      pthread_mutex_unlock((v11 + 640));
      if (obj_xid(v145) == v8)
      {
        v22 = v124;
        v23 = v123;
      }

      else
      {
        v24 = sub_1000664BC(a1, v11, v8, v142);
        if (v24)
        {
          v109 = v24;
          if (nx_ratelimit_log_allowed(a1))
          {
            log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 5901, (a1[48] + 212), v109);
          }

          v110 = 1;
          v122 = 1;
          goto LABEL_159;
        }

        v22 = v142[0];
        v23 = v123;
        *(*(v11 + 896) + 8 * v123) = v142[0];
        obj_dirty(v145, v8, v22);
        v25 = sub_1000708C0(a1, v11, v124, v8);
        if (v25)
        {
          v109 = v25;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n", "spaceman_modify_bits", 5908, (a1[48] + 212), v124, v25);
          v110 = 1;
          v122 = 1;
          goto LABEL_159;
        }
      }

      v21 = v120 + 40;
      v26 = *(v130 + 40);
      LODWORD(v15) = v15 - *(v130 + 44) * v23;
      v142[1] = v130;
      LODWORD(v142[2]) = 0;
      HIDWORD(v142[2]) = v14 / v26;
      v122 = 1;
      v124 = v22;
    }

    else
    {
      v20 = v12;
      v21 = *(v11 + 896);
      v142[1] = v20;
      LODWORD(v142[2]) = 0;
      HIDWORD(v142[2]) = v15;
      if (!v21)
      {
        v109 = 22;
        v110 = 1;
        goto LABEL_158;
      }
    }

    v27 = *(v21 + 8 * v15);
    v28 = obj_get(a1[49], 1073741829, v27, &sm_cib_desc, &v142[1], 0, 0, v8, &v144);
    if (v28)
    {
      v109 = v28;
      if (v123 == -1)
      {
        v108 = 0;
      }

      else
      {
        v108 = *(v130 + 44) * v123;
      }

      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_modify_bits", 5934, (a1[48] + 212), v108 + v15, v27, v28);
      v110 = 1;
      goto LABEL_155;
    }

    v131 = *(v144 + 56);
    if (obj_xid(v144) == v8)
    {
      v128 = v27;
      v29 = v130;
      v30 = v137;
      goto LABEL_29;
    }

    v31 = sub_1000664BC(a1, v11, v8, v142);
    if (v31)
    {
      v109 = v31;
      v115 = a1[48] + 212;
      log_err("%s:%d: %s failed to allocate block from internal pool: %d\n");
      goto LABEL_152;
    }

    v128 = v142[0];
    *(v21 + 8 * v15) = v142[0];
    if (v145)
    {
      obj_dirty(v145, v8, v124);
    }

    obj_dirty(v144, v8, v128);
    v32 = sub_1000708C0(a1, v11, v27, v8);
    v29 = v130;
    v30 = v137;
    if (v32)
    {
      break;
    }

LABEL_29:
    if (!v140)
    {
      pthread_mutex_unlock((v11 + 640));
    }

    if (v145)
    {
      obj_unlock(v145, 2);
      v122 = 0;
    }

    v138 = v14 % v29[10];
    v132 = v131 + 40;
    v33 = v131 + 40 + 32 * v138;
    v34 = (v33 + 24);
    v35 = *(v33 + 24);
    if (a7 == 1)
    {
LABEL_34:
      if (v35)
      {
        goto LABEL_35;
      }

      if (((*(v33 + 16) ^ *(v33 + 20)) & 0xFFFFF) != 0)
      {
        v109 = nx_corruption_detected_int(a1);
        v110 = 0;
      }

      else
      {
        v110 = 0;
        v109 = 22;
      }

      goto LABEL_159;
    }

    while (1)
    {
LABEL_35:
      if (v35)
      {
        v36 = obj_get(a1[49], 1073741825, v35, &sm_bm_desc, 0, 0, 0, v8, &v143);
        if (v36)
        {
          v107 = v36;
          v104 = a1[48] + 212;
          if (v123 != -1)
          {
            v105 = v29[11] * v123;
          }

          log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n");
          goto LABEL_146;
        }

        v37 = *(v143 + 56);
      }

      else
      {
        v37 = 0;
      }

      v38 = v29[9];
      v39 = v10 % v38;
      v40 = v38 - v10 % v38;
      if (a5 < v40)
      {
        v40 = a5;
      }

      v141 = v40;
      v134 = a5;
      if (v35 && *v33 == a6)
      {
        v133 = v35;
        goto LABEL_50;
      }

      v41 = sub_1000664BC(a1, v11, a6, v142);
      if (v41)
      {
        v106 = v41;
        log_err("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_modify_bits", 6004, (a1[48] + 212), v41);
        v110 = 0;
        v109 = v106;
        goto LABEL_159;
      }

      *v33 = a6;
      v42 = v142[0];
      *v34 = v142[0];
      v133 = v42;
      if (v35)
      {
        obj_dirty(v143, a6, v42);
        v43 = sub_1000708C0(a1, v11, v35, a6);
        if (v43)
        {
          v107 = v43;
          v114 = a1[48] + 212;
          log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_146:
          v110 = 0;
          v109 = v107;
          goto LABEL_159;
        }
      }

      else
      {
        v44 = obj_create(a1[49], 0x40000000, v42, &sm_bm_desc, 0, 0, a6, &v143);
        if (v44)
        {
          v109 = v44;
          log_err("%s:%d: %s failed to create bitmap object %lld: %d\n", "spaceman_modify_bits", 6019, (a1[48] + 212), v133, v44);
          v110 = 0;
          goto LABEL_159;
        }

        v37 = *(v143 + 56);
      }

LABEL_50:
      v45 = *(v11 + 376);
      if (a7 == 1)
      {
        v46 = bitmap_count_bits(v37, 0, v39, v141 + v39);
        v47 = v46;
        if (v46)
        {
          log_err("%s:%d: %s freeing 0x%llx:%lld, but %lld bits are already clear.  Double free?\n", "spaceman_clear_bits_in_bm", 5603, (a1[48] + 212), v30, a5, v46);
        }

        v48 = a1[47];
        v49 = *(v48 + 1248);
        v50 = v132 + 32 * v138;
        if (v49)
        {
          v51 = *(v48 + 1240);
          v146 = 0xAAAAAAAAAAAAAAAALL;
          v52 = calc_overlap_range(v30, v141, v51, v49, &v146);
          v53 = v52;
          if (v52)
          {
            v52 = bitmap_count_bits(v37, 0, v146 - *(v50 + 8), v146 + v52 - *(v50 + 8));
          }

          v54 = v10;
          v55 = v47 - v52;
        }

        else
        {
          v54 = v10;
          v53 = 0;
          v55 = v47;
        }

        bitmap_clear_range(v37, v39, v141);
        sub_10006FE58(a3, v37, v30 / *(v45 + 36));
        *(v50 + 20) += v141 - v47;
        pthread_mutex_lock((a3 + 576));
        *(v45 + 72) += v141 - v53 - v55;
        a5 = v134;
        v8 = a6;
        v59 = v138;
        v10 = v54;
        v11 = a3;
        if (a8)
        {
          v76 = *(a3 + 984);
          v64 = v76 >= v141;
          v77 = v76 - v141;
          if (!v64)
          {
            v77 = 0;
          }

          *(a3 + 984) = v77;
        }

LABEL_128:
        pthread_mutex_unlock((v11 + 576));
        v79 = 0;
        v109 = 0;
        v78 = 1;
        goto LABEL_129;
      }

      v56 = (*(v33 + 16) & 0xFFFFF) - v39;
      if (v56 >= v141)
      {
        v57 = v141;
      }

      else
      {
        v57 = (*(v33 + 16) & 0xFFFFF) - v39;
      }

      if (bitmap_range_is_clear(v37, v39, v57, v56))
      {
        bitmap_set_range(v37, v39, v57, v58);
        v59 = v138;
        sub_10006FE58(v11, v37, v138 + *(v45 + 40) * *(v131 + 32));
        pthread_mutex_lock((v11 + 576));
        v60 = *(v45 + 72);
        if (*(v11 + 1616))
        {
          v61 = *(v45 + 240) + v60 + *(v11 + 984) + *(v45 + 120) + *(v45 + 280) + *(v11 + 992);
          v62 = *(v45 + 184);
          v63 = *(v45 + 192);
          v64 = v62 >= v63;
          v65 = v62 - v63;
          if (!v64)
          {
            v65 = 0;
          }

          v64 = v61 >= v65;
          v66 = v61 - v65;
          if (!v64)
          {
            v66 = 0;
          }

          v67 = *(v11 + 1624);
          v68 = *(v11 + 1640);
          v64 = v67 >= v68;
          v69 = v67 - v68;
          if (v64)
          {
            v70 = v69;
          }

          else
          {
            v70 = 0;
          }

          v71 = *(v11 + 1648);
          v72 = *(v11 + 1656);
          v64 = v71 >= v72;
          v73 = v71 - v72;
          if (!v64)
          {
            v73 = 0;
          }

          v74 = v73 + v70;
          v64 = v66 >= v74;
          v75 = v66 - v74;
          if (!v64)
          {
            v75 = 0;
          }

          v125 = v75;
        }

        else
        {
          v70 = 0;
          v125 = 0;
        }

        v80 = a2;
        *(v33 + 20) -= v57;
        *(v45 + 72) = v60 - v57;
        v8 = a6;
        if (a8)
        {
          v82 = *(v11 + 848);
          if (*(v11 + 832) < v82)
          {
            panic("%s, Reserved space < reserved metadata: %llu < %llu\n", "Main", *(v11 + 832), v82);
          }

          if ((a8 & 0x40) != 0)
          {
            if (v82 < v57)
            {
              panic("reserved metadata space underflow: %lld (%lld)\n", *(v11 + 848), v57);
            }

            *(v11 + 848) = v82 - v57;
            *(v11 + 832) -= v57;
            v80 = a2;
          }

          else
          {
            v83 = *(v11 + 832);
            if (v83 - v82 >= v57)
            {
              v82 = v83 - v57;
            }

            else if (obj_type(v119) == 13)
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, v117, *(v11 + 832) - v82, v82, v57);
            }

            else
            {
              log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_set_bits_in_bm", 5755, (*(v119 + 384) + 212), *(v11 + 832) - v82, v82, v57);
            }

            v80 = a2;
            *(v11 + 832) = v82;
          }

          v59 = v138;
          if (v80)
          {
            v84 = v80[51];
            v64 = v84 >= v57;
            v85 = v84 - v57;
            if (!v64)
            {
              v86 = obj_type(v80);
              v87 = v118;
              if (v86 != 13)
              {
                v87 = (a2[48] + 212);
              }

              log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_set_bits_in_bm", 5770, v87, a2[51], v57);
              v80 = a2;
              v85 = 0;
            }

            v80[51] = v85;
            goto LABEL_102;
          }

          v81 = 0;
        }

        else
        {
          if (!a2)
          {
            v81 = 0;
LABEL_119:
            if (*(v11 + 1616))
            {
              v98 = v57 - v81;
              if ((a8 & 0x10000) != 0)
              {
                v101 = *(v11 + 1640);
                if (v98 <= v70)
                {
                  v102 = v101 + v98;
                }

                else
                {
                  v102 = v101 + v70;
                }

                *(v11 + 1640) = v102;
              }

              else
              {
                v99 = v98 > v125;
                v100 = v98 - v125;
                if (v99)
                {
                  *(v11 + 1656) += v100;
                }
              }
            }

            goto LABEL_128;
          }

LABEL_102:
          v88 = v80[47];
          v89 = *(v88 + 72);
          v90 = *(v88 + 88);
          v91 = v89 - v90;
          if (v89 < v90)
          {
            v91 = 0;
          }

          if (v57 >= v91)
          {
            v81 = v91;
          }

          else
          {
            v81 = v57;
          }

          v92 = v90 + v57;
          *(v88 + 88) = v92;
          *(v45 + 192) += v81;
          if (v89)
          {
            v64 = v89 >= v92;
            v93 = v89 - v92;
            if (!v64)
            {
              v93 = 0;
            }

            v94 = v80[52];
            if (v93 >= v80[51])
            {
              v93 = v80[51];
            }

            v95 = *(v11 + 864);
            v80[52] = v93;
            *(v11 + 864) = v93 - v94 + v95;
          }

          fs_sb_dirty(v80, a6);
        }

        if (v121 == 65537)
        {
          v96 = *(v11 + 1632);
          v64 = v96 >= v57;
          v97 = v96 - v57;
          if (!v64)
          {
            v97 = 0;
          }

          *(v11 + 1632) = v97;
        }

        goto LABEL_119;
      }

      v78 = 0;
      v109 = 22;
      v79 = 1;
      v8 = a6;
      v59 = v138;
LABEL_129:
      obj_dirty(v11, v8, 0);
      obj_dirty(v144, v8, v128);
      obj_dirty(v143, v8, v133);
      obj_release(v143);
      v143 = 0;
      v30 += v141;
      v10 += v141;
      a5 -= v141;
      if (!v78 || a5 < 1 || v59 >= (*(v131 + 36) - 1))
      {
        break;
      }

      v138 = v59 + 1;
      v33 = v132 + 32 * (v59 + 1);
      v34 = (v33 + 24);
      v35 = *(v33 + 24);
      v29 = v130;
      if (a7 == 1)
      {
        goto LABEL_34;
      }
    }

    v137 = v30;
    obj_unlock(v144, 2);
    obj_release(v144);
    v144 = 0;
    if (a5 < 1)
    {
      v103 = 1;
    }

    else
    {
      v103 = v79;
    }

    v12 = v130;
    if (v103)
    {
      v110 = 1;
      goto LABEL_159;
    }
  }

  v109 = v32;
  v116 = a1[48] + 212;
  log_err("%s:%d: %s failed to free internal pool block %lld: %d\n");
LABEL_152:
  v110 = 0;
LABEL_155:
  if (!v140)
  {
LABEL_158:
    pthread_mutex_unlock((v11 + 640));
  }

LABEL_159:
  if (v145 && (v122 & 1) != 0)
  {
    obj_unlock(v145, 2);
  }

  if (v144)
  {
    v111 = v110;
  }

  else
  {
    v111 = 1;
  }

  if ((v111 & 1) == 0)
  {
    obj_unlock(v144, 2);
  }

  if (v145)
  {
    obj_release(v145);
  }

  if (v144)
  {
    obj_release(v144);
  }

  if (v143)
  {
    obj_release(v143);
  }

  if (a7 == 1)
  {
    if (v109)
    {
      if (a5)
      {
        v112 = *(v11 + 984);
        if (v112)
        {
          *(v11 + 984) = v112 - a5;
        }
      }
    }
  }

  return v109;
}

uint64_t spaceman_free(const char *a1, int a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = 0;
  if (obj_type(a1) == 13)
  {
    v10 = *(a1 + 49);
    v11 = a1;
  }

  else
  {
    v11 = 0;
    v10 = a1;
  }

  is_current_tx = xid_is_current_tx(v10, a5);
  v13 = 22;
  if (a4 >= 1 && is_current_tx)
  {
    v26 = 0xAAAAAAAAAAAAAAAALL;
    v13 = spaceman_get(v10, &v26);
    if (!v13)
    {
      v14 = v26;
      v15 = *(v26 + 1592);
      if (v15)
      {
        v16.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v16.i64[1] = a4;
        v15[6] = vaddq_s64(v15[6], v16);
      }

      v17 = spaceman_extent_check(v10, v14, a3, a4);
      if (v17)
      {
        v18 = v17;
        if (nx_ratelimit_log_allowed(*(*a1 + 392)))
        {
          if (obj_type(a1) == 13)
          {
            v19 = a1 + 4040;
          }

          else
          {
            v19 = (*(a1 + 48) + 212);
          }

          log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be freed: %d\n", "spaceman_free", 8742, v19, a3, a4, v18);
        }

        v13 = 22;
        goto LABEL_20;
      }

      v13 = obj_modify(v26, 0, a5);
      if (!v13)
      {
        if (*(v10 + 629) == 1)
        {
          v20 = sub_10006E898(v10, a3, a4, &v25);
          if (v20 | v25)
          {
            v13 = 0;
            goto LABEL_20;
          }

          pthread_mutex_lock((v26 + 384));
          v13 = sub_10006E920(v10, v26, a3, a4, a5);
          dev_unmap_flush(*(v10 + 384));
          if (!v13)
          {
            if (v11)
            {
              sub_10006EA1C(v11, v26, a4, a5);
            }

            v24 = v26;
            if (*(v26 + 1616))
            {
              sub_10006EB64(v26, a2, a4);
              v24 = v26;
            }

            obj_dirty(v24, a5, 0);
          }

          v23 = (v26 + 384);
        }

        else
        {
          pthread_mutex_lock((v26 + 512));
          v13 = sub_10006EC6C(v10, v26, 1, a3, a4, a5);
          if (!v13)
          {
            pthread_mutex_lock((v26 + 384));
            if (v11)
            {
              sub_10006EA1C(v11, v26, a4, a5);
            }

            v22 = v26;
            if (*(v26 + 1616))
            {
              sub_10006EB64(v26, a2, a4);
              v22 = v26;
            }

            obj_dirty(v22, a5, 0);
            pthread_mutex_unlock((v26 + 384));
          }

          v23 = (v26 + 512);
        }

        pthread_mutex_unlock(v23);
      }

LABEL_20:
      obj_release(v26);
    }
  }

  return v13;
}

uint64_t sub_10006E898(uint64_t a1, unint64_t a2, uint64_t a3, _BOOL4 *a4)
{
  v8 = *(a1 + 416);
  pthread_mutex_lock(v8 + 8);
  pthread_mutex_lock(v8 + 6);
  v9 = sub_10006F044(a1, v8, 1, a2, a3, a4, 0);
  pthread_mutex_unlock(v8 + 6);
  pthread_mutex_unlock(v8 + 8);
  return v9;
}

uint64_t sub_10006E920(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!xid_is_current_tx(a1, a5))
  {
    return 22;
  }

  v10 = spaceman_extent_check(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
    if (nx_ratelimit_log_allowed(a1))
    {
      log_err("%s:%d: %s attempt to free extent (0x%llx:0x%llx) which should not be free: %d\n", "spaceman_freed", 6134, (a1[48] + 212), a3, a4, v11);
    }

    return 22;
  }

  dev_unmap(a1[48]);

  return sub_1000705A8(a1, a2, a3, a4, 0, a5);
}

void sub_10006EA1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 376);
  pthread_mutex_lock((a2 + 576));
  v9 = *(a1 + 376);
  v10 = *(v9 + 88);
  v11 = v10 >= a3;
  v12 = v10 - a3;
  if (v11)
  {
    *(v9 + 88) = v12;
  }

  else
  {
    v13 = obj_oid(a1);
    log_err("%s:%d: %s fs %lld alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8664, (a1 + 4040), v13, *(*(a1 + 376) + 88), a3);
    v12 = 0;
    v9 = *(a1 + 376);
    *(v9 + 88) = 0;
  }

  v14 = *(v9 + 72);
  if (v14)
  {
    v15 = v14 - v12;
    if (v14 < v12)
    {
      v15 = 0;
    }

    v16 = *(a1 + 416);
    if (v15 >= *(a1 + 408))
    {
      v15 = *(a1 + 408);
    }

    v17 = *(a2 + 864);
    *(a1 + 416) = v15;
    *(a2 + 864) = v15 - v16 + v17;
  }

  v11 = v14 >= v12;
  v18 = v14 - v12;
  if (v18 != 0 && v11)
  {
    if (v18 >= a3)
    {
      v18 = a3;
    }

    v19 = *(v8 + 192);
    v20 = v19 - v18;
    if (v19 < v18)
    {
      log_err("%s:%d: %s spaceman fs reserve alloc count underflow: %lld (%lld)\n", "spaceman_free_fs_deduct_block_counts", 8680, (a1 + 4040), *(v8 + 192), v18);
      v20 = 0;
    }

    *(v8 + 192) = v20;
  }

  pthread_mutex_unlock((a2 + 576));

  fs_sb_dirty(a1, a4);
}

uint64_t sub_10006EB64(uint64_t result, int a2, unint64_t a3)
{
  if (!*(result + 1616))
  {
    return result;
  }

  v5 = result;
  if ((a2 & 0x30000) == 0)
  {
    spaceman_entitled_reserve_active(0, result);
  }

  pthread_mutex_lock((v5 + 576));
  if ((a2 & 0x40) == 0)
  {
    goto LABEL_11;
  }

  if ((a2 & 0x10000) != 0)
  {
    v6 = (v5 + 1640);
    v7 = *(v5 + 1640);
  }

  else
  {
    v6 = (v5 + 1656);
    v7 = *(v5 + 1656);
  }

  if (v7 < a3)
  {
    a3 -= v7;
    *v6 = 0;
LABEL_11:
    if (a3)
    {
      v8 = *(v5 + 1624);
      v9 = *(v5 + 1616);
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

        *(v5 + 1624) = v9;
      }

      if ((a2 & 0x40) == 0 && a3)
      {
        if ((a2 & 0x10000) != 0)
        {
          v16 = *(v5 + 1640);
          v12 = v16 >= a3;
          v17 = v16 - a3;
          if (v12)
          {
            *(v5 + 1640) = v17;
          }

          else
          {
            *(v5 + 1640) = 0;
          }
        }

        else
        {
          v14 = *(v5 + 1656);
          v12 = v14 >= a3;
          v15 = v14 - a3;
          if (v12)
          {
            *(v5 + 1656) = v15;
          }

          else
          {
            *(v5 + 1656) = 0;
          }
        }
      }
    }

    goto LABEL_25;
  }

  *v6 = v7 - a3;
LABEL_25:

  return pthread_mutex_unlock((v5 + 576));
}

uint64_t sub_10006EC6C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v36 = 0xAAAAAAAAAAAAAAAALL;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  memset(v33, 170, 24);
  v13 = spaceman_fq_tree_get(a1, a2, a3, a6, 1, &v36);
  if (!v13)
  {
    *&v32 = 0;
    *&v34 = a6;
    *(&v34 + 1) = a4;
    v30 = 8;
    v31 = 16;
    v14 = bt_lookup_variant(v36, 0, &v34, &v31, 0x10u, v35, &v30, 1u, 0, 0);
    if (v14 == 2)
    {
      goto LABEL_13;
    }

    v13 = v14;
    if (v14)
    {
      goto LABEL_43;
    }

    if (v34 != a6)
    {
      goto LABEL_13;
    }

    if (v30)
    {
      v15 = v35[0];
    }

    else
    {
      v15 = 1;
      v35[0] = 1;
    }

    if (v15 + *(&v34 + 1) <= a4)
    {
      if (v15 + *(&v34 + 1) != a4)
      {
        goto LABEL_13;
      }
    }

    else
    {
      log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4855, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v15);
      v15 = v35[0];
      a5 += a4 - (v35[0] + *(&v34 + 1));
      if (a5 < 1)
      {
        v13 = 22;
        goto LABEL_43;
      }

      a4 = v35[0] + *(&v34 + 1);
    }

    v33[0] = v34;
    v16 = v15 + a5;
    *&v33[1] = v15 + a5;
    if (v34)
    {
LABEL_14:
      v34 = v33[0];
      v30 = 8;
      v31 = 16;
      v17 = bt_lookup_variant(v36, 0, &v34, &v31, 0x10u, v35, &v30, 4u, 0, 0);
      if (v17 == 2)
      {
LABEL_31:
        v30 = 8 * (v16 != 1);
        v13 = bt_insert(v36, 0, v33, 16, &v33[1], v30, a6);
        if (!v13)
        {
          pthread_mutex_lock((a2 + 576));
          v22 = v12 + 40 * a3;
          v25 = *(v22 + 200);
          v23 = (v22 + 200);
          v24 = v25;
          if (!v25)
          {
            v23[2] = a6;
          }

          *v23 = v24 + a5;
          pthread_mutex_unlock((a2 + 576));
          obj_dirty(a2, a6, 0);
          if (v32)
          {
            v26 = bt_remove(v36, 0, &v32, 0x10u, a6);
            if (v26)
            {
              log_err("%s:%d: %s removal of replaced free extent failed: %d\n", "spaceman_fq_tree_insert", 4932, (*(a1 + 384) + 212), v26);
            }
          }

          if (spaceman_fq_tree_over_threshold(a2, a3, v36, 0))
          {
            *&v27 = 0xAAAAAAAAAAAAAAAALL;
            *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v29[2] = v27;
            v29[3] = v27;
            v29[0] = v27;
            v29[1] = v27;
            sub_1000672B8(a1, v29, 0, 0);
              ;
            }

            sub_100067BC8(a1, v29);
          }

          v13 = 0;
        }

        goto LABEL_43;
      }

      v13 = v17;
      if (!v17)
      {
        if (v34 == a6)
        {
          if (v30)
          {
            v18 = v35[0];
          }

          else
          {
            v18 = 1;
            v35[0] = 1;
          }

          v19 = v16 + *(&v33[0] + 1);
          if (*(&v34 + 1) <= v16 + *(&v33[0] + 1))
          {
            if (*(&v34 + 1) < v16 + *(&v33[0] + 1))
            {
              v20 = v18 + *(&v34 + 1);
              log_err("%s:%d: %s range 0x%llx:%lld overlaps with recently-freed range 0x%llx:%lld\n", "spaceman_fq_tree_insert", 4897, (*(a1 + 384) + 212), a4, a5, *(&v34 + 1), v18);
              if (v20 > v19)
              {
                v16 += v20 - v19;
                *&v33[1] = v16;
              }

              if (v20 >= v19)
              {
                v21 = v19;
              }

              else
              {
                v21 = v20;
              }

              a5 = a5 - v21 + *(&v34 + 1);
            }

            else
            {
              v16 += v18;
              *&v33[1] = v16;
            }

            v32 = v34;
          }
        }

        goto LABEL_31;
      }

LABEL_43:
      obj_release(v36);
      return v13;
    }

LABEL_13:
    *&v33[0] = a6;
    *(&v33[0] + 1) = a4;
    v16 = a5;
    *&v33[1] = a5;
    goto LABEL_14;
  }

  return v13;
}

uint64_t sub_10006F044(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, _BOOL4 *a6, void *a7)
{
  v7 = a6;
  v8 = a5;
  v9 = a4;
  v11 = a2;
  v60 = 0;
  v61 = 0;
  v58 = 0xAAAAAAAAAAAAAAAALL;
  v59 = 0;
  v57 = 0xAAAAAAAAAAAAAAAALL;
  if ((a3 & 2) != 0)
  {
    *a7 = 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 48);
  if (v13 <= a5 || v13 - a5 < a4)
  {
    log_err("%s:%d: %s block range %lld:%lld out of %s bounds %lld\n", "spaceman_check_allocation_status_internal", 8850, (*(a1 + 384) + 212), a4, a5, "main", *(v12 + 48));
    return 22;
  }

  if (a5 <= 0)
  {
    is_set = 0;
    overlap = 0;
    if ((a3 & 3) == 0)
    {
LABEL_58:
      if (!overlap && is_set)
      {
        v56 = 0;
        overlap = spaceman_fq_tree_find_overlap(a1, v11, 1u, v9, v8, &v56);
        if (((overlap == 0) & v56) != 0)
        {
          is_set = 0;
        }
      }
    }

LABEL_62:
    if (overlap)
    {
      log_debug("%s:%d: %s %lld:%lld error: %d\n", "spaceman_check_allocation_status_internal", 8981, (*(a1 + 384) + 212), v9, v8, overlap);
    }

    goto LABEL_64;
  }

  is_set = 0;
  v17 = 0;
  v18 = a5 + a4;
  v53 = a3 & 3;
  v19 = -1;
  while (1)
  {
    v20 = *(v12 + 40);
    v21 = v9 / *(v12 + 36);
    v52 = v21;
    v22 = v21 / v20;
    if (*(v12 + 68))
    {
      v23 = *(v12 + 44);
      v24 = v22 / v23;
      v25 = v21 / v20;
      if (v22 / v23 == v19)
      {
LABEL_16:
        LODWORD(v28) = v22 - v23 * v19;
        LODWORD(v22) = v25;
        goto LABEL_18;
      }

      v26 = *(*(v11 + 896) + 8 * v24);
      if (v61)
      {
        obj_release(v61);
        v61 = 0;
      }

      v57 = v12;
      LODWORD(v58) = 0;
      HIDWORD(v58) = v24;
      v27 = obj_get(*(a1 + 392), 0x40000000, v26, &sm_cab_desc, &v57, 0, 0, 0, &v61);
      if (!v27)
      {
        v17 = *(v61 + 56) + 40;
        v23 = *(v12 + 44);
        v19 = v24;
        v25 = v52 / *(v12 + 40);
        goto LABEL_16;
      }

      v44 = v27;
      log_err("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8877, (*(a1 + 384) + 212), v24, v26, v27);
      overlap = v44;
LABEL_57:
      v9 = a4;
      v7 = a6;
      v8 = a5;
      if (!v53)
      {
        goto LABEL_58;
      }

      goto LABEL_62;
    }

    v17 = *(v11 + 896);
    v28 = v21 / v20;
LABEL_18:
    v57 = v12;
    LODWORD(v58) = 0;
    HIDWORD(v58) = v22;
    if (!v17)
    {
      overlap = 22;
      goto LABEL_57;
    }

    v50 = v19;
    v51 = v17;
    v29 = *(v17 + 8 * v28);
    v30 = obj_get(*(a1 + 392), 0x40000000, v29, &sm_cib_desc, &v57, 0, 0, 0, &v60);
    if (v30)
    {
      overlap = v30;
      log_err("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8902, (*(a1 + 384) + 212), v52 / *(v12 + 40), v29, v30);
      goto LABEL_57;
    }

    if (v9 < v18)
    {
      break;
    }

    overlap = 0;
LABEL_46:
    obj_release(v60);
    v60 = 0;
    if (!overlap)
    {
      v17 = v51;
      v19 = v50;
      if (v9 < v18)
      {
        continue;
      }
    }

    goto LABEL_57;
  }

  v31 = v52 % *(v12 + 40);
  v32 = *(v60 + 56);
  while (1)
  {
    if (v31 >= *(v32 + 36))
    {
LABEL_42:
      overlap = 0;
LABEL_45:
      v11 = a2;
      goto LABEL_46;
    }

    v33 = v32 + 40 + 32 * v31;
    v34 = *(v33 + 24);
    if (!v34)
    {
      break;
    }

    v35 = obj_get(*(a1 + 392), 0x40000000, v34, &sm_bm_desc, 0, 0, 0, 0, &v59);
    if (v35)
    {
      overlap = v35;
      log_err("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_check_allocation_status_internal", 8929, (*(a1 + 384) + 212), v52 / *(v12 + 40), v31, v34, v35);
      goto LABEL_45;
    }

    v36 = *(v59 + 56);
    v37 = *(v12 + 36);
    v38 = v9 % v37;
    v39 = v37 - v9 % v37;
    if (v18 - v9 >= v39)
    {
      v40 = v39;
    }

    else
    {
      v40 = v18 - v9;
    }

    if (a3)
    {
      is_clear = bitmap_range_is_clear(v36, v38, v40, v39);
      v43 = a3 & 2 | is_clear;
      is_set = is_clear == 0;
      obj_release(v59);
      v59 = 0;
      if (!v43)
      {
        overlap = 0;
        is_set = 1;
        goto LABEL_53;
      }
    }

    else if ((a3 & 2) != 0)
    {
      *a7 += bitmap_count_bits(v36, 0, v38, v40 + v38);
      obj_release(v59);
      v59 = 0;
    }

    else
    {
      is_set = bitmap_range_is_set(v36, v38, v40);
      obj_release(v59);
      v59 = 0;
      if (!is_set)
      {
        goto LABEL_52;
      }
    }

LABEL_41:
    v9 += v40;
    ++v31;
    if (v9 >= v18)
    {
      goto LABEL_42;
    }
  }

  if (v53)
  {
    v41 = (*(v33 + 20) & 0xFFFFF) + v9 / *(v12 + 36) * *(v12 + 36) - v9;
    if (v18 - v9 >= v41)
    {
      v40 = v41;
    }

    else
    {
      v40 = v18 - v9;
    }

    is_set = 0;
    if (a7)
    {
      *a7 += v40;
    }

    goto LABEL_41;
  }

  is_set = 0;
LABEL_52:
  overlap = 0;
LABEL_53:
  v7 = a6;
LABEL_64:
  if (v61)
  {
    obj_release(v61);
  }

  if (v60)
  {
    obj_release(v60);
  }

  if (v59)
  {
    obj_release(v59);
  }

  *v7 = is_set;
  return overlap;
}

uint64_t spaceman_reserve(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, int *a5)
{
  v9 = a1;
  v33 = a3;
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

  v32 = 0xAAAAAAAAAAAAAAAALL;
  v34 = 0;
  v31 = 0;
  if (a3 < 1)
  {
    return 22;
  }

  v11 = spaceman_get(v9, &v32);
  if (!v11)
  {
    v11 = sub_10006BF20(v32, a2, &v34, &v31, (*(*(v9 + 376) + 48) >> 1) & 1);
    v12 = v32;
    if (!v11)
    {
      pthread_mutex_lock(v32 + 6);
      v13 = v31;
      v14 = a2 & 0x30000;
      v15 = &v34;
      do
      {
        if (!v13)
        {
          pthread_mutex_unlock(v32 + 6);
          v11 = 28;
          goto LABEL_34;
        }

        v16 = *v15;
        if (!v14)
        {
          spaceman_entitled_reserve_active(0, v32);
        }

        v17 = sub_10006BFF8(v9, v10, v32, v16, a2, &v33, a4);
        --v13;
        v15 = (v15 + 4);
      }

      while (v17 == 7);
      v11 = v17;
      if (v17)
      {
        pthread_mutex_unlock(v32 + 6);
      }

      else
      {
        pthread_mutex_lock(v32 + 9);
        v18 = v32;
        v19 = v33;
        v20 = &v32->__sig + v16;
        v20[104] += v33;
        if ((a2 & 0x40) != 0)
        {
          v20[106] += v19;
        }

        if (v10)
        {
          v21 = v10[51] + v19;
          v10[51] = v21;
          v22 = v10[47];
          v23 = *(v22 + 72);
          if (v23)
          {
            v24 = *(v22 + 88);
            v25 = v23 >= v24;
            v26 = v23 - v24;
            if (!v25)
            {
              v26 = 0;
            }

            if (v26 < v21)
            {
              v21 = v26;
            }

            v27 = *&v18[13].__opaque[24] - v10[52];
            v10[52] = v21;
            *&v18[13].__opaque[24] = v27 + v21;
          }
        }

        if (v16 == 1)
        {
          v28 = 16;
        }

        else
        {
          v28 = 8;
        }

        v29 = v28 | a2 & 0x40;
        *a5 = v29;
        if (*&v18[25].__opaque[8])
        {
          *a5 = v29 | v14;
          if ((a2 & 0x10000) != 0)
          {
            *&v18[25].__opaque[24] += v19;
          }
        }

        pthread_mutex_unlock(v18 + 9);
        pthread_mutex_unlock(v32 + 6);
        v11 = 0;
      }

LABEL_34:
      v12 = v32;
    }

    obj_release(v12);
  }

  return v11;
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

  v30 = 0xAAAAAAAAAAAAAAAALL;
  v8 = spaceman_get(v7, &v30);
  if (!v8)
  {
    v9 = (a2 >> 4) & 1;
    pthread_mutex_lock((v30 + 384));
    pthread_mutex_lock((v30 + 576));
    if (*(v30 + 832 + 8 * v9) < *(v30 + 848 + 8 * v9))
    {
      v10 = "T2";
      if (!v9)
      {
        v10 = "Main";
      }

      v11 = *(v30 + 832);
      panic("%s, Reserved space < reserved metadata: %llu < %llu\n", v10, v11, *(v30 + 848));
    }

    v12 = v30;
    v13 = *(v30 + 848 + 8 * v9);
    if ((a2 & 0x40) != 0)
    {
      if (v13 < a3)
      {
        panic("reserved metadata space underflow: %lld (%lld)\n", *(v30 + 848 + 8 * v9), a3);
      }

      *(v30 + 848 + 8 * v9) = v13 - a3;
      *(v12 + 8 * v9 + 832) -= a3;
      if (!v6)
      {
LABEL_35:
        v21 = v30;
        if ((a2 & 0x10000) == 0)
        {
LABEL_42:
          pthread_mutex_unlock((v21 + 576));
          pthread_mutex_unlock((v30 + 384));
          obj_release(v30);
          return v8;
        }

LABEL_36:
        v26 = *(v21 + 1632);
        v23 = v26 >= a3;
        v27 = v26 - a3;
        if (v23)
        {
          *(v21 + 1632) = v27;
        }

        else
        {
          if (obj_type(a1) == 13)
          {
            v28 = (a1 + 4040);
          }

          else
          {
            v28 = (*(a1 + 384) + 212);
          }

          log_err("%s:%d: %s entitled reserve: reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9216, v28, *(v30 + 1632), a3);
          v21 = v30;
          *(v30 + 1632) = 0;
        }

        goto LABEL_42;
      }
    }

    else
    {
      v14 = *(v30 + 832 + 8 * v9);
      if (v14 - v13 >= a3)
      {
        *(v30 + 832 + 8 * v9) = v14 - a3;
        if (!v6)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (obj_type(a1) == 13)
        {
          v15 = (a1 + 4040);
        }

        else
        {
          v15 = (*(a1 + 384) + 212);
        }

        log_err("%s:%d: %s reserved space underflow: %lld (+meta:%llu) < %lld\n", "spaceman_unreserve", 9191, v15, *(v30 + 8 * v9 + 832) - v13, v13, a3);
        *(v30 + 8 * v9 + 832) = v13;
        if (!v6)
        {
          goto LABEL_35;
        }
      }
    }

    v16 = v6[51];
    v17 = v16 - a3;
    if (v16 < a3)
    {
      if (obj_type(a1) == 13)
      {
        v18 = (a1 + 4040);
      }

      else
      {
        v18 = (*(a1 + 384) + 212);
      }

      log_err("%s:%d: %s fs reserved space underflow: %lld (%lld)\n", "spaceman_unreserve", 9200, v18, v6[51], a3);
      v17 = 0;
    }

    v6[51] = v17;
    v19 = v6[47];
    v20 = *(v19 + 72);
    v21 = v30;
    if (v20)
    {
      v22 = *(v19 + 88);
      v23 = v20 >= v22;
      v24 = v20 - v22;
      if (!v23)
      {
        v24 = 0;
      }

      if (v24 < v17)
      {
        v17 = v24;
      }

      v25 = *(v30 + 864) - v6[52];
      v6[52] = v17;
      *(v21 + 864) = v25 + v17;
    }

    if ((a2 & 0x10000) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_36;
  }

  return v8;
}

uint64_t spaceman_fs_bounds_clear(void *a1, uint64_t a2, unint64_t a3)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  result = spaceman_get(a1, &v28);
  if (!result)
  {
    v6 = *&v28[5].__opaque[48];
    result = obj_modify(v28, 0, a3);
    if (!result)
    {
      pthread_mutex_lock(v28 + 6);
      pthread_mutex_lock(v28 + 9);
      v7 = *(a2 + 376);
      v8 = v7[9];
      v9 = v7[11];
      if (v9)
      {
        v10 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld alloc block count is not zero: %lld/%lld\n", "spaceman_fs_bounds_clear", 9426, (a2 + 4040), v10, v9, v8);
        v7 = *(a2 + 376);
        if (v7[9])
        {
          goto LABEL_8;
        }
      }

      else
      {
        v11 = v7[9];
        if (v8)
        {
          goto LABEL_8;
        }
      }

      if (!v7[10])
      {
        v20 = v28;
LABEL_25:
        pthread_mutex_unlock(v20 + 9);
        pthread_mutex_unlock(v28 + 6);
        obj_release(&v28->__sig);
        return 0;
      }

LABEL_8:
      if (v9 >= v8)
      {
        v9 = v8;
      }

      v12 = *(v6 + 184);
      if (v12 < v8)
      {
        v13 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve block count %lld larger than global fs reserve block count %lld\n", "spaceman_fs_bounds_clear", 9442, (a2 + 4040), v13, v8, *(v6 + 184));
        v12 = *(v6 + 184);
        v8 = v12;
      }

      *(v6 + 184) = v12 - v8;
      v14 = *(v6 + 192);
      if (v14 < v9)
      {
        v15 = obj_oid(a2);
        log_err("%s:%d: %s file system %lld fs reserve alloc count %lld larger than global fs reserve alloc count %lld\n", "spaceman_fs_bounds_clear", 9449, (a2 + 4040), v15, v9, *(v6 + 192));
        v14 = *(v6 + 192);
        v9 = v14;
      }

      *(v6 + 192) = v14 - v9;
      p_sig = &v28->__sig;
      v17 = *&v28[25].__opaque[8];
      if (v17)
      {
        if (v8 > v9)
        {
          v18 = *&v28[25].__opaque[16];
          if (v18 < v17)
          {
            if (v8 - v9 + v18 < v17)
            {
              v17 = v8 - v9 + v18;
            }

            *&v28[25].__opaque[16] = v17;
          }
        }
      }

      v19 = *(a2 + 376);
      *(v19 + 72) = 0;
      *(v19 + 80) = 0;
      obj_dirty(p_sig, a3, 0);
      fs_sb_dirty(a2, a3);
      v20 = v28;
      v21 = *(a2 + 376);
      v22 = *(v21 + 72);
      v23 = *(v21 + 88);
      v24 = v22 >= v23;
      v25 = v22 - v23;
      if (!v24)
      {
        v25 = 0;
      }

      v26 = *(a2 + 416);
      if (v25 >= *(a2 + 408))
      {
        v25 = *(a2 + 408);
      }

      v27 = *&v28[13].__opaque[24];
      *(a2 + 416) = v25;
      *&v20[13].__opaque[24] = v25 - v26 + v27;
      goto LABEL_25;
    }
  }

  return result;
}

uint64_t spaceman_unset_block_out_range(void *a1, unint64_t a2)
{
  v2 = a1[47];
  if (!*(v2 + 1248))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = spaceman_get(a1, &v10);
  if (!v5)
  {
    v6 = *&v10[5].__opaque[48];
    v5 = obj_modify(v10, 0, a2);
    p_sig = &v10->__sig;
    if (!v5)
    {
      pthread_mutex_lock(v10 + 8);
      pthread_mutex_lock(v10 + 6);
      v5 = sub_10006F044(a1, v10, 2, *(v2 + 1240), *(v2 + 1248), &v11, &v9);
      pthread_mutex_lock(v10 + 9);
      *(v6 + 72) += v9;
      pthread_mutex_unlock(v10 + 9);
      *(a1[47] + 1240) = 0u;
      pthread_mutex_unlock(v10 + 6);
      pthread_mutex_unlock(v10 + 8);
      obj_dirty(v10, a2, 0);
      p_sig = &v10->__sig;
    }

    obj_release(p_sig);
  }

  return v5;
}

BOOL sub_10006FE58(_BOOL8 result, _DWORD *a2, uint64_t a3)
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

uint64_t sub_10006FF40(uint64_t result, uint64_t a2)
{
  if (a2 && *(a2 + 62) == 1 && (*(a2 + 63) & 1) == 0)
  {
    v3 = result;
    v7.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v7.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
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

uint64_t sub_100070018(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_1000700C0(uint64_t result, uint64_t a2, unsigned int a3, unint64_t a4)
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
    v11 = result;
    result = nx_ratelimit_log_allowed(result);
    if (result)
    {
      result = log_err("%s:%d: %s sfq %d count underflow %lld - %lld\n", "spaceman_decrement_free_queue_count", 6155, (*(v11 + 384) + 212), a3, *(*(a2 + 376) + 40 * a3 + 200), a4);
    }

    *(*(a2 + 376) + 40 * a3 + 200) = 0;
  }

  return result;
}

uint64_t sub_100070180(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5)
{
  v7 = *(*(a2 + 376) + 152);
  v9 = 0xAAAAAAAAAAAAAAAALL;
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

uint64_t sub_100070204(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (a3)
  {
    if (!*(a2 + 1540))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 512));
    v10 = *(a2 + 1540) + 16;
    v11 = 16;
  }

  else
  {
    if (!*(a2 + 1542))
    {
      return result;
    }

    pthread_mutex_unlock((a2 + 448));
    v11 = 0;
    v10 = *(a2 + 1542);
  }

  sub_10006FF40(v9, a4);
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
      dev_unmap(v9[48]);
      v13 += 16;
      --v14;
    }

    while (v14);
  }

  dev_unmap_flush(v9[48]);
  if (a3)
  {
    pthread_mutex_lock((a2 + 512));
    v18 = 384;
  }

  else
  {
    v18 = 448;
  }

  result = pthread_mutex_lock((a2 + v18));
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
        result = sub_1000705A8(v9, a2, v22, v23, 1, a5);
      }

      else
      {
        result = sub_100070368(v9, a2, v22, v23, a5);
      }

      v19 += 16;
      --v20;
    }

    while (v20);
  }

  if (a3)
  {
    result = pthread_mutex_unlock((a2 + 384));
    *(a2 + 1560) = 0;
    *(a2 + 1540) = 0;
  }

  else
  {
    *(a2 + 1552) = 0;
    *(a2 + 1542) = 0;
  }

  return result;
}

uint64_t sub_100070368(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = a2[47];
  v26 = 0;
  result = xid_is_current_tx(a1, a5);
  if (result)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    result = sub_100070180(a1, a2, a3, a4, &v27);
    if (result)
    {
      v21 = *(a1 + 384) + 212;
      if (result == 22)
      {
        return log_err("%s:%d: %s attempt to free block(s) outside of internal pool: 0x%llx:0x%llx\n");
      }

      else
      {
        return log_err("%s:%d: %s Error mapping freed IP block range 0x%llx:0x%llx to index: %d\n");
      }
    }

    else
    {
      v12 = 8 * *(v10 + 32);
      if (v12)
      {
        v13 = a4 < 1;
      }

      else
      {
        v13 = 1;
      }

      if (!v13)
      {
        v14 = v12;
        v15 = v27;
        v22 = v10;
        do
        {
          v16 = v15 / v14;
          v17 = *(a2[110] + 2 * (v15 / v14));
          result = spaceman_ip_bm_block_address(a1, v10, v17, &v25);
          if (result)
          {
            break;
          }

          result = obj_get(*(a1 + 392), 1073741825, v25, &sm_bm_desc, 0, 0, 0, a5, &v26);
          if (result)
          {
            break;
          }

          v18 = *(v26 + 56);
          v19 = v27 % v14;
          if (a4 >= (v14 - v27 % v14))
          {
            v20 = v14 - v27 % v14;
          }

          else
          {
            v20 = a4;
          }

          if (*(a2[109] + 8 * v16) != a5)
          {
            v24 = 0;
            v23 = 0;
            if (sub_1000663B8(a1, a2, a5, &v24, &v23) || sub_100070018(a1, a2, v17, a5))
            {
              return obj_release(v26);
            }

            v25 = v24;
            *(a2[110] + 2 * v16) = v23;
            *(a2[109] + 8 * v16) = a5;
          }

          bitmap_clear_range(v18, v19, v20);
          obj_dirty(v26, a5, v25);
          result = obj_release(v26);
          v15 = v27 + v20;
          v27 += v20;
          v13 = a4 <= v20;
          a4 -= v20;
          v10 = v22;
        }

        while (!v13);
      }
    }
  }

  return result;
}

uint64_t sub_1000705A8(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6)
{
  if (a4)
  {
    spaceman_handle_metazone_freed(a1, a2, a3);
  }

  v12 = sub_10006D808(a1, 0, a2, a3, a4, a6, 1, a5);
  if (!v12)
  {
    spaceman_free_extent_cache_insert(*(a2 + 1576), 0, a3, a4);
  }

  return v12;
}

unint64_t sub_100070644(unint64_t result, unsigned int a2, unint64_t a3, void *a4, uint64_t a5)
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

uint64_t sub_1000708C0(uint64_t a1, pthread_mutex_t *a2, unint64_t a3, uint64_t a4)
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
      v8 = sub_10006EC6C(a1, a2, 0, a3, 1, a4);
    }

    pthread_mutex_unlock(a2 + 7);
  }

  return v8;
}

uint64_t spaceman_metazone_init(uint64_t a1, unint64_t a2)
{
  v26 = 0;
  if (*(a1 + 637) == 1)
  {
    log_debug("%s:%d: %s Skipping metazone_init() as backing store is sparse\n", "spaceman_metazone_init", 72, (*(a1 + 384) + 212));
    return 0;
  }

  memset(v27, 170, sizeof(v27));
  v2 = spaceman_get(a1, &v26);
  if (v2)
  {
    return v2;
  }

  v4 = v26;
  if (!v26)
  {
    return 19;
  }

  if (!*(v26 + 376))
  {
    v2 = 19;
    goto LABEL_32;
  }

  if (*(v26 + 1112) & 1) != 0 || (*(v26 + 1216))
  {
    v2 = 0;
LABEL_32:
    obj_release(v4);
    return v2;
  }

  v5 = 0;
  v6 = 1;
  do
  {
    v7 = v6;
    v8 = v26;
    v9 = v26 + 104 * v5;
    *(v9 + 1112) = 0;
    *(v9 + 1016) = 0u;
    *(v9 + 1032) = 0u;
    *(v9 + 1048) = 0u;
    *(v9 + 1064) = 0u;
    *(v9 + 1080) = 0u;
    *(v9 + 1096) = 0u;
    v10 = *(v8 + 376);
    v11 = *(v10 + 32);
    v12 = *(v10 + 48 * v5 + 48);
    if (is_mul_ok(v12, v11))
    {
      v13 = v12 * v11;
    }

    else
    {
      v13 = 0x40000000000;
    }

    if (!spaceman_metazone_get_size(a2, v11, v12, v13, &v27[2], &v27[1]))
    {
      v14 = v8 + 104 * v5;
      v15 = v27[1] + v27[2] / v11;
      spaceman_metazone_get_partitions(v11, v27[2], v27[1], v15, v27, 0);
      v16 = v27[1];
      *(v14 + 1016) = v27[1];
      *(v14 + 1032) = v16;
      v17 = v27[0];
      *(v14 + 1024) = v27[0];
      *(v14 + 1042) = 1;
      *(v14 + 1048) = v17;
      *(v14 + 1064) = v27[0];
      *(v14 + 1056) = v15;
      *(v14 + 1074) = 1;
      *(v14 + 1113) = 1;
      v18 = v26;
      v19 = *(v26 + 1000 + 8 * v5);
      if (v19 < v15 && v19 >= v27[1])
      {
        if (v15 == v12)
        {
          v21 = 0;
        }

        else
        {
          v21 = v15;
        }

        *(v26 + 1000 + 8 * v5) = v21;
      }

      if (*(v18 + 8 * v5 + 1496))
      {
        v22 = *(*(v18 + 376) + 36);
        v23 = v27[1] / v22;
        v24 = (v15 - 1) / v22;
        if (v23 <= v24)
        {
          do
          {
            *(*(v26 + 8 * v5 + 1496) + 4 * v23++) |= 0x4000000u;
          }

          while (v23 <= v24);
          v18 = v26;
        }
      }

      *(v18 + 104 * v5 + 1112) = 1;
    }

    v6 = 0;
    v5 = 1;
  }

  while ((v7 & 1) != 0);
  v2 = 0;
  v4 = v26;
  if (v26)
  {
    goto LABEL_32;
  }

  return v2;
}

void spaceman_handle_metazone_freed(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 1112) == 1 && *(a2 + 1113) == 1)
  {
    if (*(a2 + 1016) <= a3 && *(a2 + 1024) > a3)
    {
      if (*(a2 + 1032) <= a3)
      {
        return;
      }

      v3 = (a2 + 1032);
      goto LABEL_15;
    }

    if (*(a2 + 1048) <= a3 && *(a2 + 1056) > a3)
    {
      if (*(a2 + 1064) <= a3)
      {
        return;
      }

      v3 = (a2 + 1064);
      goto LABEL_15;
    }

    if (*(a2 + 1080) <= a3 && *(a2 + 1088) > a3 && *(a2 + 1096) > a3)
    {
      v3 = (a2 + 1096);
LABEL_15:
      *v3 = a3;
    }
  }
}

uint64_t spaceman_update_metazone_alloc_index(uint64_t result, unsigned int a2, int a3, unint64_t a4)
{
  v4 = result + 104 * a2 + 1016;
  if (a3)
  {
    if (a3 == 2)
    {
      v5 = (result + 104 * a2 + 1080);
      v6 = 88;
      v7 = 80;
      v8 = 72;
    }

    else
    {
      if (a3 != 1)
      {
        return result;
      }

      v5 = (result + 104 * a2 + 1048);
      v6 = 56;
      v7 = 48;
      v8 = 40;
    }
  }

  else
  {
    v6 = 24;
    v7 = 16;
    v8 = 8;
    v5 = (result + 104 * a2 + 1016);
  }

  v9 = *v5;
  if (v9 <= a4 && *(v4 + v8) > a4)
  {
    *(v4 + v7) = a4;
LABEL_18:
    *(v4 + v6) = 0;
    return result;
  }

  if (*(v4 + v7) == v9)
  {
    *(v4 + v7) = a4;
    v10 = 1;
  }

  else
  {
    if (*(v4 + v6) < 0)
    {
      *(v4 + v7) = v9;
      goto LABEL_18;
    }

    v11 = *(v4 + v6);
    if (!v11)
    {
      *(v4 + v7) = v9;
      return result;
    }

    *(v4 + v7) = a4;
    v10 = v11 + 1;
  }

  *(v4 + v6) = v10;
  return result;
}

uint64_t spaceman_get_metazone_alloc_index(void *a1, unsigned int a2, int a3)
{
  if (a3 == 2)
  {
    v3 = &a1[13 * a2 + 137];
    if (BYTE2(a1[13 * a2 + 138]) != 1)
    {
      v3 = &a1[13 * a2 + 133];
    }
  }

  else if (a3 == 1)
  {
    v3 = &a1[13 * a2 + 133];
  }

  else if (a3)
  {
    v5 = a2;
    v6 = a1[1];
    if (v6)
    {
      v7 = (v6 + 4040);
    }

    else
    {
      v7 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s tried to get metazone alloc index for unknown type: %d\n", "spaceman_get_metazone_alloc_index", 348, v7, a3);
    v3 = &a1[v5 + 125];
  }

  else
  {
    v3 = &a1[13 * a2 + 129];
  }

  return *v3;
}

uint64_t spaceman_allocation_init(void *a1)
{
  v18 = 0;
  v2 = spaceman_get(a1, &v18);
  if (v2)
  {
    goto LABEL_17;
  }

  pthread_mutex_lock(v18 + 6);
  v3 = v18;
  v4 = *&v18[5].__opaque[48];
  if ((*(v4 + 144) & 1) == 0 || !*(v4 + 336))
  {
    v5 = *(v4 + 116);
    if (!v5)
    {
      v5 = *(v4 + 112);
    }

    v6 = (*(v4 + 128) + 8 * v5);
    v7 = *(v4 + 32);
    if (v6 + 2184 <= (v6 + v7 - 1) / v7 * v7)
    {
      memmove((v4 + 2520), (v4 + 336), v6 - 336);
      v10 = vadd_s32(*(v4 + 324), vdup_n_s32(0x888u));
      *(v4 + 324) = v10;
      v11 = (*(v4 + 332) + 2184);
      *(v4 + 332) = v11;
      v12 = (*(v4 + 80) + 2184);
      *(v4 + 80) = v12;
      v13 = (*(v4 + 128) + 2184);
      *&v3[13].__opaque[32] = v4 + v10.u32[0];
      *(v4 + 128) = v13;
      *&v3[13].__opaque[40] = v4 + v10.u32[1];
      *&v3[13].__opaque[48] = v4 + v11;
      v3[14].__sig = v4 + v12;
      *v3[14].__opaque = v4 + v13;
      *(v4 + 336) = 0x9D800000001;
      bzero((v4 + 344), 0x880uLL);
      *(v4 + 144) |= 1u;
    }

    else
    {
      v8 = *v18->__opaque;
      if (v8)
      {
        v9 = (v8 + 4040);
      }

      else
      {
        v9 = (*(*(v18->__sig + 392) + 384) + 212);
      }

      log_debug("%s:%d: %s refusing to upgrade spaceman! new_smp_size %u old_smp_size %u block_size %u\n", "spaceman_upgrade_sm_version_0_to_1", 398, v9, v6 + 2184, v6, v7);
      log_warn("%s:%d: %s failed to upgrade spaceman from version 0 to 1: %d\n", "spaceman_allocation_init", 456, (a1[48] + 212), 27);
    }
  }

  spaceman_free_queue_trim_list_init(a1, v18);
  v2 = spaceman_metazone_init(a1, 0);
  if (v2)
  {
LABEL_17:
    v16 = v2;
  }

  else
  {
    spaceman_sanitize_datazone(v18);
    v14 = 1;
    while (1)
    {
      v15 = spaceman_datazone_init(a1, v14);
      if (v15)
      {
        break;
      }

      if (++v14 == 5)
      {
        v2 = spaceman_free_extent_cache_setup(a1, v18);
        goto LABEL_17;
      }
    }

    v16 = v15;
    log_err("%s:%d: %s failed to initialize data zone for allocations of size %llu, error %d\n", "spaceman_allocation_init", 491, (a1[48] + 212), v14, v15);
  }

  if (v18)
  {
    pthread_mutex_unlock(v18 + 6);
    obj_release(&v18->__sig);
  }

  return v16;
}

const char *spaceman_sanitize_datazone(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 47);
    if (*(v2 + 144))
    {
      if (*(v2 + 336))
      {
        v3 = 0;
        v4 = v2 + 344;
        v25 = v2 + 368;
        v26 = v2 + 48;
        v5 = 1;
        do
        {
          v27 = v5;
          v6 = *(v26 + 48 * v3);
          if (v6)
          {
            v7 = 0;
            v8 = (v25 + 1088 * v3);
            do
            {
              v9 = v4 + 1088 * v3 + 136 * v7;
              if (*v9 >= v6 || ((v10 = *(v9 + 8), v10 <= v6) ? (v11 = *v9 > v10) : (v11 = 1), v11))
              {
                v12 = *(v1 + 1);
                if (v12)
                {
                  v13 = (v12 + 4040);
                }

                else
                {
                  v13 = (*(*(*v1 + 392) + 384) + 212);
                }

                result = log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid current boundaries\n", "spaceman_sanitize_datazone", 676, v13, v7);
                v14 = 1;
              }

              else
              {
                v14 = 0;
              }

              v15 = 0;
              v16 = v8;
              while (1)
              {
                v17 = *(v16 - 1);
                if (v17 >= v6)
                {
                  break;
                }

                if (*v16 > v6 || v17 > *v16)
                {
                  break;
                }

                ++v15;
                v16 += 2;
                if (v15 == 7)
                {
                  if (*(v9 + 130) <= 6u)
                  {
                    if ((v14 & 1) == 0)
                    {
                      goto LABEL_39;
                    }

                    goto LABEL_35;
                  }

LABEL_31:
                  v21 = *(v1 + 1);
                  if (v21)
                  {
                    v22 = (v21 + 4040);
                  }

                  else
                  {
                    v22 = (*(*(*v1 + 392) + 384) + 212);
                  }

                  log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary index\n", "spaceman_sanitize_datazone", 695, v22, v7);
                  goto LABEL_35;
                }
              }

              v19 = *(v1 + 1);
              if (v19)
              {
                v20 = (v19 + 4040);
              }

              else
              {
                v20 = (*(*(*v1 + 392) + 384) + 212);
              }

              log_warn("%s:%d: %s Persistent allocation zone at slot %llu has invalid previous boundary %llu\n", "spaceman_sanitize_datazone", 686, v20, v7, v15);
              if (*(v9 + 130) >= 7u)
              {
                goto LABEL_31;
              }

LABEL_35:
              v23 = *(v1 + 1);
              if (v23)
              {
                v24 = (v23 + 4040);
              }

              else
              {
                v24 = (*(*(*v1 + 392) + 384) + 212);
              }

              result = log_warn("%s:%d: %s Clearing persistent allocation zone at slot %llu\n", "spaceman_sanitize_datazone", 701, v24, v7);
              *(v9 + 128) = 0;
              *(v9 + 96) = 0u;
              *(v9 + 112) = 0u;
              *(v9 + 64) = 0u;
              *(v9 + 80) = 0u;
              *(v9 + 32) = 0u;
              *(v9 + 48) = 0u;
              *v9 = 0u;
              *(v9 + 16) = 0u;
LABEL_39:
              ++v7;
              v8 += 17;
            }

            while (v7 != 8);
          }

          v5 = 0;
          v3 = 1;
        }

        while ((v27 & 1) != 0);
      }
    }
  }

  return result;
}

uint64_t spaceman_datazone_init(void *a1, uint64_t a2)
{
  v12 = 0;
  v4 = spaceman_get(a1, &v12);
  if (v4)
  {
    return v4;
  }

  if (!v12)
  {
    return 19;
  }

  v6 = v12[47];
  if (!v6)
  {
    v4 = 19;
    goto LABEL_15;
  }

  if ((a2 - 5) < 0xFFFFFFFFFFFFFFFCLL)
  {
    v4 = 22;
    goto LABEL_15;
  }

  v7 = &v12[4 * a2 - 4];
  if (v7[156])
  {
    goto LABEL_14;
  }

  v8 = *(v6 + 56);
  if (*(v12 + 1112) != 1 || v8 < 8)
  {
    goto LABEL_14;
  }

  v10 = v7 + 153;
  *(v12 + 1352) = 1;
  *(v7 + 153) = 0u;
  *(v7 + 155) = 0u;
  v11 = spaceman_initialize_allocation_zone_from_disk(v12, 0, a2);
  if (v11)
  {
    v4 = v11;
    log_err("%s:%d: %s failed to initialize allocation zone for allocations of %llu blocks from disk: error %d\n", "spaceman_datazone_init", 600, (a1[48] + 212), a2, v11);
  }

  else
  {
    if (*(v10 + 25))
    {
LABEL_14:
      v4 = 0;
      goto LABEL_15;
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_datazone_init", 611, (a1[48] + 212), 0, a2, *v10);
    v4 = 0;
    *(v10 + 24) = 1;
  }

LABEL_15:
  if (v12)
  {
    obj_release(v12);
  }

  return v4;
}

uint64_t spaceman_initialize_allocation_zone_from_disk(void *a1, unsigned int a2, uint64_t a3)
{
  v3 = 22;
  if (a1 && (a3 - 5) >= 0xFFFFFFFFFFFFFFFCLL)
  {
    v6 = a3 - 1;
    v7 = &a1[17 * a2 + 149 + 4 * a3];
    v8 = a1[47];
    if ((*(v8 + 144) & 1) != 0 && *(v8 + 336))
    {
      v9 = v8 + 344;
      v10 = a3;
      v11 = -1;
      LOBYTE(v12) = 1;
      v13 = 8;
      v14 = v6;
      do
      {
        v15 = v14 & 7;
        v16 = *(v8 + 344 + 1088 * a2 + 136 * v15 + 128);
        if (v16 == v10)
        {
          v19 = (v9 + 1088 * a2 + 136 * v15);
          *(v7 + 16) = v19;
          v20 = sub_10007160C(a1, a2, v6, *v19 / *(v8 + 36));
          v3 = v20;
          if (v20)
          {
            v21 = a1[1];
            if (v21)
            {
              v22 = (v21 + 4040);
            }

            else
            {
              v22 = (*(*(*a1 + 392) + 384) + 212);
            }

            log_err("%s:%d: %s failed to update allocation zone boundaries: error %d\n", "spaceman_initialize_allocation_zone_from_disk", 965, v22, v20);
          }

          return v3;
        }

        v17 = v11 == -1 && v16 == 0;
        v12 = (v16 != 0) & v12;
        if (v17)
        {
          v11 = v15;
        }

        v14 = v15 + 1;
        --v13;
      }

      while (v13);
      if (v12)
      {
        goto LABEL_14;
      }

      v3 = 0;
      *(v7 + 16) = v9 + 1088 * a2 + 136 * v11;
      *(v7 + 25) = 1;
    }

    else
    {
LABEL_14:
      v3 = 0;
      *(v7 + 25) = 257;
    }
  }

  return v3;
}

void spaceman_datazone_destroy(uint64_t a1)
{
  if (a1)
  {
    v1 = 0;
    v2 = a1 + 1224;
    v3 = a1 + 1250;
    v4 = 1;
    do
    {
      v5 = v4;
      if (*(v2 + 136 * v1 + 128) == 1)
      {
        v6 = (v3 + 136 * v1);
        v7 = 4;
        do
        {
          if (*(v6 - 2) == 1 && *v6 == 1)
          {
            v8 = *(v6 - 10);
            if (v8)
            {
              *(v6 - 2) = 0;
              _apfs_free(v8, 136);
              *(v6 - 10) = 0;
            }
          }

          v6 += 32;
          --v7;
        }

        while (v7);
      }

      v4 = 0;
      v1 = 1;
    }

    while ((v5 & 1) != 0);
  }
}

uint64_t sub_10007160C(uint64_t a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    return 22;
  }

  v6 = *(a1 + 376);
  v7 = v6 + 48 * a2;
  v8 = *(v7 + 56);
  if (v8 <= a4)
  {
    return 22;
  }

  v9 = a3;
  v10 = a2;
  v11 = a1 + 136 * a2 + 32 * a3;
  v12 = v11 + 1224;
  v13 = *(v11 + 1240);
  v14 = *(v6 + 36);
  v15 = *(v7 + 48);
  v16 = *(v11 + 1224);
  v17 = *(v11 + 1250) == 1 && v13 == 0;
  if (v17)
  {
    v13 = _apfs_calloc_typed(1uLL, 0x88uLL, 0x1000040B5CA6940uLL);
    *(v12 + 16) = v13;
    if (!v13)
    {
      return 12;
    }
  }

  if (*(v12 + 24) == 1)
  {
    v18 = v13[65];
    v19 = (v13 + 8);
    v20 = 7;
    v21 = v18;
    while (1)
    {
      v22 = v21 % 7;
      v23 = &v19[16 * (v21 % 7)];
      if (*(v23 + 1))
      {
        if (*v23 / *(*(a1 + 376) + 36) == a4)
        {
          break;
        }
      }

      ++v21;
      if (!--v20)
      {
        goto LABEL_19;
      }
    }

    if (v22 == v18)
    {
LABEL_19:
      *&v19[16 * v18] = *v12;
      v13[65] = v18 + 1 - 7 * ((((v18 + 1 - ((9363 * (v18 + 1)) >> 16)) >> 1) + ((9363 * (v18 + 1)) >> 16)) >> 2);
      goto LABEL_20;
    }

    do
    {
      if (v22 == 6)
      {
        v28 = 0;
      }

      else
      {
        v28 = v22 + 1;
      }

      *&v19[16 * v22] = *&v19[16 * v28];
      v22 = v28;
    }

    while (v28 != v18);
    v29 = v18 - 1;
    v17 = v18 == 0;
    v30 = 6;
    if (!v17)
    {
      v30 = v29;
    }

    *&v19[16 * v30] = *v12;
  }

LABEL_20:
  v25 = v14 * a4;
  v26 = v14 + v14 * a4;
  if (v8 - 1 == a4)
  {
    v26 = v15;
  }

  *v13 = v25;
  *(v13 + 1) = v26;
  *v12 = v25;
  *(v12 + 8) = v26;
  v13[64] = v9 + 1;
  *(v12 + 25) = 0;
  v27 = a1 + 8 * v10;
  if (*(v12 + 24) == 1)
  {
    *(*(v27 + 1496) + 4 * (v16 / v14)) &= ~0x8000000u;
  }

  result = 0;
  *(*(v27 + 1496) + 4 * a4) |= 0x8000000u;
  return result;
}

uint64_t spaceman_get_number_of_disabled_allocation_zones(uint64_t result, unsigned int a2)
{
  if (result)
  {
    if (*(result + 136 * a2 + 1352) == 1)
    {
      v2 = (result + 136 * a2 + 1249);
      v3 = 4;
      result = 4;
      do
      {
        if ((*(v2 - 1) & 1) != 0 || (*v2 & 1) == 0)
        {
          result = (result - 1);
        }

        v2 += 32;
        --v3;
      }

      while (v3);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t spaceman_evaluate_chunk_for_disabled_allocation_zones(void *a1, unsigned int a2, unint64_t a3, _BYTE *a4)
{
  if (!a1 || LOBYTE(a1[17 * a2 + 169]) != 1 || *(a1[47] + 48 * a2 + 56) <= a3)
  {
    return 22;
  }

  v8 = 0;
  for (i = &a1[17 * a2 + 156] + 1; ; i += 32)
  {
    if ((*(i - 1) & 1) == 0 && *i == 1)
    {
      v10 = *(a1[a2 + 187] + 4 * a3);
      v11 = v10 & 0xC000000;
      v12 = *&v10 & 0xFFFFFFLL;
      if (!v11 && v8 < v12)
      {
        break;
      }
    }

    if (++v8 == 4)
    {
      return 0;
    }
  }

  v16 = sub_10007160C(a1, a2, v8, a3);
  v17 = a1[1];
  if (v16)
  {
    v14 = v16;
    if (v17)
    {
      v18 = (v17 + 4040);
    }

    else
    {
      v18 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_err("%s:%d: %s failed to assign chunk %llu to allocation zone %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1135, v18, a3, v8);
  }

  else
  {
    if (v17)
    {
      v19 = (v17 + 4040);
    }

    else
    {
      v19 = (*(*(*a1 + 392) + 384) + 212);
    }

    log_debug("%s:%d: %s allocation zone on dev %d for allocations of %llu blocks starting at paddr %llu\n", "spaceman_evaluate_chunk_for_disabled_allocation_zones", 1140, v19, a2, v8 + 1, *(i - 25));
    v14 = 0;
    *(i - 1) = 1;
    *a4 = 1;
  }

  return v14;
}

uint64_t spaceman_get_new_chunk_for_allocation_zone(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4)
{
  v4 = 22;
  if (a1)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a3;
      if (a3 <= 1 && a4 <= 3)
      {
        v8 = *(a2 + 376);
        memset(v76, 170, 32);
        v74 = 0;
        v75 = 0;
        v9 = a3;
        v10 = a2 + 136 * a3 + 32 * a4;
        v11 = *(v10 + 1224);
        v12 = v8[9];
        v13 = *(v10 + 1240);
        v14 = v8 + 12;
        v15 = *&v8[12 * a3 + 14];
        if (!v13)
        {
          goto LABEL_14;
        }

        v16 = *(v13 + 130);
        v17 = v13 + 16;
        v18 = 7;
        while (1)
        {
          v19 = (v17 + 16 * v16);
          v20 = v19[1];
          if (v20)
          {
            if (v20 <= *&v14[12 * a3])
            {
              v21 = *v19 / v12;
              v22 = *(*(v5 + 1496 + 8 * a3) + 4 * v21);
              v23 = v22 & 0xC000000;
              v24 = *&v22 & 0xFFFFFFLL;
              if (!v23 && v24 > a4)
              {
                break;
              }
            }
          }

          v16 = (v16 + 1 - 7 * ((613566757 * (v16 + 1)) >> 32));
          if (!--v18)
          {
            goto LABEL_14;
          }
        }

        if (v21 < v15)
        {
          v32 = 0;
LABEL_55:
          v57 = sub_10007160C(v5, v6, a4, v21);
          if (v57)
          {
            v4 = v57;
            v63 = *(a1 + 384) + 212;
            log_err("%s:%d: %s failed to update allocate zone %llu: error %d\n");
          }

          else
          {
            v59 = *(v5 + 1592);
            if (v59)
            {
              ++*(v59 + (v9 << 6) + 8 * a4 + 120);
            }

            if (*(v5 + 1600))
            {
              v60 = (*(v5 + 1608) + 16 * *(v5 + 1604));
              v4 = 0;
              *v60 = get_timestamp();
              v60[1] = (16 * (v21 & 0xFFFFFFFFFFLL)) | (2 * a4) | (v32 << 44) | v9;
              v61 = *(v5 + 1604);
              if ((v61 + 1) < *(v5 + 1600))
              {
                v62 = v61 + 1;
              }

              else
              {
                v62 = 0;
              }

              *(v5 + 1604) = v62;
            }

            else
            {
              v4 = 0;
            }
          }
        }

        else
        {
LABEL_14:
          v26 = v11 / v12;
          v27 = v8[10];
          v28 = v15 - 1;
          v30 = v26 + 1 == v27 || v26 == v28;
          v31 = &v14[12 * a3];
          LODWORD(v14) = v31[4];
          if (v14 > v30)
          {
            v72 = 0;
            v32 = 0;
            v69 = v31;
            v70 = (v26 / v27);
            v66 = v26;
            v67 = v5 + 896;
            v65 = v5;
            v33 = v5 + 1496;
            v71 = -1;
            v21 = -1;
            do
            {
              v34 = (v70 + v30) % v14;
              if (v31[5])
              {
                v35 = v8[11];
                v36 = v34 / v35;
                v37 = v71;
                v38 = v72;
                if (v34 / v35 != v71 || v72 == 0)
                {
                  v40 = *(*(v67 + 8 * v9) + 8 * v36);
                  if (v75)
                  {
                    obj_release(v75);
                    v75 = 0;
                  }

                  v76[2] = v8;
                  v76[3] = __PAIR64__(v36, a3);
                  v41 = obj_get(*(a1 + 392), 0x40000000, v40, &sm_cab_desc, &v76[2], 0, 0, 0, &v75);
                  if (v41)
                  {
                    v4 = v41;
                    log_err("%s:%d: %s error getting cab %d: %d\n", "spaceman_get_new_chunk_for_allocation_zone", 1248, (*(a1 + 384) + 212), v36, v41);
                    goto LABEL_58;
                  }

                  v38 = *(v75 + 56);
                  v35 = v8[11];
                  v37 = v36;
                }

                v71 = v37;
                v72 = v38;
                v42 = (v38 + 8 * (v34 - v35 * v37) + 40);
                v6 = a3;
              }

              else
              {
                v42 = (*(v67 + 8 * v9) + 8 * v34);
              }

              v43 = *v42;
              v76[0] = v8;
              v76[1] = __PAIR64__(v34, v6);
              v44 = obj_get(*(a1 + 392), 0x40000000, v43, &sm_cib_desc, v76, 0, 0, 0, &v74);
              if (v44)
              {
                v4 = v44;
                v64 = *(a1 + 384) + 212;
                log_err("%s:%d: %s error getting cib %d: %d\n");
                goto LABEL_58;
              }

              if (v30)
              {
                LODWORD(v45) = 0;
              }

              else
              {
                LODWORD(v45) = v66 % v8[10] + 1;
              }

              v31 = v69;
              v46 = *(v74 + 56);
              v47 = *(v46 + 36);
              v48 = v47 >= v45;
              v49 = v47 - v45;
              if (v49 != 0 && v48)
              {
                v50 = v34 * v8[10];
                v45 = v45;
                v51 = (v46 + 32 * v45 + 60);
                v52 = v21;
                do
                {
                  v53 = *v51;
                  v51 += 8;
                  v54 = v53 & 0xFFFFF;
                  if (v32 < v54)
                  {
                    v21 = v50 + v45;
                    v55 = *(*(v33 + 8 * v9) + 4 * (v50 + v45));
                    if ((v55 & 0xC000000) == 0 && (*&v55 & 0xFFFFFFuLL) > a4)
                    {
                      v32 = v54;
                      v52 = v50 + v45;
                      if (v54 == v8[9])
                      {
                        break;
                      }
                    }
                  }

                  ++v45;
                  v21 = v52;
                  --v49;
                }

                while (v49);
              }

              if (v32 == v8[9])
              {
                break;
              }

              obj_release(v74);
              v74 = 0;
              ++v30;
              v14 = v69[4];
            }

            while (v30 < v14);
            v5 = v65;
            if (v21 != -1)
            {
              goto LABEL_55;
            }
          }

          v4 = 28;
        }

LABEL_58:
        if (v75)
        {
          obj_release(v75);
        }

        if (v74)
        {
          obj_release(v74);
        }
      }
    }
  }

  return v4;
}