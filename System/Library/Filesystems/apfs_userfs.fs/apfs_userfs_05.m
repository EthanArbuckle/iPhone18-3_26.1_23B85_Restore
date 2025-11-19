void sub_10003D180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    *(a1 + 144) = a2;
  }

  else
  {
    v5 = *a1;
    if ((atomic_fetch_or_explicit((a1 + 32), 0, memory_order_relaxed) & 1) == 0)
    {
      pthread_mutex_lock(v5);
      sub_10003CDB8(a1, a2, a3);

      sub_1000357DC(v5);
    }
  }
}

uint64_t sub_10003D208(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  pthread_mutex_lock(*a1);
  v5 = *(a1 + 16);
  if ((v5 & 0x20000000000) != 0)
  {
    do
    {
      *(a1 + 16) = v5 | 0x80;
      v7 = sub_100011A68(&v4[20].__opaque[40], v4, 2, 0);
      v5 = *(a1 + 16);
    }

    while ((v5 & 0x20000000000) != 0);
    v6 = v7;
  }

  else
  {
    v6 = 0;
  }

  v8 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v8;
  sub_1000357DC(v4);
  return v6;
}

uint64_t sub_10003D294(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) != 0)
  {
    return (4 * atomic_fetch_or_explicit((a1 + 32), 4u, memory_order_relaxed)) & 0x10;
  }

  else
  {
    return sub_1000033FC(*(*a1 + 392));
  }
}

uint64_t sub_10003D2CC(uint64_t a1)
{
  if ((*(a1 + 19) & 0x80) == 0)
  {
    return sub_1000033FC(*(*a1 + 392));
  }

  if ((atomic_fetch_and_explicit((a1 + 32), 0xFFFFFFFB, memory_order_relaxed) & 4) != 0)
  {
    return 0;
  }

  return 22;
}

uint64_t sub_10003D308(uint64_t a1)
{
  v1 = *a1;
  if ((*(a1 + 19) & 0x80) != 0)
  {
    pthread_mutex_lock(*a1);
    v5 = *(a1 + 16);
    if ((v5 & 0x2000000000) != 0)
    {
      *(a1 + 16) = v5 & 0xFFFFFFDFFFFFFFFFLL;
      sub_1000357DC(v1);
      return 0;
    }

    else
    {
      sub_1000357DC(v1);
      return 22;
    }
  }

  else
  {
    v2 = *v1[6].__opaque;

    return sub_1000033FC(v2);
  }
}

uint64_t sub_10003D394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + 36);
  if (v4 > 0xA)
  {
    if (v4 != 11)
    {
      if (v4 == 13)
      {
        return sub_10002E140(a1, a2, a3, a4);
      }

      return 22;
    }

    return sub_10003FB1C(a1, a2, a3, a4);
  }

  else
  {
    if (v4 != 2)
    {
      if (v4 == 3)
      {
        return sub_100027B00(a1, a2, 0, a3, a4);
      }

      return 22;
    }

    return sub_100027D0C(a1, a2, a3, a4);
  }
}

void sub_10003D3FC(uint64_t a1)
{
  pthread_mutex_lock(a1);
  for (i = *(a1 + 744); i; i = *(i + 88))
  {
    if ((*(i + 20) & 0x20) != 0)
    {
      sub_100012128("%s:%d: %s Unknown object loaded from checkpoint: oid 0x%llx type 0x%x/0x%x\n", "obj_checkpoint_check_for_unknown", 6228, (*(*(a1 + 392) + 384) + 212), *(i + 112), *(i + 36), *(i + 40));
    }
  }

  sub_1000357DC(a1);
}

unint64_t sub_10003D4A0(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 48);
  atomic_fetch_add_explicit((*(*(*a1 + 392) + 376) + 984), 1uLL, memory_order_relaxed);
  return sub_10001C6A8(v3, (v3 + 8), (v4 - 8), 0, a2, a3);
}

uint64_t sub_10003D4FC(int64x2_t *a1, int a2)
{
  pthread_mutex_lock((qword_100070590 + 8));
  v4 = a1[82].i64[1];
  a1[82].i64[1] = v4 | 1;
  if (a2)
  {
    a1[82].i64[1] = v4 | 3;
    v5 = qword_100070590;
    v6 = (qword_100070590 + 80);
    v7 = *(qword_100070590 + 80);
    a1[60].i64[0] = v7;
    if (v7)
    {
      *(v7 + 968) = a1 + 60;
    }

    *v6 = a1;
    a1[60].i64[1] = v6;
  }

  else
  {
    v5 = qword_100070590;
    v8 = qword_100070590 + 72;
    v9 = *(qword_100070590 + 72);
    a1[60].i64[0] = v9;
    if (v9)
    {
      *(v9 + 968) = a1 + 60;
    }

    *(v5 + 72) = a1;
    a1[60].i64[1] = v8;
    ++*(v5 + 104);
    *(v5 + 136) = vaddq_s64(*(v5 + 136), a1[61]);
    *(v5 + 152) += a1[62].i64[0];
  }

  return pthread_mutex_unlock((v5 + 8));
}

uint64_t sub_10003D5DC(uint64_t a1)
{
  v15.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v15.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v15);
  v3 = *(a1 + 904);
  if (v3)
  {
    v4 = 0;
    tv_sec = v15.tv_sec;
    do
    {
      v6 = *(*(a1 + 896) + 8 * v4);
      if (v6)
      {
        add_explicit = atomic_fetch_add_explicit((v6 + 24), 0, memory_order_relaxed);
        v9 = (-(add_explicit >> 44) & 0xFFFFF) != 0 || (add_explicit & 0xFFFFFF) > ((add_explicit >> 24) & 0xFFFFF);
        v10 = v6 + 88;
        if (*(v6 + 88) != 3735928559)
        {
          result = sub_10003D748(v6);
        }

        if (!v9 && *(v6 + 36) != 13)
        {
          *(v6 + 160) = tv_sec;
          v11 = *(v6 + 16);
          if ((v11 & 0x400000000000) != 0)
          {
            atomic_fetch_or_explicit((v6 + 32), 0x20u, memory_order_relaxed);
            v13 = *(a1 + 816);
            *(v6 + 88) = 0;
            *(v6 + 96) = v13;
            *v13 = v6;
            *(a1 + 816) = v10;
            ++*(a1 + 924);
          }

          else
          {
            *(v6 + 88) = 0;
            if ((v11 & 0x40000000) != 0)
            {
              v14 = *(a1 + 800);
              *(v6 + 96) = v14;
              *v14 = v6;
              *(a1 + 800) = v10;
              ++*(a1 + 920);
            }

            else
            {
              v12 = *(a1 + 784);
              *(v6 + 96) = v12;
              *v12 = v6;
              *(a1 + 784) = v10;
              ++*(a1 + 916);
            }
          }
        }

        atomic_fetch_and_explicit((v6 + 32), 0xFFFFEFu, memory_order_release);
        v3 = *(a1 + 904);
      }

      ++v4;
    }

    while (v4 < v3);
  }

  *(a1 + 904) = 0;
  return result;
}

uint64_t sub_10003D748(uint64_t result)
{
  v1 = *(result + 88);
  if (v1 != 3735928559)
  {
    v2 = *result;
    if ((*(result + 32) & 0x20) != 0)
    {
      atomic_fetch_and_explicit((result + 32), 0xFFFFFFDF, memory_order_relaxed);
      v5 = *(result + 96);
      v6 = v2 + 204;
      if (v1)
      {
        v6 = (v1 + 96);
      }

      *v6 = v5;
      *v5 = v1;
      --v2[231];
    }

    else
    {
      v3 = *(result + 96);
      v4 = (v1 + 96);
      if ((*(result + 19) & 0x40) != 0)
      {
        if (!v1)
        {
          v4 = v2 + 200;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[230];
      }

      else
      {
        if (!v1)
        {
          v4 = v2 + 196;
        }

        *v4 = v3;
        *v3 = v1;
        --v2[229];
      }
    }

    *(result + 88) = 3735928559;
  }

  return result;
}

void sub_10003D7FC(uint64_t a1, const char *a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20 = v4;
  v21 = v4;
  v18 = v4;
  v19 = v4;
  v16 = v4;
  v17 = v4;
  *v14 = v4;
  v15 = v4;
  v5 = backtrace(v14, 16);
  v6 = backtrace_symbols(v14, v5);
  v7 = *(a1 + 112);
  fprintf(__stderrp, "Allocated %s object with OID %lld flags %llx type %x %d from\n", a2, v7, *(a1 + 16), *(a1 + 36), *(a1 + 40));
  if (v5 >= 1)
  {
    v8 = v5;
    v9 = v14;
    v10 = v6;
    do
    {
      v12 = *v9++;
      v11 = v12;
      v13 = *v10++;
      fprintf(__stderrp, "\t%16p %s\n", v11, v13);
      --v8;
    }

    while (v8);
  }

  free(v6);
}

void sub_10003D914(void *a1, unsigned __int16 a2, int a3)
{
  if (a3 == 376)
  {
    goto LABEL_2;
  }

  if (a2 > 0xCu)
  {
    if (a2 <= 0x18u)
    {
      if (a2 == 13)
      {
        v3 = 6256;
        goto LABEL_3;
      }

      if (a2 != 17)
      {
        if (a2 == 18)
        {
          v3 = 384;
          goto LABEL_3;
        }

        goto LABEL_2;
      }
    }

    else
    {
      if (a2 <= 0x1Cu)
      {
        if (a2 == 25)
        {
          v3 = 416;
          goto LABEL_3;
        }

        if (a2 != 27)
        {
          goto LABEL_2;
        }

LABEL_24:
        v3 = 392;
        goto LABEL_3;
      }

      if (a2 == 29)
      {
        goto LABEL_24;
      }

      if (a2 != 30)
      {
        goto LABEL_2;
      }
    }

    v3 = 400;
    goto LABEL_3;
  }

  if (a2 > 5u)
  {
    if (a2 - 6 >= 3)
    {
      if (a2 == 11)
      {
        v3 = 496;
        goto LABEL_3;
      }

      goto LABEL_2;
    }
  }

  else if (a2 - 2 >= 2)
  {
    if (a2 == 1)
    {
      v3 = 1192;
      goto LABEL_3;
    }

    if (a2 == 5)
    {
      v3 = 1664;
      goto LABEL_3;
    }

LABEL_2:
    v3 = 376;
LABEL_3:
    sub_1000123F8(a1, v3);
    return;
  }

  sub_1000123AC(a1, 4u);
}

uint64_t sub_10003D9FC(uint64_t a1)
{
  v2 = 0;
  if ((*(a1 + 16) & 2) != 0 || sub_100039ABC(*(a1 + 36), &v2))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

void sub_10003DA44(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = sub_10003D9FC(a1);
    if (v3)
    {
      v4 = v3(a1);
      if (v4)
      {
        v5 = *(a1 + 8);
        if (v5)
        {
          v6 = (v5 + 4040);
        }

        else
        {
          v6 = (*(*(*a1 + 392) + 384) + 212);
        }

        sub_100012178("%s:%d: %s oid 0x%llx flags 0x%llx type 0x%x/0x%x error destroying: %d\n", "obj_destroy_complete", 3043, v6, *(a1 + 112), *(a1 + 16), *(a1 + 36), *(a1 + 40), v4);
      }
    }
  }

  if (*(a1 + 88) != 3735928559)
  {
    panic("object to be freed is on a list, o %p oid 0x%llx flags 0x%llx 0x%x type 0x%x/0x%x refs 0x%llx list %p/%p\n", a1, *(a1 + 112), *(a1 + 16), *(a1 + 32), *(a1 + 36), *(a1 + 40), *(a1 + 24), *(a1 + 88), *(a1 + 96));
  }

  j__pthread_rwlock_destroy((a1 + 176));
  sub_10003518C(*(a1 + 56), *(a1 + 48), *(a1 + 16), *a1);
  v7 = *(a1 + 36);
  v8 = *(a1 + 44);

  sub_10003D914(a1, v7, v8);
}

void sub_10003DB60(uint64_t a1, int8x16_t a2, int8x16_t a3)
{
  v4 = 0;
  v5 = *(a1 + 120);
  v20 = 16000;
  v6 = *(a1 + 136);
  if (v5)
  {
    v7 = (a1 + 120);
  }

  else
  {
    v7 = 0;
  }

  if (*(a1 + 152) == 1)
  {
    v4 = *(a1 + 160);
  }

  v8 = *v6;
  v9 = *(a1 + 96);
  v10 = *(a1 + 144);
  v11 = v10 & 0xFFFF0000;
  if (v5)
  {
    v11 |= v5;
    v12 = *(a1 + 124);
    if (v9)
    {
LABEL_8:
      pthread_mutex_lock(*v6);
      *(v6 + 52) = v9;
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  if ((*(v6 + 18) & 0x8002000) != 0)
  {
    pthread_mutex_lock(*v6);
    *(v6 + 52) = 0;
  }

  else
  {
    v18 = sub_10003C604(*(a1 + 136), a2, a3);
    pthread_mutex_lock(v8);
    *(v6 + 52) = v18;
    if (v18)
    {
LABEL_9:
      v13 = *(v6 + 16);
      *(v6 + 16) = v13 & 0xFFFFFE7FFFFFFFFBLL;
      if ((v13 & 4) != 0)
      {
        j__pthread_cond_broadcast((*v6 + 1328));
      }

      goto LABEL_16;
    }
  }

  if (sub_10003B5D4(v6, v10, *(v6 + 112), v7, v4, *(v6 + 120), v11, v12) || (v19 = 2, v14 = sub_10003B7F4(v6, v10, *(v6 + 120), 0, &v20, &v19), (*(v6 + 52) = v14) != 0))
  {
LABEL_16:
    *(v6 + 16) = *(v6 + 16) & 0xFFFFFFEFFFFFFFF7 | 8;
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 112);
  v17 = &v8[21].__opaque[32];
  if (v15)
  {
    v17 = (v15 + 112);
  }

  *v17 = v16;
  *v16 = v15;
  sub_1000357DC(v8);
  sub_100037058(v6);
  if (*(a1 + 152) == 1)
  {
    sub_1000123F8(*(a1 + 160), *(v4 + 2));
  }

  sub_1000123F8(a1, 168);
  if (atomic_fetch_add_explicit(&v8[14].__opaque[40], 0xFFFFFFFF, memory_order_relaxed) == 1 && atomic_fetch_add_explicit(&v8[14].__opaque[36], 0, memory_order_relaxed))
  {
    pthread_mutex_lock(v8);
    j__pthread_cond_broadcast(&v8[20].__opaque[40]);

    sub_1000357DC(v8);
  }
}

atomic_ullong *sub_10003DD88(atomic_ullong *result, int a2, uint64_t a3, unint64_t a4)
{
  v5 = a2 & 0xC8000000;
  if (a2 < 0 == v4)
  {
    if (v5 != 0x40000000 && v5 != 0)
    {
LABEL_14:
      panic("unexpected storagetype: 0x%x\n", a2 & 0xC8000000);
    }

    v6 = result + 23;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 24;
      goto LABEL_17;
    }

LABEL_18:
    v9 = 5;
    goto LABEL_19;
  }

  if (v5 == 0x80000000)
  {
    v6 = result + 29;
    if (a3)
    {
      atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
      v7 = result + 30;
      goto LABEL_17;
    }

    goto LABEL_18;
  }

  if (v5 != -2013265920)
  {
    goto LABEL_14;
  }

  v6 = result + 35;
  if (!a3)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(v6, a4, memory_order_relaxed);
  v7 = result + 36;
LABEL_17:
  atomic_fetch_add_explicit(v7, a4, memory_order_relaxed);
  v9 = 3;
LABEL_19:
  atomic_fetch_add_explicit(&v6[v9], 1uLL, memory_order_relaxed);
  return result;
}

uint64_t sub_10003DE40(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_10003DE9C(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_10003DED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v9 = *(a2 + 472);
  if ((a3 & 1) == 0 && v9)
  {
    *a5 = v9;
    sub_10003C894(v9);
    return 0;
  }

  if (v9)
  {
    *a5 = v9;
    sub_10003C894(v9);
    if ((a3 & 1) == 0)
    {
      return 0;
    }

    v16 = sub_10003BC6C(*a5, (*(*(a2 + 376) + 40) >> 29) & 2, a4);
    if (v16)
    {
      v10 = v16;
      sub_100037058(*a5);
      *a5 = 0;
      return v10;
    }

LABEL_17:
    if (sub_100038018(*a5) != *(*(a2 + 376) + 48))
    {
      *(*(a2 + 376) + 48) = sub_100038018(*a5);
      sub_10003D180(a2, a4, 0);
    }

    return 0;
  }

  v12 = *(a2 + 376);
  v13 = *(v12 + 40);
  v14 = *(v12 + 48);
  v17[1] = 0;
  v18 = 0u;
  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v17[0] = sub_10003DE40;
  v17[2] = 0x20000000BLL;
  if (v13 != 2)
  {
    return 22;
  }

  v10 = sub_100026D00(a1, v13 & 0xFFFF0000, v14, 0, a3, v17, a4, a5);
  if (!v10)
  {
    v15 = 0;
    atomic_compare_exchange_strong((a2 + 472), &v15, *a5);
    if (!v15)
    {
      sub_10003C894(*a5);
    }

    if ((a3 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_17;
  }

  return v10;
}

uint64_t sub_10003E084(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_10003E0AC(void *a1)
{
  v2 = a1[7];
  v3 = *(v2 + 44);
  v4 = v3 == 1073741826 || v3 == -2147483646;
  if (v4 && ((v5 = *(v2 + 40), v5 != -2147483646) ? (v6 = v5 == 1073741826) : (v6 = 1), v6) || (result = sub_1000033FC(*(*a1 + 392)), !result))
  {
    result = 0;
    a1[47] = v2;
  }

  return result;
}

uint64_t sub_10003E124(void *a1)
{
  v2 = a1[59];
  if (v2 && !*(*a1 + 940))
  {
    sub_100037058(v2);
  }

  return 0;
}

uint64_t sub_10003E15C(uint64_t *a1, char a2, int *a3, uint64_t a4, unint64_t a5)
{
  v8 = a1[47];
  v9 = a1[1];
  v10 = *(*a1 + 392);
  if (v9)
  {
    v11 = a1[1];
  }

  else
  {
    v11 = *(*a1 + 392);
  }

  memset(v109, 170, sizeof(v109));
  v107 = -1431655766;
  v108 = -1431655766;
  v12 = *(*(v10 + 376) + 36);
  if ((a2 & 2) == 0)
  {
    if (*a3)
    {
      if (v9)
      {
        goto LABEL_7;
      }
    }

    else
    {
      *a3 = 1;
      if (v9)
      {
LABEL_7:
        v13 = sub_10003BC6C(v9, 0, a5);
        if (v13)
        {
          if (sub_100036630(v9) == 13)
          {
            v14 = (v9 + 505);
          }

          else
          {
            v14 = (v9[48] + 212);
          }

          sub_100012178("%s:%d: %s obj_modify() failed: %d\n", "omap_reap", 309, v14, v13);
        }

LABEL_25:
        v21 = *a3;
        if (*a3 == 1)
        {
          v120 = 0xAAAAAAAAAAAAAAAALL;
          *&v112[0] = 0xAAAAAAAAAAAAAAAALL;
          sub_100042EA8(v11, 0, &v120, v112, 0, 0);
          v22 = sub_10003DED0(v11, a1, 0, 0, v109);
          if (v22)
          {
            v13 = v22;
            if (sub_100036630(v11) == 13)
            {
              v23 = (v11 + 4040);
            }

            else
            {
              v23 = (*(v11 + 384) + 212);
            }

            sub_100012178("%s:%d: %s failed to get omap tree for reaping: %d\n", "omap_reap", 322, v23, v13);
            return v13;
          }

          v106 = v8;
          v25 = 0;
          v26 = 1024;
          if (*&v112[0] < 0x7D1uLL)
          {
            v26 = 102;
          }

          if (*&v112[0] >= 0x3E9uLL)
          {
            v27 = v26;
          }

          else
          {
            v27 = 51;
          }

          v107 = 16;
          v108 = 16;
          v95 = v12 - 1;
          v97 = v27;
          v100 = (v11 + 4040);
          while (1)
          {
            v28 = sub_100025428(v109[0], 0, a3 + 1, &v108, 0x10u, &v109[1], &v107, 4u, 0, 0);
            if (v28)
            {
              break;
            }

            if (v109[1])
            {
              v107 = 16;
              v108 = 16;
            }

            else
            {
              v102 = v12;
              v29 = (v95 + HIDWORD(v109[1])) / v12;
              v30 = sub_10004A66C(v11, 64, v109[2], v29, a5);
              if (v30)
              {
                v31 = v30;
                v32 = sub_100036630(v11);
                v33 = (v11 + 4040);
                if (v32 != 13)
                {
                  v33 = (*(v11 + 384) + 212);
                }

                sub_100012178("%s:%d: %s spaceman_free(%lld, %lld) failed: %d\n", "omap_reap", 349, v33, v109[2], v29, v31);
              }

              sub_10003789C(*(v10 + 392), v9, *(a3 + 1), *(a3 + 2));
              v25 += v29;
              if (v25 >= v97)
              {
                v13 = 36;
                goto LABEL_48;
              }

              v107 = 16;
              v108 = 16;
              v12 = v102;
            }
          }

          v13 = v28;
          if (v28 == 36)
          {
LABEL_48:
            v8 = v106;
            goto LABEL_60;
          }

          v13 = sub_10002822C(v109[0], a5, 0);
          v8 = v106;
          if (v13)
          {
            if (sub_100036630(v11) != 13)
            {
              v100 = (*(v11 + 384) + 212);
            }

            sub_100012178("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 373, v100, v13);
          }

          *a3 = 2;
LABEL_60:
          sub_100037058(v109[0]);
          v21 = *a3;
        }

        if (v21 != 2)
        {
          return v13;
        }

        v34 = *(v8 + 56);
        if (v34)
        {
          v35 = *(v8 + 44);
          v121 = 0u;
          v126 = 0;
          v125 = 0u;
          v124 = 0u;
          v123 = 0u;
          v122 = 0u;
          v120 = sub_10003DE9C;
          DWORD2(v121) = 19;
          if (v35 == 2)
          {
            v13 = sub_100026D00(v11, v35 & 0xFFFF0000, v34, 0, 0, &v120, 0, v109);
            if (!v13)
            {
              v13 = sub_10002822C(v109[0], a5, 0);
              if (v13)
              {
                if (sub_100036630(v11) == 13)
                {
                  v36 = (v11 + 4040);
                }

                else
                {
                  v36 = (*(v11 + 384) + 212);
                }

                sub_100012178("%s:%d: %s tree_delete() failed: %d\n", "omap_reap", 390, v36, v13);
              }

              sub_100037058(v109[0]);
              goto LABEL_73;
            }
          }

          else
          {
            v13 = 22;
          }

          if (sub_100036630(v11) == 13)
          {
            v37 = (v11 + 4040);
          }

          else
          {
            v37 = (*(v11 + 384) + 212);
          }

          sub_100012178("%s:%d: %s failed to get omap snapshot tree for reaping: %d\n", "omap_reap", 386, v37, v13);
        }

LABEL_73:
        sub_100039E90(a1, a5);
        *a3 = -1;
        return v13;
      }
    }

    v13 = 0;
    goto LABEL_25;
  }

  v118 = 0;
  v119 = 0xAAAAAAAAAAAAAAAALL;
  v117 = 0;
  memset(v116, 170, sizeof(v116));
  memset(v115, 170, sizeof(v115));
  memset(v114, 170, sizeof(v114));
  v113 = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v112[2] = v15;
  v112[3] = v15;
  v112[0] = v15;
  v112[1] = v15;
  v110 = 0xAAAAAAAAAAAAAAAALL;
  v111 = 0xAAAAAAAAAAAAAAAALL;
  sub_100042EA8(v11, 0, &v111, &v110, 0, 0);
  if (v110 >= 0x7D1)
  {
    v16 = 1024;
  }

  else
  {
    v16 = 102;
  }

  if (v110 >= 0x3E9)
  {
    v17 = v16;
  }

  else
  {
    v17 = 51;
  }

  sub_10003BBDC(a1, 2);
  v18 = *(a1 + 96);
  if (v18)
  {
      ;
    }
  }

  v105 = v17;
  *(a1 + 96) = v18 | 1;
  v19 = sub_100040940(v11, a1, a5);
  if (v19)
  {
    LODWORD(v13) = v19;
    if (sub_100036630(v11) == 13)
    {
      v20 = (v11 + 4040);
    }

    else
    {
      v20 = (*(v11 + 384) + 212);
    }

    sub_100012178("%s:%d: %s error modifying omap: %d\n", "omap_cleanup", 1431, v20, v13);
    if (v13 == 28)
    {
      v13 = 36;
    }

    else
    {
      v13 = v13;
    }

    goto LABEL_78;
  }

  v24 = sub_10003DED0(v11, a1, 1, a5, &v117);
  if (v24)
  {
    v13 = v24;
    if (sub_100036630(v11) != 13)
    {
      v39 = *(v11 + 384) + 212;
    }

    sub_100012178("%s:%d: %s error getting mapping tree: %d\n");
    goto LABEL_78;
  }

  if (*a3)
  {
    v38 = 0;
  }

  else
  {
    sub_10003C190(a1, 2);
    v116[0] = 0uLL;
    v114[0] = 0x1000000010;
    sub_100025DA4(v112, v117, 0, 0, v116, 16, 0x10u, v115, 0x10u, 0);
    v38 = 0;
    if (!sub_100025F1C(v112))
    {
      v38 = 0;
      v99 = v12 - 1;
      v104 = v12;
      while (*&v116[0] < *(v8 + 88))
      {
        v62 = sub_100025094(v117, 0, v116, 0x10u, a5);
        if (v62)
        {
          v63 = v62;
          if (sub_100036630(v11) == 13)
          {
            sub_100012178("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (v11 + 4040), *&v116[0], *(&v116[0] + 1), v63);
          }

          else
          {
            sub_100012178("%s:%d: %s remove mapping (%lld, %lld) below watermark failed: %d\n", "omap_cleanup", 1456, (*(v11 + 384) + 212), *&v116[0], *(&v116[0] + 1), v63);
          }
        }

        if ((v115[0] & 1) == 0)
        {
          v64 = (v99 + DWORD1(v115[0])) / v104;
          v65 = sub_10004A66C(v11, 64, *(&v115[0] + 1), v64, a5);
          if (v65)
          {
            v66 = v65;
            v67 = sub_100036630(v11);
            v68 = (v11 + 4040);
            if (v67 != 13)
            {
              v68 = (*(v11 + 384) + 212);
            }

            sub_100012178("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1463, v68, *(&v115[0] + 1), v64, v66);
          }

          sub_10003789C(*(v10 + 392), v9, *&v116[0], *(&v116[0] + 1));
        }

        v12 = v104;
        if (v105 == v38)
        {
          goto LABEL_198;
        }

        ++v38;
        sub_100025F38(v112);
        if (sub_100025F1C(v112))
        {
          break;
        }
      }
    }

    sub_10003BBDC(a1, 2);
  }

  v41 = *(v8 + 56);
  if (!v41)
  {
    goto LABEL_218;
  }

  v101 = v38;
  v103 = v12;
  if (*a3 && *(a3 + 4) != -1)
  {
    goto LABEL_88;
  }

  v58 = *(v8 + 44);
  v121 = 0u;
  v126 = 0;
  v125 = 0u;
  v124 = 0u;
  v123 = 0u;
  v122 = 0u;
  v120 = sub_10003DE9C;
  DWORD2(v121) = 19;
  if (v58 != 2)
  {
    v13 = 22;
LABEL_150:
    if (sub_100036630(v11) != 13)
    {
      v61 = *(v11 + 384) + 212;
    }

    goto LABEL_156;
  }

  v13 = sub_100026D00(v11, v58 & 0xFFFF0000, v41, 0, 0, &v120, a5, &v118);
  if (v13)
  {
    goto LABEL_150;
  }

  if (!*a3)
  {
    *(a3 + 2) = 0;
    *(a3 + 3) = 0;
    v77 = (a3 + 4);
    v119 = 0;
    v114[0] = 0x800000010;
    sub_100025DA4(v112, v118, 0, 0, &v119, 8, 8u, &v116[1], 0x10u, 0);
    while (!sub_100025F1C(v112))
    {
      v78 = v116[1];
      v79 = *v77;
      if (v116[1])
      {
        if (v79)
        {
          if (((a3[1] ^ LODWORD(v116[1])) & 2) != 0)
          {
            break;
          }

          *(a3 + 3) = v119;
        }

        else
        {
          v80 = v119;
          *(a3 + 2) = v119;
          *(a3 + 3) = v80;
          a3[1] = v78;
        }
      }

      else if (v79)
      {
        goto LABEL_213;
      }

      sub_100025F38(v112);
    }

    v79 = *v77;
    if (*v77)
    {
LABEL_213:
      *(a3 + 1) = v79;
      v114[0] = 0x800000010;
      v81 = sub_100025428(v118, 0, a3 + 1, v114 + 1, 8u, &v116[1], v114, 2u, 0, 0);
      if (v81)
      {
        v13 = v81;
        if (v81 != 2)
        {
          if (sub_100036630(v11) != 13)
          {
            v87 = *(v11 + 384) + 212;
          }

          goto LABEL_243;
        }

        *(a3 + 1) = 0;
      }

      *(a3 + 5) = 0;
      *(a3 + 6) = 0;
      if (sub_100036630(v11) == 13)
      {
        v82 = (v11 + 4040);
      }

      else
      {
        v82 = (*(v11 + 384) + 212);
      }

      sub_100012088("%s:%d: %s started cleaning snapshots %lld-%lld\n", "omap_cleanup", 1556, v82, *(a3 + 2), *(a3 + 3));
      a1[60] = *(a3 + 1);
      v60 = *(a3 + 3);
      a1[61] = v60;
      *a3 = 1;
      *(a1 + 96) |= 2u;
      v59 = (a3 + 8);
LABEL_228:
      *v59 = v60;
      v114[0] = 0x800000010;
      v84 = sub_100025428(v118, 0, v59, v114 + 1, 8u, &v116[1], v114, 4u, 0, 0);
      if (v84)
      {
        v13 = v84;
        if (v84 != 2)
        {
          if (sub_100036630(v11) != 13)
          {
            v85 = *(v11 + 384) + 212;
          }

          goto LABEL_243;
        }

        *v59 = -1;
      }

      goto LABEL_88;
    }

LABEL_218:
    v13 = 0;
    goto LABEL_78;
  }

  v59 = (a3 + 8);
  if (*(a3 + 4) == -1)
  {
    v60 = *(a3 + 3);
    goto LABEL_228;
  }

LABEL_88:
  if (v118)
  {
    sub_100037058(v118);
    v118 = 0;
  }

  v96 = a3[1];
  v93 = *(a3 + 3);
  v94 = *(a3 + 1);
  v92 = *(a3 + 4);
  v116[0] = *(a3 + 10);
  v114[0] = 0x1000000010;
  v42 = sub_100025428(v117, 0, v116, v114 + 1, 0x10u, v115, v114, 3u, 0, 0);
  if (v42)
  {
    v13 = v42;
    if (v42 != 2)
    {
      goto LABEL_78;
    }

    *&v116[0] = 0;
  }

  sub_10003C190(a1, 2);
  v43 = *&v116[0];
  if (!*&v116[0])
  {
    sub_10003BBDC(a1, 2);
    goto LABEL_173;
  }

  v44 = 0;
  v98 = 0;
  v91 = (v11 + 4040);
  while (1)
  {
    v45 = v44;
    if (v43 != v98)
    {
      if (v101 >= v105)
      {
        *(a3 + 10) = v116[0];
LABEL_198:
        sub_10003BBDC(a1, 2);
        v13 = 36;
        goto LABEL_78;
      }

      v45 = 0;
    }

    v98 = v43;
    v115[1] = v116[0];
    v114[0] = 0x1000000010;
    v46 = sub_100025428(v117, 0, &v115[1], v114 + 1, 0x10u, &v114[1], v114, 4u, 0, 0);
    if (v46)
    {
      break;
    }

LABEL_101:
    v44 = (v45 + 1);
    if (*(&v116[0] + 1) <= v94 || *(&v116[0] + 1) > v93)
    {
      if ((v96 & 2) != 0 && *&v115[1] == *&v116[0])
      {
        v13 = 0;
        if (*(&v115[1] + 1) <= v94 || *(&v115[1] + 1) > v92)
        {
          goto LABEL_118;
        }

        v13 = 0;
        v48 = v114[1] & 1;
      }

      else
      {
        v13 = 0;
        v48 = 0;
      }
    }

    else
    {
      if ((v96 & 2) != 0)
      {
        goto LABEL_114;
      }

      v13 = 0;
      if (*&v115[1] != *&v116[0])
      {
LABEL_118:
        v48 = 0;
        goto LABEL_129;
      }

      v48 = 0;
      if (*(&v115[1] + 1) <= v92)
      {
LABEL_114:
        v49 = sub_100025094(v117, 0, v116, 0x10u, a5);
        if (v49)
        {
          v50 = v49;
          if (sub_100036630(v11) == 13)
          {
            sub_100012178("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, v91, *&v116[0], *(&v116[0] + 1), v50);
          }

          else
          {
            sub_100012178("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1677, (*(v11 + 384) + 212), *&v116[0], *(&v116[0] + 1), v50);
          }
        }

        v51 = (v103 - 1 + DWORD1(v115[0])) / v103;
        v13 = sub_10004A66C(v11, 64, *(&v115[0] + 1), v51, a5);
        if (v13)
        {
          v52 = sub_100036630(v11);
          v53 = (v11 + 4040);
          if (v52 != 13)
          {
            v53 = (*(v11 + 384) + 212);
          }

          sub_100012178("%s:%d: %s spaceman_free(%lld, %d) failed: %d\n", "omap_cleanup", 1683, v53, *(&v115[0] + 1), v51, v13);
        }

        if ((v96 & 2) == 0)
        {
          sub_10003789C(*(v10 + 392), v9, *&v116[0], *(&v116[0] + 1));
        }

        v54 = (v96 >> 1) & 1;
        if (!v45)
        {
          LOBYTE(v54) = 1;
        }

        v48 = (LOBYTE(v114[1]) & v54);
        v44 = v45;
      }
    }

LABEL_129:
    if (v114[1])
    {
      if (v48)
      {
        v55 = sub_100025094(v117, 0, &v115[1], 0x10u, a5);
        if (v55)
        {
          v56 = v55;
          if (sub_100036630(v11) == 13)
          {
            sub_100012178("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, v91, *&v115[1], *(&v115[1] + 1), v56);
          }

          else
          {
            sub_100012178("%s:%d: %s remove mapping (%lld, %lld) failed: %d\n", "omap_cleanup", 1710, (*(v11 + 384) + 212), *&v115[1], *(&v115[1] + 1), v56);
          }
        }
      }

      v114[0] = 0x1000000010;
      v57 = sub_100025428(v117, 0, &v115[1], v114 + 1, 0x10u, &v114[1], v114, 4u, 0, 0);
      v13 = v57;
      if (v57)
      {
        if (v57 == 2)
        {
          v13 = 0;
          *&v115[1] = 0;
        }

        else if (sub_100036630(v11) == 13)
        {
          sub_100012178("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, v91, v13);
        }

        else
        {
          sub_100012178("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1727, (*(v11 + 384) + 212), v13);
        }
      }
    }

    ++v101;
    v116[0] = v115[1];
    v115[0] = *&v114[1];
    v43 = *&v115[1];
    if (!*&v115[1])
    {
      sub_10003BBDC(a1, 2);
      if (v13)
      {
        goto LABEL_78;
      }

LABEL_173:
      v69 = *(v8 + 44);
      v70 = *(v8 + 56);
      v121 = 0u;
      v126 = 0;
      v125 = 0u;
      v124 = 0u;
      v123 = 0u;
      v122 = 0u;
      v120 = sub_10003DE9C;
      DWORD2(v121) = 19;
      if (v69 == 2)
      {
        v13 = sub_100026D00(v11, v69 & 0xFFFF0000, v70, 0, 1, &v120, a5, &v118);
        if (!v13)
        {
          if (sub_100038018(v118) != *(v8 + 56))
          {
            *(v8 + 56) = sub_100038018(v118);
            sub_10003D180(a1, a5, 0);
          }

          v119 = v94;
          while (1)
          {
            v114[0] = 0x800000010;
            v71 = sub_100025428(v118, 0, &v119, v114 + 1, 8u, &v116[1], v114, 4u, 0, 0);
            if (v71)
            {
              break;
            }

            v72 = v119;
            if (v119 < v92)
            {
              v73 = sub_100025094(v118, 0, &v119, HIDWORD(v114[0]), a5);
              if (v73)
              {
                v13 = v73;
                if (sub_100036630(v11) != 13)
                {
                  v89 = *(v11 + 384) + 212;
                }

                sub_100012178("%s:%d: %s error updating snapshot tree: %d\n");
                goto LABEL_78;
              }

              --*(v8 + 36);
              if (sub_100036630(v11) == 13)
              {
                sub_100012088("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (v11 + 4040), v119, *(v8 + 36), *(v8 + 64));
              }

              else
              {
                sub_100012088("%s:%d: %s completed cleaning snapshot %lld, om_snap_count %d om_most_recent_snap %lld\n", "omap_cleanup", 1781, (*(v11 + 384) + 212), v119, *(v8 + 36), *(v8 + 64));
              }

              if ((v96 & 2) != 0)
              {
                v74 = v119;
                if (v119 >= *(v8 + 72))
                {
                  v75 = *(v8 + 80);
                  if (v119 <= v75)
                  {
                    *(v8 + 72) = v119;
                    if (v74 >= v75)
                    {
                      *(v8 + 72) = 0;
                      *(v8 + 80) = 0;
                    }
                  }
                }
              }

              sub_10003D180(a1, a5, 0);
              v72 = v119;
            }

            if (v72 >= v92)
            {
              goto LABEL_220;
            }
          }

          v13 = v71;
          if (v71 == 2)
          {
LABEL_220:
            if (v9 && (v96 & 2) != 0)
            {
              sub_100037C10(*(v10 + 392), v9, v94 + 1, v93);
            }

            if (*(v8 + 36))
            {
              v119 = -1;
              v114[0] = 0x800000010;
              v83 = sub_100025428(v118, 0, &v119, v114 + 1, 8u, &v116[1], v114, 1u, 0, 0);
              if (v83)
              {
                v13 = v83;
                goto LABEL_78;
              }

              *(v8 + 64) = v119;
            }

            else
            {
              *(v8 + 64) = 0;
              v86 = sub_10002822C(v118, a5, 0);
              if (v86)
              {
                v13 = v86;
                if (sub_100036630(v11) != 13)
                {
                  v90 = *(v11 + 384) + 212;
                }

                sub_100012178("%s:%d: %s error deleting empty snapshot tree: %d\n");
                goto LABEL_78;
              }

              *(v8 + 56) = 0;
              sub_10003D180(a1, a5, 0);
            }

            *a3 = 0;
            *(a1 + 96) &= ~2u;
            a1[60] = 0;
            a1[61] = 0;
            if (*(v8 + 56))
            {
              v13 = 36;
            }

            else
            {
              v13 = 0;
            }

            goto LABEL_78;
          }

          if (sub_100036630(v11) != 13)
          {
            v88 = *(v11 + 384) + 212;
          }

LABEL_243:
          sub_100012178("%s:%d: %s error searching snapshot tree: %d\n");
          goto LABEL_78;
        }
      }

      else
      {
        v13 = 22;
      }

      if (sub_100036630(v11) != 13)
      {
        v76 = *(v11 + 384) + 212;
      }

LABEL_156:
      sub_100012178("%s:%d: %s unable to get snapshot tree: %d\n");
      goto LABEL_78;
    }
  }

  v13 = v46;
  if (v46 == 2)
  {
    *&v115[1] = 0;
    goto LABEL_101;
  }

  if (sub_100036630(v11) != 13)
  {
    v91 = (*(v11 + 384) + 212);
  }

  sub_100012178("%s:%d: %s lookup returned unexpected error while iterating: %d\n", "omap_cleanup", 1653, v91, v13);
  *(a3 + 10) = v116[0];
  sub_10003BBDC(a1, 2);
LABEL_78:
  *(a1 + 96) &= ~1u;
  sub_10003C190(a1, 2);
  if (v118)
  {
    sub_100037058(v118);
  }

  if (v117)
  {
    sub_100037058(v117);
  }

  return v13;
}

uint64_t sub_10003F5A4(uint64_t a1, unsigned int a2, int a3, int a4, uint64_t a5, void *a6)
{
  if (sub_100036630(a1) == 13)
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

  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *a6 = 0;
  v14 = 22;
  if (a2 >> 30 && (a2 & 0x8000000) == 0 && (a4 == 1073741826 || a4 == -2147483646))
  {
    v20[0] = a3;
    v20[1] = a4;
    v20[2] = 1073741826;
    v14 = sub_100038AF0(*(v13 + 392), a2 & 0xFFFF0000, 0, &xmmword_10006A8D8, v20, v12, a5, &v22);
    if (!v14)
    {
      v23[1] = 0;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v23[0] = sub_10003DE40;
      v23[2] = 0x20000000BLL;
      v15 = 0x80000000;
      if (a4 >= 0)
      {
        v15 = 0x40000000;
      }

      v14 = sub_100026978(a1, v15 | a4 & 0xFFFF0000, 0, 0x10u, 16, v23, a5, &v21);
      if (v14)
      {
        sub_100039E90(v22, a5);
        sub_100037058(v22);
      }

      else
      {
        v16 = v21;
        *(v22[47] + 40) = a4;
        v17 = sub_100038018(v16);
        v18 = v22;
        *(v22[47] + 48) = v17;
        sub_10003D180(v18, a5, 0);
        sub_100037058(v21);
        v14 = 0;
        if (v22)
        {
          *a6 = v22;
        }
      }
    }
  }

  return v14;
}

uint64_t sub_10003F794(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  if (sub_100036630(a1) == 13)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = a1;
  if (v8)
  {
    v9 = *(v8 + 392);
  }

  v20 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10004D1DC(v9, a3))
  {
    return 22;
  }

  v10 = sub_10003A1E8(v9[49], 0x40000000, a2, &xmmword_10006A8D8, 0, v8, 0, a3, &v20);
  if (!v10)
  {
    if (v8)
    {
      v11 = sub_100038018(v8);
    }

    else
    {
      v11 = 0;
    }

    v12 = sub_100036628(v20);
    v13 = sub_10003835C(v20);
    v14 = sub_100038018(v20);
    if (a4)
    {
      v15 = sub_10000FC30(v9, v12, v13, v11, v14, a3, 0, a4);
    }

    else
    {
      v15 = sub_10000FC54(v9, v12, v13, v11, v14, a3, 0);
    }

    v10 = v15;
    if (v15)
    {
      if (sub_100036630(a1) == 13)
      {
        v16 = (a1 + 4040);
      }

      else
      {
        v16 = (*(a1 + 384) + 212);
      }

      v17 = sub_100038018(v20);
      v18 = sub_100036628(v20);
      sub_100012178("%s:%d: %s error adding omap 0x%llx type 0x%x to reap list: %d\n", "omap_destroy", 522, v16, v17, v18, v10);
    }

    sub_100037058(v20);
  }

  return v10;
}

uint64_t sub_10003F944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_100036630(a1);
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
      pthread_mutex_lock((v9 + 1152));
      v12 = (v9 + 3632);
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
      sub_10003C894(v15);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      v17 = sub_10003BC6C(*a4, a2, a3);
      if (v17)
      {
        v11 = v17;
        sub_100037058(*a4);
        goto LABEL_18;
      }
    }

    else
    {
      v18 = sub_10003A1E8(*(v10 + 392), a2 | 0x40000000, v16, &xmmword_10006A8D8, 0, v9, 0, a3, a4);
      if (v18)
      {
        v11 = v18;
LABEL_18:
        if (v9)
        {
          v19 = (v9 + 1152);
        }

        else
        {
          v19 = (v10 + 672);
        }

        goto LABEL_31;
      }

      v20 = *a4;
      v21 = (v9 + 3632);
      if (!v9)
      {
        v21 = (v10 + 736);
      }

      *v21 = v20;
      sub_10003C894(v20);
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    if (sub_100038018(*a4) != v16)
    {
      v22 = sub_100038018(*a4);
      if (v9)
      {
        *(*(v9 + 376) + 128) = v22;
        sub_100019634(v9, a3);
        goto LABEL_26;
      }

      *(*(v10 + 376) + 160) = v22;
      sub_10003D180(a1, a3, 0);
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
      v19 = (v9 + 1152);
LABEL_31:
      pthread_mutex_unlock(v19);
      return v11;
    }

    goto LABEL_30;
  }

  v11 = sub_10003BC6C(a1, 0, a3);
  if (!v11)
  {
    a2 = a2 | 2;
    goto LABEL_9;
  }

  return v11;
}

uint64_t sub_10003FB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100036630(a1);
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

  sub_10003BBDC(a3, 1);
  v10 = sub_100038364(*(*(a3 + 376) + 40));
  v11 = *(a3 + 376);
  if (!v10 || !*(v11 + 48))
  {
LABEL_12:
    if (sub_100038364(*(v11 + 44)) && (v14 = *(a3 + 376), (v15 = *(v14 + 56)) != 0))
    {
      v16 = *(v14 + 44);
      v23 = 0u;
      v24 = 0u;
      v28 = 0;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      v22 = sub_10003DE9C;
      DWORD2(v23) = 19;
      if (v16 != 2)
      {
        sub_10003C190(a3, 1);
        v18 = *(&v21 + 1);
        if (!*(&v21 + 1))
        {
          v17 = v21;
          v13 = 22;
          if (!v21)
          {
            return v13;
          }

          goto LABEL_39;
        }

        v13 = 22;
        goto LABEL_35;
      }

      v13 = sub_100026D00(a1, v16 & 0xFFFF0000, v15, 0, 0, &v22, 0, &v21);
      sub_10003C190(a3, 1);
      if (v13)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_10003C190(a3, 1);
    }

    if ((sub_100036628(a3) & 0x80000000) == 0)
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

      sub_10003CD64(a3, 1);
      goto LABEL_27;
    }

    if (a4 == 2)
    {
      v19 = sub_10003D308(a3);
    }

    else
    {
      if (a4 != 1)
      {
LABEL_27:
        v13 = 0;
        goto LABEL_32;
      }

      v19 = sub_10003D294(a3);
    }

    v13 = v19;
LABEL_32:
    v18 = *(&v21 + 1);
    if (!*(&v21 + 1))
    {
      goto LABEL_36;
    }

    if (v13)
    {
LABEL_35:
      sub_100037058(v18);
LABEL_36:
      v17 = v21;
      if (!v21)
      {
        return v13;
      }

      if (v13)
      {
LABEL_39:
        sub_100037058(v17);
        return v13;
      }

LABEL_38:
      v13 = sub_100027D0C(a1, a2, v17, a4);
      v17 = v21;
      goto LABEL_39;
    }

LABEL_34:
    v13 = sub_100027D0C(a1, a2, v18, a4);
    v18 = *(&v21 + 1);
    goto LABEL_35;
  }

  v12 = sub_10003DED0(a1, a3, 0, 0, &v21 + 1);
  if (!v12)
  {
    v11 = *(a3 + 376);
    goto LABEL_12;
  }

  v13 = v12;
  sub_10003C190(a3, 1);
  return v13;
}

uint64_t sub_10003FD94(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5, unsigned int a6, uint64_t a7)
{
  v14 = sub_100036630(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = *(a1 + 392);
    }
  }

  v22[0] = a2;
  v22[1] = a3;
  v21[0] = __PAIR64__(a5, a6);
  v21[1] = a4;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 22;
  if (sub_10004D1DC(v15, a7) && a2 && a3 && a5)
  {
    v17 = sub_100003530(*(v15 + 376), 0, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), 0);
    if (v17)
    {
      return v17;
    }

    v17 = sub_10003F944(a1, 1, a7, &v20);
    if (v17)
    {
      return v17;
    }

    else
    {
      sub_10003BBDC(v20, 2);
      v16 = sub_10003DED0(a1, v20, 1, a7, &v19);
      if (!v16)
      {
        if ((a6 & 4) != 0)
        {
          LODWORD(v21[0]) = *(v20[47] + 32) & 0x10 | a6;
        }

        v16 = sub_10001D908(v19, 0, v22, 16, v21, 0x10u, a7);
        sub_100037058(v19);
      }

      sub_10003C190(v20, 2);
      sub_100037058(v20);
    }
  }

  return v16;
}

uint64_t sub_10003FF18(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  v14 = sub_100036630(a1);
  v15 = a1;
  if (a1)
  {
    v15 = a1;
    if (v14 == 13)
    {
      v15 = *(a1 + 392);
    }
  }

  *&v33 = a2;
  *(&v33 + 1) = a3;
  v31[0] = a6;
  v31[1] = a5;
  v32 = a4;
  memset(v30, 170, sizeof(v30));
  v16 = 22;
  if (sub_10004D1DC(v15, a7))
  {
    if (a2)
    {
      if (a3)
      {
        v16 = sub_10003F944(a1, 1, a7, &v30[2]);
        if (!v16)
        {
          sub_10003BBDC(v30[2], 2);
          v16 = sub_10003DED0(a1, v30[2], 1, a7, &v30[1]);
          v17 = v30[2];
          if (v16)
          {
LABEL_42:
            sub_10003C190(v17, 2);
            sub_100037058(v30[2]);
            return v16;
          }

          v18 = *(v30[2] + 376);
          v19 = *(v18 + 64);
          if ((*(v30[2] + 384) & 2) != 0 && *(v30[2] + 488) == v19)
          {
            v19 = *(v30[2] + 480);
          }

          if (*(v18 + 32))
          {
            if (a6)
            {
              goto LABEL_21;
            }

            *v29 = v33;
            v27 = 0xAAAAAAAAAAAAAAAALL;
            v28 = 0xAAAAAAAAAAAAAAAALL;
            v30[0] = 0x1000000010;
            v21 = sub_100025428(v30[1], 0, v29, v30 + 1, 0x10u, &v27, v30, 0, 0, 0);
            if (v21)
            {
              goto LABEL_40;
            }

            if ((v27 & 2) == 0)
            {
              goto LABEL_21;
            }
          }

          else
          {
            v20 = v19 < a3;
            if (v19 < a3)
            {
              if (a6)
              {
                *v29 = v33;
                v27 = 0xAAAAAAAAAAAAAAAALL;
                v28 = 0xAAAAAAAAAAAAAAAALL;
                v30[0] = 0x1000000010;
                if (!sub_100025428(v30[1], 0, v29, v30 + 1, 0x10u, &v27, v30, 2u, 0, 0) && v29[0] == v33)
                {
                  goto LABEL_24;
                }
              }

LABEL_21:
              v22 = 0;
              v16 = 0;
              v20 = 1;
              goto LABEL_25;
            }

            if (a6)
            {
LABEL_24:
              *(&v33 + 1) = a7;
              v16 = sub_10001D908(v30[1], 0, &v33, 16, v31, 16, a7);
              v22 = 1;
LABEL_25:
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
                  *(&v33 + 1) = a3;
                  v16 = sub_100025094(v30[1], 0, &v33, 16, a7);
                  v24 = v22 ^ 1;
                  if (!v16)
                  {
                    v24 = 1;
                  }

                  if ((v24 & 1) == 0)
                  {
                    *(&v33 + 1) = a7;
                    sub_100025094(v30[1], 0, &v33, 16, a7);
LABEL_41:
                    sub_100037058(v30[1]);
                    v17 = v30[2];
                    goto LABEL_42;
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
                goto LABEL_41;
              }

              v21 = sub_10004A66C(a1, 64, a4, (a5 + *(*(v15 + 376) + 36) - 1) / *(*(v15 + 376) + 36), a7);
LABEL_40:
              v16 = v21;
              goto LABEL_41;
            }
          }

          sub_100037058(v30[1]);
          sub_10003C190(v30[2], 2);
          sub_100037058(v30[2]);
          return 0;
        }
      }
    }
  }

  return v16;
}

uint64_t sub_10004022C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t *a4, _DWORD *a5, _DWORD *a6, unint64_t *a7)
{
  v11 = a3;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v29 = a2;
  v30 = a3;
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 16;
  v26 = 16;
  v24 = 0;
  v14 = sub_10003F944(a1, 0, 0, &v32);
  if (!v14)
  {
    sub_10003BBDC(v32, 1);
    if (*(*(v32 + 376) + 88) > a2)
    {
      sub_10003C190(v32, 1);
      v14 = 2;
LABEL_33:
      sub_100037058(v32);
      return v14;
    }

    v15 = sub_10003DED0(a1, v32, 0, 0, &v31);
    if (v15)
    {
      v14 = v15;
      sub_10003C190(v32, 1);
      goto LABEL_33;
    }

    if (!v11)
    {
      v11 = -1;
      v30 = -1;
    }

    v16 = sub_100025428(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
    if (v16)
    {
      goto LABEL_9;
    }

    v18 = *(v32 + 376);
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
      v16 = sub_100025428(v31, 0, &v29, &v26, 0x10u, &v27, &v25, 1u, 0, 0);
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
      sub_100037058(v31);
      sub_10003C190(v32, 1);
      if (v17)
      {
        sub_1000405F0(a1, v32);
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
        if (((*(*(v32 + 376) + 32) ^ v22) & 0x10) != 0)
        {
          *a6 = v22 | 0x10;
        }
      }

      if (a7)
      {
        *a7 = v30;
      }

      if (*(v32 + 424))
      {
        sub_1000404A4(v32, a2, v11, &v24);
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

uint64_t sub_1000404A4(uint64_t result, unint64_t a2, unint64_t a3, _BYTE *a4)
{
  v13 = 1;
  v14 = a2;
  if (*(result + 424))
  {
    v4 = result;
    if (!*(result + 440))
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v12 = -86;
      __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
      if (__tp.tv_sec - *(v4 + 432) >= 601)
      {
        *a4 = 1;
      }

      sub_100028538(*(v4 + 424), &v13);
      v7 = v13;
      result = sub_10003835C(*(v4 + 424));
      if (v7 <= 0x200000 / result)
      {
        LODWORD(__tp.tv_sec) = 8;
        v10 = 9;
        result = sub_100025428(*(v4 + 424), 0, &v14, &__tp, 8u, &v11, &v10, 0, 0, 0);
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
        return sub_10001D908(*(v4 + 424), 0, &v14, 8, &v11, 9, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1000405F0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (sub_100036630(a1) != 13)
  {
    v3 = 0;
  }

  sub_10003BBDC(a2, 2);
  if (*(a2 + 424))
  {
    v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v6);
    if (v6.tv_sec - *(a2 + 432) >= 601)
    {
      sub_10002822C(*(a2 + 424), 0, 0);
      sub_100037058(*(a2 + 424));
      *(a2 + 424) = 0;
    }
  }

  if (v3)
  {
    if (*(v3 + 504))
    {
      v3 = *(v3 + 504);
    }

    v4 = *(v3 + 3640);
    if (v4)
    {
      sub_100037058(v4);
      *(v3 + 3640) = 0;
    }
  }

  return sub_10003C190(a2, 2);
}

uint64_t sub_1000406AC(uint64_t a1, unint64_t a2, void *a3)
{
  v18 = 0;
  v19 = 0;
  memset(v17, 170, sizeof(v17));
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v6 = sub_10003F944(a1, 0, 0, &v19);
  if (v6)
  {
    v7 = v6;
    if (sub_100036630(a1) == 13)
    {
      sub_100012178("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (a1 + 4040), v7);
    }

    else
    {
      sub_100012178("%s:%d: %s unable to get omap: %d\n", "omap_find_next_snapshot_xid", 1138, (*(a1 + 384) + 212), v7);
    }

    return v7;
  }

  v8 = v19[47];
  sub_10003BBDC(v19, 1);
  if (*(v8 + 32))
  {
    goto LABEL_16;
  }

  v9 = *(v8 + 56);
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = *(v8 + 44);
  v21 = 0u;
  v22 = 0u;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  v20 = sub_10003DE9C;
  DWORD2(v21) = 19;
  if (v10 != 2)
  {
    v7 = 22;
    goto LABEL_19;
  }

  v7 = sub_100026D00(a1, v10 & 0xFFFF0000, v9, 0, 0, &v20, 0, &v18);
  if (v7)
  {
LABEL_19:
    if (sub_100036630(a1) != 13)
    {
      v13 = *(a1 + 384) + 212;
    }

    sub_100012178("%s:%d: %s unable to get snapshot tree: %d\n");
    goto LABEL_22;
  }

  v16 = a2;
  do
  {
    v17[0] = 0x800000010;
    v11 = sub_100025428(v18, 0, &v16, v17 + 1, 8u, &v17[1], v17, 4u, 0, 0);
    if (v11)
    {
      v12 = 1;
    }

    else
    {
      v12 = (v17[1] & 1) == 0;
    }
  }

  while (!v12);
  v7 = v11;
  if (!v11)
  {
    *a3 = v16;
    goto LABEL_22;
  }

  if (v11 != 2)
  {
    if (sub_100036630(a1) != 13)
    {
      v15 = *(a1 + 384) + 212;
    }

    sub_100012178("%s:%d: %s error searching snapshot tree: %d\n");
    goto LABEL_22;
  }

LABEL_16:
  v7 = 2;
LABEL_22:
  if (v18)
  {
    sub_100037058(v18);
  }

  sub_10003C190(v19, 1);
  sub_100037058(v19);
  return v7;
}

uint64_t sub_100040940(void *a1, void *a2, unint64_t a3)
{
  if (sub_100036630(a1) == 13)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = *(v6 + 392);
    result = sub_10003BC6C(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (v6 + 1152);
  }

  else
  {
    result = sub_10003BC6C(a1, 0, a3);
    if (result)
    {
      return result;
    }

    v9 = (a1 + 84);
    v7 = a1;
  }

  pthread_mutex_lock(v9);
  v10 = sub_100038018(a2);
  v11 = sub_100036628(a2);
  if (!sub_10003BC6C(a2, (v11 >> 29) & 2, a3) && sub_100038018(a2) != v10)
  {
    v13 = sub_100038018(a2);
    if (v6)
    {
      *(*(v6 + 376) + 128) = v13;
      sub_100019634(v6, a3);
      goto LABEL_12;
    }

    *(v7[47] + 160) = v13;
    sub_10003D180(a1, a3, 0);
LABEL_16:
    v12 = (v7 + 84);
    goto LABEL_17;
  }

  if (!v6)
  {
    goto LABEL_16;
  }

LABEL_12:
  v12 = (v6 + 1152);
LABEL_17:
  pthread_mutex_unlock(v12);
  return 0;
}

uint64_t sub_100040A58(uint64_t a1, unsigned int a2, _DWORD *a3)
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
    v22 = xmmword_10006A910;
    v23 = xmmword_10006A920;
    v24 = xmmword_10006A780;
    v25 = xmmword_10006A790;
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

uint64_t sub_100040CDC(uint64_t a1)
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
  v17 = sub_10000E084(v5, *(v2 + 48), *(v6 + 180), &v70);
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
  if (v38 <= sub_100038020(a1))
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
    v45 = v44 > sub_100038020(a1);
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
      sub_100050A98(*(v3 + 384));
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
      v57 = sub_100038020(a1);
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
        v66 = sub_1000122F4(v63, 4uLL, 0x100004052888210uLL);
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
    v12 = sub_100011924((a1 + 384));
    if (v12)
    {
      goto LABEL_164;
    }

    v12 = sub_100011924((a1 + 448));
    if (!v12)
    {
      v12 = sub_100011924((a1 + 512));
      if (!v12)
      {
        v12 = sub_100011924((a1 + 576));
        if (!v12)
        {
          v12 = sub_100011924((a1 + 640));
          if (!v12)
          {
            v12 = sub_100011924((a1 + 704));
            if (!v12)
            {
              v12 = sub_10001193C((a1 + 768));
              if (!v12)
              {
LABEL_164:
                *(a1 + 1592) = sub_1000122F4(1uLL, 0xF8uLL, 0x10000401CD0A21CuLL);
                return v12;
              }

              j__pthread_mutex_destroy((a1 + 704));
            }

            j__pthread_mutex_destroy((a1 + 640));
          }

          j__pthread_mutex_destroy((a1 + 576));
        }

        j__pthread_mutex_destroy((a1 + 512));
      }

      j__pthread_mutex_destroy((a1 + 448));
    }

    j__pthread_mutex_destroy((a1 + 384));
    goto LABEL_164;
  }

  v11 = v3;
LABEL_10:
  v12 = sub_1000033FC(v11);
  if (!v12)
  {
    goto LABEL_130;
  }

  return v12;
}

uint64_t sub_100041340(uint64_t a1)
{
  sub_1000123F8(*(a1 + 1496), 4 * *(*(a1 + 376) + 56));
  sub_1000123F8(*(a1 + 1504), 4 * *(*(a1 + 376) + 104));
  v2 = *(a1 + 1608);
  if (v2)
  {
    sub_1000123F8(v2, 16 * *(a1 + 1600));
  }

  v3 = *(a1 + 1592);
  if (v3)
  {
    sub_1000123F8(v3, 248);
  }

  v4 = *(a1 + 1544);
  if (v4)
  {
    sub_1000123F8(v4, 16 * *(a1 + 1538));
  }

  sub_100030854(a1);
  v5 = *(a1 + 1576);
  if (v5)
  {
    sub_10002A174(v5);
    sub_1000123F8(*(a1 + 1576), 1368);
  }

  v6 = *(a1 + 1584);
  if (v6)
  {
    sub_10002A174(v6);
    sub_1000123F8(*(a1 + 1584), 1368);
  }

  j__pthread_mutex_destroy((a1 + 384));
  j__pthread_mutex_destroy((a1 + 448));
  j__pthread_mutex_destroy((a1 + 512));
  j__pthread_mutex_destroy((a1 + 576));
  j__pthread_mutex_destroy((a1 + 640));
  j__pthread_mutex_destroy((a1 + 704));
  sub_100011944((a1 + 768));
  return 0;
}

uint64_t sub_100041434(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = sub_10003835C(a1);
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

  return sub_1000033FC(v6);
}

uint64_t sub_100041510(void *a1, uint64_t *a2)
{
  v4 = a1[7];
  v5 = sub_10003835C(a1);
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

  return sub_1000033FC(v6);
}

uint64_t sub_1000415FC(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *(a1 + 384);
  memset(v116, 170, sizeof(v116));
  v110 = 0;
  v111 = a3;
  v109 = 0;
  *a5 = 0;
  v117 = 0;
  v113 = 0;
  v112 = 0;
  v114 = 64;
  v115 = sub_100012434(0x400uLL, 0x1000040451B5BE8uLL);
  if (v115)
  {
    if (!a3)
    {
      v112 = *(a2 + 16);
      v113 = 1;
    }

    LODWORD(v116[2]) = 0;
    v116[1] = a2;
    v11 = sub_10003839C(*(a1 + 392), 0x80000000, 0, &xmmword_10006A930, &v116[1], *(a2 + 136), a4, &v117);
    if (v11)
    {
      goto LABEL_9;
    }

    sub_10003D180(v117, a4, 0);
    v12 = *&v117[5].__opaque[48];
    *a5 = *&v117[1].__opaque[40];
    v13 = *(a1 + 376);
    v116[0] = *(v13 + 104);
    v11 = sub_100011508(a1, sub_100042104, &v111, (v13 + 112), v116, 0);
    if (v11)
    {
      goto LABEL_9;
    }

    v14 = *(a1 + 376);
    *(v14 + 104) = v116[0];
    v116[0] = *(v14 + 108);
    v11 = sub_100011508(a1, sub_100042104, &v111, (v14 + 120), v116, 0);
    if (v11 || (*(*(a1 + 376) + 108) = v116[0], v116[0] = *(v12 + 164), v11 = sub_100011508(a1, sub_100042104, &v111, (v12 + 168), v116, 0), v11) || (*(v12 + 164) = v116[0], v116[0] = *(v12 + 152), v11 = sub_100011508(a1, sub_100042104, &v111, (v12 + 176), v116, 1), v11))
    {
LABEL_9:
      v15 = v11;
    }

    else
    {
      v108 = v12;
      *(v12 + 152) = v116[0];
      if (v111 && *(v111 + 16) && HIDWORD(v114))
      {
        v18 = 0;
        v19 = 0;
        do
        {
          v20 = (*(v111 + 16))(*v111, *&v115[v18], *&v115[v18 + 8]);
          if (v20)
          {
            return v20;
          }

          ++v19;
          v18 += 16;
        }

        while (v19 < HIDWORD(v114));
      }

      v21 = sub_100012434(v108[8], 0xE4C85275uLL);
      v22 = sub_100012434(v108[8], 0xA9487841uLL);
      v15 = 12;
      v102 = v22;
      v99 = sub_100012434(v108[8], 0x7D523A3FuLL);
      if (v99 && v22 && v21)
      {
        bzero(v21, v108[8]);
        v25 = v108;
        if (v108[40])
        {
          v26 = 0;
          while (1)
          {
            v27 = v25;
            p_sig = &v117->__sig;
            *(*&v117[13].__opaque[32] + 8 * v26) = a4;
            v29 = sub_10004227C(a1, p_sig, a4, &v110, &v109);
            if (v29)
            {
              v15 = v29;
              v87 = *(a1 + 384) + 212;
              sub_100012178("%s:%d: %s failed to allocate bitmap block from IP bitmap pool: %d\n");
              goto LABEL_97;
            }

            *(*&v117[13].__opaque[40] + 2 * v26) = v109;
            v30 = sub_100050A5C(v10);
            if (v30)
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

          v15 = v30;
        }

        else
        {
LABEL_34:
          v31 = 0;
          v32 = v25 + 12;
          v33 = v99;
          v97 = v21;
          v34 = 0xFFFFFFFFLL;
          v35 = 1;
          v94 = v25 + 12;
          do
          {
            v95 = v35;
            v36 = &v32[12 * v31];
            if (v36[4])
            {
              v37 = 0;
              v100 = v31;
              v98 = v36;
              do
              {
                if (v36[5])
                {
                  v38 = v25[11];
                  if (v37 / v38 != v34)
                  {
                    if (v34 == -1)
                    {
                      v42 = v37 / v38;
                    }

                    else
                    {
                      v39 = v25;
                      sub_10003D4D4(a1, v33, v25[8], v23, v24);
                      v40 = *(*(&v117[14].__sig + v100) + 8 * v34);
                      v41 = sub_100050A5C(v10);
                      if (v41)
                      {
                        v15 = v41;
                        v89 = *(a1 + 384) + 212;
                        sub_100012178("%s:%d: %s failed to write cab %d: %d\n");
                        goto LABEL_95;
                      }

                      v42 = v37 / v39[11];
                      LODWORD(v31) = v100;
                    }

                    v34 = v42;
                    v45 = sub_100042380(a1, v117, v31, v42, v33, a4);
                    if (v45)
                    {
                      v82 = v45;
                      sub_100012178("%s:%d: %s failed to initialize cab %d: %d\n", "spaceman_create", 1042, (*(a1 + 384) + 212), v34, v45);
                      v15 = v82;
                      goto LABEL_95;
                    }

                    v38 = v108[11];
                    LODWORD(v31) = v100;
                  }

                  v105 = v34;
                  v103 = v37 - v38 * v34;
                  ++*(v33 + 36);
                  v43 = &v117->__sig;
                  v44 = (v99 + 5);
                }

                else
                {
                  v105 = v34;
                  v43 = &v117->__sig;
                  v44 = *(&v117[14].__sig + v31);
                  v103 = v37;
                }

                v46 = sub_100042454(a1, v43, v31, v37, v102, a4, &v116[3]);
                if (v46)
                {
                  v15 = v46;
                  v86 = *(a1 + 384) + 212;
                  sub_100012178("%s:%d: %s failed to initialize cib %d: %d\n");
                  goto LABEL_95;
                }

                *(v44 + 8 * v103) = v116[3];
                sub_10003D4D4(a1, v102, v108[8], v47, v48);
                v49 = *(v44 + 8 * v103);
                v50 = sub_100050A5C(v10);
                if (v50)
                {
                  v15 = v50;
                  v88 = *(a1 + 384) + 212;
                  sub_100012178("%s:%d: %s failed to write cib %d: %d\n");
                  goto LABEL_95;
                }

                ++v37;
                v36 = v98;
                v33 = v99;
                v34 = v105;
                v25 = v108;
                v31 = v100;
              }

              while (v37 < v98[4]);
            }

            v106 = v34;
            v21 = v97;
            if (v36[5])
            {
              v51 = v31;
              sub_10003D4D4(a1, v33, v25[8], v23, v24);
              v52 = *(*(&v117[14].__sig + v51) + 8 * v106);
              v53 = sub_100050A5C(v10);
              v25 = v108;
              if (v53)
              {
                v15 = v53;
                v90 = *(a1 + 384) + 212;
                sub_100012178("%s:%d: %s failed to write cab %d: %d\n");
                goto LABEL_97;
              }
            }

            v35 = 0;
            v31 = 1;
            v32 = v94;
            v34 = v106;
          }

          while ((v95 & 1) != 0);
          if (a3)
          {
            v104 = 0;
            v15 = 0;
            v54 = 1;
            v55 = v94;
            do
            {
              if (!v15)
              {
                v56 = 0;
                v57 = &v55[12 * v104];
                v58 = -1;
                v96 = v54;
                while (2)
                {
                  if (v56 >= v57[4])
                  {
                    v15 = 0;
                  }

                  else
                  {
                    v101 = v56;
                    if (v57[5])
                    {
                      v59 = v108[11];
                      if (v56 / v59 != v58)
                      {
                        v107 = v56 / v59;
                        v60 = *(*(&v117[14].__sig + v104) + 8 * (v56 / v59));
                        v61 = sub_100050964(v10);
                        if (v61 || (v61 = sub_100003490(v99, v108[8], v62, v63), v61))
                        {
                          v15 = v61;
                          v91 = *(a1 + 384) + 212;
                          sub_100012178("%s:%d: %s failed to read cab %d: %d\n");
                          goto LABEL_95;
                        }

                        v59 = v108[11];
                        v58 = v107;
                        LODWORD(v56) = v101;
                      }

                      v93 = v58;
                      v64 = &v99[v56 - v59 * v58 + 5];
                    }

                    else
                    {
                      v93 = v58;
                      v64 = (*(&v117[14].__sig + v104) + 8 * v56);
                    }

                    v92 = *v64;
                    v65 = sub_100050964(*(a1 + 384));
                    if (v65 || (v65 = sub_100003490(v102, v108[8], v66, v67), v65))
                    {
                      v15 = v65;
                      sub_100012178("%s:%d: %s failed to read cib %d: %d\n", "spaceman_create", 1110, (*(a1 + 384) + 212), v101, v65);
LABEL_84:
                      v55 = v94;
                      v54 = v96;
                    }

                    else
                    {
                      v70 = 0;
                      while (v70 < *(v102 + 36))
                      {
                        v71 = v102 + 40 + 32 * v70;
                        v72 = (*(a3 + 24))(*a3, v104, *(v71 + 8) / (8 * v108[8]) * v108[8], v108[8], v97);
                        if (v72)
                        {
                          goto LABEL_83;
                        }

                        if (!(v101 | v70))
                        {
                          sub_10001C18C(v97, 0, 1);
                        }

                        v73 = *(v71 + 16) & 0xFFFFF;
                        if (v73)
                        {
                          v74 = 0;
                          v75 = *(v71 + 20);
                          v76 = *(v57 + 3);
                          v77 = v97;
                          do
                          {
                            v78 = *v77++;
                            v79 = vcnt_s8(v78);
                            v79.i16[0] = vaddlv_u8(v79);
                            v75 -= v79.i32[0];
                            v76 -= v79.u32[0];
                            *(v57 + 3) = v76;
                            v74 += 64;
                          }

                          while (v74 < v73);
                          *(v71 + 20) = v75;
                        }

                        if (!*(v71 + 24))
                        {
                          v80 = sub_1000425C0(a1, v117, a4, &v116[3]);
                          if (v80)
                          {
                            v15 = v80;
                            sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_create", 1136, (*(a1 + 384) + 212), v80);
                            goto LABEL_84;
                          }

                          *(v71 + 24) = v116[3];
                        }

                        v72 = sub_100050A5C(v10);
                        ++v70;
                        if (v72)
                        {
LABEL_83:
                          v15 = v72;
                          goto LABEL_84;
                        }
                      }

                      sub_10003D4D4(a1, v102, v108[8], v68, v69);
                      v15 = sub_100050A5C(v10);
                      v56 = v101 + 1;
                      v55 = v94;
                      v54 = v96;
                      v58 = v93;
                      if (!v15)
                      {
                        continue;
                      }
                    }
                  }

                  break;
                }
              }

              v81 = v54 & (*(a2 + 48) != 0);
              v104 = 1;
              v54 = 0;
            }

            while ((v81 & 1) != 0);
            v21 = v97;
            if (v15)
            {
              goto LABEL_97;
            }
          }

          v83 = sub_100042948(a1, v117, v10, 0, 1uLL, a4);
          if (v83 || (*(*(a1 + 376) + 65) & 1) != 0 && (v83 = sub_100042948(a1, v117, v10, 0, 1uLL, a4), v83))
          {
            v15 = v83;
          }

          else if (HIDWORD(v114))
          {
            v84 = 0;
            v85 = 0;
            while (1)
            {
              v15 = sub_100042948(a1, v117, v10, *&v115[v84], *&v115[v84 + 8], a4);
              if (v15)
              {
                break;
              }

              ++v85;
              v84 += 16;
              v21 = v97;
              if (v85 >= HIDWORD(v114))
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
          v21 = v97;
        }
      }

LABEL_97:
      if (v99)
      {
        sub_1000123F8(v99, v108[8]);
      }

      if (v102)
      {
        sub_1000123F8(v102, v108[8]);
      }

      if (v21)
      {
        sub_1000123F8(v21, v108[8]);
      }
    }

    if (v115)
    {
      sub_1000123F8(v115, 16 * v114);
    }
  }

  else
  {
    v15 = 12;
  }

  v16 = &v117->__sig;
  if (v15 && v117)
  {
    sub_100039E90(&v117->__sig, a4);
LABEL_18:
    *a5 = 0;
    return v15;
  }

  if (!v117)
  {
    goto LABEL_18;
  }

  *a5 = *&v117[1].__opaque[40];
  sub_100037058(v16);
  return v15;
}

uint64_t sub_100042104(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v7 = a3;
  v23 = 0xAAAAAAAAAAAAAAAALL;
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
    v21 = sub_100012434(16 * (v19 + 64), 0x1000040451B5BE8uLL);
    if (!v21)
    {
      return 12;
    }

    v20 = v21;
    memcpy(v21, *(a2 + 32), 16 * *(a2 + 24));
    bzero(&v20[16 * *(a2 + 24)], 0x400uLL);
    sub_1000123F8(*(a2 + 32), 16 * *(a2 + 24));
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
  v22[1] = v7;
  *(a2 + 28) = v13 + 1;
  return result;
}

uint64_t sub_10004227C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _WORD *a5)
{
  v5 = *(a2 + 376);
  v6 = *(v5 + 320);
  if (v6 == 0xFFFF)
  {
    return 28;
  }

  if ((*(v5 + 164) & 0x7FFFFFFFu) <= v6)
  {

    return sub_1000033FC(a1);
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
    sub_10003D180(a2, a3, 0);
    *a5 = v6;

    return sub_100042DE8(a1, v5, v6, a4);
  }
}

uint64_t sub_100042380(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a2 + 376);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  v13 = sub_1000425C0(a1, a2, a6, &v17);
  v14 = v13;
  if (v13)
  {
    sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cab", 769, (*(a1 + 384) + 212), v13);
  }

  else
  {
    v15 = v17;
    *(*(a2 + 8 * a3 + 896) + 8 * a4) = v17;
    bzero(a5, *(v12 + 32));
    *(a5 + 24) = 1073741830;
    *(a5 + 8) = v15;
    *(a5 + 16) = a6;
    *(a5 + 32) = a4;
  }

  return v14;
}

uint64_t sub_100042454(uint64_t a1, uint64_t a2, int a3, unsigned int a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = *(a2 + 376);
  v27 = 0xAAAAAAAAAAAAAAAALL;
  v14 = sub_1000425C0(a1, a2, a6, &v27);
  v15 = v14;
  if (v14)
  {
    sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_init_cib", 801, (*(a1 + 384) + 212), v14);
    return v15;
  }

  v16 = v27;
  *a7 = v27;
  bzero(a5, v13[8]);
  *(a5 + 24) = 1073741831;
  *(a5 + 8) = v16;
  *(a5 + 16) = a6;
  *(a5 + 32) = a4;
  v17 = &v13[12 * a3];
  if (v17[16] - 1 != a4)
  {
    LODWORD(v18) = v13[10];
LABEL_7:
    *(a5 + 36) = v18;
    if (!v18)
    {
      return v15;
    }

    goto LABEL_8;
  }

  v18 = v13[10];
  v19 = *(v17 + 7) % v18;
  if (!v19)
  {
    goto LABEL_7;
  }

  *(a5 + 36) = v19;
  LODWORD(v18) = v19;
LABEL_8:
  v20 = v13[9];
  v21 = v13[10] * a4;
  v18 = v18;
  v22 = v21 * v20;
  v23 = ~v21 + *(v17 + 7);
  v24 = (a5 + 64);
  do
  {
    *(v24 - 3) = a6;
    *(v24 - 2) = v22;
    LODWORD(v25) = v20;
    if (!v23)
    {
      v25 = *(v17 + 6) % v20;
      if (!v25)
      {
        LODWORD(v25) = v20;
      }
    }

    *(v24 - 2) = v25;
    *(v24 - 1) = v25 & 0xFFFFF;
    *v24 = 0;
    v24 += 4;
    v22 += v20;
    --v23;
    --v18;
  }

  while (v18);
  return v15;
}

uint64_t sub_1000425C0(uint64_t a1, pthread_mutex_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = a2;
  v6 = a1;
  v7 = *&a2[5].__opaque[48];
  v45 = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0;
  v43 = 0;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (!sub_10004D1DC(a1, a3))
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
      if (sub_10004350C(v6, v5, 0, 1, 0, a3))
      {
        goto LABEL_4;
      }

      sub_100012178("%s:%d: %s unable to find free IP block or to free pending free IP blocks\n", "spaceman_ip_block_alloc", 5413, (*(v6 + 384) + 212));
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
    v17 = sub_100042DE8(v6, v7, v15, &v44);
    if (v17 || (v17 = sub_10003A1E8(*(v6 + 392), 1073741825, v44, &xmmword_10006A960, 0, 0, 0, a3, &v46), v17))
    {
      v31 = v17;
      pthread_mutex_unlock(v5 + 7);
      return v31;
    }

    v18 = v11;
    v19 = v11 % v9;
    v20 = *(v46 + 56);
    if (sub_10001C25C(0, v20, v19, v14 - v19, &v45))
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
    sub_100037058(v46);
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
    sub_10001C098(v20, v21, 1, v25);
    v5 = v37;
    v28 = a3;
    if (*(*&v37[13].__opaque[32] + 8 * v13) != a3)
    {
      v41 = 0;
      v29 = sub_10004227C(v38, v37, a3, &v43, &v41);
      if (v29 || (v29 = sub_10004C4C8(v38, v37, v15, a3), v29))
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
    sub_10003D180(v46, v28, v44);
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

  v27 = sub_100010BAC(v38, *(v16 + 176), v22, &v42, 0);
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
  sub_100037058(v46);
  return v31;
}

uint64_t sub_100042948(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    v16 = sub_100012434(*(v6 + 32), 0xBBCB36uLL);
    if (!v16)
    {
      return 12;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = sub_100012434(*(v6 + 32), 0x40CDA009uLL);
  if (!v17)
  {
    return 12;
  }

  v18 = v17;
  v19 = sub_100012434(*(v6 + 32), 0xFCE2FE6EuLL);
  if (!v19)
  {
    v11 = 12;
    v20 = v18;
    goto LABEL_52;
  }

  v20 = v19;
  v49 = v16;
  if (v12 < 1)
  {
    v11 = 0;
    goto LABEL_49;
  }

  v50 = (v16 + 5);
  v55 = v18 + 40;
  v51 = -1;
  v48 = v18;
  while (1)
  {
    v21 = v13 / *(v6 + 36);
    v22 = v21 / *(v6 + 40);
    if (!*(v6 + 68))
    {
      v30 = (*(a2 + 896) + 8 * v22);
      goto LABEL_21;
    }

    v23 = *(v6 + 44);
    v24 = v22 / v23;
    v25 = v51;
    if (v22 / v23 != v51)
    {
      break;
    }

LABEL_19:
    v51 = v25;
    v30 = &v50[8 * (v22 - v23 * v25)];
LABEL_21:
    v52 = *v30;
    v31 = sub_100050964(a3);
    if (v31 || (v31 = sub_100003490(v18, *(v6 + 32), v32, v33), v31))
    {
      v46 = v31;
      sub_100012178("%s:%d: %s failed to read cib %d: %d\n", "spaceman_allocated", 1280, (*(a1 + 384) + 212), v22, v31);
      v11 = v46;
      goto LABEL_49;
    }

    if (v12 < 1)
    {
LABEL_37:
      v38 = 0;
    }

    else
    {
      v36 = v21 % *(v6 + 40);
      while (v36 < *(v18 + 36))
      {
        v37 = v55 + 32 * v36;
        if (*(v37 + 24))
        {
          v38 = 1;
          if (sub_100050964(a3))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v56 = 0xAAAAAAAAAAAAAAAALL;
          v39 = sub_1000425C0(a1, a2, a6, &v56);
          if (v39)
          {
            sub_100012178("%s:%d: %s failed to allocate block from internal pool: %d\n", "spaceman_allocated", 1291, (*(a1 + 384) + 212), v39);
            break;
          }

          *(v37 + 24) = v56;
          bzero(v20, *(v6 + 32));
        }

        v40 = *(v6 + 36);
        v41 = v13 % v40;
        v42 = v40 - (v13 % v40);
        if (v12 >= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v12;
        }

        sub_10001C098(v20, v41, v43, v42);
        sub_10004C308(a2, v20, v13 / *(v6 + 36));
        *(v37 + 20) -= v43;
        *(v6 + 72) -= v43;
        v44 = *(v37 + 24);
        if (sub_100050A5C(a3))
        {
          v38 = 1;
          goto LABEL_41;
        }

        ++v36;
        v13 += v43;
        v8 = v12 <= v43;
        v12 -= v43;
        if (v8)
        {
          goto LABEL_37;
        }
      }

      v38 = 1;
    }

LABEL_41:
    sub_10003D4D4(a1, v18, *(v6 + 32), v34, v35);
    v45 = sub_100050A5C(a3);
    v11 = v45;
    if (!v38 || v45)
    {
      goto LABEL_49;
    }
  }

  v26 = *(*(a2 + 896) + 8 * v24);
  v27 = sub_100050964(a3);
  if (!v27)
  {
    v27 = sub_100003490(v49, *(v6 + 32), v28, v29);
    if (!v27)
    {
      v23 = *(v6 + 44);
      v25 = v24;
      v18 = v48;
      goto LABEL_19;
    }
  }

  v11 = v27;
  v18 = v48;
  sub_100012178("%s:%d: %s failed to read cab %d: %d\n", "spaceman_allocated", 1264, (*(a1 + 384) + 212), v24, v27);
LABEL_49:
  if (v49)
  {
    sub_1000123F8(v49, *(v6 + 32));
  }

  sub_1000123F8(v18, *(v6 + 32));
LABEL_52:
  sub_1000123F8(v20, *(v6 + 32));
  return v11;
}

uint64_t sub_100042D38(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = sub_100003530(*(a1 + 376), *(a2 + 376), a3, a4, 0);
  if (!result)
  {

    return sub_100010C80(a1, a3, a4, 0);
  }

  return result;
}

uint64_t sub_100042DAC(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (!a2 && !sub_100042E24(a1, &v3))
  {
    sub_100037058(v3);
  }

  return 0;
}

uint64_t sub_100042DE8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v4 = *(a2 + 164);
  if ((v4 & 0x7FFFFFFFu) <= a3)
  {
    return 22;
  }

  v5 = *(a2 + 168);
  if (v4 < 0)
  {
    return sub_100010BAC(a1, v5, a3, a4, 0);
  }

  result = 0;
  *a4 = v5 + a3;
  return result;
}

uint64_t sub_100042E24(void *a1, uint64_t *a2)
{
  v3 = a1[51];
  *a2 = v3;
  if (v3)
  {
    goto LABEL_2;
  }

  result = sub_10003A1E8(a1[49], 0x80000000, *(a1[47] + 152), &xmmword_10006A930, 0, 0, 0, 0, a2);
  if (!result)
  {
    v3 = *a2;
    a1[51] = *a2;
LABEL_2:
    sub_10003C894(v3);
    return 0;
  }

  return result;
}

uint64_t sub_100042EA8(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, BOOL *a6)
{
  v11 = a1;
  if (sub_100036630(a1) == 13)
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
  v13 = sub_100042E24(v11, &v24);
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

    v23 = sub_100042FE4(p_sig, v12, a2, a6);
    pthread_mutex_unlock(v24 + 9);
    sub_100037058(&v24->__sig);
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

unint64_t sub_100042FE4(void *a1, uint64_t a2, char a3, BOOL *a4)
{
  v7 = a1[47];
  v8 = v7;
  if ((a3 & 1) == 0)
  {
    sub_100042DAC(0, a1);
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

uint64_t sub_100043184(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, atomic_ullong *a5, unint64_t *a6, unint64_t *a7, BOOL *a8, void *a9, unint64_t *a10, BOOL *a11)
{
  v17 = a1;
  if (sub_100036630(a1) == 13)
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

  v31 = 0xAAAAAAAAAAAAAAAALL;
  if (!a5)
  {
    return 22;
  }

  v19 = sub_100042E24(v17, &v31);
  if (!v19)
  {
    pthread_mutex_lock(v31 + 9);
    v20 = sub_100042FE4(v31, v18, 0, a8);
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
    sub_100037058(&v31->__sig);
  }

  return v19;
}

uint64_t sub_1000432DC(void *a1, void *a2, unint64_t a3)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[2] = v6;
  v11[3] = v6;
  v11[0] = v6;
  v11[1] = v6;
  if (sub_100042E24(a1, &v12))
  {
    return 0;
  }

  v8 = *&v12[5].__opaque[48];
  sub_100043414(a1, v11, 0, 0);
  pthread_mutex_lock(v12 + 7);
  sub_10004350C(a1, v12, 0, 1, v11, a3);
  pthread_mutex_unlock(v12 + 7);
  pthread_mutex_lock(v12 + 8);
  v9 = sub_10004350C(a1, v12, 2u, 1, v11, a3);
  v7 = sub_10004350C(a1, v12, 1u, 1, v11, a3) + v9;
  *a2 = *(v8 + 240) + *(v8 + 280);
  pthread_mutex_unlock(v12 + 8);
  sub_100043D24(a1, v11);
  sub_100037058(&v12->__sig);
  return v7;
}

uint64_t sub_100043414(uint64_t result, uint64_t a2, int a3, int a4)
{
  if (a2)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    result = sub_100050A98(*(result + 384));
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

uint64_t sub_10004350C(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, unint64_t a6)
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
      __rqtp = xmmword_10006A7A0;
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
  if (!sub_10004464C(a1, a2, a3, 0, 0, &v69) && v69)
  {
    LODWORD(__rqtp.tv_sec) = 16;
    v67 = 8;
    v20 = sub_100025198(v69, 0, v68, &__rqtp, &v68[2], &v67);
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
        sub_10004C6B4(a1, a2, v19, v6, a6);
      }

      else
      {
        sub_10005090C(*(a1 + 384));
        if (v19)
        {
          pthread_mutex_unlock((a2 + 384));
        }

        sub_10004C3F0(a1, v6);
      }

      sub_100037058(v69);
      return v14;
    }

    v23 = 0;
    v57 = v56 + 40 * a3;
    v62 = 2;
    while (1)
    {
      if ((v23 & 1) == 0 && sub_10003BC6C(a2, 0, a6))
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
              sub_1000120D8("%s:%d: %s sfq %d processing xid %lld blocked by temporary checkpoints %lld\n", "spaceman_free_completed", 6486, (*(a1 + 384) + 212), v19, v25, *(v26 + 1408));
            }

            goto LABEL_29;
          }
        }

        v27 = *(a2 + 920);
        if (v25 > v27)
        {
          if ((a4 & 3) != 0 && v62 && v25 != a6)
          {
            sub_10004DADC(a1, 208);
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
          if (sub_100044158(a1, a2, 0, 0))
          {
            goto LABEL_29;
          }

          v28 = sub_100042D38(a1, a2, v68[1], v68[2]);
          if (v28)
          {
            v29 = v28;
            pthread_mutex_lock((a2 + 576));
            sub_10004C570(a1, a2, v19, v24);
            pthread_mutex_unlock((a2 + 576));
LABEL_59:
            if (sub_100011490(a1))
            {
              sub_100012178("%s:%d: %s sfq %d error validating extent %lld %lld: %d\n", "spaceman_free_completed", 6544, (*(a1 + 384) + 212), a3, v68[1], v24, v29);
            }

            goto LABEL_80;
          }

          if (v24 >= (4 * v55))
          {
            v24 = (4 * v55);
          }

          pthread_mutex_lock((a2 + 576));
          *(a2 + 984 + 8 * (a3 - 1)) += v24;
          sub_10004C570(a1, a2, v19, v24);
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
              sub_10004C6B4(a1, a2, v19, v6, a6);
            }

            goto LABEL_80;
          }

          sub_100050900(*(a1 + 384));
          sub_10004CA58(a1, a2, v30, v24, 1, a6);
        }

        else
        {
          sub_10004C570(a1, a2, 0, v24);
          v29 = sub_10004C630(a1, a2, v68[1], v24, 0);
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
              sub_10004C3F0(a1, v6);
              if (v41)
              {
                v42 = 0;
                v43 = 16 * v41;
                do
                {
                  v44 = (*(a2 + 1544) + v42);
                  v45 = *v44;
                  v46 = v44[1];
                  sub_100050900(*(a1 + 384));
                  v42 += 16;
                }

                while (v43 != v42);
                sub_10005090C(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
                v47 = 0;
                do
                {
                  sub_10004C818(a1, a2, *(*(a2 + 1544) + v47), *(*(a2 + 1544) + v47 + 8), a6);
                  v47 += 16;
                }

                while (v43 != v47);
              }

              else
              {
                sub_10005090C(*(a1 + 384));
                pthread_mutex_lock((a2 + 448));
              }

              *(a2 + 1552) = 0;
              *(a2 + 1542) = 0;
              v19 = a3;
              v21 = v40;
            }

            goto LABEL_80;
          }

          sub_100050900(*(a1 + 384));
          sub_10004C818(a1, a2, v36, v24, a6);
        }

        sub_10004C3F0(a1, v6);
      }

      else
      {
        sub_100012178("%s:%d: %s sfq %d entry %lld:%lld %lld - bad xid, current xid %lld\n", "spaceman_free_completed", 6459, (*(a1 + 384) + 212), v19, v68[0], v68[1], v24, a6);
        if (v19)
        {
          pthread_mutex_lock((a2 + 576));
          sub_10004C570(a1, a2, v19, v24);
          pthread_mutex_unlock((a2 + 576));
        }

        else
        {
          sub_10004C570(a1, a2, 0, v24);
        }
      }

LABEL_80:
      if (v6 && *(v6 + 62) == 1)
      {
        v48.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v48.i64[1] = v24;
        *(v6 + 40) = vaddq_s64(*(v6 + 40), v48);
      }

      v49 = sub_1000250D4(v69, 0, 0, 0, 0, 0, a6);
      if (v49)
      {
        sub_100012178("%s:%d: %s sfq %d error removing entry %lld %lld from free queue: %d\n", "spaceman_free_completed", 6556, (*(a1 + 384) + 212), a3, v68[1], v68[2], v49);
      }

      v50 = v68[2] - v24;
      if (v68[2] != v24)
      {
        v68[1] += v24;
        v68[2] -= v24;
        v67 = 8 * (v50 != 1);
        v51 = sub_10001D908(v69, 0, v68, 16, &v68[2], v67, a6);
        if (v51)
        {
          sub_100012178("%s:%d: %s sfq %d error inserting shortened entry %lld %lld into free queue: %d\n", "spaceman_free_completed", 6566, (*(a1 + 384) + 212), a3, v68[1], v68[2], v51);
        }
      }

      v14 += v24;
      LODWORD(__rqtp.tv_sec) = 16;
      v67 = 8;
      v52 = sub_100025198(v69, 0, v68, &__rqtp, &v68[2], &v67);
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

uint64_t sub_100043D24(uint64_t a1, uint64_t a2)
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

void sub_100043DE4(void *a1, uint64_t a2)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v12 = v4;
  *&v12[16] = v4;
  v10 = v4;
  v11 = v4;
  v5 = *(a2 + 16);
  if (!sub_100042E24(a1, &v13))
  {
    v6 = *&v13[5].__opaque[48];
    sub_100043414(a1, &v10, 0, 1);
    pthread_mutex_lock(v13 + 7);
    if (sub_100044158(a1, v13, 0, 0))
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

      if (!sub_10004350C(a1, v13, 0, 0, &v10, v5))
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

        if (!sub_10004350C(a1, v13, 1u, 1, &v10, v5))
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

    if (sub_100044158(a1, v13, 1u, 0))
    {
        ;
      }
    }

    if (sub_100044158(a1, v13, 2u, 0))
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

    while (v9 && v5 - v9 > LOWORD(v13[24].__sig) && sub_10004350C(a1, v13, 2u, 0, &v10, v5));
    sub_100043D24(a1, &v10);
    *(a2 + 88) = *&v12[8];
    *(a2 + 80) = *v12 - v11;
    pthread_mutex_unlock(v13 + 8);
    sub_100037058(&v13->__sig);
  }
}

uint64_t sub_100044158(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v7 = 0;
  if (!sub_10004464C(a1, a2, a3, 0, 0, &v9) && v9)
  {
    v7 = sub_100046750(a2, a3, v9, a4);
    sub_100037058(v9);
  }

  return v7;
}

uint64_t sub_1000441D8(void *a1)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  if (sub_100042E24(a1, &v14))
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
  if (v12 || sub_100044158(a1, v14, 0, 0))
  {
    v2 = 1;
  }

  else
  {
    v2 = 1;
    if (!sub_100044158(a1, v14, 1u, 0))
    {
      v2 = sub_100044158(a1, v14, 2u, 0);
    }
  }

  sub_100037058(&v14->__sig);
  return v2;
}

uint64_t sub_10004430C(uint64_t a1, uint64_t a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  result = sub_100042E24(a1, &v5);
  if (!result)
  {
    v4 = v5;
    *(v5 + 920) = a2;
    return sub_100037058(v4);
  }

  return result;
}

uint64_t sub_100044354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 376);
  v25 = 0;
  v23 = 0;
  v24 = 0;
  v9 = sub_10004464C(a1, a3, 0, 0, 0, &v24);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10004464C(a1, a3, 1u, 0, 0, &v25);
  if (v9)
  {
    goto LABEL_49;
  }

  v9 = sub_10004464C(a1, a3, 2u, 0, 0, &v23);
  if (v9)
  {
    goto LABEL_49;
  }

  if (a4 == 1)
  {
    v15 = sub_10003D294(a3);
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
      sub_100012178("%s:%d: %s IP free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3419, (*(a1 + 384) + 212), v16, v8[112], *(a2 + 16));
      v17 = 1;
      v12 = v24;
    }

    *(a3 + 976) = v17;
    goto LABEL_28;
  }

  if (a4 == 2)
  {
    v10 = sub_10003D308(a3);
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
    v11 = sub_100027D0C(a1, a2, v12, a4);
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
        v11 = sub_100027D0C(a1, a2, v13, a4);
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
        sub_100012178("%s:%d: %s main free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3434, (*(a1 + 384) + 212), v18, v8[132], *(a2 + 16));
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
        v9 = sub_100027D0C(a1, a2, v14, a4);
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
        sub_100012178("%s:%d: %s tier2 free queue tree is too large: %lld nodes (limit %d) xid %lld\n", "spaceman_checkpoint_traverse", 3449, (*(a1 + 384) + 212), v20, v8[152], *(a2 + 16));
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
    sub_100037058(v24);
  }

  if (v25)
  {
    sub_100037058(v25);
  }

  if (v23)
  {
    sub_100037058(v23);
  }

  return v11;
}

uint64_t sub_10004464C(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int a5, uint64_t *a6)
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
    result = sub_100026FF8(a1, 0x80000000, v15, 0, 0, 0, 9, sub_100046494, 0, a6);
    if (!result)
    {
LABEL_8:
      v12 = *a6;
      *(v11 + 8 * v13) = *a6;
LABEL_4:
      sub_10003C894(v12);
      return 0;
    }

    return result;
  }

  if (!a5)
  {
    result = 0;
    goto LABEL_14;
  }

  result = sub_10003BC6C(a2, 0, a4);
  if (result)
  {
LABEL_14:
    *a6 = 0;
    return result;
  }

  result = sub_100026C78(a1, 0x80000000uLL, 6, 9, 0, 0x10u, 8, sub_100046494, a4, a6);
  if (!result)
  {
    *v16 = sub_100038018(*a6);
    sub_10003D180(a2, a4, 0);
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_100044798(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t (*a4)(uint64_t *a1, unint64_t a2, int64_t a3), uint64_t *a5)
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
  v9 = sub_100042E24(v8, &v229);
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

  else if (a4 == sub_100045EA0)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11[10];
  }

  v13 = sub_100012434(16 * v11[10], 0x1000040F7F8B94BuLL);
  v14 = sub_100012434(8 * v11[10], 0x100004000313F17uLL);
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
      LODWORD(v228) = sub_100030B28(v229, v214);
    }

    v219 = a3;
    v175 = sub_10002C494(*&v229[24].__opaque[8 * v214 + 32], v173);
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
        qsort(&v220, 8uLL, 0x10uLL, sub_100046114);
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
              v155 = sub_100030B84(v229, v214, *v154, &v237);
              if (v155)
              {
                sub_100012178("%s:%d: %s failed to evaluate chunk %llu (average free ext len %u) for disabled allocation zones, error %d\n", "spaceman_iterate_free_extents_internal", 4227, (*(v8 + 384) + 212), *v154, *v153, v155);
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

      sub_10002C540(*&v229[24].__opaque[8 * v158 + 32], v219, v157);
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
      sub_1000120D8("%s:%d: %s nx_resize detected while processing dev=%d cib=%u out of %u cibs\n", "spaceman_iterate_free_extents_internal", 3921, (*(v8 + 384) + 212), v214, v22, v180[4]);
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
      sub_10003BBDC(v233, 1);
      v29 = v177;
    }

    else
    {
      v31 = *(*(&v229[14].__sig + v214) + 8 * v29);
      if (v233)
      {
        sub_100037058(v233);
        v233 = 0;
      }

      v230 = v196;
      v231 = __PAIR64__(v29, v214);
      v32 = sub_10003A1E8(*(v8 + 392), 0x140000004, v31, &xmmword_10006A940, &v230, 0, 0, 0, &v233);
      if (v32)
      {
        v168 = v32;
        sub_100012178("%s:%d: %s error getting cab %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3948, (*(v8 + 384) + 212), v29, v31, v32);
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
    sub_10003BBDC(v232, 1);
  }

  else
  {
    v33 = v23;
    v34 = *v30;
    v230 = v196;
    v231 = __PAIR64__(v22, v214);
    v35 = sub_10003A1E8(*(v8 + 392), 0x140000004, v34, &xmmword_10006A950, &v230, 0, 0, 0, &v232);
    if (v35)
    {
      v167 = v35;
      sub_100012178("%s:%d: %s error getting cib %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 3975, (*(v8 + 384) + 212), v22, v34, v35);
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
  if (v210 == sub_100045EA0)
  {
    sub_100043414(v8, v234, 125, 0);
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
    sub_10003C190(v233, 1);
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

  qsort(__base, __nel, 0x10uLL, sub_10004603C);
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
      v50 = sub_10003A1E8(*(v8 + 392), 0x140000080, v49, &xmmword_10006A960, 0, 0, 0, 0, &v238[v46]);
      v44 = __nel;
      if (v50)
      {
        v51 = v50;
        if (v50 != 45 && v50 != 16)
        {
          sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4033, (*(v8 + 384) + 212), v178, *(v47 - 2), v49, v50);
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
        v61 = sub_10003C714(*v60);
        if (v61)
        {
          goto LABEL_325;
        }
      }

      else
      {
        v61 = sub_10003A1E8(*(v8 + 392), 0x140000000, v57, &xmmword_10006A960, 0, 0, 0, 0, &v238[v54]);
        if (v61)
        {
LABEL_325:
          v159 = v61;
          sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4057, (*(v8 + 384) + 212), v178, *v56, v199, v61);
          if (*v60)
          {
            sub_100037058(*v60);
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

      if (!sub_10001C25C(0, v71, v70, v66 - v70, &v237))
      {
        break;
      }

      if (sub_10001C25C(1, v71, v237, v66 - v237, &v236))
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
          sub_10002A8DC(*&v209[8 * v214], 0, v76, v63);
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
          sub_10002A8DC(*&v209[8 * v214], 0, v79 + v73, v80);
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
            sub_10004C3F0(*(v205->__sig + 392), v234);
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
    sub_10002A8DC(*&v209[8 * v214], 0, v95, v63);
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
      v99 = sub_100030B84(v205, v214, v88, &v235);
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

        sub_100012178("%s:%d: %s failed to evaluate free chunk %llu for disabled allocation zone, error %d\n", "spaceman_iterate_process_bitmap_block", 3702, v101, v88, v99);
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

    sub_100037058(*v195);
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

    v122 = sub_10003A1E8(*(v187 + 392), 0x140000080, v120, &xmmword_10006A960, 0, 0, 0, 0, v195);
    if (v122 == 45 || v122 == 16)
    {
      v9 = 0;
      *v195 = 0;
      goto LABEL_211;
    }

    v9 = v122;
    if (v122)
    {
      sub_100012178("%s:%d: %s error getting cib %d bitmap %d @ %lld: %d\n", "spaceman_iterate_free_extents_internal", 4106, (*(v187 + 384) + 212), v178, *v117, v120, v122);
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

            sub_10002A8DC(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
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

          sub_10002A8DC(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
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
          if (a4 == sub_100045EA0)
          {
            sub_100046054(v8);
          }

          sub_10003C190(v232, 1);
          if (BYTE6(v234[7]) == 1)
          {
            if (sub_100043D24(v8, v234))
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
            sub_100037058(v232);
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

        sub_10002A8DC(*&v229[24].__opaque[8 * v214 + 32], 0, v129, v128);
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
    sub_10002C540(*&v229[24].__opaque[8 * v214 + 32], v219, 0);
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
    sub_10003C190(v233, 1);
  }

  v163 = v161 ^ 1;
  if (!v232)
  {
    v163 = 1;
  }

  if ((v163 & 1) == 0)
  {
    sub_100043D24(v8, v234);
    if (a4 == sub_100045EA0)
    {
      sub_100046054(v8);
    }

    sub_10003C190(v232, 1);
  }

LABEL_344:
  if (v233)
  {
    sub_100037058(v233);
  }

  if (v232)
  {
    sub_100037058(v232);
  }

  for (i = 0; i != 16; ++i)
  {
    v165 = v238[i];
    if (v165)
    {
      sub_10003C714(v165);
      sub_100037058(v238[i]);
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
    sub_1000123F8(v15, 8 * v11[10]);
  }

  if (v13)
  {
    sub_1000123F8(v13, 16 * v11[10]);
  }

  sub_100037058(v229);
LABEL_360:
  pthread_mutex_lock((v8 + 864));
  --*(v8 + 840);
  pthread_mutex_unlock((v8 + 864));
  return v9;
}

uint64_t sub_100045EA0(uint64_t *a1, unint64_t a2, int64_t a3)
{
  v14 = 0;
  if (sub_100042E24(a1, &v14) || (v13 = sub_100042D38(a1, v14, a2, a3), sub_100037058(v14), !v13))
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
    sub_100050900(a1[48]);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    a1[119] += 1000000 * (__tp.tv_sec - tv_sec) - v11 + SLODWORD(__tp.tv_nsec) / 1000;
  }

  else if (sub_100011490(a1))
  {
    sub_100012178("%s:%d: %s free extent %lld:%lld appears to span container metadata and should not be free: %d\n", "spaceman_trim_free_extent_callback", 4335, (a1[48] + 212), a2, a3, v13);
  }

  return 0;
}

uint64_t sub_10004603C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100046054(uint64_t a1)
{
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  tv_sec = v5.tv_sec;
  v3 = SLODWORD(v5.tv_nsec) / 1000;
  sub_10005090C(*(a1 + 384));
  v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  result = clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &v5);
  *(a1 + 952) += 1000000 * (v5.tv_sec - tv_sec) - v3 + SLODWORD(v5.tv_nsec) / 1000;
  return result;
}

uint64_t sub_100046114(uint64_t a1, uint64_t a2)
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

uint64_t sub_10004612C(uint64_t *a1, int a2, unsigned int a3)
{
  sub_100050A98(a1[48]);
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
    v6 = sub_100044798(a1, v7 | a3, 0, 0, a1);
    __tp.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    __tp.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    clock_gettime(_CLOCK_UPTIME_RAW_APPROX, &__tp);
    v8 = 1000000 * __tp.tv_sec + SLODWORD(__tp.tv_nsec) / 1000 - a1[118];
    v10 = a1[48] + 212;
    sub_100012088("%s:%d: %s scan took %lld.%06lld s (no trims)\n");
  }

  return v6;
}

uint64_t sub_100046494(uint64_t a1, void *a2, int a3, void *a4, int a5, int *a6)
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

uint64_t sub_1000464F0(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t a4, uint64_t a5, _BYTE *a6)
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
  v14 = sub_10004464C(a1, a2, a3, 0, 0, &v23[3]);
  if (v14)
  {
    v15 = v14;
    sub_100012178("%s:%d: %s can't get spaceman %d free queue tree %lld: %d\n", "spaceman_fq_tree_find_overlap", 4969, (*(a1 + 384) + 212), a3, *(v7 + 208), v14);
  }

  else
  {
    v16 = *(v7 + 216);
    if (v16 > sub_100038020(a2))
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
        v18 = sub_100025428(v23[3], 0, v23, &v22, 0x10u, &v23[2], &v21, 1u, 0, 0);
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
        v19 = sub_100025428(v23[3], 0, v23, &v22, 0x10u, &v23[2], &v21, 4u, 0, 0);
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

      while (v16 <= sub_100038020(a2));
      if ((v15 | 2) == 2)
      {
        goto LABEL_23;
      }

      sub_100012178("%s:%d: %s error searching spaceman free queue tree: %d\n", "spaceman_fq_tree_find_overlap", 5023, (*(a1 + 384) + 212), v15);
    }

LABEL_24:
    sub_100037058(v23[3]);
  }

  return v15;
}

uint64_t sub_100046750(uint64_t a1, unsigned int a2, uint64_t a3, int a4)
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
      v10 = v9 >= sub_10003835C(a3) >> 1;
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
  v10 = v11 >= sub_10003835C(a3) >> 2;
  return !v10;
}

uint64_t sub_100046824(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t *a4)
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
  v17 = sub_100026C78(a1, 0x88000000uLL, 0, 0, 0, 8u, 16, sub_10001074C, 0, (a2 + 1512));
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
  v17 = sub_100010858(a1, *(*(a2 + 376) + 176), &v34);
  if (v17)
  {
    return v17;
  }

  v31 = 0;
  sub_100025EF0(v32, v34, 0, 0, &v31, 8, 8u, &v29, 0x10u);
  v13 = v20;
  if (!sub_100025F1C(v32))
  {
    while (1)
    {
      v27 = v29;
      v28[0] = v31;
      v28[1] = v30;
      v22 = sub_10001D908(*v15, 0, &v27, 8, v28, 16, 0);
      if (v22)
      {
        break;
      }

      v21 = sub_100025F38(v32);
      if (v21)
      {
        v13 = v21;
        v23 = (*(a1 + 384) + 212);
        v24 = strerror(v21);
        sub_100012178("%s:%d: %s failed to get next internal pool reverse mapping, error %s(%d)\n", "spaceman_set_up_ip_reverse_mapping_tree", 5174, v23, v24, v13);
        goto LABEL_26;
      }

      if (sub_100025F1C(v32))
      {
        sub_100037058(v34);
        goto LABEL_8;
      }
    }

    v13 = v22;
LABEL_26:
    sub_100037058(v34);
    return v13;
  }

  sub_100037058(v34);
  if (!v13)
  {
LABEL_8:
    *&v32[0] = a3;
    LODWORD(v29) = 8;
    LODWORD(v28[0]) = 16;
    v13 = sub_100025428(*v15, 0, v32, &v29, 8u, &v25, v28, 1u, 0, 0);
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

void *sub_100046A8C(uint64_t a1, uint64_t a2)
{
  *(a2 + 1538) = 256;
  *(a2 + 1542) = 0;
  result = sub_1000122F4(0x100uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 1544) = result;
  if (!result)
  {
    *(a2 + 1538) = 0;
  }

  return result;
}

uint64_t sub_100046AE4(const char *a1, int a2, uint64_t a3, unint64_t a4, unint64_t *a5, uint64_t *a6)
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
  if (sub_100036630(a1) == 13)
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
    if (!sub_10004D1DC(v13, a4) || a3 < 1)
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
  v22 = sub_100042E24(v13, &v165);
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

    sub_100037058(v112);
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

  v22 = sub_100047FA4(v24, v30, &v166, &v147, (*(*(v13 + 376) + 48) >> 1) & 1);
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
            v37 = sub_100036630(a1);
            v38 = a1 + 4040;
            if (v37 != 13)
            {
              v38 = (*(a1 + 48) + 212);
            }

            sub_100012088("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 7990, v38);
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

              v104 = sub_100036630(a1);
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

              sub_100012178("%s:%d: %s Bogus attempt to perform metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

            else
            {
              v50 = v49[104] - v49[106];
              v42 = v35;
              if (v50 >= v35)
              {
                goto LABEL_85;
              }

              v103 = sub_100036630(a1);
              if (v103 != 13)
              {
                v109 = *(a1 + 48) + 212;
              }

              v126 = v165[HIDWORD(v162) + 104] - v165[HIDWORD(v162) + 106];
              sub_100012178("%s:%d: %s Bogus attempt to perform non-metadata reserved allocation %lld with insufficient reserve %lld (%lld)\n");
            }

LABEL_287:
            v22 = 28;
            goto LABEL_288;
          }

          if ((DWORD2(v162) & 0x30000) == 0)
          {
            sub_100042DAC(v13, v165);
            v47 = v165;
            LODWORD(v39) = HIDWORD(v162);
            v46 = DWORD2(v162);
          }

          v48 = sub_10004807C(v13, v135, v47, v39, v46, v155.i64, a4);
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
            v45 = v44[4 * v43];
LABEL_98:
            *(&v159 + 1) = v45;
            goto LABEL_113;
          }
        }

        if (((v165[13 * v39 + 139] & BYTE11(v163)) & (v142 < 3)) == 1)
        {
          v45 = sub_100030018(v165, v39, v142);
          goto LABEL_98;
        }

        if (v39 || (BYTE8(v162) & 2) == 0)
        {
          if ((WORD4(v162) & 0x800) == 0)
          {
            v45 = v165[v39 + 125];
            goto LABEL_98;
          }

          v45 = 0;
          *(&v159 + 1) = 0;
        }

        else
        {
          v45 = v137;
          v155.i64[1] = v137;
          *(&v159 + 1) = v137;
        }

        DWORD2(v162) |= 0x4000u;
LABEL_113:
        if (BYTE12(v163))
        {
          v52 = v165;
          v53 = HIDWORD(v162);
          if ((BYTE9(v162) & 1) != 0 || v155.i64[0] <= (*(v165[HIDWORD(v162) + 187] + 4 * (v45 / *(v136 + 36))) & 0xFFFFFFu))
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
        v58 = sub_10002C780(v55, v57, v158.i64, &v158.u64[1]);
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
        *(&v145 + 1) = sub_10002C758(SWORD4(v162), v155.u64[0], v59);
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
            sub_100011950(v86 + 16, v86 + 6, 8, "spaceman_alloc_fxc_scan_wait", 0);
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

          v93 = sub_100044798(v13, v92, 0, sub_1000483D0, &v144);
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
          j__pthread_cond_broadcast(v165 + 16);
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

          v77 = sub_100036630(a1);
          v78 = a1 + 4040;
          if (v77 != 13)
          {
            v78 = (*(a1 + 48) + 212);
          }

          sub_100012088("%s:%d: %s Could not find data to allocate outside the soft block-out range, disable soft block-out range\n", "spaceman_alloc", 8208, v78);
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

          sub_100048448(v165, v53, &v149, &v152);
          if (v62)
          {
            v63 = v62;
            BYTE9(v163) = 0;
            if (v62 != 28)
            {
              if (sub_100036630(a1) == 13)
              {
                sub_100012178("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, v134, v63);
              }

              else
              {
                sub_100012178("%s:%d: %s failed to search bitmap hints: %d\n", "spaceman_alloc", 8249, (*(a1 + 48) + 212), v63);
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

          HIBYTE(v163) = sub_10002C494(v65, v66);
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
        v68 = sub_10004884C(a1, v13, v165, &v152);
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

      sub_10002C540(v71, v69, v72);
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
        sub_100043414(v13, v148, 0, 0);
        v75 = sub_10004350C(v13, v165, HIDWORD(v162) + 1, 1, v148, a4);
        v76 = v143;
        if (v75)
        {
          v76 = v73;
        }

        v143 = v76;
        sub_100043D24(v13, v148);
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
    v80 = sub_100042D38(v13, v165, v79, v74);
    if (v80)
    {
      v106 = v80;
      if (sub_100011490(*(*a1 + 392)))
      {
        v107 = sub_100036630(a1);
        v108 = a1 + 4040;
        if (v107 != 13)
        {
          v108 = (*(a1 + 48) + 212);
        }

        sub_100012178("%s:%d: %s found free extent (0x%llx:0x%llx) which should not be free!: %d\n", "spaceman_alloc", 8387, v108, v79, v74, v106);
      }

      v22 = sub_1000033FC(v13);
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

      v82 = sub_10003BC6C(v165, 0, a4);
      if (v82)
      {
        v22 = v82;
        goto LABEL_288;
      }

      v22 = sub_10004988C(v13, v135, v165, v79, v74, a4, 0, SDWORD2(v162));
      sub_10002BEC0(v165[HIDWORD(v162) + 197], v79, v74);
      if (v22)
      {
        v83 = sub_100036630(a1);
        v84 = a1 + 4040;
        if (v83 != 13)
        {
          v84 = (*(a1 + 48) + 212);
        }

        sub_100012178("%s:%d: %s Failed to set bits for allocation %lld:%lld: %d\n", "spaceman_alloc", 8418, v84, v79, v74, v22);
        if (BYTE14(v163) != 1)
        {
          goto LABEL_288;
        }

        sub_10002A1D4(v165[HIDWORD(v162) + 197]);
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
        if (BYTE9(v163) == 1 && sub_1000311F8(v101, v116, v118, 5))
        {
          *&v149 = v159;
          *(&v149 + 1) = 1;
          LOBYTE(v150) = 1;
          BYTE8(v151) = 1;
          *(&v150 + 1) = 0;
          *&v151 = 0;
          sub_100048448(v165, HIDWORD(v162), &v149, &v152);
          if (v119)
          {
            if (v119 != 28)
            {
              if (sub_100036630(a1) != 13)
              {
                v125 = *(a1 + 48) + 212;
              }

              sub_100012178("%s:%d: %s failed to move roving pointer for dev %d error %d\n");
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
        sub_10002FF54(v101, 0, v142, v159);
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
      v115 = sub_100030D28(v13, v101, HIDWORD(v162), v138);
      if (v115)
      {
        if (v115 != 28)
        {
          if (sub_100036630(a1) != 13)
          {
            v120 = *(a1 + 48) + 212;
          }

          sub_100012178("%s:%d: %s failed to update chunk for alloc zone %d: %d\n");
        }
      }
    }
  }

  pthread_mutex_unlock(v165 + 6);
LABEL_318:
  sub_100037058(v165);
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
      if (sub_100036630(a1) != 13)
      {
        v134 = (*(a1 + 48) + 212);
      }

      sub_100012088("%s:%d: %s Found enough data to allocate outside the soft block-out range, re-enable soft block-out range\n", "spaceman_alloc", 8546, v134);
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

  if (sub_100036630(a1) != 13)
  {
    v134 = (*(a1 + 48) + 212);
  }

  sub_100012088("%s:%d: %s Space outside soft block-out range seems fragmented (requested %llu, but could alloc only %llu), disable soft block-out range\n", "spaceman_alloc", 8553, v134, v155.i64[0], v100->i64[0]);
  v22 = 0;
  *(v13 + 634) = 1;
  *(v13 + 1048) = 0;
  return v22;
}

uint64_t sub_100047FA4(uint64_t a1, unsigned int a2, const mach_header_64 **a3, char *a4, int a5)
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

uint64_t sub_10004807C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, uint64_t *a6, uint64_t a7)
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
    sub_100043414(a1, v59, 0, 0);
    v16 = sub_10004350C(a1, a3, v56, 1, v59, a7) != 0;
    sub_100043D24(a1, v59);
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

uint64_t sub_1000483D0(uint64_t a1, uint64_t a2, unint64_t a3)
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
      result = sub_10002A2E8(*a1, (a2 - v5 / v6 * v6) / v6);
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

double sub_100048448(unint64_t a1, unsigned int a2, uint64_t a3, _OWORD *a4)
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

      if (!sub_100011DE8(v11 * v21, v22, *(a3 + 24), v20, 0))
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

        v57 |= sub_100011DE8(v11 * v26, v27, *(a3 + 24), v25, 0) != 0;
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
    sub_10004CAF4(a1, a2, 0, v61, v35);
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

        if (sub_100011DE8(v48, v47, *(a3 + 24), v46, 0))
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
    sub_10004CAF4(a1, a2, 3uLL, v61, &v58);
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