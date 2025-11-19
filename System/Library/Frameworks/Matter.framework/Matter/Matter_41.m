uint64_t sub_239493084(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (*(a2 + 57) != 2)
  {
    sub_23953419C();
  }

  v4 = &v3;
  return sub_2393D6A10((a1 + 24), &v4, sub_2394939B4);
}

const char *sub_2394930D8(uint64_t a1, char a2)
{
  if ((a2 - 1) > 3u)
  {
    return "???";
  }

  else
  {
    return off_278A83040[(a2 - 1)];
  }
}

uint64_t sub_239493108(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 57);
    v4 = *(a1 + 92);
    *buf = 134218496;
    v11 = a1;
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "SecureSession[%p]: MarkAsDefunct Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v8 = *(a1 + 57);
    v9 = *(a1 + 92);
    sub_2393D5320(1u, 3);
  }

  (*(*a1 + 24))(a1);
  v5 = *(a1 + 56);
  if (v5 == 2)
  {
    sub_239492ECC(a1, 3);
  }

  else if (v5 == 1)
  {
    sub_239534234();
  }

  result = (*(*a1 + 32))(a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239493268(void *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 57);
    v4 = *(a1 + 46);
    *buf = 134218496;
    v11 = a1;
    v12 = 1024;
    v13 = v3;
    v14 = 1024;
    v15 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "SecureSession[%p]: MarkForEviction Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v8 = *(a1 + 57);
    v9 = *(a1 + 46);
    sub_2393D5320(1u, 3);
  }

  (*(*a1 + 24))(a1);
  v5 = *(a1 + 56);
  if ((v5 - 2) < 2)
  {
    (*(*a1 + 32))(a1);
LABEL_8:
    sub_239492ECC(a1, 4);
    sub_2394933FC(a1);
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    goto LABEL_8;
  }

LABEL_9:
  result = (*(*a1 + 32))(a1);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394933FC(void *a1)
{
  (*(*a1 + 24))(a1);
  while (1)
  {
    v2 = a1[2];
    if (v2 == a1 + 1)
    {
      break;
    }

    if (v2)
    {
      v3 = v2 - 1;
    }

    else
    {
      v3 = 0;
    }

    (*(*v3 + 16))(v3);
  }

  v4 = *(*a1 + 32);

  return v4(a1);
}

uint64_t sub_2394934B8@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 21) = 0;
  v3 = *(result + 72);
  if (v3 - 1 <= 0xFFFFFFEFFFFFFFFELL)
  {
    *(a2 + 1) = 64;
    v4 = *(result + 80);
    *(a2 + 8) = v3;
    *(a2 + 16) = v4;
    *(a2 + 24) = *(result + 88);
LABEL_3:
    *a2 = *(result + 24);
    result = (*(*result + 104))(result);
    *(a2 + 28) = result;
    return result;
  }

  if (HIDWORD(v3) != 4294967291)
  {
    sub_2395342CC();
  }

  if (*(result + 177) == 1 && *(result + 176) == 1)
  {
    *(a2 + 1) = 32;
    *(a2 + 8) = v3;
    goto LABEL_3;
  }

  return result;
}

_WORD *sub_2394935B4(_WORD *a1)
{
  v1 = *a1;
  if (v1 == 0xFFFF)
  {
    sub_23953166C();
  }

  *a1 = v1 + 1;
  return a1 - 20;
}

void sub_2394935E8(uint64_t a1)
{
  if (!*a1)
  {
    sub_2395315D4();
  }

  v2 = *a1 - 1;
  *a1 = v2;
  if (!v2)
  {
    v3 = (a1 - 40);
    v4 = *(a1 + 8) + 8;

    sub_239493904(v4, v3);
  }
}

uint64_t sub_239493630(uint64_t result, uint64_t a2)
{
  v2 = result + 8;
  v3 = *(result + 16);
  if (v3 != result + 8)
  {
    do
    {
      v5 = *(v3 + 8);
      if (v3)
      {
        v6 = v3 - 8;
      }

      else
      {
        v6 = 0;
      }

      result = (*(*v6 + 24))(v6, a2);
      v3 = v5;
    }

    while (v5 != v2);
  }

  return result;
}

void sub_2394936B0(uint64_t a1)
{
  sub_239493B9C(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_239493740(void *a1)
{
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - a1[17];
  LODWORD(v2) = v2 < *((*(*a1 + 88))(a1) + 8);
  return *((*(*a1 + 88))(a1) + 4 * v2);
}

uint64_t sub_2394937F8(uint64_t a1, int a2)
{
  v2 = *(a1 + 112);
  switch(v2)
  {
    case 3:
      return 30000;
    case 2:
      return 15000;
    case 1:
      return sub_239476070(*(a1 + 148), *(a1 + 144), *(a1 + 136), *(a1 + 152), a2);
  }

  return 0;
}

uint64_t sub_239493844(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 112);
  if (v5 == 3)
  {
    return 30000;
  }

  if (v5 == 2)
  {
    return 15000;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  sub_239476008(v14);
  v8 = sub_239476060();
  v12 = v8;
  v13 = v9;
  if (v14[0] == 1)
  {
    v10 = sub_238DD173C(v14);
    LODWORD(v8) = *v10;
    v9 = *(v10 + 4);
  }

  else
  {
    v10 = &v12;
  }

  return sub_239476070(*(v10 + 1), v8, a2, v9, a3);
}

void sub_239493904(uint64_t a1, void (***a2)(void))
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239532AB8();
    }

    v5 = v4;
    *v4 = 0;
    (**a2)(a2);
    j__free(a2);
    if (*(a1 + 40))
    {
      *(a1 + 48) = 1;
    }

    else
    {
      v6 = v5[2];
      *(v5[1] + 16) = v6;
      *(v6 + 8) = v5[1];
      j__free(v5);
    }

    --*a1;
  }
}

uint64_t sub_2394939B8(uint64_t **a1, uint64_t a2)
{
  if (**a1 != a2)
  {
    v15[5] = v2;
    v15[6] = v3;
    (*(*a2 + 24))(a2);
    if (*(a2 + 57) == 2)
    {
      v6 = (*(*a2 + 48))(a2);
      v8 = v7;
      if (v6 == (*(***a1 + 48))(**a1) && v8 == v9 && sub_239220F58(a2 + 80, **a1 + 80))
      {
        v10 = **a1;
        v15[0] = v10;
        (*(*v10 + 24))(v10);
        v11 = *(a2 + 16);
        if (v11 != a2 + 8)
        {
          do
          {
            v12 = *(v11 + 8);
            if (v11)
            {
              v13 = v11 - 8;
            }

            else
            {
              v13 = 0;
            }

            (*(*v13 + 24))(v13, v15);
            v11 = v12;
          }

          while (v12 != a2 + 8);
          v10 = v15[0];
        }

        (*(*v10 + 32))(v10);
      }
    }

    (*(*a2 + 32))(a2);
  }

  return 0;
}

uint64_t sub_239493B9C(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBBD48;
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 57);
    v4 = *(a1 + 92);
    *buf = 134218496;
    v10 = a1;
    v11 = 1024;
    v12 = v3;
    v13 = 1024;
    v14 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "SecureSession[%p]: Released - Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v7 = *(a1 + 57);
    v8 = *(a1 + 92);
    sub_2393D5320(1u, 3);
  }

  *(a1 + 264) = 0;
  sub_239491488(a1 + 176);
  sub_239493CBC(a1);
  v5 = *MEMORY[0x277D85DE8];
  return a1;
}

void *sub_239493CBC(void *a1)
{
  *a1 = &unk_284BBBE30;
  v2 = a1[4];
  if (v2)
  {
    sub_2393E9744(v2);
    a1[4] = 0;
  }

  sub_239493D14(a1 + 1);
  return a1;
}

void *sub_239493D14(void *a1)
{
  if (a1[1] != a1)
  {
    sub_239534364();
  }

  sub_23948BDE8(a1);

  return sub_238EA9350(a1);
}

unint64_t *sub_239493D5C@<X0>(unint64_t *result@<X0>, int a2@<W1>, __int16 a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, __int16 a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v17 = a6;
  v18 = a7;
  v16 = a2;
  v15 = a3;
  v13 = a5;
  v14 = a4;
  v12 = a8;
  if ((a2 != 2 || a5 && a4 && a10) && (result = sub_239493E24(result + 1, result, &v16, &v15, &v14, &v13, &v17, &v12, &a10, a11)) != 0)
  {
    *a9 = 1;
    *(a9 + 8) = result;
    return (*(*result + 24))(result);
  }

  else
  {
    *a9 = 0;
  }

  return result;
}

void *sub_239493E24(unint64_t *a1, uint64_t a2, char *a3, __int16 *a4, uint64_t *a5, uint64_t *a6, uint64_t a7, __int16 *a8, char *a9, uint64_t a10)
{
  v18 = sub_2393D52C4(0x120uLL);
  v19 = v18;
  if (v18)
  {
    sub_239494CA4(v18, a2, *a3, *a4, *a5, *a6, *a7, *(a7 + 8), *a8, *a9, a10);
    v20 = sub_2393D52C4(0x18uLL);
    if (v20)
    {
      *v20 = v19;
      v20[1] = a1 + 2;
      v20[2] = 0;
      v21 = a1[4];
      v20[2] = v21;
      *(v21 + 8) = v20;
      a1[4] = v20;
      v22 = a1[1];
      v23 = *a1 + 1;
      *a1 = v23;
      if (v23 > v22)
      {
        a1[1] = v23;
      }
    }

    else
    {
      return 0;
    }
  }

  return v19;
}

uint64_t sub_239493F20@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  v18 = a3;
  v19 = a4;
  v17 = a2;
  v15[0] = 0;
  result = sub_2394940AC(a1, v14);
  if (v14[0] != 1)
  {
    goto LABEL_9;
  }

  v8 = *(a1 + 8);
  v9 = sub_238EAB248(v14);
  if (v8 > 0x3E7)
  {
    v11 = *v9;
    result = sub_239494244();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_9:
    *a5 = 0;
    return result;
  }

  result = sub_239494198((a1 + 8), a1, &v17, v9);
  if (!result)
  {
    goto LABEL_9;
  }

LABEL_4:
  v12[0] = 1;
  v13 = result;
  (*(*result + 24))(result);
  sub_2393DECA4(v15, v12);
  if (v12[0] == 1)
  {
    (*(*v13 + 32))(v13);
  }

  if (*sub_238EAB248(v14) == -1)
  {
    v10 = 1;
  }

  else
  {
    v10 = *sub_238EAB248(v14) + 1;
  }

  *(a1 + 64) = v10;
  result = sub_239494C10(a5, v15);
  if (v15[0])
  {
    return (*(*v16 + 32))(v16);
  }

  return result;
}

uint64_t sub_2394940AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -64;
  while (1)
  {
    v5 = v4 + *(a1 + 64);
    v14 = v5 + 64;
    v6 = -64 - v5;
    v7 = (v6 & 0xFFC0) != 0 ? 0 : 1 << v6;
    v13 = v7;
    v15[0] = &v14;
    v15[1] = &v13;
    result = sub_2393D6A10((a1 + 24), v15, sub_2394952BC);
    v9 = v13;
    if (v13 != -1)
    {
      break;
    }

    v4 += 64;
    if (v4 >> 6 > 0x3FE)
    {
      *a2 = 0;
      return result;
    }
  }

  v10 = 0;
  if (v13)
  {
    do
    {
      v11 = v9;
      v9 >>= 1;
      ++v10;
    }

    while ((v11 & 2) != 0);
  }

  v12 = v14 + v10;
  *a2 = 1;
  *(a2 + 2) = v12;
  return result;
}

void *sub_239494198(unint64_t *a1, uint64_t a2, char *a3, __int16 *a4)
{
  v8 = sub_2393D52C4(0x120uLL);
  v9 = v8;
  if (v8)
  {
    sub_239494F68(v8, a2, *a3, *a4);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v9;
      v10[1] = a1 + 2;
      v10[2] = 0;
      v11 = a1[4];
      v10[2] = v11;
      *(v11 + 8) = v10;
      a1[4] = v10;
      v12 = a1[1];
      v13 = *a1 + 1;
      *a1 = v13;
      if (v13 > v12)
      {
        a1[1] = v13;
      }
    }

    else
    {
      return 0;
    }
  }

  return v9;
}

void *sub_239494244()
{
  v0 = MEMORY[0x28223BE20]();
  v67 = *MEMORY[0x277D85DE8];
  v48 = v1;
  v47 = v2;
  if (*v0 == 1)
  {
    sub_23953463C();
  }

  v4 = v3;
  v5 = v2;
  v6 = v1;
  v7 = v0;
  *v0 = 1;
  v8 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v64 = v6;
    v65 = 1024;
    v66[0] = v5;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Evicting a slot for session with LSID: %d, type: %u", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v38 = v6;
    sub_2393D5320(0xBu, 2);
  }

  if (*(v7 + 8) >= 0x3E9uLL)
  {
    sub_239534594();
  }

  v46 = 0;
  *v49 = &v46;
  *&v49[8] = buf;
  *&v49[16] = v7;
  v9 = sub_2393D6A10((v7 + 24), v49, sub_239495188);
  v10 = *(v7 + 8);
  v11 = *v4;
  v12 = v4[1];
  v44[0] = buf;
  v44[1] = v10;
  v44[2] = v11;
  v45 = v12;
  sub_239494818(v9, v44);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Sorted sessions for eviction...", v49, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xBu, 2);
  }

  v13 = *(v7 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *v49 = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Sorted Eviction Candidates (ranked from best candidate to worst):", v49, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xBu, 3);
  }

  if (!v13)
  {
LABEL_30:
    sub_23953453C(v8);
  }

  v14 = 0;
  v15 = 16 * v13;
  do
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v16 = &buf[v14];
      v17 = *&buf[v14];
      (*(*v17 + 48))(v17);
      v19 = v18;
      v26 = (*(**v16 + 48))(*v16, v18, v20, v21, v22, v23, v24, v25, v38) >> 32;
      v27 = (*(**&buf[v14] + 48))();
      v28 = sub_2394930D8(*v16, *(*v16 + 56));
      v29 = *(&v65 + v14);
      v30 = LOWORD(v66[v14 / 4]);
      v31 = *(*&buf[v14] + 128);
      *v49 = 134220034;
      *&v49[4] = v14 >> 4;
      *&v49[12] = 2048;
      *&v49[14] = v17;
      *&v49[22] = 1024;
      v50 = v19;
      v51 = 1024;
      v52 = v26;
      v53 = 1024;
      v54 = v27;
      v55 = 2080;
      v56 = v28;
      v57 = 1024;
      v58 = v29;
      v59 = 1024;
      v60 = v30;
      v61 = 2048;
      v62 = v31;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "\t%ld: [%p] -- Peer: [%u:%08X%08X] State: '%s', NumMatchingOnFabric: %d NumMatchingOnPeer: %d ActivityTime: %lu", v49, 0x48u);
    }

    if (sub_2393D5398(3u))
    {
      (*(**&buf[v14] + 48))(*&buf[v14]);
      v32 = (*(**&buf[v14] + 48))() >> 32;
      (*(**&buf[v14] + 48))();
      sub_2394930D8(*&buf[v14], *(*&buf[v14] + 56));
      v41 = LOWORD(v66[v14 / 4]);
      v42 = *(*&buf[v14] + 128);
      v40 = *(&v65 + v14);
      v38 = v14 >> 4;
      sub_2393D5320(0xBu, 3);
    }

    v14 += 16;
  }

  while (v15 != v14);
  v33 = 0;
  v43 = (v7 + 8);
  while (1)
  {
    v34 = *&buf[v33];
    if (*(v34 + 56) != 4)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v49 = 134217984;
        *&v49[4] = v34;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Candidate Session[%p] - Attempting to evict...", v49, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        v39 = *&buf[v33];
        sub_2393D5320(0xBu, 2);
      }

      v35 = *v43;
      sub_239493268(*&buf[v33]);
      if (*v43 < v35)
      {
        break;
      }
    }

    v33 += 16;
    if (v15 == v33)
    {
      goto LABEL_30;
    }
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v49 = 0;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Successfully evicted a session!", v49, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xBu, 2);
  }

  result = sub_239494198(v43, v7, &v47, &v48);
  *v7 = 0;
  v37 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_239494818(uint64_t a1, uint64_t *a2)
{
  v30 = a2[1];
  if (v30 < 2)
  {
    return;
  }

  v3 = *a2;
  v4 = 1;
  do
  {
    v5 = (v3 + 16 * v4);
    v6 = *v5;
    v7 = *(v5 + 4);
    v33 = *(v5 + 5);
    v31 = *(v5 + 3);
    LODWORD(v8) = v4;
    v32 = v4;
    if (v4 < 1)
    {
      goto LABEL_35;
    }

    v8 = v4 & 0x7FFFFFFF;
    v9 = (v3 + 16 * v8);
    v34 = *v5;
    while (1)
    {
      v10 = v8 - 1;
      v11 = (v3 + 16 * (v8 - 1));
      v12 = v11[4];
      v13 = v7 > v12;
      if (v7 != v12)
      {
        goto LABEL_25;
      }

      (*(*v6 + 48))(v6);
      v15 = v14;
      v16 = *(a2 + 24);
      v17 = v16 == v14;
      (*(**v11 + 48))();
      v19 = *(a2 + 24);
      if (v17 == (v19 == v18))
      {
        v20 = v11[5];
        v13 = v33 > v20;
        if (v33 == v20)
        {
          v6 = v34;
          v22 = 0;
          if ((*(*v34 + 48))(v34) == a2[2] && *(a2 + 24) == v21)
          {
            v23 = (*(*v34 + 40))(v34) ^ 1;
            if (v33)
            {
              v22 = 1;
            }

            else
            {
              v22 = v23;
            }
          }

          v24 = (*(**v11 + 48))();
          v26 = 0;
          if (v24 == a2[2] && *(a2 + 24) == v25)
          {
            v26 = (*(**v11 + 40))() ^ 1;
            if (v11[5])
            {
              v26 = 1;
            }
          }

          v13 = v22 > v26;
          if (v22 == v26)
          {
            v27 = *(v34 + 56) == 3 ? 2 : (*(*v34 + 40))(v34);
            v28 = *(*v11 + 56) == 3 ? 2 : (*(**v11 + 40))(*v11);
            v13 = v27 > v28;
            if (v27 == v28)
            {
              v10 = v8 - 1;
              if (*(v34 + 128) >= *(*v11 + 128))
              {
                goto LABEL_35;
              }

              goto LABEL_27;
            }
          }
        }

        else
        {
          v6 = v34;
        }

        v10 = v8 - 1;
LABEL_25:
        if (!v13)
        {
          goto LABEL_35;
        }

        goto LABEL_27;
      }

      if (v16 != v15)
      {
        break;
      }

      v6 = v34;
      v10 = v8 - 1;
      if (v19 == v18)
      {
        goto LABEL_35;
      }

LABEL_27:
      *v9-- = *v11;
      v8 = v10;
      if ((v10 + 1) <= 1)
      {
        LODWORD(v8) = 0;
        goto LABEL_35;
      }
    }

    v6 = v34;
LABEL_35:
    v29 = v3 + 16 * v8;
    *v29 = v6;
    *(v29 + 8) = v7;
    *(v29 + 10) = v33;
    *(v29 + 12) = v31;
    v4 = v32 + 1;
  }

  while (v32 + 1 != v30);
}

uint64_t sub_239494B78@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v7 = a2;
  v6 = 0;
  v8[0] = &v7;
  v8[1] = &v6;
  sub_2393D6A10((a1 + 24), v8, sub_239495290);
  result = v6;
  if (v6)
  {
    *(a3 + 8) = v6;
    result = (*(*result + 24))(result);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_239494C10(uint64_t a1, unsigned __int8 *a2)
{
  *a1 = 0;
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    v5 = *(a2 + 1);
    *(a1 + 8) = v5;
    (*(*v5 + 24))(v5);
    (*(**(a2 + 1) + 32))(*(a2 + 1));
    *a2 = 0;
  }

  return a1;
}

uint64_t sub_239494CA4(uint64_t a1, uint64_t a2, char a3, __int16 a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, __int16 a9, char a10, uint64_t a11)
{
  v26 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284BBBD48;
  *(a1 + 48) = a2;
  *(a1 + 56) = 1;
  *(a1 + 57) = a3;
  *(a1 + 58) = 0;
  *(a1 + 64) = a5;
  *(a1 + 72) = a6;
  *(a1 + 80) = a7;
  *(a1 + 88) = a8;
  *(a1 + 92) = a4;
  *(a1 + 94) = a9;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 114) = 5540;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 136) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  v12 = *(a11 + 8);
  *(a1 + 144) = *a11;
  *(a1 + 152) = v12;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 1;
  sub_2394913C4(a1 + 176);
  *(a1 + 248) = &unk_284BBBEC0;
  *(a1 + 256) = sub_2393F56E0() & 0xFFFFFFF;
  *(a1 + 264) = 0;
  sub_239492ECC(a1, 2);
  (*(*a1 + 24))(a1);
  *(a1 + 24) = a10;
  v13 = sub_2393D9044(1u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = *(a1 + 57);
    v15 = *(a1 + 92);
    *buf = 134218496;
    v21 = a1;
    v22 = 1024;
    v23 = v14;
    v24 = 1024;
    v25 = v15;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_INFO, "SecureSession[%p]: Allocated for Test Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v18 = *(a1 + 57);
    v19 = *(a1 + 92);
    sub_2393D5320(1u, 3);
  }

  v16 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_239494F24(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 8);
  if (v2 == -1)
  {
    v3 = 0x6100000000;
    v4 = 125;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = v2 + 1;
    *(a1 + 8) = v5;
    *a2 = v5;
  }

  return v4 | v3;
}

uint64_t sub_239494F68(uint64_t a1, uint64_t a2, char a3, __int16 a4)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284BBBD48;
  *(a1 + 48) = a2;
  *(a1 + 56) = 1;
  *(a1 + 57) = a3;
  *(a1 + 58) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = 0;
  *(a1 + 92) = a4;
  *(a1 + 102) = 0;
  *(a1 + 94) = 0;
  *(a1 + 109) = 0;
  *(a1 + 114) = 5540;
  *(a1 + 116) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 136) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 144) = sub_239476060();
  *(a1 + 152) = v5;
  *(a1 + 156) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0;
  *(a1 + 172) = 1;
  sub_2394913C4(a1 + 176);
  *(a1 + 248) = &unk_284BBBEC0;
  *(a1 + 256) = sub_2393F56E0() & 0xFFFFFFF;
  *(a1 + 264) = 0;
  v6 = sub_2393D9044(1u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a1 + 57);
    v8 = *(a1 + 92);
    *buf = 134218496;
    v14 = a1;
    v15 = 1024;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "SecureSession[%p]: Allocated Type:%d LSID:%d", buf, 0x18u);
  }

  if (sub_2393D5398(3u))
  {
    v11 = *(a1 + 57);
    v12 = *(a1 + 92);
    sub_2393D5320(1u, 3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_239495188(unsigned int **a1, uint64_t a2)
{
  v3 = a1[2];
  *&a1[1][4 * **a1] = a2;
  LOWORD(a1[1][4 * **a1 + 2]) = 0;
  HIWORD(a1[1][4 * **a1 + 2]) = 0;
  v4 = a1[1];
  v5 = **a1;
  v7 = a2;
  v8 = v5;
  v9 = v4;
  sub_2393D6A10(v3 + 3, &v7, sub_239495228);
  ++**a1;
  return 0;
}

uint64_t sub_239495228(uint64_t a1, uint64_t a2)
{
  if (*a1 != a2 && *(*a1 + 24) == *(a2 + 24))
  {
    v2 = *(a1 + 16) + 16 * *(a1 + 8);
    ++*(v2 + 8);
    if (*(*a1 + 72) == *(a2 + 72))
    {
      v3 = *(a1 + 16) + 16 * *(a1 + 8);
      ++*(v3 + 10);
    }
  }

  return 0;
}

uint64_t sub_239495290(unsigned __int16 **a1, uint64_t a2)
{
  if (*(a2 + 92) != **a1)
  {
    return 0;
  }

  *a1[1] = a2;
  return 1;
}

BOOL sub_2394952BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 92) - **a1;
  if (v2 <= 0x3Fu)
  {
    **(a1 + 8) |= 1 << v2;
  }

  return **(a1 + 8) == -1;
}

uint64_t sub_239495304(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 2)
  {
    sub_23953469C();
  }

  return a1;
}

uint64_t sub_239495358(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 2)
  {
    sub_239534738();
  }

  return a1;
}

uint64_t sub_2394953AC(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 1)
  {
    sub_2395347D0();
  }

  return a1;
}

uint64_t sub_239495400(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 3)
  {
    sub_239534868();
  }

  return a1;
}

uint64_t sub_239495454(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 3)
  {
    sub_239534900();
  }

  return a1;
}

uint64_t sub_2394954A8(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 4)
  {
    sub_239534998();
  }

  return a1;
}

uint64_t sub_2394954FC(uint64_t a1)
{
  if ((*(*a1 + 16))(a1) != 4)
  {
    sub_239534A30();
  }

  return a1;
}

uint64_t sub_239495550(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(*a1 + 16))(a1) == 3 || (*(*a1 + 16))(a1) == 4)
  {
    return 0;
  }

  v7 = (*(*a1 + 112))(a1, a3) + a2;
  v8 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  return v7 + (*(*a1 + 120))(a1, v8, 0);
}

uint64_t sub_239495678(uint64_t a1)
{
  v2 = (*(*a1 + 16))(a1);
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      sub_2394954FC(a1);
    }

    else
    {
      if (v2 != 3)
      {
        goto LABEL_12;
      }

      sub_239495454(a1);
    }

    v3 = 44;
    return *(a1 + v3);
  }

  if (v2 == 1)
  {
    return 0;
  }

  if (v2 != 2)
  {
LABEL_12:
    sub_239534AC8();
  }

  sub_239495358(a1);
  v3 = 92;
  return *(a1 + v3);
}

const char *sub_23949571C(void *a1)
{
  v1 = (*(**a1 + 16))(*a1) - 1;
  if (v1 > 3u)
  {
    return "?";
  }

  else
  {
    return off_278A83060[v1];
  }
}

uint64_t sub_239495784(uint64_t a1)
{
  *a1 = &unk_284BBBF18;
  sub_239495804(a1);
  if (*(a1 + 24) == 1)
  {
    (*(**(a1 + 32) + 32))(*(a1 + 32));
  }

  sub_238EA9350((a1 + 8));
  return a1;
}

void *sub_239495804(void *result)
{
  v1 = result + 3;
  if (*(result + 24) == 1)
  {
    v2 = result;
    v3 = sub_2394959CC(result + 24);
    result = sub_239495D6C(*v3, v2);
    if (*(v2 + 24) == 1)
    {
      result = (*(**(v2 + 32) + 32))(*(v2 + 32));
    }

    *v1 = 0;
  }

  return result;
}

void sub_239495884(uint64_t a1)
{
  sub_239495784(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394958BC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284BBBF18;
  *(a1 + 24) = 0;
  v3 = (a1 + 24);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*v3 == 1)
  {
    v4 = sub_2394959CC(v3);
    sub_2394959EC(*v4, a1);
  }

  return a1;
}

uint64_t sub_239495934(uint64_t a1, unsigned __int8 *a2)
{
  if (*a1 == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  v4 = *a2;
  *a1 = v4;
  if (v4 == 1)
  {
    v5 = *(a2 + 1);
    *(a1 + 8) = v5;
    (*(*v5 + 24))(v5);
  }

  return a1;
}

_BYTE *sub_2394959CC(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952E5FC();
  }

  return a1 + 8;
}

void *sub_2394959EC(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/transport/Session.h", 223);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = (a2 + 8);
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    sub_239534B60();
  }

  return sub_23948BD9C((a1 + 8), v6);
}

uint64_t sub_239495A50(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_284BBBF18;
  *(a1 + 24) = 0;
  v4 = (a1 + 24);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*v4 == 1)
  {
    v5 = sub_2394959CC(v4);
    sub_2394959EC(*v5, a1);
  }

  sub_239495804(a2);
  return a1;
}

uint64_t sub_239495AE0(uint64_t a1, uint64_t a2)
{
  sub_239495804(a1);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*(a1 + 24) == 1)
  {
    v4 = sub_2394959CC((a1 + 24));
    sub_2394959EC(*v4, a1);
  }

  return a1;
}

uint64_t sub_239495B38(uint64_t a1, uint64_t a2)
{
  sub_239495804(a1);
  sub_239495934(a1 + 24, (a2 + 24));
  if (*(a1 + 24) == 1)
  {
    v4 = sub_2394959CC((a1 + 24));
    sub_2394959EC(*v4, a1);
  }

  sub_239495804(a2);
  return a1;
}

uint64_t sub_239495B98(void *a1, uint64_t *a2)
{
  sub_239495804(a1);
  if ((*(**a2 + 16))() != 2 || *(sub_239495304(*a2) + 56) != 1)
  {
    return 0;
  }

  sub_239495C1C(a1, a2);
  return 1;
}

void *sub_239495C1C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 24);
  v3 = a1 + 24;
  if (v4 == 1)
  {
    sub_239534BF8();
  }

  sub_239495CDC(v3, a2);
  v6 = *a2;

  return sub_2394959EC(v6, a1);
}

uint64_t sub_239495C6C(void *a1, uint64_t *a2)
{
  sub_239495804(a1);
  v4 = (*(**a2 + 40))();
  if (v4)
  {
    sub_239495C1C(a1, a2);
  }

  return v4;
}

uint64_t sub_239495CDC(uint64_t a1, uint64_t *a2)
{
  if (*a1 == 1)
  {
    (*(**(a1 + 8) + 32))(*(a1 + 8));
  }

  *a1 = 1;
  v4 = *a2;
  *(a1 + 8) = *a2;
  (*(*v4 + 24))(v4);
  return a1 + 8;
}

void *sub_239495D6C(uint64_t a1, uint64_t a2)
{
  sub_23947632C("src/transport/Session.h", 230);
  v4 = (a1 + 8);
  v5 = (a2 + 8);
  v6 = (a1 + 8);
  do
  {
    v6 = v6[1];
  }

  while (v6 != v5 && v6 != v4);
  if (v6 == v4)
  {
    sub_239534C90();
  }

  return sub_23948BDE8(v5);
}

uint64_t sub_239495DDC(void *a1, uint64_t *a2)
{
  sub_239495804(a1);

  return sub_239495C6C(a1, a2);
}

uint64_t sub_239495E1C(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = 0;
  if (sub_2394BE79C(&v6, *(*a1 + 8), *(*a1 + 24), &v5))
  {
    v1 = sub_2393D9044(1u);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = sub_2393C9138();
      *buf = 136315138;
      v13 = v2;
      _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_ERROR, "Failed to decode EncryptedPacketBufferHandle header with error: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      sub_2393D5320(1u, 1);
      result = 0;
    }
  }

  else
  {
    result = v6;
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_239495F50(uint64_t a1)
{
  *a1 = &unk_284BBBF78;
  *(a1 + 8) = &unk_284BBBFC0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 72) = 0u;
  *(a1 + 81) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = a1 + 64;
  *(a1 + 104) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 136) = a1 + 128;
  *(a1 + 144) = a1 + 128;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 264) = &unk_284BBC048;
  *(a1 + 272) = 0;
  return result;
}

void *sub_23949600C(void *a1)
{
  *a1 = &unk_284BBBF78;
  a1[1] = &unk_284BBBFC0;
  sub_23949609C(a1);
  sub_2393D6A10(a1 + 16, (a1 + 14), sub_23949A9A0);
  sub_239475668(a1 + 14);
  sub_239475668(a1 + 6);
  return a1;
}

uint64_t sub_23949609C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_2394AAB8C(v2, a1 + 8);
    *(a1 + 32) = 0;
  }

  *(a1 + 176) = 0;
  result = sub_2393D6A10((a1 + 128), &v4, sub_23949B58C);
  *(a1 + 24) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  return result;
}

void sub_239496110(void *a1)
{
  sub_23949600C(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_239496148(uint64_t a1)
{
  sub_23949600C((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_239496184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a1 + 176))
  {
    v7 = 0x6900000000;
    LODWORD(v8) = 3;
    return v7 | v8;
  }

  if (!a3)
  {
    v7 = 0x6A00000000;
LABEL_12:
    LODWORD(v8) = 47;
    return v7 | v8;
  }

  if (!a5)
  {
    v7 = 0x6B00000000;
    goto LABEL_12;
  }

  if (!a6)
  {
    v7 = 0x6C00000000;
    goto LABEL_12;
  }

  v8 = sub_2394AAB28(a6, a1 + 8);
  if (v8)
  {
    goto LABEL_8;
  }

  *(a1 + 176) = 1;
  *(a1 + 248) = a3;
  *(a1 + 256) = a4;
  *(a1 + 24) = a2;
  *(a1 + 32) = a6;
  *(a1 + 40) = a7;
  *(a1 + 168) = sub_2393F5718();
  *(a1 + 272) = sub_2393F56E0() & 0xFFFFFFF;
  v8 = sub_2394925A4(a1 + 184, a5);
  if (v8)
  {
LABEL_8:
    v7 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v8) = 0;
    v7 = 0;
    *(*(a1 + 248) + 8) = a1;
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
  }

  return v7 | v8;
}

uint64_t sub_2394962DC(uint64_t a1, int a2)
{
  v3 = sub_23949631C(byte_27DF796D0);

  return sub_239492490(v3, a2);
}

char *sub_23949631C(char *a1)
{
  if ((a1[8832] & 1) == 0)
  {
    a1[8832] = 1;
    bzero(a1, 0x2280uLL);
    v2 = 0;
    v3 = a1 + 16;
    do
    {
      v4 = &a1[v2];
      *v4 = 0;
      v4[2] = 0;
      v5 = v3;
      v6 = 480;
      do
      {
        *(v5 - 1) = 0;
        *v5 = 0;
        v5 += 8;
        v6 -= 32;
      }

      while (v6);
      *(v4 + 61) = 0;
      *(v4 + 124) = 0;
      *(v4 + 65) = 0;
      *(v4 + 132) = 0;
      v2 += 552;
      v3 += 552;
    }

    while (v2 != 8832);
  }

  return a1;
}

unint64_t sub_2394963B0(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, uint64_t *a4, _WORD **a5)
{
  v105 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareMessage";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v11 = 0;
  v78 = 0;
  v79 = 0;
  v81 = 0;
  v83 = 0;
  v85 = 0;
  v86 = 0;
  if (!*(a3 + 2))
  {
    v11 = 0;
    if (!*(a3 + 3) && *a3 <= 1u)
    {
      v86 = 64;
      v11 = 1;
    }
  }

  v12 = (*(**a2 + 80))();
  v13 = *(*a4 + 16);
  if (v12)
  {
    if (v13 >= 0xF98F)
    {
      v14 = 0xBB00000000;
LABEL_22:
      v33 = 4;
      goto LABEL_50;
    }
  }

  else if (v13 > 0x49A)
  {
    v14 = 0xBF00000000;
    goto LABEL_22;
  }

  v74 = 0uLL;
  LOBYTE(v75) = 0;
  v15 = (*(**a2 + 16))();
  if (v15 == 1)
  {
    LODWORD(v100) = 0;
    v24 = (*(*(a1 + 264) + 24))(a1 + 264, &v100);
    if (v24)
    {
      goto LABEL_48;
    }

    v78 = v100;
    v41 = sub_2394953AC(*a2);
    v42 = v41;
    v43 = *(v41 + 56);
    if (v43)
    {
      if (v43 != 1)
      {
        goto LABEL_38;
      }

      v44 = &v82;
      v45 = &v81;
      v46 = 1;
    }

    else
    {
      v44 = &v80;
      v45 = &v79;
      v46 = 4;
    }

    v47 = *(v41 + 48);
    *v45 = 1;
    *v44 = v47;
    HIBYTE(v85) |= v46;
LABEL_38:
    v48 = sub_2394953AC(*a2);
    v74 = *(v48 + 64);
    v49 = *(v48 + 84);
    v75 = *(v48 + 80);
    v76 = v49;
    v77 = *(v48 + 88);
    *buf = 2;
    *&buf[8] = a3;
    *&buf[16] = &v78;
    sub_238DB6950(v88, *(*a4 + 8), *(*a4 + 16));
    v50 = sub_2394BE648(&v78);
    *&v88[16] = sub_2394BE684(a3) + v50 + *(*a4 + 16);
    sub_23948BAB4(buf);
    v24 = sub_2394BEF90(a3, a4);
    if (!v24)
    {
      v51 = *(v42 + 56);
      if (v51)
      {
        v32 = 0;
        if (v51 == 1)
        {
          v39 = *(v42 + 48);
        }

        else
        {
          v39 = 0;
        }
      }

      else
      {
        v39 = 0;
        v32 = *(v42 + 48);
      }

      v40 = 0;
LABEL_47:
      v24 = sub_2394BED64(&v78, a4);
      if (!v24)
      {
        v72 = a5;
        if (v40 && (v55 = *(a1 + 32)) != 0 && (v56 = sub_2394A7FC0(v55, v40)) != 0)
        {
          v57 = *(v56 + 16);
        }

        else
        {
          v57 = 0;
        }

        v58 = sub_2394E0FE8(*(a3 + 1));
        v59 = sub_2394E101C(*(a3 + 1), *a3);
        __str[0] = 0;
        if (a3[12] == 1)
        {
          v60 = sub_238DE3698(a3 + 12);
          snprintf(__str, 0x14uLL, " (Ack:%u)", *v60);
        }

        v102 = 0u;
        memset(v103, 0, sizeof(v103));
        v100 = 0u;
        v101 = 0u;
        sub_2393E97D4(&v74, &v100, 0x4CuLL);
        snprintf(v99, 8uLL, "%04X:%02X", *(a3 + 3), *a3);
        v61 = *(a3 + 1);
        v62 = 105;
        if ((a3[8] & 1) == 0)
        {
          v62 = 114;
        }

        snprintf(v73, 7uLL, "%u%c", *(a3 + 1), v62);
        snprintf(v98, 0x37uLL, "from %08X%08X to %u:%08X%08X [%04X]", HIDWORD(v32), v32, v40, HIDWORD(v39), v39, v57);
        v63 = sub_2393D9044(5u);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
        {
          v64 = sub_239495678(*a2);
          v65 = v78;
          v66 = sub_23949571C(a2);
          v67 = *(*a4 + 16);
          *buf = 136317698;
          *&buf[4] = v73;
          *&buf[12] = 1024;
          *&buf[14] = v64;
          *&buf[18] = 1024;
          *&buf[20] = v65;
          *v88 = 2080;
          *&v88[2] = __str;
          *&v88[10] = 2080;
          *&v88[12] = v66;
          *&v88[20] = 2080;
          *&v88[22] = v98;
          v89 = 2080;
          v90 = &v100;
          *v91 = 2080;
          *&v91[2] = v99;
          v92 = 2080;
          v93 = v58;
          v94 = 2080;
          v95 = v59;
          v96 = 1024;
          v97 = v67;
          _os_log_impl(&dword_238DAE000, v63, OS_LOG_TYPE_DEFAULT, "<<< [E:%s S:%u M:%u%s] (%s) Msg TX %s [%s] --- Type %s (%s:%s) (B:%u)", buf, 0x64u);
        }

        if (sub_2393D5398(2u))
        {
          sub_239495678(*a2);
          sub_23949571C(a2);
          v69 = *(*a4 + 16);
          sub_2393D5320(5u, 2);
        }

        v68 = *a4;
        *a4 = 0;
        if (*v72)
        {
          sub_2393D96C8(*v72);
        }

        v14 = 0;
        LODWORD(v24) = 0;
        *v72 = v68;
        goto LABEL_49;
      }
    }

LABEL_48:
    v14 = v24 & 0xFFFFFFFF00000000;
    goto LABEL_49;
  }

  if (v15 == 2)
  {
    v34 = sub_239495304(*a2);
    if (!v34)
    {
      v14 = 0x10000000000;
      LODWORD(v24) = 72;
      goto LABEL_49;
    }

    v35 = v34;
    LODWORD(v100) = 0;
    v24 = (*(*(v34 + 248) + 24))();
    if (!v24)
    {
      v78 = v100;
      LOWORD(v85) = *(v35 + 94);
      BYTE2(v85) = 0;
      v86 &= 0xFCu;
      v74 = *(v35 + 96);
      v36 = *(v35 + 116);
      v75 = *(v35 + 112);
      v76 = v36;
      v77 = *(v35 + 120);
      *buf = 1;
      *&buf[8] = a3;
      *&buf[16] = &v78;
      sub_238DB6950(v88, *(*a4 + 8), *(*a4 + 16));
      v37 = sub_2394BE648(&v78);
      v38 = sub_2394BE684(a3) + v37 + *(*a4 + 16);
      *&v88[16] = v38 + 16 * ((v85 | BYTE2(v85)) != 0);
      sub_23948BAB4(buf);
      v32 = (*(*v35 + 56))(v35);
      sub_2394917A8(buf, v86, v100, v32);
      v24 = sub_239492914(v35 + 176, buf, a3, &v78, a4);
      if (!v24)
      {
        v39 = *(v35 + 72);
        v40 = *(v35 + 24);
        goto LABEL_47;
      }
    }

    goto LABEL_48;
  }

  if (v15 != 4)
  {
    v14 = 0x14D00000000;
LABEL_34:
    LODWORD(v24) = 172;
    goto LABEL_49;
  }

  v16 = sub_2394954A8(*a2);
  v17 = sub_2394B4FC8();
  if (!v17)
  {
    v14 = 0xCF00000000;
    goto LABEL_34;
  }

  v18 = v17;
  v71 = a5;
  v19 = sub_2394A7FC0(*(a1 + 32), *(v16 + 24));
  if (!v19)
  {
    v14 = 0xD200000000;
    LODWORD(v24) = 47;
    goto LABEL_49;
  }

  v20 = v19;
  v21 = *(v16 + 44);
  v83 = 1;
  v84 = v21;
  HIBYTE(v85) |= 2u;
  v78 = sub_2394927A8(a1 + 184, v11);
  sub_2394927BC(a1 + 184, v11);
  BYTE2(v85) = 1;
  v22 = v86;
  v86 = v86 & 0xFC | 1;
  v23 = *v20;
  v79 = 1;
  v70 = v23;
  v80 = v23;
  LOBYTE(v23) = HIBYTE(v85);
  HIBYTE(v85) |= 4u;
  v14 = 0xDD00000000;
  LODWORD(v24) = 172;
  if ((v23 & 2) == 0 || (v22 & 0x40) != 0)
  {
    goto LABEL_49;
  }

  v25 = v20[1];
  v26 = *(v16 + 44);
  *buf = (v25 >> 8) | 0xFD00000000000000;
  *&v74 = sub_2393CFE14(5, 64, buf, v26 | (v25 << 24));
  *(&v74 + 1) = v27;
  LOBYTE(v75) = 1;
  HIWORD(v75) = 5540;
  v76 = 0;
  v77 = 0;
  v28 = (*(*v18 + 224))(v18, *(v16 + 24), *(v16 + 44));
  if (!v28)
  {
    v14 = 0xE400000000;
    goto LABEL_34;
  }

  v29 = v28;
  LOWORD(v85) = (**v28)(v28);
  *&buf[8] = 0u;
  *v88 = 0u;
  v90 = 0;
  *v91 = v29;
  LODWORD(v100) = 0;
  *(&v100 + 1) = a3;
  *&v101 = &v78;
  sub_238DB6950(&v101 + 1, *(*a4 + 8), *(*a4 + 16));
  v30 = sub_2394BE648(&v78);
  v31 = sub_2394BE684(a3);
  *(&v102 + 1) = v31 + v30 + *(*a4 + 16) + 16 * ((v85 | BYTE2(v85)) != 0);
  sub_23948BAB4(&v100);
  v32 = v70;
  sub_2394917A8(&v100, v86, v78, v70);
  v24 = sub_239492914(buf, &v100, a3, &v78, a4);
  (*v29)[7](v29);
  if (!v24)
  {
    v39 = *(v16 + 44) | 0xFFFFFFFFFFFF0000;
    v40 = *(v16 + 24);
    sub_239491488(buf);
    a5 = v71;
    goto LABEL_47;
  }

  v14 = v24 & 0xFFFFFFFF00000000;
  sub_239491488(buf);
LABEL_49:
  v33 = v24;
LABEL_50:
  v52 = sub_23948B4CC();
  if (os_signpost_enabled(v52))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "PrepareMessage";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v52, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v53 = *MEMORY[0x277D85DE8];
  return v33 | v14;
}

uint64_t sub_239496E3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v52 = *MEMORY[0x277D85DE8];
  if (*(a1 + 176) != 1)
  {
    v13 = 0x19500000000;
    v14 = 3;
    goto LABEL_70;
  }

  if (!*a3)
  {
    v13 = 0x19600000000;
    goto LABEL_10;
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 5540;
  v39 = 0;
  v40 = 0;
  v6 = (*(**a2 + 16))();
  switch(v6)
  {
    case 1:
      v16 = sub_2394953AC(*a2);
      *(v16 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
      v12 = (v16 + 64);
      break;
    case 2:
      v15 = sub_239495304(*a2);
      *(v15 + 128) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
      v12 = (v15 + 96);
      break;
    case 4:
      v7 = sub_2394954A8(*a2);
      v8 = sub_2394A7FC0(*(a1 + 32), *(v7 + 24));
      if (v8)
      {
        v9 = *(v8 + 8);
        v10 = *(v7 + 44);
        *v45 = (v9 >> 8) | 0xFD00000000000000;
        v35 = sub_2393CFE14(5, 64, v45, v10 | (v9 << 24));
        v36 = v11;
        v37 = 1;
        v38 = 5540;
        v39 = 0;
        v12 = &v35;
        v40 = 0;
        break;
      }

      v13 = 0x1A100000000;
LABEL_10:
      v14 = 47;
      goto LABEL_70;
    default:
      v13 = 0x1B800000000;
      v14 = 172;
      goto LABEL_70;
  }

  sub_2393D9BEC(*a3);
  v17 = *a3;
  v34 = v17;
  if (!v17)
  {
    v18 = 444;
    v19 = 47;
    goto LABEL_69;
  }

  if (*v17)
  {
    v18 = 445;
    v19 = 24;
    goto LABEL_68;
  }

  if ((*(**a2 + 16))() != 4)
  {
LABEL_53:
    v25 = *(a1 + 248);
    if (v25)
    {
      v26 = sub_23949BF4C(v25);
      v19 = v26;
      v18 = HIDWORD(v26);
      if (v26)
      {
        memset(v48, 0, sizeof(v48));
        v46 = 0u;
        v47 = 0u;
        *v45 = 0u;
        sub_2393E97D4(v12, v45, 0x4CuLL);
        v27 = sub_2393D9044(1u);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = sub_2393C9138();
          *v41 = 136315394;
          v42 = v45;
          v43 = 2080;
          v44 = v28;
          _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "SendMessage() to %s failed: %s", v41, 0x16u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(1u, 1);
        }
      }
    }

    else
    {
      v29 = sub_2393D9044(1u);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *v45 = 0;
        _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "The transport manager is not initialized. Unable to send the message", v45, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1u, 1);
      }

      v19 = 3;
      v18 = 515;
    }

    goto LABEL_67;
  }

  sub_2393D0378(v45);
  v33 = 0;
  if (!sub_2393D03DC(v45))
  {
LABEL_48:
    v24 = sub_2393D9044(1u);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *v51 = 0;
      _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "No valid Interface found.. Sending to the default one.. ", v51, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(1u, 1);
    }

    sub_2393D0384(v45);
    goto LABEL_53;
  }

  v20 = 0;
  do
  {
    sub_2393D049C(v45, v51, 0x10uLL);
    if (!sub_2393D067C(v45))
    {
      continue;
    }

    if (!sub_2393D0574(v45))
    {
      continue;
    }

    sub_2393D0448(v45, buf);
    v33 = *buf;
    if (sub_2393D0B8C(&v33, v41))
    {
      continue;
    }

    v21 = sub_2393D9044(1u);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v50 = v51;
      _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Interface %s has a link local address", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1u, 3);
    }

    sub_2393D9ED8(&v34, &v32);
    if (!v32)
    {
      v19 = 47;
      v18 = 468;
      goto LABEL_66;
    }

    if (*v32)
    {
      sub_2393D96C8(v32);
      v19 = 24;
      v18 = 469;
      goto LABEL_66;
    }

    v39 = v33;
    v22 = *(a1 + 248);
    if (v22)
    {
      if (sub_23949BF4C(v22))
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          v50 = v51;
          _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "Failed to send Multicast message on interface %s", buf, 0xCu);
        }

        if (!sub_2393D5398(1u))
        {
          goto LABEL_41;
        }

        v23 = 1;
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 136315138;
          v50 = v51;
          _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_INFO, "Successfully send Multicast message on interface %s", buf, 0xCu);
        }

        if (!sub_2393D5398(3u))
        {
          goto LABEL_41;
        }

        v23 = 3;
      }

      sub_2393D5320(1u, v23);
    }

LABEL_41:
    if (v32)
    {
      sub_2393D96C8(v32);
    }

    v12 = &v35;
    v20 = 1;
  }

  while ((sub_2393D03DC(v45) & 1) != 0);
  if ((v20 & 1) == 0)
  {
    goto LABEL_48;
  }

  v18 = 0;
  v19 = 0;
LABEL_66:
  sub_2393D0384(v45);
LABEL_67:
  v17 = v34;
  if (v34)
  {
LABEL_68:
    sub_2393D96C8(v17);
  }

LABEL_69:
  v13 = v18 << 32;
  v14 = v19;
LABEL_70:
  v30 = *MEMORY[0x277D85DE8];
  return v14 | v13;
}

uint64_t sub_23949750C(uint64_t a1, uint64_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = HIDWORD(*a2);
    v7 = *(a2 + 8);
    *buf = 67109632;
    *&buf[4] = v6;
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v5;
    HIWORD(v14) = 1024;
    v15 = v7;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions for node <%08X%08X, %d>!!", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    v10 = *a2;
    v11 = *(a2 + 8);
    sub_2393D5320(1u, 3);
  }

  *buf = a2;
  v14 = &v12;
  result = sub_2393D6A10((a1 + 128), buf, sub_23949B29C);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239497630(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions for fabric 0x%x!!", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1u, 3);
  }

  v8 = a2;
  *buf = &v8;
  v10 = &v7;
  result = sub_2393D6A10((a1 + 128), buf, sub_23949B310);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23949772C(uint64_t a1, uint64_t *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *a2;
    v6 = HIDWORD(*a2);
    v7 = *(a2 + 8);
    *buf = 67109632;
    *&buf[4] = v6;
    v21 = 1024;
    v22 = v5;
    v23 = 1024;
    v24 = v7;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions to peer <%08X%08X, %d> that are on the same logical fabric!!", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    v14 = *a2;
    v15 = *(a2 + 8);
    sub_2393D5320(1u, 3);
  }

  *buf = &unk_284BB9138;
  v8 = sub_2394A7FC0(*(a1 + 32), *(a2 + 8));
  v18 = v8;
  if (v8)
  {
    v17[0] = sub_2394A7848(v8, buf);
    v17[1] = v9;
    if (LODWORD(v17[0]))
    {
      sub_2395350F4();
    }

    v19[0] = a1;
    v19[1] = v17;
    v19[2] = buf;
    v19[3] = &v18;
    v19[4] = a2;
    v19[5] = &v16;
    sub_2393D6A10((a1 + 128), v19, sub_23949B348);
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v11 = 0x10500000000;
    v10 = 113;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11 | v10;
}

uint64_t sub_2394978D0(uint64_t a1, int a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Expiring all sessions on the same logical fabric as fabric 0x%x!!", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1u, 3);
  }

  *buf = &unk_284BB9138;
  v5 = sub_2394A7FC0(*(a1 + 32), a2);
  v13 = v5;
  if (v5)
  {
    v12[0] = sub_2394A7848(v5, buf);
    v12[1] = v6;
    if (LODWORD(v12[0]))
    {
      sub_23953518C();
    }

    v14[0] = a1;
    v14[1] = v12;
    v14[2] = buf;
    v14[3] = &v13;
    v14[4] = &v11;
    sub_2393D6A10((a1 + 128), v14, sub_23949B45C);
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v8 = 0x13900000000;
    v7 = 113;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

uint64_t sub_239497A44(uint64_t a1)
{
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Expiring all PASE sessions", v4, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1u, 3);
  }

  return sub_2393D6A10((a1 + 128), &v5, sub_23949B55C);
}

uint64_t sub_239497AE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2393D6A10((a1 + 128), v4, sub_23949B5AC);
}

uint64_t sub_239497B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = a2;
  v4[1] = a3;
  return sub_2393D6A10((a1 + 128), v4, sub_23949B690);
}

uint64_t sub_239497B60@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  if (*(result + 176) == 1)
  {
    return sub_239493F20(result + 104, a2, *a3, a3[1], a4);
  }

  *a4 = 0;
  return result;
}

unint64_t sub_239497B84(uint64_t a1, void *a2, __int16 a3, uint64_t a4, __int16 a5, char a6, __int128 *a7, int a8)
{
  sub_239476008(&v31);
  v27 = sub_239476060();
  LOWORD(v28) = v16;
  if (v31 == 1)
  {
    v17 = sub_238DD173C(&v31);
  }

  else
  {
    v17 = &v27;
  }

  sub_239493D5C((a1 + 104), 1, a3, 0, a4, 0, 0, a5, v29, a6, v17);
  if (v29[0] == 1)
  {
    v18 = sub_238EA9094(v29);
    v19 = sub_239495304(*v18);
    v20 = *a7;
    *(v19 + 112) = *(a7 + 4);
    *(v19 + 96) = v20;
    *(v19 + 116) = *(a7 + 5);
    *(v19 + 120) = *(a7 + 3);
    v27 = "Test secret for key derivation.";
    v28 = 32;
    v21 = *(a1 + 40);
    v31 = 0;
    v32 = 0;
    v22 = sub_23949148C(v19 + 176, v21, &v27, &v31, 0, a8);
    if (v22)
    {
      v23 = v22 & 0xFFFFFFFF00000000;
    }

    else
    {
      *(v19 + 264) = 2;
      *(v19 + 272) = 0;
      *(v19 + 280) = 0;
      v31 = v19 + 280;
      LODWORD(v32) = 0;
      sub_2393F030C(&v31, 0x20uLL);
      v25 = sub_238EA9094(v29);
      sub_239495C6C(a2, v25);
      LODWORD(v22) = 0;
      v23 = 0;
    }

    v24 = v22;
    if (v29[0])
    {
      (*(*v30 + 32))(v30);
    }
  }

  else
  {
    v23 = 0x25F00000000;
    v24 = 11;
  }

  return v23 | v24;
}

unint64_t sub_239497D54(uint64_t a1, void *a2, __int16 a3, __int16 a4, uint64_t a5, uint64_t a6, char a7, __int128 *a8, unsigned __int8 a9, uint64_t a10)
{
  v18 = *a10;
  v19 = *(a10 + 8);
  sub_239476008(&v35);
  v31 = sub_239476060();
  LOWORD(v32) = v20;
  if (v35 == 1)
  {
    v21 = sub_238DD173C(&v35);
  }

  else
  {
    v21 = &v31;
  }

  sub_239493D5C((a1 + 104), 2, a3, a5, a6, v18, v19, a4, v33, a7, v21);
  if (v33[0] == 1)
  {
    v22 = sub_238EA9094(v33);
    v23 = sub_239495304(*v22);
    v24 = *a8;
    *(v23 + 112) = *(a8 + 4);
    *(v23 + 96) = v24;
    *(v23 + 116) = *(a8 + 5);
    *(v23 + 120) = *(a8 + 3);
    v31 = "Test secret for key derivation.";
    v32 = 32;
    v25 = *(a1 + 40);
    v35 = 0;
    v36 = 0;
    v26 = sub_23949148C(v23 + 176, v25, &v31, &v35, 0, a9);
    if (v26)
    {
      v27 = v26 & 0xFFFFFFFF00000000;
    }

    else
    {
      *(v23 + 264) = 2;
      *(v23 + 272) = 0;
      *(v23 + 280) = 0;
      v35 = v23 + 280;
      LODWORD(v36) = 0;
      sub_2393F030C(&v35, 0x20uLL);
      v29 = sub_238EA9094(v33);
      sub_239495C6C(a2, v29);
      LODWORD(v26) = 0;
      v27 = 0;
    }

    v28 = v26;
    if (v33[0])
    {
      (*(*v34 + 32))(v34);
    }
  }

  else
  {
    v27 = 0x27400000000;
    v28 = 11;
  }

  return v27 | v28;
}

void sub_239497F3C(uint64_t a1, __int128 *a2, uint64_t **a3, _WORD **a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if (sub_2394BE758(&v11, a3))
  {
    v8 = sub_2393D9044(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = sub_2393C9138();
      *buf = 136315138;
      v18 = v9;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to decode packet header: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(1u, 1);
    }
  }

  else if (v15 || BYTE2(v15))
  {
    if (BYTE2(v15) == 1)
    {
      sub_2394980C4(a1, &v11, a2, a3);
    }

    else
    {
      sub_239498AD8(a1, &v11, a2, a3, a4);
    }
  }

  else
  {
    sub_239499444(a1, &v11, a2, a3, a4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_2394980C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v71 = *MEMORY[0x277D85DE8];
  v8 = sub_23948B4CC();
  if (os_signpost_enabled(v8))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "Group Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v9 = (*a4)[2];
  v60[0] = 0;
  v61 = 0;
  v64 = 0;
  v63 = 16;
  v62 = -1;
  v56 = 0;
  v57[0] = 0;
  v57[16] = 0;
  v57[32] = 0;
  v58 = 0;
  v59 = 0;
  v55 = 0;
  v10 = sub_2394B4FC8();
  if (!v10)
  {
    goto LABEL_35;
  }

  v11 = *(a2 + 47);
  if ((v11 & 2) == 0)
  {
    goto LABEL_35;
  }

  if (*(a2 + 46) != 1 || ((~v11 & 5) != 0 || (*(a2 + 48) & 0x40) == 0) && ((~v11 & 6) != 0 || (*(a2 + 48) & 0x40) != 0))
  {
    v23 = sub_2393D9044(1u);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v23, OS_LOG_TYPE_ERROR, "Invalid condition found in packet header", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v51 = 0;
  v54 = 0;
  v12 = (*(*v10 + 216))(v10, *(a2 + 44));
  if (!v12)
  {
    v26 = sub_2393D9044(1u);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Failed to retrieve Groups iterator. Discarding everything", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = v12;
  v14 = (*a4)[3];
  v15 = (*(a2 + 44) | *(a2 + 46)) != 0;
  if (v14 < 16 * ((*(a2 + 44) | *(a2 + 46)) != 0) || (v16 = 16 * ((*(a2 + 44) | *(a2 + 46)) != 0), v17 = (*a4)[1], v50 = 0, sub_2394BF070(&v70, a2, (v17 + v14 - v16), 16 * v15, &v50)) || v50 != v16)
  {
LABEL_64:
    (*(*v13 + 32))(v13);
    goto LABEL_35;
  }

  if (!(*(*v13 + 24))(v13, &v51))
  {
LABEL_27:
    (*(*v13 + 32))(v13);
    v22 = sub_2393D9044(1u);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Failed to decrypt group message. Discarding everything", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  while (1)
  {
    *&buf[8] = 0u;
    v66 = 0u;
    v68 = 0;
    v69 = v54;
    sub_2393D9ED8(a4, v42);
    if (v55)
    {
      sub_2393D96C8(v55);
    }

    v55 = *v42;
    if (!*v42)
    {
      v27 = sub_2393D9044(1u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v42 = 0;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Failed to clone Groupcast message buffer. Discarding.", v42, 2u);
      }

      if (sub_2393D5398(1u))
      {
LABEL_62:
        sub_2393D5320(1u, 1);
      }

LABEL_63:
      sub_239491488(buf);
      goto LABEL_64;
    }

    v18 = *(a2 + 48);
    v19 = sub_23949A5FC(a2, &v56, v60, v18 >> 7, &v55, &v70, &v51);
    v20 = v19;
    if ((v18 & 0x80) == 0 || v19)
    {
      break;
    }

    sub_2393D9ED8(a4, v42);
    if (v55)
    {
      sub_2393D96C8(v55);
    }

    v55 = *v42;
    if (!*v42)
    {
      v32 = sub_2393D9044(1u);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *v42 = 0;
        _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_ERROR, "Failed to clone Groupcast message buffer. Discarding.", v42, 2u);
      }

      if (sub_2393D5398(1u))
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    v21 = sub_23949A5FC(a2, &v56, v60, 0, &v55, &v70, &v51);
    sub_239491488(buf);
    if (v21)
    {
      goto LABEL_48;
    }

LABEL_26:
    if (((*(*v13 + 24))(v13, &v51) & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  sub_239491488(buf);
  if (!v20)
  {
    goto LABEL_26;
  }

LABEL_48:
  (*(*v13 + 32))(v13);
  if (*a4)
  {
    sub_2393D96C8(*a4);
  }

  *a4 = v55;
  v55 = 0;
  if (BYTE2(v58) == 1 && (~HIBYTE(v58) & 5) == 0 && (v59 & 0x40) != 0)
  {
    goto LABEL_35;
  }

  if ((v63 & 4) != 0)
  {
    v33 = sub_2393D9044(1u);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_ERROR, "Unexpected ACK requested for group message", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v49 = 0;
  v28 = sub_23949631C(byte_27DF796D0);
  v29 = v52;
  v30 = sub_238DE36B8(v57);
  if (sub_23949200C(v28, v29, *v30, (v59 >> 6) & 1, &v49))
  {
    v31 = sub_2393D9044(1u);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v31, OS_LOG_TYPE_ERROR, "Group Counter Tables full or invalid NodeId/FabricIndex after decryption of message, dropping everything", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  if (v53)
  {
    v34 = sub_2393D9044(1u);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "Received Group Msg with key policy Cache and Sync, but MCSP is not implemented", buf, 2u);
    }

    if (!sub_2393D5398(1u))
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (sub_23949A7B0(v49, v56))
  {
    v35 = sub_2393D9044(1u);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = sub_2393C9138();
      *buf = 136315138;
      *&buf[4] = v36;
      _os_log_impl(&dword_238DAE000, v35, OS_LOG_TYPE_ERROR, "Message counter verify failed, err = %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      goto LABEL_34;
    }

    goto LABEL_35;
  }

  sub_23949AAA4(v49, v56);
  if (*(a1 + 232))
  {
    v37 = v51;
    v38 = v52;
    v39 = *sub_238DE36B8(v57);
    v43[0] = v43;
    v43[1] = v43;
    v45 = 0;
    v46 = 0;
    *v42 = &unk_284BBC090;
    v47 = v37;
    v48 = v39;
    v44 = v38;
    *buf = 0;
    *&buf[8] = v60;
    *&buf[16] = &v56;
    *&v66 = v42;
    *(&v66 + 1) = a3;
    sub_238DB6950(&v67, (*a4)[1], (*a4)[2]);
    v68 = v9;
    sub_23948BB30(buf);
    v40 = *(a1 + 232);
    *buf = v42;
    (*(*v42 + 24))(v42);
    (*(*v40 + 16))(v40, &v56, v60, buf, 1, a4);
    (*(**buf + 32))(*buf);
    sub_23949B23C(v42);
    goto LABEL_35;
  }

  v41 = sub_2393D9044(1u);
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_ERROR, "Received GROUP message was not processed.", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
LABEL_34:
    sub_2393D5320(1u, 1);
  }

LABEL_35:
  if (v55)
  {
    sub_2393D96C8(v55);
  }

  v24 = sub_23948B4CC();
  if (os_signpost_enabled(v24))
  {
    *buf = 136315394;
    *&buf[4] = "SessionManager";
    *&buf[12] = 2080;
    *&buf[14] = "Group Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v25 = *MEMORY[0x277D85DE8];
}

void sub_239498AD8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t *a4, _WORD **a5)
{
  v70 = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *v65 = "SessionManager";
    *&v65[8] = 2080;
    *&v65[10] = "Secure Unicast Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a3 + 16) != 3 || *a5)
  {
    sub_239494B78(a1 + 104, *(a2 + 44), v62);
    if ((v62[0] & 1) == 0)
    {
      v20 = sub_2393D9044(1u);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        v21 = *(a2 + 44);
        *buf = 67109120;
        *v65 = v21;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_ERROR, "Data received on an unknown session (LSID=%d). Dropping it!", buf, 8u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_58;
      }

      v45 = *(a2 + 44);
      goto LABEL_45;
    }

    v11 = sub_238EA9094(v62);
    v12 = sub_239495304(*v11);
    v58 = *a3;
    v13 = *(a3 + 5);
    v59 = *(a3 + 4);
    v60 = v13;
    v61 = *(a3 + 3);
    if (!sub_2393CFBB4(&v58))
    {
      v60 = 0;
    }

    if (!sub_2394BF148(v12 + 96, &v58))
    {
      *(v12 + 96) = v58;
      v14 = v60;
      *(v12 + 112) = v59;
      *(v12 + 116) = v14;
      *(v12 + 120) = v61;
    }

    if (*(a3 + 16) != 3)
    {
      goto LABEL_34;
    }

    v15 = *(v12 + 32);
    if (v15)
    {
      v16 = sub_2393E967C(v15);
      if (v16)
      {
        v17 = v16;
        v18 = *a5;
        if (v16 != *a5)
        {
          v19 = sub_2393D9044(1u);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            *buf = 134218240;
            *v65 = v17;
            *&v65[8] = 2048;
            *&v65[10] = v18;
            _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Unicast data received over %p for wrong connection %p. Dropping it!", buf, 0x16u);
          }

          if (sub_2393D5398(1u))
          {
            v46 = *a5;
            sub_2393D5320(1u, 1);
          }

          sub_2393E9744(v17);
          goto LABEL_58;
        }

        sub_2393E9744(v16);
        goto LABEL_34;
      }

      v15 = *(v12 + 32);
    }

    if (v15 == *a5)
    {
LABEL_34:
      v24 = *(*a4 + 16);
      v53[0] = 0;
      v54 = 0;
      v57 = 0;
      v56 = 16;
      v55 = -1;
      if ((*(a2 + 48) & 0x80000000) == 0)
      {
        v47 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0;
        v52 = 0;
        if (sub_2394BE94C(&v47, a4))
        {
          goto LABEL_58;
        }

        if (*a4)
        {
          if (*(v12 + 56) == 3 || ((*(*v12 + 40))(v12) & 1) != 0 || (v25 = *(v12 + 56), v25 == 4))
          {
            if (*(v12 + 57) == 2)
            {
              v26 = *(v12 + 72);
            }

            else
            {
              v26 = 0;
            }

            sub_2394917A8(v69, v52, v47, v26);
            if (sub_239492A50(v12 + 176, v69, v53, &v47, a4))
            {
              v29 = sub_2393D9044(1u);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v29, OS_LOG_TYPE_ERROR, "Secure transport received message, but failed to decode/authenticate it, discarding", buf, 2u);
              }

              if (!sub_2393D5398(1u))
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            v32 = sub_23949A548((v12 + 264), v47);
            if (!v32)
            {
              sub_239492E1C(v12);
              sub_23949A5AC(v12 + 264, v47);
              v35 = 1;
LABEL_79:
              if (*(a1 + 232))
              {
                *buf = 1;
                *&v65[4] = v53;
                *&v65[12] = &v47;
                v66 = v12;
                v67 = a3;
                sub_238DB6950(v68, *(*a4 + 8), *(*a4 + 16));
                v68[2] = v24;
                sub_23948BB30(buf);
                if (*(v12 + 57) == 2)
                {
                  v38 = *(v12 + 24);
                  v39 = v38 == sub_2394AB418(*(a1 + 32));
                  sub_23949A5D8(v12, v39);
                }

                v40 = *(a1 + 232);
                v41 = sub_238EA9094(v62);
                (*(*v40 + 16))(v40, &v47, v53, v41, v35, a4);
                goto LABEL_58;
              }

              v44 = sub_2393D9044(1u);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 0;
                _os_log_impl(&dword_238DAE000, v44, OS_LOG_TYPE_ERROR, "Received SECURED message was not processed.", buf, 2u);
              }

              if (!sub_2393D5398(1u))
              {
                goto LABEL_58;
              }

              goto LABEL_57;
            }

            if (v32 == 196)
            {
              v33 = sub_2393D9044(1u);
              if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
              {
                if (v56)
                {
                  v34 = 114;
                }

                else
                {
                  v34 = 105;
                }

                *buf = 67109632;
                *v65 = v47;
                *&v65[4] = 1024;
                *&v65[6] = v54;
                *&v65[10] = 1024;
                *&v65[12] = v34;
                _os_log_impl(&dword_238DAE000, v33, OS_LOG_TYPE_INFO, "Received a duplicate message with MessageCounter:%u on exchange %u%c", buf, 0x14u);
              }

              if (sub_2393D5398(3u))
              {
                sub_2393D5320(1u, 3);
              }

              sub_239492E1C(v12);
              if ((v56 & 4) == 0)
              {
                goto LABEL_58;
              }

              v35 = 0;
              goto LABEL_79;
            }

            v42 = sub_2393D9044(1u);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              v43 = sub_2393C9138();
              *buf = 136315138;
              *v65 = v43;
              _os_log_impl(&dword_238DAE000, v42, OS_LOG_TYPE_ERROR, "Message counter verify failed, err = %s", buf, 0xCu);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_58;
            }

            sub_2393C9138();
          }

          else
          {
            v36 = sub_2393D9044(1u);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              v37 = sub_2394930D8(v12, v25);
              *buf = 136315138;
              *v65 = v37;
              _os_log_impl(&dword_238DAE000, v36, OS_LOG_TYPE_ERROR, "Secure transport received message on a session in an invalid state (state = '%s')", buf, 0xCu);
            }

            if (!sub_2393D5398(1u))
            {
              goto LABEL_58;
            }

            sub_2394930D8(v12, *(v12 + 56));
          }
        }

        else
        {
          v28 = sub_2393D9044(1u);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v28, OS_LOG_TYPE_ERROR, "Secure transport received Unicast NULL packet, discarding", buf, 2u);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_58;
          }
        }

LABEL_57:
        sub_2393D5320(1u, 1);
LABEL_58:
        if (v62[0] == 1)
        {
          (*(*v63 + 32))(v63);
        }

        goto LABEL_60;
      }

      v27 = sub_2393D9044(1u);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_ERROR, "Dropping secure unicast message with privacy flag set", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_58;
      }

LABEL_45:
      sub_2393D5320(1u, 1);
      goto LABEL_58;
    }

    if (*a5)
    {
      v23 = sub_2393E967C(*a5);
      v15 = *(v12 + 32);
      if (!v15)
      {
LABEL_32:
        *(v12 + 32) = v23;
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
      if (!v15)
      {
        goto LABEL_32;
      }
    }

    sub_2393E9744(v15);
    goto LABEL_32;
  }

  v22 = sub_2393D9044(1u);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_ERROR, "Connection object is missing for received message.", buf, 2u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(1u, 1);
  }

LABEL_60:
  v30 = sub_23948B4CC();
  if (os_signpost_enabled(v30))
  {
    *buf = 136315394;
    *v65 = "SessionManager";
    *&v65[8] = 2080;
    *&v65[10] = "Secure Unicast Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v30, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void sub_239499444(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, _WORD **a5)
{
  v79[4] = *MEMORY[0x277D85DE8];
  v10 = sub_23948B4CC();
  if (os_signpost_enabled(v10))
  {
    *buf = 136315394;
    *v77 = "SessionManager";
    *&v77[8] = 2080;
    *&v77[10] = "Unauthenticated Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  if (*(a3 + 16) == 3 && !*a5)
  {
    v14 = sub_2393D9044(1u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "Connection object is missing for received message.", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((*(a2 + 48) & 0x80000000) == 0)
    {
      v11 = (*a4)[2];
      v68 = 0;
      v69 = 0;
      v71 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      if (sub_2394BE94C(&v68, a4))
      {
        goto LABEL_19;
      }

      v13 = v69;
      v66[0] = v69;
      if (v69 == 1)
      {
        v67 = v70;
        v64[0] = v71;
        if (v71)
        {
          v65 = v72;
          goto LABEL_30;
        }

        v62[0] = 0;
        v25 = *sub_239289A18(v66);
        *&v58 = sub_239476060();
        WORD4(v58) = v26;
        sub_23949A314((a1 + 48), v25, &v58, a3, buf);
        sub_2393DECA4(v62, buf);
        if (buf[0] == 1)
        {
          (*(**&v77[4] + 32))(*&v77[4]);
        }

        if ((v62[0] & 1) == 0)
        {
          v34 = sub_2393D9044(1u);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_238DAE000, v34, OS_LOG_TYPE_ERROR, "UnauthenticatedSession exhausted", buf, 2u);
          }

          if (!sub_2393D5398(1u))
          {
            goto LABEL_89;
          }

LABEL_47:
          v21 = 1;
LABEL_48:
          sub_2393D5320(1u, v21);
          goto LABEL_89;
        }
      }

      else
      {
        v64[0] = v71;
        if ((v71 & 1) == 0)
        {
LABEL_30:
          v22 = sub_2393D9044(1u);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_62;
          }

          if (v13)
          {
            v23 = *(sub_238DE36B8(v66) + 1);
            if (v66[0])
            {
              v24 = sub_238DE36B8(v66);
              goto LABEL_41;
            }
          }

          else
          {
            v23 = 0;
          }

          v24 = &qword_2395D6900;
LABEL_41:
          v31 = *v24;
          if (v64[0] == 1)
          {
            v32 = *(sub_238DE36B8(v64) + 1);
            if (v64[0])
            {
              v33 = sub_238DE36B8(v64);
LABEL_61:
              v40 = *v33;
              *buf = 67109888;
              *v77 = v23;
              *&v77[4] = 1024;
              *&v77[6] = v31;
              *&v77[10] = 1024;
              *&v77[12] = v32;
              *&v77[16] = 1024;
              *&v77[18] = v40;
              _os_log_impl(&dword_238DAE000, v22, OS_LOG_TYPE_DEFAULT, "Received malformed unsecure packet with source 0x%08X%08X destination 0x%08X%08X", buf, 0x1Au);
LABEL_62:
              if (sub_2393D5398(2u))
              {
                if (v66[0] == 1 && (v41 = *(sub_238DE36B8(v66) + 1), (v66[0] & 1) != 0))
                {
                  v42 = sub_238DE36B8(v66);
                }

                else
                {
                  v42 = &qword_2395D6900;
                }

                v43 = *v42;
                if (v64[0] == 1 && (v44 = *(sub_238DE36B8(v64) + 1), (v64[0] & 1) != 0))
                {
                  v45 = sub_238DE36B8(v64);
                }

                else
                {
                  v45 = &qword_2395D6900;
                }

                v52 = *v45;
                sub_2393D5320(1u, 2);
              }

              goto LABEL_19;
            }
          }

          else
          {
            v32 = 0;
          }

          v33 = &qword_2395D6900;
          goto LABEL_61;
        }

        v65 = v72;
        v62[0] = 0;
        v17 = sub_239289A18(v64);
        sub_23949A408(a1 + 48, *v17, a3, buf);
        sub_2393DECA4(v62, buf);
        if (buf[0] == 1)
        {
          (*(**&v77[4] + 32))(*&v77[4]);
        }

        if ((v62[0] & 1) == 0)
        {
          v18 = sub_2393D9044(1u);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = *(sub_239289A18(v64) + 1);
            v20 = *sub_239289A18(v64);
            *buf = 67109376;
            *v77 = v19;
            *&v77[4] = 1024;
            *&v77[6] = v20;
            _os_log_impl(&dword_238DAE000, v18, OS_LOG_TYPE_DEFAULT, "Received unknown unsecure packet for initiator 0x%08X%08X", buf, 0xEu);
          }

          if (!sub_2393D5398(2u))
          {
            goto LABEL_89;
          }

          sub_239289A18(v64);
          v50 = *sub_239289A18(v64);
          v21 = 2;
          goto LABEL_48;
        }
      }

      v27 = sub_238EA9094(v62);
      v28 = sub_2394953AC(*v27);
      v58 = *a3;
      v29 = *(a3 + 20);
      v59 = *(a3 + 16);
      v60 = v29;
      v61 = *(a3 + 24);
      if (sub_2393CFBB4(&v58))
      {
        v30 = v60;
      }

      else
      {
        v30 = 0;
        v60 = 0;
      }

      *(v28 + 64) = v58;
      *(v28 + 80) = v59;
      *(v28 + 84) = v30;
      *(v28 + 88) = v61;
      if (*(a3 + 16) == 3)
      {
        v35 = *(v28 + 32);
        if (v35 && (v36 = sub_2393E967C(v35)) != 0)
        {
          v37 = *a5;
          if (v36 != *a5)
          {
            v38 = v36;
            v39 = sub_2393D9044(1u);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218240;
              *v77 = v38;
              *&v77[8] = 2048;
              *&v77[10] = v37;
              _os_log_impl(&dword_238DAE000, v39, OS_LOG_TYPE_ERROR, "Unauthenticated data received over %p for wrong connection %p. Dropping it!", buf, 0x16u);
            }

            if (sub_2393D5398(1u))
            {
              v51 = *a5;
              sub_2393D5320(1u, 1);
            }

            sub_2393E9744(v38);
            goto LABEL_89;
          }

          sub_2393E9744(v36);
        }

        else
        {
          sub_23949A9BC((v28 + 32), a5);
        }
      }

      *(v28 + 104) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
      *(v28 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
      v53[0] = 0;
      v54 = 0;
      v57 = 0;
      v56 = 16;
      v55 = -1;
      if (sub_2394BEB24(v53, a4))
      {
LABEL_89:
        if (v62[0] == 1)
        {
          (*(*v63 + 32))(v63);
        }

        goto LABEL_19;
      }

      if (sub_23949A4A8(v28 + 144, v68) == 196)
      {
        v46 = sub_2393D9044(1u);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          if (v56)
          {
            v47 = 114;
          }

          else
          {
            v47 = 105;
          }

          *buf = 67109632;
          *v77 = v68;
          *&v77[4] = 1024;
          *&v77[6] = v54;
          *&v77[10] = 1024;
          *&v77[12] = v47;
          _os_log_impl(&dword_238DAE000, v46, OS_LOG_TYPE_INFO, "Received a duplicate message with MessageCounter:%u on exchange %u%c", buf, 0x14u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(1u, 3);
        }

        v48 = 0;
      }

      else
      {
        sub_23949AAA4(v28 + 144, v68);
        v48 = 1;
      }

      if (*(a1 + 232))
      {
        *buf = 2;
        *&v77[4] = v53;
        *&v77[12] = &v68;
        *&v77[20] = v28;
        v78 = a3;
        sub_238DB6950(v79, (*a4)[1], (*a4)[2]);
        v79[2] = v11;
        sub_23948BB30(buf);
        (*(**(a1 + 232) + 16))(*(a1 + 232), &v68, v53, v27, v48, a4);
        goto LABEL_89;
      }

      v49 = sub_2393D9044(1u);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v49, OS_LOG_TYPE_ERROR, "Received UNSECURED message was not processed.", buf, 2u);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_89;
      }

      goto LABEL_47;
    }

    v12 = sub_2393D9044(1u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "Dropping unauthenticated message with privacy flag set", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
LABEL_18:
      sub_2393D5320(1u, 1);
    }
  }

LABEL_19:
  v15 = sub_23948B4CC();
  if (os_signpost_enabled(v15))
  {
    *buf = 136315394;
    *v77 = "SessionManager";
    *&v77[8] = 2080;
    *&v77[10] = "Unauthenticated Message Dispatch";
    _os_signpost_emit_with_name_impl(&dword_238DAE000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "com.csa.matter.signpost", "%s-%s", buf, 0x16u);
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t sub_239499E38(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_2393E97D4(a2 + 8, __str, 0x4CuLL);
  v3 = sub_2393D9044(1u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = __str;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "Received TCP connection request from %s.", buf, 0xCu);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    result = sub_2393D5320(1u, 2);
  }

  v5 = *(a2 + 56);
  if (v5)
  {
    v6 = *(v5 + 8);
    if (v6)
    {
      result = v6(a2);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_239499F34(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (!*a2)
  {
    goto LABEL_15;
  }

  v8 = result;
  v9 = *(v4 + 56);
  if (v9)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v10(a2, a3, a4);
      result = *(v8 + 240);
      if (!result)
      {
        goto LABEL_15;
      }

      v11 = 1;
      goto LABEL_8;
    }
  }

  result = *(result + 240);
  if (result)
  {
    v11 = 0;
LABEL_8:
    result = (*(*result + 24))(result, a2, a3, a4);
    if (v11 & 1) != 0 || (result)
    {
      goto LABEL_15;
    }

    v4 = *a2;
  }

  sub_2393E97D4(v4 + 8, __str, 0x4CuLL);
  v12 = sub_2393D9044(1u);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = __str;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "TCP Connection established with peer %s, but no registered handler.", buf, 0xCu);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    result = sub_2393D5320(1u, 2);
  }

LABEL_15:
  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23949A0A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a2 + 56);
  if (v8)
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      v9(a2, a3, a4);
    }
  }

  v11[0] = a3;
  v11[1] = a4;
  v12[0] = a2;
  v12[1] = a1;
  v12[2] = v11;
  return sub_2393D6A10((a1 + 128), v12, sub_23949BD58);
}

uint64_t sub_23949A12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a3;
  v5[1] = a4;
  v6[0] = a2;
  v6[1] = a1;
  v6[2] = v5;
  return sub_2393D6A10((a1 + 128), v6, sub_23949BD58);
}

unint64_t sub_23949A174(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_2393E97D4(a2, __str, 0x4CuLL);
  v3 = *(a1 + 248);
  v4 = sub_2393D9044(1u);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = __str;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Connecting over TCP with peer at %s.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1u, 2);
    }

    v6 = sub_23949BF74(*(a1 + 248));
    v7 = v6 & 0xFFFFFFFF00000000;
    v8 = v6;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v12 = __str;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "The transport manager is not initialized. Unable to connect to peer at %s.", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(1u, 1);
    }

    v7 = 0x2D900000000;
    v8 = 3;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8 | v7;
}

void *sub_23949A314@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X8>)
{
  v13 = 1;
  v11 = 0;
  v12 = a2;
  v14[0] = &v13;
  v14[1] = &v12;
  v14[2] = a4;
  v14[3] = &v11;
  sub_2393D6A10(a1 + 2, v14, sub_23949B72C);
  result = v11;
  if (v11)
  {
    *a5 = 1;
  }

  else
  {
    LODWORD(v12) = 1;
    v14[0] = a2;
    result = sub_23949B780(a1, &v12, v14, a4, a3, a1);
    if (!result)
    {
      *a5 = 0;
      return result;
    }

    *a5 = 1;
  }

  *(a5 + 8) = result;
  return (*(*result + 24))(result);
}

uint64_t sub_23949A408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = 0;
  v7 = 0;
  v8 = a2;
  v10[0] = &v9;
  v10[1] = &v8;
  v10[2] = a3;
  v10[3] = &v7;
  sub_2393D6A10((a1 + 16), v10, sub_23949B72C);
  result = v7;
  if (v7)
  {
    *(a4 + 8) = v7;
    result = (*(*result + 24))(result);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  *a4 = v6;
  return result;
}

uint64_t sub_23949A4A8(uint64_t a1, int a2)
{
  if (*a1 == 2)
  {
    v4 = *(a1 + 8);
    if (a2 == v4 || a2 - v4 < 0)
    {
      if (v4 == a2)
      {
        v5 = 2;
      }

      else
      {
        v5 = (v4 - a2) < 0x21;
      }
    }

    else
    {
      v5 = 3;
    }

    return sub_23949AA1C(a1, v5, a2);
  }

  else
  {
    if (*a1)
    {
      sub_239535224();
    }

    *a1 = 2;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 8) = a2;
    v6 = a1 + 16;
    v7 = 0;
    sub_2393F030C(&v6, 0x20uLL);
    return 0;
  }
}

uint64_t sub_23949A548(_DWORD *a1, unsigned int a2)
{
  if (*a1 != 2)
  {
    return 0x8E00000003;
  }

  v3 = a1[2];
  v4 = v3 >= a2;
  if (v3 == a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 - a2 < 0x21;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  return sub_23949B068(a1, v6, a2);
}

void sub_23949A5AC(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 8);
  v4 = v3 >= a2;
  if (v3 == a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v3 - a2 < 0x21;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 3;
  }

  sub_23949AADC(a1, v6, a2);
}

uint64_t sub_23949A5D8(uint64_t result, char a2)
{
  if (*(result + 57) != 2)
  {
    sub_2395352BC();
  }

  *(result + 58) = a2;
  return result;
}

BOOL sub_23949A5FC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5, uint64_t a6, unsigned __int16 *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v11 = *(a7 + 1);
  v25 = 0u;
  v26 = 0u;
  v27 = 0;
  v28 = v11;
  if (a4)
  {
    v12 = 12;
    if ((*(a1 + 47) & 4) == 0)
    {
      v12 = 4;
    }

    v13 = v12 + 8;
    v14 = v12 | *(a1 + 47) & 2;
    v15 = (*(a1 + 47) & 1) != 0 ? v13 : v14;
    if (sub_239491EC4(v24, *(*a5 + 8) + 4, v15, *(*a5 + 8) + 4, a1, a6))
    {
      goto LABEL_15;
    }
  }

  if (sub_2394BE94C(a2, a5))
  {
    v16 = sub_2393D9044(1u);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Failed to decode Groupcast packet header. Discarding.", v23, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(1u, 1);
    }

    goto LABEL_15;
  }

  if (*sub_238E0A934((a2 + 40)) != *a7)
  {
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  v17 = *(a2 + 48);
  v18 = *a2;
  v19 = sub_238DE36B8((a2 + 8));
  sub_2394917A8(v23, v17, v18, *v19);
  v20 = sub_239492A50(v24, v23, a3, a2, a5) == 0;
LABEL_16:
  sub_239491488(v24);
  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t sub_23949A7B0(uint64_t a1, int a2)
{
  if (*a1 == 2)
  {
    return sub_23949B0F0(a1, a2);
  }

  if (*a1)
  {
    sub_239535354();
  }

  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a2;
  v3 = a1 + 16;
  v4 = 0;
  sub_2393F030C(&v3, 0x20uLL);
  return 0;
}

uint64_t sub_23949A820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v11[0] = a2;
  v11[1] = a3;
  v10 = a5;
  v8 = 0;
  v9 = 0;
  v12[0] = v11;
  v12[1] = a4;
  v12[2] = &v9;
  v12[3] = &v8;
  v12[4] = &v10;
  sub_2393D6A10((a1 + 128), v12, sub_23949BC40);
  if (v10 == 2)
  {
    result = v9;
    if (v9)
    {
      goto LABEL_7;
    }
  }

  else if (v10 != 1)
  {
    result = v9;
    if (!v9)
    {
      goto LABEL_8;
    }

LABEL_7:
    *a6 = 1;
    *(a6 + 8) = result;
    return (*(*result + 24))(result);
  }

  result = v8;
  if (v8)
  {
    goto LABEL_7;
  }

LABEL_8:
  *a6 = 0;
  return result;
}

uint64_t sub_23949A8F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v6[0] = &v4;
  v6[1] = &v5;
  sub_2393D6A10((a1 + 128), v6, sub_23949BE68);
  return 0;
}

uint64_t sub_23949A944(uint64_t a1, uint64_t a2, int a3)
{
  v4 = sub_23949631C(byte_27DF796D0);

  return sub_239492490(v4, a3);
}

uint64_t sub_23949A984(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8) + 1;
  *(a1 + 8) = v2;
  *a2 = v2;
  return 0;
}

uint64_t *sub_23949A9BC(uint64_t *a1, _WORD **a2)
{
  v3 = *a1;
  if (v3 != *a2)
  {
    if (*a2)
    {
      v4 = sub_2393E967C(*a2);
      v3 = *a1;
      if (!*a1)
      {
LABEL_5:
        *a1 = v4;
        return a1;
      }
    }

    else
    {
      v4 = 0;
      if (!v3)
      {
        goto LABEL_5;
      }
    }

    sub_2393E9744(v3);
    goto LABEL_5;
  }

  return a1;
}

uint64_t sub_23949AA1C(uint64_t a1, int a2, int a3)
{
  if (a2 == 2)
  {
    v6 = 0x12F00000000;
    v7 = 196;
  }

  else if (a2 == 1)
  {
    v3 = *(a1 + 8) + ~a3;
    if (v3 >= 0x20)
    {
      abort();
    }

    v4 = *(a1 + 16) >> v3;
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v6 = 0x13400000000;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 196;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v7 | v6;
}

void sub_23949AAA4(uint64_t a1, int a2)
{
  v3 = *(a1 + 8);
  if (a2 == v3 || a2 - v3 < 0)
  {
    if (v3 == a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = (v3 - a2) < 0x21;
    }
  }

  else
  {
    v4 = 3;
  }

  sub_23949AADC(a1, v4, a2);
}

void sub_23949AADC(uint64_t a1, int a2, int a3)
{
  if (a2 != 2)
  {
    if (a2 == 1)
    {
      v4 = *(a1 + 8) + ~a3;
      if (v4 < 0x20)
      {
        *(a1 + 16) |= 1 << v4;
        return;
      }

LABEL_10:
      abort();
    }

    v5 = *(a1 + 8);
    v6 = a3 - v5;
    *(a1 + 8) = a3;
    if ((a3 - v5) < 0x21)
    {
      sub_23949ABA0(a1 + 16, (a3 - v5));
      if ((v6 - 1) >= 0x20)
      {
        goto LABEL_10;
      }

      *(a1 + 16) |= 1 << (v6 - 1);
    }

    else
    {
      v7 = a1 + 16;
      v8 = 0;
      sub_2393F030C(&v7, 0x20uLL);
    }
  }
}

uint64_t sub_23949ABA0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a2;
  }

  v10 = a1;
  v11 = 0;
  v8 = a1;
  v9 = 32 - v3;
  v6 = a1;
  if (a2)
  {
    v7 = 32;
    sub_23949ADB8(&v10, &v8, &v6, v5);
    v10 = a1;
    v11 = 0;
    sub_2393F030C(&v10, v3);
  }

  else
  {
    v7 = 32 - v3;
    sub_23949AC50(&v10, &v8, &v6, v5);
  }

  return a1;
}

unsigned int *sub_23949AC50@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 8);
  v7 = v6 + 8 * (*a2 - *result);
  v8 = result[2];
  v9 = v7 - v8;
  if ((v7 - v8) >= 1)
  {
    if (v6)
    {
      if (v9 >= v6)
      {
        v11 = *(a2 + 8);
      }

      else
      {
        v11 = v7 - v8;
      }

      v9 -= v11;
      v12 = (-1 << (v6 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v6);
      v13 = **a2 & v12;
      **a3 &= ~v12;
      **a3 |= v13;
      *(a3 + 8) = (*(a3 + 8) - v11) & 0x3F;
    }

    if (v9 >= 0)
    {
      v14 = v9;
    }

    else
    {
      v14 = v9 + 63;
    }

    v15 = v14 >> 6;
    *a3 -= 8 * (v14 >> 6);
    v16 = (*a2 - 8 * (v14 >> 6));
    *a2 = v16;
    if ((v9 + 63) >= 0x7F)
    {
      result = memmove(*a3, v16, 8 * v15);
    }

    if (v9 - (v15 << 6) >= 1)
    {
      v17 = -1 << ((v15 << 6) - v9);
      v18 = (*a2 - 8);
      *a2 = v18;
      v19 = *v18 & v17;
      v20 = *a3;
      *a3 -= 8;
      *(v20 - 1) &= ~v17;
      **a3 |= v19;
      *(a3 + 8) = -v9 & 0x3F;
    }
  }

  *a4 = *a3;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

uint64_t sub_23949ADB8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a2 + 8);
  v5 = *(result + 8);
  v6 = v4 + 8 * (*a2 - *result) - v5;
  if (v6 >= 1)
  {
    if (v4)
    {
      v7 = 8 * (*a2 - *result) - v5 < 0;
      if (v6 >= v4)
      {
        v8 = *(a2 + 8);
      }

      else
      {
        v8 = v4 + 8 * (*a2 - *result) - v5;
      }

      v6 -= v8;
      v9 = (-1 << (v4 - v8)) & (0xFFFFFFFFFFFFFFFFLL >> -v4) & **a2;
      v10 = *(a3 + 8);
      if (v8 >= v10)
      {
        v11 = *(a3 + 8);
      }

      else
      {
        v11 = v8;
      }

      if (v10)
      {
        **a3 &= ~((-1 << (v10 - v11)) & (0xFFFFFFFFFFFFFFFFLL >> -v10));
        v12 = *(a3 + 8);
        v13 = *(a2 + 8);
        v14 = v9 >> (v13 - v12);
        v15 = v12 > v13;
        v16 = v9 << (v12 - v13);
        if (!v15)
        {
          v16 = v14;
        }

        **a3 |= v16;
        *(a3 + 8) = (*(a3 + 8) - v11) & 0x3F;
        v8 -= v11;
      }

      if (v8 >= 1)
      {
        v17 = *a3;
        *a3 -= 8;
        *(a3 + 8) = -v8 & 0x3F;
        *(v17 - 1) &= ~(-1 << -v8);
        v18 = *(a2 + 8) - v8 - v11;
        *(a2 + 8) = v18;
        **a3 |= v9 << (*(a3 + 8) - v18);
      }
    }

    if (v6 < 64)
    {
      v25 = v6;
    }

    else
    {
      v19 = *(a3 + 8);
      v20 = 64 - v19;
      v21 = 0xFFFFFFFFFFFFFFFFLL >> -v19;
      do
      {
        v22 = (*a2 - 8);
        *a2 = v22;
        v23 = *v22;
        **a3 &= ~v21;
        **a3 |= v23 >> v20;
        v24 = *a3;
        *a3 -= 8;
        *(v24 - 1) &= v21;
        **a3 |= v23 << *(a3 + 8);
        v25 = v6 - 64;
        v15 = v6 > 0x7F;
        v6 -= 64;
      }

      while (v15);
    }

    if (v25 >= 1)
    {
      v26 = (*a2 - 8);
      *a2 = v26;
      v27 = *v26 & (-1 << -v25);
      v28 = *(a3 + 8);
      if (v25 >= v28)
      {
        v29 = *(a3 + 8);
      }

      else
      {
        v29 = v25;
      }

      **a3 &= ~((-1 << (v28 - v29)) & (0xFFFFFFFFFFFFFFFFLL >> -v28));
      **a3 |= v27 >> -*(a3 + 8);
      *(a3 + 8) = (*(a3 + 8) - v29) & 0x3F;
      v30 = v25 - v29;
      if (v25 - v29 >= 1)
      {
        v31 = *a3;
        *a3 -= 8;
        v32 = -v30;
        *(a3 + 8) = v32 & 0x3F;
        *(v31 - 1) &= ~(-1 << v32);
        **a3 |= v27 << (v25 + *(a3 + 8));
      }
    }
  }

  *a4 = *a3;
  *(a4 + 8) = *(a3 + 8);
  return result;
}

uint64_t sub_23949B068(uint64_t a1, int a2, int a3)
{
  if (a2 == 3)
  {
    v6 = 0;
    v7 = 0;
  }

  else if (a2 == 1)
  {
    v3 = *(a1 + 8) + ~a3;
    if (v3 >= 0x20)
    {
      abort();
    }

    v4 = *(a1 + 16) >> v3;
    v5 = (v4 & 1) == 0;
    if (v4)
    {
      v6 = 0x11B00000000;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 196;
    }
  }

  else
  {
    v6 = 0x12100000000;
    v7 = 196;
  }

  return v7 | v6;
}

uint64_t sub_23949B0F0(_DWORD *a1, int a2)
{
  if (*a1 != 2)
  {
    return 0x6800000003;
  }

  v3 = a1[2];
  if (a2 == v3 || a2 - v3 < 0)
  {
    if (v3 == a2)
    {
      v4 = 2;
    }

    else
    {
      v4 = (v3 - a2) < 0x21;
    }
  }

  else
  {
    v4 = 3;
  }

  return sub_23949B068(a1, v4, a2);
}

void sub_23949B160(uint64_t a1)
{
  sub_23949B23C(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23949B1CC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 21) = 0;
  *(a2 + 1) = 0x80;
  *(a2 + 8) = *(result + 44) | 0xFFFFFFFFFFFF0000;
  *(a2 + 16) = 0;
  *a2 = *(result + 24);
  return result;
}

_DWORD *sub_23949B1F0(_DWORD *a1)
{
  if (*a1 == -1)
  {
    sub_2395353EC();
  }

  ++*a1;
  return a1 - 10;
}

_DWORD *sub_23949B218(_DWORD *result)
{
  if (!*result)
  {
    sub_239535474();
  }

  --*result;
  return result;
}

void *sub_23949B23C(uint64_t a1)
{
  *a1 = &unk_284BBC090;
  sub_2394933FC(a1);
  if (*(a1 + 40))
  {
    sub_2395354FC();
  }

  return sub_239493CBC(a1);
}

uint64_t sub_23949B29C(uint64_t a1, void *a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4)
  {
    sub_239493268(a2);
  }

  return 0;
}

uint64_t sub_23949B310(unsigned __int8 **a1, uint64_t a2)
{
  if (*(a2 + 24) == **a1)
  {
    sub_239493268(a2);
  }

  return 0;
}

uint64_t sub_23949B348(uint64_t *a1, uint64_t a2)
{
  v13[10] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v13[0] = &unk_284BB9138;
  if (*(a2 + 57) == 2)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v6 = sub_2394A7FC0(*(v2 + 32), v4);
      if (!v6)
      {
        sub_23953562C();
      }

      v7 = v6;
      v8 = sub_2394A7848(v6, v13);
      v9 = a1[1];
      *v9 = v8;
      v9[1] = v10;
      if (*a1[1])
      {
        sub_239535594();
      }

      if (sub_23928F6C0(v13, a1[2]) && *(*a1[3] + 8) == *(v7 + 8) && *(a2 + 72) == *a1[4])
      {
        sub_239493268(a2);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_23949B45C(uint64_t *a1, uint64_t a2)
{
  v13[10] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v13[0] = &unk_284BB9138;
  if (*(a2 + 57) == 2)
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v6 = sub_2394A7FC0(*(v2 + 32), v4);
      if (!v6)
      {
        sub_23953575C();
      }

      v7 = v6;
      v8 = sub_2394A7848(v6, v13);
      v9 = a1[1];
      *v9 = v8;
      v9[1] = v10;
      if (*a1[1])
      {
        sub_2395356C4();
      }

      if (sub_23928F6C0(v13, a1[2]) && *(*a1[3] + 8) == *(v7 + 8))
      {
        sub_239493268(a2);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_23949B55C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 57) == 1)
  {
    sub_239493268(a2);
  }

  return 0;
}

uint64_t sub_23949B5AC(void *a1, _BYTE *a2)
{
  if ((*(*a2 + 40))(a2))
  {
    if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4)
    {
      v5 = a1[1];
      if (*v5 != 1 || *sub_23949B670(v5) == a2[57])
      {
        sub_239493108(a2);
      }
    }
  }

  return 0;
}

_BYTE *sub_23949B670(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 1;
}

uint64_t sub_23949B690(void *a1, uint64_t a2)
{
  if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4 && *(a2 + 57) == 2)
  {
    v5 = a1[1];
    v6 = *v5;
    *(a2 + 112) = *(v5 + 4);
    *(a2 + 96) = v6;
    *(a2 + 116) = *(v5 + 5);
    *(a2 + 120) = *(v5 + 3);
  }

  return 0;
}

uint64_t sub_23949B72C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) != **a1 || *(a2 + 48) != **(a1 + 8) || *(a2 + 80) != *(*(a1 + 16) + 16))
  {
    return 0;
  }

  **(a1 + 24) = a2;
  return 1;
}

void *sub_23949B780(unint64_t *a1, int *a2, uint64_t *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_2393D52C4(0xB0uLL);
  v13 = v12;
  if (v12)
  {
    sub_23949B860(v12, *a2, *a3, a4, a5);
    *v13 = &unk_284BBC168;
    v13[21] = a6;
    v14 = sub_2393D52C4(0x18uLL);
    if (v14)
    {
      *v14 = v13;
      v14[1] = a1 + 2;
      v14[2] = 0;
      v15 = a1[4];
      v14[2] = v15;
      *(v15 + 8) = v14;
      a1[4] = v14;
      v16 = a1[1];
      v17 = *a1 + 1;
      *a1 = v17;
      if (v17 > v16)
      {
        a1[1] = v17;
      }
    }

    else
    {
      return 0;
    }
  }

  return v13;
}

uint64_t sub_23949B860(uint64_t a1, int a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  *(a1 + 8) = a1 + 8;
  *(a1 + 16) = a1 + 8;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *a1 = &unk_284BBC260;
  *(a1 + 48) = a3;
  *(a1 + 56) = a2;
  v7 = *a4;
  *(a1 + 80) = *(a4 + 4);
  *(a1 + 64) = v7;
  *(a1 + 84) = *(a4 + 5);
  *(a1 + 88) = *(a4 + 3);
  *(a1 + 96) = (*(*off_27DF765E8 + 2))(off_27DF765E8);
  *(a1 + 104) = 0;
  v8 = *(a5 + 8);
  *(a1 + 112) = *a5;
  *(a1 + 120) = v8;
  *(a1 + 124) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0;
  *(a1 + 140) = 1;
  *(a1 + 144) = 0;
  return a1;
}

void sub_23949B940(uint64_t a1)
{
  sub_23949BBA0(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_23949B980(uint64_t a1)
{
  if (*(a1 + 56))
  {
    return *(a1 + 48);
  }

  else
  {
    return 0;
  }
}

double sub_23949B99C@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t sub_23949B9D0(void *a1)
{
  v2 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - a1[13];
  LODWORD(v2) = v2 < *((*(*a1 + 88))(a1) + 8);
  return *((*(*a1 + 88))(a1) + 4 * v2);
}

uint64_t sub_23949BA88(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  switch(v2)
  {
    case 3:
      return 30000;
    case 2:
      return 15000;
    case 1:
      return sub_239476070(*(a1 + 116), *(a1 + 112), *(a1 + 104), *(a1 + 120), a2);
  }

  return 0;
}

uint64_t sub_23949BAD4(uint64_t a1, unsigned int a2, int a3)
{
  v5 = *(a1 + 80);
  if (v5 == 3)
  {
    return 30000;
  }

  if (v5 == 2)
  {
    return 15000;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  sub_239476008(v14);
  v8 = sub_239476060();
  v12 = v8;
  v13 = v9;
  if (v14[0] == 1)
  {
    v10 = sub_238DD173C(v14);
    LODWORD(v8) = *v10;
    v9 = *(v10 + 4);
  }

  else
  {
    v10 = &v12;
  }

  return sub_239476070(*(v10 + 1), v8, a2, v9, a3);
}

void *sub_23949BBA0(uint64_t a1)
{
  *a1 = &unk_284BBC260;
  if (*(a1 + 40))
  {
    sub_2395357F4();
  }

  *(a1 + 144) = 0;

  return sub_239493CBC(a1);
}

int *sub_23949BBE8(int *result)
{
  if (!*result)
  {
    sub_239535474();
  }

  v2 = *result - 1;
  *result = v2;
  if (!v2)
  {
    v3 = *(*(result - 5) + 128);

    return v3();
  }

  return result;
}

uint64_t sub_23949BC40(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 40))(a2))
  {
    if ((*(*a2 + 48))(a2) == **a1 && *(*a1 + 8) == v4)
    {
      v5 = *(a1 + 8);
      if (*v5 != 1 || *sub_23949B670(v5) == *(a2 + 57))
      {
        if (**(a1 + 32) - 1 <= 1)
        {
          v6 = *(a1 + 24);
          if (!*v6 || *(*v6 + 136) < *(a2 + 136))
          {
            if (*(a2 + 32))
            {
              *v6 = a2;
            }
          }
        }

        v7 = *(a1 + 16);
        if (!*v7 || *(*v7 + 136) < *(a2 + 136))
        {
          *v7 = a2;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_23949BD58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if ((*(*a2 + 40))(a2) && a2[4] == *a1)
  {
    v7 = a2;
    (*(*a2 + 24))(a2);
    v5 = *(v4 + 240);
    if (v5)
    {
      (*(*v5 + 16))(v5, *a1, &v7, **(a1 + 16), *(*(a1 + 16) + 8));
    }

    sub_239493268(a2);
    (*(*v7 + 32))(v7);
  }

  return 0;
}

uint64_t sub_23949BE68(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  (*(*a2 + 24))(a2);
  (**a1)(**(a1 + 8), &v4);
  (*(*v4 + 32))(v4);
  return 0;
}

uint64_t sub_23949BF9C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = 0x2B00000000;
    v5 = 3;
  }

  else
  {
    v9 = v2;
    v10 = v3;
    *(a1 + 16) = a2;
    *(a2 + 8) = a1;
    v6 = sub_2393D9044(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "TransportMgr initialized", v8, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1u, 3);
    }

    v4 = 0;
    v5 = 0;
  }

  return v5 | v4;
}

uint64_t sub_23949C058(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_23949C088(uint64_t a1, uint64_t a2, void **a3)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/transport/TransportMgrBase.cpp", 68);
  if (**a3)
  {
    sub_2393E97D4(a2, __str, 0x4CuLL);
    v6 = sub_2393D9044(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = __str;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "message from %s dropped due to lower layers not ensuring a single packet buffer.", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    sub_2393E97D4(a2, __str, 0x4CuLL);
    v12 = sub_2393D9044(1u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v14 = __str;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "message from %s is dropped since no corresponding handler is set in TransportMgr.", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (!result)
    {
      goto LABEL_6;
    }

LABEL_5:
    result = sub_2393D5320(1u, 1);
LABEL_6:
    v8 = *MEMORY[0x277D85DE8];
    return result;
  }

  v10 = *(*v9 + 16);
  v11 = *MEMORY[0x277D85DE8];

  return v10();
}

_WORD *sub_23949C284(uint64_t a1, _WORD *a2)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(*v3 + 40);

    return v4();
  }

  else
  {
    result = sub_2393E967C(a2);
    if (result)
    {

      return sub_2393E9744(result);
    }
  }

  return result;
}

uint64_t sub_23949C2F0(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t sub_23949C320(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

unint64_t sub_23949C364(void *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    LODWORD(v5) = 3;
    LODWORD(v6) = 202;
  }

  else
  {
    v13 = v3;
    v14 = v4;
    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "AccessControl: initializing", v12, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    if (a2)
    {
      v5 = (*(*a2 + 24))(a2);
      v6 = HIDWORD(v5);
      if (!v5)
      {
        LODWORD(v5) = 0;
        *a1 = a2;
        a1[1] = a3;
      }
    }

    else
    {
      LODWORD(v5) = 47;
      LODWORD(v6) = 206;
    }
  }

  return v5 | (v6 << 32);
}

void *sub_23949C470(void *result)
{
  if (*result)
  {
    v1 = result;
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "AccessControl: finishing", v3, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    result = (*(**v1 + 32))();
    *v1 = 0;
  }

  return result;
}

uint64_t sub_23949C530(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v19 = a3;
  v6 = *a1;
  if (v6)
  {
    v17 = 0;
    v18 = 0;
    v10 = (*(*v6 + 72))(v6, a3, &v18);
    if (!v10)
    {
      v10 = (*(**a1 + 40))(*a1, &v17);
      if (!v10)
      {
        if (v18 + 1 > v17)
        {
          v11 = 0xEB00000000;
          LODWORD(v10) = 25;
          return v11 | v10;
        }

        if (!sub_23949C6F4(a5))
        {
          v11 = 0xED00000000;
          LODWORD(v10) = 47;
          return v11 | v10;
        }

        v16 = 0;
        v10 = (*(**a1 + 96))(*a1, &v16, a5, &v19);
        if (!v10)
        {
          v13 = v16;
          if (a4)
          {
            *a4 = v16;
          }

          v14 = a1[2];
          if (v14)
          {
            v15 = v19;
            do
            {
              (*(*v14 + 16))(v14, a2, v15, v13, a5, 1);
              v14 = v14[1];
            }

            while (v14);
          }

          LODWORD(v10) = 0;
          v11 = 0;
          return v11 | v10;
        }
      }
    }

    v11 = v10 & 0xFFFFFFFF00000000;
    return v11 | v10;
  }

  return 0xE400000003;
}

BOOL sub_23949C6F4(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v2 = (*(**a1 + 24))(*a1, &v16 + 1);
  if (v2 || (v2 = (*(**a1 + 32))(*a1, &v16)) != 0 || (v2 = (*(**a1 + 40))(*a1, &v15)) != 0 || (v2 = (*(**a1 + 72))(*a1, &v14)) != 0 || (v2 = (*(**a1 + 112))(*a1, &v13)) != 0)
  {
    v3 = "unexpected error";
    goto LABEL_6;
  }

  if (!v16)
  {
    v3 = "invalid fabric index";
    goto LABEL_6;
  }

  if (HIBYTE(v16) != 64)
  {
    if (HIBYTE(v16) != 128)
    {
      v3 = "invalid auth mode";
      goto LABEL_6;
    }

    if (v15 == 16)
    {
      v3 = "invalid privilege";
      goto LABEL_6;
    }
  }

  if (v14)
  {
    v9 = 0;
    v3 = "invalid subject";
    while (1)
    {
      *buf = 0;
      v2 = (*(**a1 + 80))(*a1, v9, buf);
      if (v2)
      {
        break;
      }

      if (HIBYTE(v16) == 128)
      {
        if (*buf < 0xFFFFFFFFFFFF0000 || *buf == 0)
        {
          goto LABEL_6;
        }
      }

      else if (HIBYTE(v16) != 64 || (*buf - 1) >= 0xFFFFFFEFFFFFFFFFLL && (*&buf[4] != 4294967293 || !*buf))
      {
        goto LABEL_6;
      }

      if (++v9 >= v14)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
LABEL_37:
    if (!v13)
    {
      result = 1;
      goto LABEL_15;
    }

    v11 = 0;
    v3 = "invalid target";
    while (1)
    {
      *buf = 0;
      v2 = (*(**a1 + 120))(*a1, v11, buf);
      if (v2)
      {
        break;
      }

      v12 = (buf[0] & 7) == 0 || (buf[0] & 6) == 6;
      if (v12 || (buf[0] & 1) != 0 && (*&buf[4] > 0xFFF4FFFF || *&buf[4] >= 0x8000u && (*&buf[4] < 0x10000u || (*&buf[4] + 1024) > 0x3FEu)) || (buf[0] & 2) != 0 && *&buf[8] == 0xFFFF || (buf[0] & 4) != 0 && ((v18[0] & 0xFFFF0000) > 0xFFFE0000 || (v18[0] & 0xC000) == 0xC000))
      {
        goto LABEL_6;
      }

      ++v11;
      result = 1;
      if (v11 >= v13)
      {
        goto LABEL_15;
      }
    }
  }

  v3 = "unexpected error";
LABEL_6:
  v4 = sub_2393D9044(0xDu);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    if (v5)
    {
      v6 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = v3;
      LOWORD(v18[0]) = 2080;
      *(v18 + 2) = v6;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "AccessControl: %s %s", buf, 0x16u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
LABEL_14:
      sub_2393D5320(0xDu, 1);
      result = 0;
    }
  }

  else
  {
    if (v5)
    {
      *buf = 136315138;
      *&buf[4] = v3;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "AccessControl: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      goto LABEL_14;
    }
  }

LABEL_15:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_23949CB88(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  for (i = *(result + 16); i; i = i[1])
  {
    result = (*(*i + 16))(i, a2, a3, a4, a5, a6);
  }

  return result;
}

unint64_t sub_23949CC14(void *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, void *a5)
{
  v14 = a3;
  if (*a1)
  {
    if (sub_23949C6F4(a5))
    {
      v9 = (*(**a1 + 112))(*a1, a4, a5, &v14);
      if (v9)
      {
        v10 = v9 & 0xFFFFFFFF00000000;
      }

      else
      {
        v11 = a1[2];
        if (v11)
        {
          v12 = v14;
          do
          {
            (*(*v11 + 16))(v11, a2, v12, a4, a5, 3);
            v11 = v11[1];
          }

          while (v11);
        }

        LODWORD(v9) = 0;
        v10 = 0;
      }
    }

    else
    {
      v10 = 0xFF00000000;
      LODWORD(v9) = 47;
    }
  }

  else
  {
    v10 = 0xFE00000000;
    LODWORD(v9) = 3;
  }

  return v10 | v9;
}

uint64_t sub_23949CD3C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v18 = a3;
  v5 = *a1;
  if (!v5)
  {
    return 0x10700000003;
  }

  if ((byte_27DF7C0A8 & 1) == 0)
  {
    byte_27DF7C0A8 = 1;
    qword_27DF7C0A0 = &unk_284BBC360;
    v5 = *a1;
  }

  v17 = &qword_27DF7C0A0;
  if (a1[2] && (v19 = a3, v5))
  {
    if ((*(*v5 + 104))(v5, a4, &v17, &v19))
    {
      v8 = 0;
    }

    else
    {
      v8 = &v17;
    }

    v5 = *a1;
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*v5 + 120))(v5, a4, &v18);
  v10 = v9;
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v8)
    {
      v13 = *v8;
      if ((byte_27DF7C0A8 & 1) == 0)
      {
        byte_27DF7C0A8 = 1;
        qword_27DF7C0A0 = &unk_284BBC360;
      }

      if (v13 == &qword_27DF7C0A0)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = a1[2];
    if (v15)
    {
      v16 = v18;
      do
      {
        (*(*v15 + 16))(v15, a2, v16, a4, v14, 2);
        v15 = v15[1];
      }

      while (v15);
    }

    v11 = 0;
    v10 = 0;
  }

  (*(*v17 + 16))(v17);
  return v10 | v11;
}

void *sub_23949CF50(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = (a1 + 16);
  v3 = v4;
  if (v4)
  {
    while (v3 != a2)
    {
      v5 = v3;
      v3 = *(v3 + 8);
      if (!v3)
      {
        result = (v5 + 8);
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *result = a2;
    *(a2 + 8) = 0;
  }

  return result;
}

void *sub_23949CF7C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  result = (a1 + 16);
  v3 = v4;
  if (v4 == a2)
  {
LABEL_5:
    *result = *(a2 + 8);
    *(a2 + 8) = 0;
  }

  else
  {
    while (v3)
    {
      v5 = v3;
      v3 = *(v3 + 8);
      if (v3 == a2)
      {
        result = (v5 + 8);
        goto LABEL_5;
      }
    }
  }

  return result;
}

unint64_t sub_23949CFB0(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (*a1)
  {
    v4 = 0x15500000000;
    v5 = 47;
    if (a4 - 1 <= 0x1E && ((a4 + 31) & a4) == 0)
    {
      v6 = sub_23949D024(a1, a2, a3, a4);
      v4 = v6 & 0xFFFFFFFF00000000;
      v5 = v6;
    }
  }

  else
  {
    v4 = 0x15400000000;
    v5 = 3;
  }

  return v4 | v5;
}

unint64_t sub_23949D024(void *a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = (*(**a1 + 136))(*a1);
  v9 = v8;
  v10 = HIDWORD(v8);
  v11 = v8;
  if (!v8)
  {
    v9 = 0;
    goto LABEL_88;
  }

  if (v8 != 45)
  {
    v12 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (v11 == 165)
      {
        v13 = "denied";
      }

      else
      {
        v13 = "error";
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "AccessControl: %s (delegate)", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    goto LABEL_88;
  }

  if (*(a2 + 1) == 32)
  {
    LODWORD(v10) = 0;
    v9 = 0;
    goto LABEL_88;
  }

  if ((byte_27DF7C0B8 & 1) == 0)
  {
    byte_27DF7C0B8 = 1;
    qword_27DF7C0B0 = &unk_284BBC418;
  }

  v30 = &qword_27DF7C0B0;
  if (!*a1)
  {
    v9 = 3;
    LODWORD(v10) = 633;
    goto LABEL_87;
  }

  v14 = (*(**a1 + 128))(*a1, &v30, a2);
  v9 = v14;
  if (v14)
  {
    v10 = HIDWORD(v14);
    goto LABEL_87;
  }

  if ((byte_27DF7C0A8 & 1) == 0)
  {
    byte_27DF7C0A8 = 1;
    qword_27DF7C0A0 = &unk_284BBC360;
  }

  v29 = &qword_27DF7C0A0;
  if ((*(*v30 + 24))(v30, &v29))
  {
LABEL_22:
    v15 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "AccessControl: denied", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    v9 = 165;
    LODWORD(v10) = 515;
    goto LABEL_86;
  }

  v9 = 3;
  LODWORD(v10) = 437;
  while (1)
  {
    v28 = 0;
    v16 = (*(*v29 + 24))(v29, &v28);
    if (v16)
    {
      goto LABEL_84;
    }

    if (v28 != 128 && v28 != 64)
    {
      v9 = 3;
      LODWORD(v10) = 413;
      goto LABEL_86;
    }

    if (v28 != *(a2 + 1))
    {
      goto LABEL_82;
    }

    v27 = 1;
    v16 = (*(*v29 + 40))(v29, &v27);
    if (v16)
    {
      goto LABEL_84;
    }

    if (v27 <= 3u)
    {
      break;
    }

    if (v27 == 4)
    {
      if (a4 == 1 || a4 == 4)
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v27 == 8)
      {
        if (a4 > 8)
        {
          goto LABEL_82;
        }

        v17 = 1 << a4;
        v18 = 274;
      }

      else
      {
        if (v27 != 16 || a4 > 0x10)
        {
          goto LABEL_82;
        }

        v17 = 1 << a4;
        v18 = 65814;
      }

      if ((v17 & v18) != 0)
      {
        goto LABEL_51;
      }
    }

LABEL_82:
    if ((*(*v30 + 24))(v30, &v29))
    {
      goto LABEL_22;
    }
  }

  if (v27 == 1)
  {
    if (a4 == 1)
    {
      goto LABEL_51;
    }

    goto LABEL_82;
  }

  if (v27 != 2 || (a4 - 1) >= 2u)
  {
    goto LABEL_82;
  }

LABEL_51:
  v26 = 0;
  v16 = (*(*v29 + 72))(v29, &v26);
  if (v16)
  {
    goto LABEL_84;
  }

  if (v26)
  {
    v19 = 0;
    while (1)
    {
      *buf = 0;
      v16 = (*(*v29 + 80))(v29, v19, buf);
      if (v16)
      {
        goto LABEL_84;
      }

      if ((*buf - 1) > 0xFFFFFFEFFFFFFFFELL)
      {
        if (*&buf[4] == 4294967293)
        {
          if (v28 != 64)
          {
            LODWORD(v10) = 446;
            goto LABEL_86;
          }

          v20 = 0;
          while (1)
          {
            v21 = *(a2 + 16 + v20);
            if (v21)
            {
              if ((*buf - 1) < v21 && HIWORD(v21) == *&buf[2])
              {
                goto LABEL_71;
              }
            }

            v20 += 4;
            if (v20 == 12)
            {
              goto LABEL_69;
            }
          }
        }

        if (*buf < 0xFFFFFFFFFFFF0000)
        {
          LODWORD(v10) = 465;
          goto LABEL_86;
        }

        if (v28 != 128)
        {
          LODWORD(v10) = 455;
          goto LABEL_86;
        }
      }

      else if (v28 != 64)
      {
        goto LABEL_86;
      }

      if (*buf == *(a2 + 8))
      {
        break;
      }

LABEL_69:
      if (++v19 >= v26)
      {
        goto LABEL_82;
      }
    }
  }

LABEL_71:
  v25 = 0;
  v16 = (*(*v29 + 112))(v29, &v25);
  if (v16)
  {
LABEL_84:
    v10 = HIDWORD(v16);
    v9 = v16;
    goto LABEL_86;
  }

  if (v25)
  {
    v22 = 0;
    while (1)
    {
      *buf = 0;
      v16 = (*(*v29 + 120))(v29, v22, buf);
      if (v16)
      {
        goto LABEL_84;
      }

      if (((buf[0] & 1) == 0 || *&buf[4] == *a3) && ((buf[0] & 2) == 0 || *&buf[8] == *(a3 + 4)) && ((buf[0] & 4) == 0 || (*(*a1[1] + 16))(a1[1], v32, *(a3 + 4))))
      {
        break;
      }

      if (++v22 >= v25)
      {
        goto LABEL_82;
      }
    }
  }

  LODWORD(v10) = 0;
  v9 = 0;
LABEL_86:
  (*(*v29 + 16))(v29);
LABEL_87:
  (*(*v30 + 16))(v30);
LABEL_88:
  v23 = *MEMORY[0x277D85DE8];
  return v9 | (v10 << 32);
}

uint64_t *sub_23949D748()
{
  result = qword_27DF7B958;
  if (!qword_27DF7B958)
  {
    result = &qword_27DF7B960;
    if ((byte_27DF7B978 & 1) == 0)
    {
      byte_27DF7B978 = 1;
      qword_27DF7B968 = 0;
      unk_27DF7B970 = 0;
      qword_27DF7B960 = 0;
    }
  }

  return result;
}

uint64_t sub_23949D77C(uint64_t a1)
{
  v2 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "AccessControl: setting", v4, 2u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    result = sub_2393D5320(0xDu, 2);
  }

  qword_27DF7B958 = a1;
  return result;
}

uint64_t sub_23949D96C(uint64_t result)
{
  *(result + 7) = 0;
  *result = 0;
  return result;
}

void sub_23949D9A0(uint64_t a1)
{
  if (*(a1 + 10) == 1)
  {
    if (*a1)
    {
      sub_23949DA78(a1);
      j__free(*a1);
      *a1 = 0;
    }
  }
}

uint64_t sub_23949D9EC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = sub_2393D52C4(424 * a2);
    *a1 = v4;
    if (v4)
    {
      *(a1 + 9) = v3;
      *(a1 + 10) = 1;
      sub_23949DA78(a1);
      return 0;
    }

    v6 = 0x4800000000;
    v7 = 11;
  }

  else
  {
    v6 = 0x4600000000;
    v7 = 47;
  }

  sub_23949D9A0(a1);
  return v7 | v6;
}

void sub_23949DA78(uint64_t a1)
{
  if (*(a1 + 9))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      sub_23949DB2C(*a1 + v2);
      ++v3;
      v2 += 424;
    }

    while (v3 < *(a1 + 9));
  }

  *(a1 + 8) = 0;
}

uint64_t sub_23949DAD4(uint64_t a1, uint64_t a2, int a3)
{
  if (!a2)
  {
    return 0x5C0000002FLL;
  }

  if (!a3)
  {
    return 0x5D0000002FLL;
  }

  *a1 = a2;
  *(a1 + 9) = a3;
  *(a1 + 10) = 0;
  sub_23949DA78(a1);
  return 0;
}

double sub_23949DB2C(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  for (i = 16; i != 176; i += 32)
  {
    v2 = a1 + i;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 23) = 0;
    *(v2 + 16) = 0;
  }

  v3 = 0;
  do
  {
    v4 = a1 + 176 + v3;
    v3 += 32;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 23) = 0;
    *(v4 + 16) = 0;
  }

  while (v3 != 160);
  *(a1 + 336) = &unk_2395D6B90;
  *(a1 + 344) = &unk_2395D6B90;
  *(a1 + 352) = 0;
  *(a1 + 360) = &unk_2395D6B90;
  *(a1 + 368) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2395D6B90;
  result = 0.0;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  return result;
}

unint64_t sub_23949DBA0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  sub_2393C5AAC(v9);
  sub_2393C5ADC(v9, a2, a3);
  return sub_23949DC04(a1, v9, a4);
}

unint64_t sub_23949DC04(uint64_t a1, uint64_t a2, char a3)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v13);
  v6 = sub_2394A2C0C(a2, v13, a3);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else if ((~v13[187] & 0x18) != 0)
  {
    v7 = 0x9000000000;
    LODWORD(v6) = 80;
  }

  else if (v13[186] == 513)
  {
    LODWORD(v8) = *(a1 + 8);
    if (*(a1 + 8))
    {
      v9 = 0;
      v10 = 0;
      while (!sub_23949DD74(v13, *a1 + v9))
      {
        ++v10;
        v8 = *(a1 + 8);
        v9 += 424;
        if (v10 >= v8)
        {
          goto LABEL_9;
        }
      }

      v7 = 0;
      LODWORD(v6) = 0;
    }

    else
    {
LABEL_9:
      if (v8 >= *(a1 + 9))
      {
        v7 = 0xA000000000;
        LODWORD(v6) = 11;
      }

      else
      {
        memcpy((*a1 + 424 * v8), v13, 0x1A8uLL);
        v7 = 0;
        LODWORD(v6) = 0;
        ++*(a1 + 8);
      }
    }
  }

  else
  {
    v7 = 0x9300000000;
    LODWORD(v6) = 23;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v6 | v7;
}

BOOL sub_23949DD74(uint64_t a1, uint64_t a2)
{
  result = sub_23949EB88(a1 + 16, a2 + 16);
  if (result)
  {
    result = sub_23949EB88(a1 + 176, a2 + 176);
    if (result)
    {
      v5 = *(a2 + 336);
      v6 = *(a1 + 336);
      v7 = *v6;
      v8 = v6[1];
      v9 = *v5;
      v10 = v5[1];
      v11 = *(v6 + 4);
      v12 = *(v5 + 4);
      if (v7 != v9 || v8 != v10 || v11 != v12)
      {
        return 0;
      }

      v15 = *(a2 + 344);
      v16 = *(a1 + 344);
      v17 = *v16;
      v18 = v16[1];
      v19 = *v15;
      v20 = v15[1];
      v21 = *(v16 + 4);
      v22 = *(v15 + 4);
      v23 = v17 == v19 && v18 == v20;
      v24 = v23 && v21 == v22;
      return v24 && *(a1 + 352) == *(a2 + 352) && *(a1 + 356) == *(a2 + 356) && !memcmp(*(a1 + 360), *(a2 + 360), 0x41uLL) && *(a1 + 368) == *(a2 + 368) && *(a1 + 370) == *(a2 + 370) && *(a1 + 372) == *(a2 + 372) && *(a1 + 374) == *(a2 + 374) && *(a1 + 376) == *(a2 + 376) && *(a1 + 378) == *(a2 + 378) && *(a1 + 379) == *(a2 + 379) && !memcmp(*(a1 + 384), *(a2 + 384), 0x40uLL) && *(a1 + 392) == *(a2 + 392) && *(a1 + 400) == *(a2 + 400) && *(a1 + 408) == *(a2 + 408) && *(a1 + 416) == *(a2 + 416);
    }
  }

  return result;
}

uint64_t sub_23949DEEC(uint64_t a1)
{
  if (*(a1 + 8) && *a1)
  {
    v1 = 0;
    v2 = 0;
    --*(a1 + 8);
  }

  else
  {
    v1 = 0xAB00000000;
    v2 = 172;
  }

  return v2 | v1;
}

uint64_t sub_23949DF2C(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  for (result = *a1; ; result += 424)
  {
    v4 = *(result + 336);
    v5 = *v4;
    v6 = v4[1];
    v7 = *(v4 + 4);
    v8 = v5 == **a2 && v6 == *(*a2 + 8);
    if (v8 && v7 == *(*a2 + 16))
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return result;
}

BOOL sub_23949DF74(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    return 0;
  }

  if (*a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = *a1 + 424;
  do
  {
    v5 = v3 + 1;
    if (v2 - 1 == v3)
    {
      break;
    }

    ++v3;
    v6 = v4 == a2;
    v4 += 424;
  }

  while (!v6);
  return v5 < v2;
}

unint64_t sub_23949DFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!*(a1 + 8))
  {
    goto LABEL_9;
  }

  if (*a1 == a2)
  {
    goto LABEL_8;
  }

  v4 = 0;
  v5 = *a1 + 424;
  do
  {
    v6 = v4 + 1;
    if (v3 - 1 == v4)
    {
      break;
    }

    ++v4;
    v7 = v5 == a2;
    v5 += 424;
  }

  while (!v7);
  if (v6 < v3)
  {
LABEL_8:
    *(a3 + 16) = 0;
    v8 = sub_23949E05C(a1, a2, a3, 0);
    v9 = v8 & 0xFFFFFFFF00000000;
    v10 = v8;
  }

  else
  {
LABEL_9:
    v9 = 0xD000000000;
    v10 = 47;
  }

  return v10 | v9;
}

unint64_t sub_23949E05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v48[5] = *MEMORY[0x277D85DE8];
  v46 = 0;
  v45 = 0;
  v8 = sub_23949E8C0(a2 + 16, &v45);
  if (v8)
  {
    goto LABEL_2;
  }

  v10 = *(a2 + 374);
  if ((v10 & 0x20) != 0)
  {
    v8 = 0x10600000000;
    goto LABEL_8;
  }

  if (a4)
  {
    if ((v10 & 0x80) == 0)
    {
      v8 = 0x10C00000000;
LABEL_8:
      v9 = 77;
      goto LABEL_9;
    }

    if ((v10 & 2) == 0 || (*(a2 + 376) & 0x20) == 0)
    {
      v8 = 0x11000000000;
      goto LABEL_8;
    }

    if (v45 - 1 <= 1)
    {
      if ((v10 & 0x40) != 0 && a4 - 1 > *(a2 + 379))
      {
        v8 = 0x11E00000000;
        v9 = 75;
        goto LABEL_9;
      }

      goto LABEL_28;
    }

    v8 = 0x11300000000;
LABEL_37:
    v9 = 157;
    goto LABEL_9;
  }

  if (*(a3 + 24) && ((v10 & 2) == 0 || (*(a3 + 24) & ~*(a2 + 376)) != 0))
  {
    v8 = 0x12B00000000;
    goto LABEL_8;
  }

  if (*(a3 + 26) && ((v10 & 4) == 0 || (*(a3 + 26) & ~*(a2 + 378)) != 0))
  {
    v8 = 0x13400000000;
    goto LABEL_8;
  }

  if (*(a3 + 27) && v45 != *(a3 + 27))
  {
    v8 = 0x13A00000000;
    goto LABEL_37;
  }

LABEL_28:
  if (*a3 == 1)
  {
    if (*(a2 + 356) && (v18 = sub_23949EB1C(a3), v19 = *(a2 + 356), *v18 > v19))
    {
      v20 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *sub_23949EB1C(a3);
        *buf = 67109376;
        v48[0] = v19;
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = v21;
        _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_INFO, "Certificate's mNotAfterTime (%u) is before last known good time (%u)", buf, 0xEu);
      }

      if (sub_2393D5398(3u))
      {
        v40 = *(a2 + 356);
        v43 = *sub_23949EB1C(a3);
        sub_2393D5320(0xBu, 3);
      }

      v17 = 4;
    }

    else
    {
      v17 = 3;
    }
  }

  else if (*a3)
  {
    v17 = 5;
  }

  else
  {
    v13 = sub_23949EAFC(a3);
    v14 = *(a2 + 352);
    if (*v13 >= v14)
    {
      if (*(a2 + 356) && (v22 = sub_23949EAFC(a3), v23 = *(a2 + 356), *v22 > v23))
      {
        v24 = sub_2393D9044(0xBu);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          v25 = *sub_23949EAFC(a3);
          *buf = 67109376;
          v48[0] = v23;
          LOWORD(v48[1]) = 1024;
          *(&v48[1] + 2) = v25;
          _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_INFO, "Certificate's mNotAfterTime (%u) is before current time (%u)", buf, 0xEu);
        }

        if (sub_2393D5398(3u))
        {
          v41 = *(a2 + 356);
          v44 = *sub_23949EAFC(a3);
          sub_2393D5320(0xBu, 3);
        }

        v17 = 2;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v15 = sub_2393D9044(0xBu);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *sub_23949EAFC(a3);
        *buf = 67109376;
        v48[0] = v14;
        LOWORD(v48[1]) = 1024;
        *(&v48[1] + 2) = v16;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "Certificate's mNotBeforeTime (%u) is after current time (%u)", buf, 0xEu);
      }

      if (sub_2393D5398(3u))
      {
        v39 = *(a2 + 352);
        v42 = *sub_23949EAFC(a3);
        sub_2393D5320(0xBu, 3);
      }

      v17 = 1;
    }
  }

  v26 = *(a3 + 32);
  if (v26)
  {
    v8 = (*(*v26 + 16))(v26, a2, a4, v17);
    if (v8)
    {
LABEL_2:
      v9 = v8;
      goto LABEL_9;
    }
  }

  else if (v17 <= 2 && v17)
  {
    if (v17 == 1)
    {
      v8 = 0x5C600000000;
      v9 = 79;
    }

    else
    {
      v8 = 0x5C900000000;
      v9 = 78;
    }

    goto LABEL_9;
  }

  if ((*(a2 + 374) & 0x100) != 0)
  {
    v8 = 0;
    v9 = 0;
    *(a3 + 16) = a2;
    goto LABEL_9;
  }

  if (sub_23949EB88(a2 + 176, a2 + 16))
  {
    v27 = *(a2 + 336);
    v28 = *(a2 + 344);
    v29 = *v28;
    v30 = v28[1];
    v31 = *v27;
    v32 = v27[1];
    v33 = *(v28 + 4);
    v34 = *(v27 + 4);
    v35 = v29 == v31 && v30 == v32;
    if (v35 && v33 == v34)
    {
      v8 = 0x18C00000000;
      v9 = 87;
      goto LABEL_9;
    }
  }

  if (*(a1 + 8) <= a4)
  {
    v8 = 0x19200000000;
    v9 = 76;
    goto LABEL_9;
  }

  if (!sub_23949E61C(a1, a2 + 176, a2 + 344, a3, (a4 + 1), &v46))
  {
    v8 = sub_23949E790(a2, v46);
    goto LABEL_2;
  }

  v37 = sub_2393D9044(0xBu);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = sub_2393C9138();
    *buf = 136315138;
    *v48 = v38;
    _os_log_impl(&dword_238DAE000, v37, OS_LOG_TYPE_ERROR, "Failed to find valid cert during chain traversal: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xBu, 1);
  }

  v8 = 0x19A00000000;
  v9 = 74;
LABEL_9:
  v11 = *MEMORY[0x277D85DE8];
  return v8 & 0xFFFFFFFF00000000 | v9;
}

unint64_t sub_23949E61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6)
{
  *a6 = 0;
  if (a5)
  {
    v6 = 74;
  }

  else
  {
    v6 = 83;
  }

  if (*(a1 + 8))
  {
    v10 = 0;
    v11 = 0;
    v12 = 430;
    while (1)
    {
      v13 = *a1;
      v14 = *a1 + v10;
      if (sub_23949EB88(v14 + 16, a2))
      {
        v15 = *(v14 + 336);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(v15 + 4);
        v19 = v16 == **a3 && v17 == *(*a3 + 8);
        if (v19 && v18 == *(*a3 + 16))
        {
          v21 = sub_23949E05C(a1, v14, a4, a5);
          v6 = v21;
          v12 = HIDWORD(v21);
          if (!v21)
          {
            break;
          }
        }
      }

      ++v11;
      v10 += 424;
      if (v11 >= *(a1 + 8))
      {
        return v6 | (v12 << 32);
      }
    }

    *a6 = v13 + v10;
  }

  else
  {
    v12 = 430;
  }

  return v6 | (v12 << 32);
}

uint64_t sub_23949E74C(uint64_t a1, uint64_t a2)
{
  result = 0xE10000002FLL;
  if (a1)
  {
    if (a2)
    {
      return sub_23949E790(a1, a2);
    }
  }

  return result;
}

uint64_t sub_23949E790(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 374) & 0x200) != 0)
  {
    if (*(a1 + 372) == 513)
    {
      v18 = 64;
      v19 = &unk_284BB9138;
      v4 = *(a1 + 384);
      v5 = v4[3];
      v7 = *v4;
      v6 = v4[1];
      v17[2] = v4[2];
      v17[3] = v5;
      v17[0] = v7;
      v17[1] = v6;
      v8 = *(a2 + 360);
      v20 = *v8;
      v10 = v8[2];
      v9 = v8[3];
      v11 = *(v8 + 64);
      v21 = v8[1];
      v22 = v10;
      v24 = v11;
      v23 = v9;
      v12 = sub_2393F8B68(&v19, a1 + 392, 32, v17);
      v13 = v12;
      v14 = v12 & 0xFFFFFFFF00000000;
      sub_2393F9144(v17, 64);
      v3 = v13;
      if (v13)
      {
        v2 = v14;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0xE800000000;
      v3 = 23;
    }
  }

  else
  {
    v2 = 0xE700000000;
    v3 = 47;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v2 | v3;
}

uint64_t sub_23949E8C0(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  v5 = 24;
  while (*(a1 + v5))
  {
    ++v4;
    v5 += 32;
    if (v4 == 5)
    {
      goto LABEL_13;
    }
  }

  if (v4 == 1)
  {
    if (*(a1 + 24) == 769 && (*(a1 + 26) & 1) == 0 && sub_23949EDC8(a1, &off_278A83080))
    {
      LOBYTE(v6) = 5;
LABEL_52:
      v12 = 0;
      v10 = 0;
      *a2 = v6;
      return v10 | v12;
    }

    v4 = 1;
LABEL_13:
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
    if (!v4)
    {
      LOBYTE(v6) = 0;
      goto LABEL_52;
    }
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a1 + 16;
  v10 = 89;
  do
  {
    v11 = *(v9 + 8);
    if (v11 <= 0x313)
    {
      switch(v11)
      {
        case 0x311u:
          if (v6)
          {
            v12 = 0x28400000000;
            return v10 | v12;
          }

          if ((*v9 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
          {
            v12 = 0x28500000000;
            v10 = 92;
            return v10 | v12;
          }

          v6 = 3;
          break;
        case 0x312u:
          if (v6)
          {
            v12 = 0x28A00000000;
            return v10 | v12;
          }

          v6 = 4;
          break;
        case 0x313u:
          if (v6)
          {
            v12 = 0x27800000000;
            return v10 | v12;
          }

          v6 = 2;
          break;
      }
    }

    else if (*(v9 + 8) > 0x315u)
    {
      if (v11 == 790)
      {
        if (HIDWORD(*v9))
        {
          v12 = 0x29700000000;
          return v10 | v12;
        }

        if (!*v9)
        {
          v12 = 0x29800000000;
          return v10 | v12;
        }

        v7 = 1;
      }

      else if (v11 == 791)
      {
        if (v6)
        {
          v12 = 0x27E00000000;
          return v10 | v12;
        }

        v6 = 6;
      }
    }

    else if (v11 == 788)
    {
      if (v6)
      {
        v12 = 0x27200000000;
        return v10 | v12;
      }

      v6 = 1;
    }

    else if (v11 == 789)
    {
      if (v8)
      {
        v12 = 0x29100000000;
        return v10 | v12;
      }

      if (!*v9)
      {
        v12 = 0x29200000000;
        return v10 | v12;
      }

      v8 = 1;
    }

    v9 += 32;
    --v4;
  }

  while (v4);
  if (v6 == 3)
  {
    if (v8)
    {
      LOBYTE(v6) = 3;
      goto LABEL_52;
    }

    v12 = 0x29F00000000;
  }

  else if (v7)
  {
    v12 = 0x2A300000000;
  }

  else
  {
    if (((v6 == 6) & v8) == 0)
    {
      goto LABEL_52;
    }

    v12 = 0x2A800000000;
  }

  v10 = 89;
  return v10 | v12;
}

void *sub_23949EAFC(void *a1)
{
  if (*a1)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

void *sub_23949EB1C(void *a1)
{
  if (*a1 != 1)
  {
    sub_23953588C();
  }

  return a1 + 1;
}

uint64_t sub_23949EB40(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3 > 5)
  {
    return 0x5CC000000ACLL;
  }

  v3 = qword_278A830A0[a3];
  return qword_2395D6C08[a3] | qword_2395D6BD8[a3];
}

BOOL sub_23949EB88(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  v5 = (a1 + 24);
  do
  {
    v6 = *v5;
    v5 += 16;
    if (!v6)
    {
      if (v4)
      {
        v7 = -v4;
        goto LABEL_7;
      }

      return 0;
    }

    --v4;
  }

  while (v4 != -5);
  v7 = 5;
LABEL_7:
  v8 = 0;
  v9 = (a2 + 24);
  while (1)
  {
    v10 = *v9;
    v9 += 16;
    if (!v10)
    {
      break;
    }

    if (++v8 == 5)
    {
      goto LABEL_12;
    }
  }

  LODWORD(v8) = v8;
LABEL_12:
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7)
  {
    return 1;
  }

  v11 = v7 - 1;
  do
  {
    result = sub_23949ED6C(v3, v2);
    v14 = v11-- != 0;
    if (!result)
    {
      break;
    }

    v3 += 32;
    v2 += 32;
  }

  while (v14);
  return result;
}

uint64_t sub_23949EC50(uint64_t result)
{
  v1 = 0;
  *result = 0;
  *(result + 8) = 0;
  do
  {
    v2 = result + v1;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 40) = 0;
    v1 += 32;
  }

  while (v1 != 160);
  for (i = 16; i != 176; i += 32)
  {
    v4 = result + i;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 23) = 0;
    *(v4 + 16) = 0;
  }

  for (j = 0; j != 160; j += 32)
  {
    v6 = result + j;
    *(v6 + 176) = 0;
    *(v6 + 184) = 0;
    *(v6 + 200) = 0;
  }

  for (k = 176; k != 336; k += 32)
  {
    v8 = result + k;
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 23) = 0;
    *(v8 + 16) = 0;
  }

  *(result + 336) = &unk_2395D6B90;
  *(result + 344) = &unk_2395D6B90;
  *(result + 360) = &unk_2395D6B90;
  *(result + 374) = 0;
  *(result + 378) = 0;
  *(result + 384) = &unk_2395D6B90;
  return result;
}

uint64_t sub_23949ECF0(uint64_t result)
{
  for (i = 0; i != 160; i += 32)
  {
    v2 = result + i;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 24) = 0;
  }

  v3 = 0;
  do
  {
    v4 = result + v3;
    v3 += 32;
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 23) = 0;
    *(v4 + 16) = 0;
  }

  while (v3 != 160);
  return result;
}

uint64_t sub_23949ED30(uint64_t result)
{
  v1 = 0;
  do
  {
    v2 = result + v1;
    v1 += 32;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 23) = 0;
    *(v2 + 16) = 0;
  }

  while (v1 != 160);
  return result;
}

uint64_t sub_23949ED54(uint64_t result)
{
  *result = -1;
  *(result + 32) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

BOOL sub_23949ED6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (*(a1 + 24))
  {
    v3 = v2 == 0xFFFF;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || v2 != *(a2 + 24) || *(a1 + 26) != *(a2 + 26))
  {
    return 0;
  }

  if ((v2 - 785) > 6)
  {
    return sub_23949EDC8(a1, a2);
  }

  return *(a1 + 16) == *(a2 + 16);
}

BOOL sub_23949EDC8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != *(a2 + 8))
  {
    return 0;
  }

  if (v2)
  {
    return memcmp(*a1, *a2, v2) == 0;
  }

  return 1;
}

uint64_t sub_23949EE18(uint64_t a1)
{
  v1 = 0;
  v2 = (a1 + 24);
  do
  {
    v3 = *v2;
    v2 += 16;
    if (!v3)
    {
      break;
    }

    ++v1;
  }

  while (v1 != 5);
  return v1;
}

uint64_t sub_23949EE3C(uint64_t a1, int a2, unint64_t a3)
{
  v3 = 0;
  v4 = (a1 + 26);
  v5 = 11;
  while (*(v4 - 1))
  {
    ++v3;
    v4 += 32;
    if (v3 == 5)
    {
      v6 = 0x23100000000;
      return v5 | v6;
    }
  }

  if (v3 > 4)
  {
    v6 = 0x23100000000;
    v5 = 11;
  }

  else
  {
    if ((a2 - 785) > 6)
    {
      v6 = 0x23200000000;
    }

    else
    {
      if (a2 != 790 || !HIDWORD(a3))
      {
        v6 = 0;
        v5 = 0;
        *(v4 - 1) = a2;
        *(v4 - 10) = a3;
        *v4 = 0;
        return v5 | v6;
      }

      v6 = 0x23600000000;
    }

    v5 = 47;
  }

  return v5 | v6;
}

uint64_t sub_23949EEE8(uint64_t a1, uint64_t a2)
{
  if (!sub_239221020(a2))
  {
    return 0x2420000002FLL;
  }

  v4 = 0;
  v5 = 11;
  while (1)
  {
    v6 = *(a2 + v4);
    if (v6)
    {
      break;
    }

LABEL_10:
    v4 += 4;
    if (v4 == 12)
    {
      v5 = 0;
      v9 = 0;
      return v9 | v5;
    }
  }

  v7 = 0;
  for (i = (a1 + 26); *(i - 1); i += 32)
  {
    if (++v7 == 5)
    {
      return 0x2310000000BLL;
    }
  }

  if (v7 <= 4)
  {
    *(i - 1) = 790;
    *(i - 10) = v6;
    *i = 0;
    goto LABEL_10;
  }

  v9 = 0x23100000000;
  return v9 | v5;
}

uint64_t sub_23949EFB4(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = 0;
  v6 = a1 + 24;
  v7 = 11;
  while (*v6)
  {
    ++v5;
    v6 += 32;
    if (v5 == 5)
    {
      v8 = 0x25300000000;
      return v7 | v8;
    }
  }

  if (v5 > 4)
  {
    v8 = 0x25300000000;
    v7 = 11;
  }

  else
  {
    if ((a2 - 785) < 7)
    {
      v8 = 0x25400000000;
LABEL_12:
      v7 = 47;
      return v7 | v8;
    }

    if (!a2)
    {
      v8 = 0x25500000000;
      goto LABEL_12;
    }

    v8 = 0;
    v7 = 0;
    *v6 = a2;
    *(v6 - 24) = a3;
    *(v6 - 16) = a4;
    *(v6 + 2) = a5;
  }

  return v7 | v8;
}

uint64_t sub_23949F054(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v3 += 16;
    if (!v4)
    {
      break;
    }

    if (++v2 == 5)
    {
      *a2 = 0;
      goto LABEL_6;
    }
  }

  *a2 = 0;
  if (!v2)
  {
LABEL_20:
    v13 = 0x2CB00000000;
    v7 = 89;
    return v7 | v13;
  }

LABEL_6:
  v5 = 0;
  v6 = 0;
  v7 = 89;
  while (2)
  {
    v8 = (a1 + 24 + 32 * v5++);
    while (1)
    {
      v9 = *v8 - 785;
      v10 = v9 > 6;
      v11 = (1 << v9) & 0x4F;
      if (!v10 && v11 != 0)
      {
        break;
      }

      ++v5;
      v8 += 16;
      if (v5 - v2 == 1)
      {
        if ((v6 & 1) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }
    }

    if ((v6 & 1) == 0)
    {
      *a2 = *(v8 - 1);
      v6 = 1;
      if (v5 != v2)
      {
        continue;
      }

LABEL_19:
      v13 = 0;
      v7 = 0;
      return v7 | v13;
    }

    break;
  }

  v13 = 0x2C100000000;
  return v7 | v13;
}

uint64_t sub_23949F134(uint64_t a1, void *a2)
{
  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v3 += 16;
    if (!v4)
    {
      break;
    }

    if (++v2 == 5)
    {
      *a2 = 0;
      goto LABEL_6;
    }
  }

  *a2 = 0;
  if (!v2)
  {
    v8 = 0x2E400000000;
    v7 = 89;
    return v7 | v8;
  }

LABEL_6:
  v5 = 0;
  v6 = (a1 + 24);
  v7 = 89;
  do
  {
    if (*v6 == 789)
    {
      if (v5)
      {
        v8 = 0x2DB00000000;
        return v7 | v8;
      }

      v5 = *(v6 - 1);
      if (!v5)
      {
        v8 = 0x2DC00000000;
        return v7 | v8;
      }

      *a2 = v5;
    }

    v6 += 16;
    --v2;
  }

  while (v2);
  v8 = 0x2E400000000;
  v7 = 89;
  if (v5)
  {
    v8 = 0;
    v7 = 0;
  }

  return v7 | v8;
}

unint64_t sub_23949F1EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = 0;
  v6 = (a1 + 24);
  while (1)
  {
    v7 = *v6;
    v6 += 16;
    if (!v7)
    {
      break;
    }

    if (++v5 == 5)
    {
      LODWORD(v8) = 5;
      goto LABEL_6;
    }
  }

  LODWORD(v8) = v5;
LABEL_6:
  v13 = 0;
  result = sub_2393C8CE0(a2, a3, 23, &v13);
  if (!result)
  {
    if (v8)
    {
      v8 = v8;
      v10 = a1 + 16;
      do
      {
        v11 = *(v10 + 8);
        if (*(v10 + 10))
        {
          v12 = v11 | 0x80;
        }

        else
        {
          v12 = *(v10 + 8);
        }

        if ((v11 - 785) > 6)
        {
          result = sub_2393C85FC(a2, v12, *(v10 - 16), *(v10 - 8));
          if (result)
          {
            return result;
          }
        }

        else
        {
          result = sub_2393C8154(a2, v12, *v10);
          if (result)
          {
            return result;
          }
        }

        v10 += 32;
        --v8;
      }

      while (v8);
    }

    return sub_2393C8DE0(a2, v13);
  }

  return result;
}

unint64_t sub_23949F2D4(uint64_t a1, uint64_t a2)
{
  if (sub_2393C5C40(a2) != 23)
  {
    v4 = 0x30E00000000;
    v5 = 38;
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v13 = 0;
  v4 = sub_2393C6A2C(a2, &v13);
  if (v4)
  {
LABEL_3:
    v5 = v4;
    return v4 & 0xFFFFFFFF00000000 | v5;
  }

  v5 = 36;
  while (1)
  {
    v4 = sub_2393C6B34(a2);
    if (v4)
    {
      break;
    }

    v7 = *(a2 + 16);
    if (v7 > 0xFF)
    {
      v4 = 0x31800000000;
      return v4 & 0xFFFFFFFF00000000 | v5;
    }

    v8 = v7 & 0x7F | 0x300;
    if ((v7 & 0x7F) - 17 < 5)
    {
LABEL_10:
      *&v12 = 0;
      if ((v7 & 0x80) != 0)
      {
        v4 = 0x32E00000000;
        return v4 & 0xFFFFFFFF00000000 | v5;
      }

      v4 = sub_2393C5F2C(a2, &v12);
      if (v4)
      {
        goto LABEL_3;
      }

      v9 = v12;
      if (v8 == 789)
      {
        if (!v12)
        {
          v4 = 0x33600000000;
LABEL_38:
          v5 = 47;
          return v4 & 0xFFFFFFFF00000000 | v5;
        }
      }

      else if (v8 == 785 && (v12 - 1) >= 0xFFFFFFEFFFFFFFFFLL)
      {
        v4 = 0x33200000000;
        v5 = 92;
        return v4 & 0xFFFFFFFF00000000 | v5;
      }

      v10 = a1;
      v11 = v7 & 0x7F | 0x300;
      goto LABEL_23;
    }

    if (v8 == 790)
    {
      LODWORD(v12) = 0;
      if ((v7 & 0x80) != 0)
      {
        v4 = 0x33E00000000;
        return v4 & 0xFFFFFFFF00000000 | v5;
      }

      v4 = sub_2393C5FC8(a2, &v12);
      if (v4)
      {
        goto LABEL_3;
      }

      v9 = v12;
      if (!v12)
      {
        v4 = 0x34200000000;
        goto LABEL_38;
      }

      v10 = a1;
      v11 = 790;
LABEL_23:
      v4 = sub_23949EE3C(v10, v11, v9);
      if (v4)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v8 == 791)
      {
        goto LABEL_10;
      }

      v12 = 0uLL;
      v4 = sub_2393C61E0(a2, &v12);
      if (v4)
      {
        goto LABEL_3;
      }

      v4 = sub_23949EFB4(a1, v7 & 0x7F | 0x300, v12, *(&v12 + 1), (v7 & 0x80) != 0);
      if (v4)
      {
        goto LABEL_3;
      }
    }
  }

  if (v4 != 33)
  {
    goto LABEL_3;
  }

  v4 = sub_2393C6A98(a2, v13);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 & 0xFFFFFFFF00000000 | v5;
}

unint64_t sub_23949F4C8(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v19 = *MEMORY[0x277D85DE8];
  v5 = (a1 + 24);
  while (1)
  {
    v6 = *v5;
    v5 += 16;
    if (!v6)
    {
      break;
    }

    if (++v4 == 5)
    {
      v7 = 5;
      goto LABEL_6;
    }
  }

  v7 = v4;
LABEL_6:
  v8 = sub_2393F77A4(a2, 0, 0x10u);
  if (!v8)
  {
    if (v7)
    {
      v9 = v7;
      v10 = a1 + 16;
      while (1)
      {
        v8 = sub_2393F77A4(a2, 0, 0x11u);
        if (v8)
        {
          goto LABEL_31;
        }

        v11 = *(v10 + 8);
        if ((v11 - 785) < 5)
        {
          goto LABEL_11;
        }

        if (v11 != 790)
        {
          break;
        }

        v12 = v18;
        v8 = sub_2393D5FC4(*v10, v18, 0x10uLL, 1u);
        if (v8)
        {
          goto LABEL_31;
        }

        v13 = 12;
        v14 = 8;
LABEL_13:
        v8 = sub_2393F77A4(a2, 0, 0x10u);
        if (v8)
        {
          goto LABEL_31;
        }

        v8 = sub_2393F5C58(a2, v11);
        if (v8)
        {
          goto LABEL_31;
        }

        if (v14 >> 16)
        {
          v15 = 0x38B00000000;
          LODWORD(v8) = 80;
          goto LABEL_32;
        }

        v8 = sub_2393F714C(a2, v13, v12, v14);
        if (v8)
        {
          goto LABEL_31;
        }

        v8 = sub_2393F77B0(a2);
        if (v8)
        {
          goto LABEL_31;
        }

        v8 = sub_2393F77B0(a2);
        if (v8)
        {
          goto LABEL_31;
        }

        v10 += 32;
        if (!--v9)
        {
          goto LABEL_30;
        }
      }

      if (v11 != 791)
      {
        v12 = *(v10 - 16);
        v14 = *(v10 - 8);
        if (v11 == 784)
        {
          v13 = 22;
        }

        else if (*(v10 + 10))
        {
          v13 = 19;
        }

        else
        {
          v13 = 12;
        }

        goto LABEL_13;
      }

LABEL_11:
      v12 = v18;
      v8 = sub_2393D5F58(*v10, v18, 0x10uLL, 1u);
      if (v8)
      {
        goto LABEL_31;
      }

      v13 = 12;
      v14 = 16;
      goto LABEL_13;
    }

LABEL_30:
    v8 = sub_2393F77B0(a2);
  }

LABEL_31:
  v15 = v8 & 0xFFFFFFFF00000000;
LABEL_32:
  v16 = *MEMORY[0x277D85DE8];
  return v15 | v8;
}

unint64_t sub_23949F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2393F5CEC(a2);
  if (v4)
  {
    goto LABEL_2;
  }

  if (*a2 || *(a2 + 1) != 16)
  {
    v5 = 0x3A100000000;
    goto LABEL_52;
  }

  v4 = sub_2393F5F1C(a2);
  if (v4)
  {
LABEL_2:
    v5 = v4;
LABEL_53:
    v15 = v5 & 0xFFFFFFFF00000000;
    return v15 | v4;
  }

  LODWORD(v4) = 773;
  v6 = 774;
  while (1)
  {
    if (sub_2393F5CEC(a2))
    {
      v17 = sub_2393F5CEC(a2);
      v4 = v17;
      if (v17)
      {
        if (v17 == 768)
        {
          v5 = sub_2393F602C(a2);
          LODWORD(v4) = v5;
          goto LABEL_53;
        }

        goto LABEL_2;
      }

      v5 = 0x3F400000000;
LABEL_52:
      LODWORD(v4) = 773;
      goto LABEL_53;
    }

    if (*a2)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a2 + 1) == 17;
    }

    if (!v7)
    {
      v5 = 0x3A600000000;
      goto LABEL_53;
    }

    v5 = sub_2393F5F1C(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v5 = sub_2393F5CEC(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v5 = 0x3A900000000;
    if (*a2 || *(a2 + 1) != 16)
    {
      goto LABEL_53;
    }

    v5 = sub_2393F5F1C(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v19 = 0;
    v5 = sub_2393F5CEC(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v5 = 0x3AE00000000;
    if (*a2 || *(a2 + 1) != 6)
    {
      goto LABEL_53;
    }

    v5 = sub_2393F5BA0(a2, &v19);
    if (v5)
    {
      goto LABEL_61;
    }

    if (sub_2393F5B1C(v19) != 768)
    {
      v9 = 0x3AF00000000;
      goto LABEL_68;
    }

    v5 = sub_2393F5CEC(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    if (*a2)
    {
      v9 = 0x3BA00000000;
      goto LABEL_77;
    }

    v8 = *(a2 + 1);
    v9 = 0x3BA00000000;
    if (v8 > 0x16 || ((1 << v8) & 0x481000) == 0)
    {
      goto LABEL_77;
    }

    v10 = v19;
    if (v8 != 12 && (v19 - 792) > 0xFFF8u)
    {
      break;
    }

    if (v19 - 785 >= 5)
    {
      if (v19 == 790)
      {
        LODWORD(v18[0]) = 0;
        if (sub_2393D6198(*(a2 + 8), *(a2 + 16), v18) == 4)
        {
          v12 = LODWORD(v18[0]);
          if (LOWORD(v18[0]))
          {
            v11 = v19;
            goto LABEL_44;
          }

          v9 = 0x3DE00000000;
LABEL_76:
          v6 = 89;
          goto LABEL_77;
        }

        v9 = 0x3DC00000000;
LABEL_72:
        v6 = 773;
        goto LABEL_77;
      }

      if (v19 != 791)
      {
        v13 = v8 == 19;
        sub_238DB9BD8(v18, *(a2 + 8), *(a2 + 16));
        v9 = sub_23949EFB4(a1, v10, v18[0], v18[1], v13);
        if (v9)
        {
          goto LABEL_69;
        }

        goto LABEL_45;
      }
    }

    v18[0] = 0;
    if (sub_2393D6110(*(a2 + 8), *(a2 + 16), v18) != 8)
    {
      v9 = 0x3C900000000;
      goto LABEL_72;
    }

    v11 = v19;
    v12 = v18[0];
    if (v19 == 789)
    {
      if (v18[0])
      {
        goto LABEL_44;
      }

      v9 = 0x3D100000000;
      goto LABEL_76;
    }

    if (v19 == 785 && (v18[0] - 1) >= 0xFFFFFFEFFFFFFFFFLL)
    {
      v9 = 0x3CD00000000;
      v6 = 92;
      goto LABEL_77;
    }

LABEL_44:
    v9 = sub_23949EE3C(a1, v11, v12);
    if (v9)
    {
LABEL_69:
      v6 = v9;
      goto LABEL_77;
    }

LABEL_45:
    v5 = sub_2393F5CEC(a2);
    if (v5 != 768)
    {
      if (!v5)
      {
        v5 = 0x3EA00000000;
        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v4) = v5;
      goto LABEL_53;
    }

    v5 = sub_2393F602C(a2);
    if (v5)
    {
      goto LABEL_61;
    }

    v14 = sub_2393F5CEC(a2);
    if (v14 != 768)
    {
      if (v14)
      {
        v15 = v14 & 0xFFFFFFFF00000000;
        LODWORD(v4) = v14;
      }

      else
      {
        v15 = 0x3EE00000000;
        LODWORD(v4) = 774;
      }

      return v15 | v4;
    }

    v5 = sub_2393F5CEC(a2);
    if (v5 != 768)
    {
      if (!v5)
      {
        v5 = 0x3F100000000;
        goto LABEL_53;
      }

      goto LABEL_61;
    }

    v5 = sub_2393F602C(a2);
    if (v5)
    {
      goto LABEL_61;
    }
  }

  v9 = 0x3BF00000000;
LABEL_68:
  v6 = 773;
LABEL_77:
  v15 = v9 & 0xFFFFFFFF00000000;
  LODWORD(v4) = v6;
  return v15 | v4;
}

uint64_t sub_23949FA9C(unsigned __int8 *a1, _DWORD *a2)
{
  v4 = *a1;
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  v8 = a1[5];
  v9 = a1[6];
  v12 = v4 == 9999 && v5 == 12 && v6 == 31 && v7 == 23;
  if (v12 && v8 == 59 && v9 == 59)
  {
    result = 0;
    *a2 = 0;
  }

  else if (sub_2393D88C0(v4, v5, v6, v7, v8, v9, a2))
  {
    return 0;
  }

  else
  {
    return 0x42C00000306;
  }

  return result;
}

uint64_t sub_23949FB2C(unsigned int a1, uint64_t a2)
{
  if (a1)
  {
    sub_2393D895C(a1, a2, (a2 + 2), (a2 + 3), (a2 + 4), (a2 + 5), (a2 + 6));
  }

  else
  {
    *a2 = 9999;
    *(a2 + 2) = 991371020;
    *(a2 + 6) = 59;
  }

  return 0;
}

unint64_t sub_23949FB88(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v12);
  v9 = v12;
  v11 = 1;
  sub_23949DB2C(v12);
  v10 = 0;
  v2 = sub_23949DBA0(&v9, *a1, *(a1 + 8), 1);
  if (v2 || (v2 = sub_23949FD04(v12, 1), v2))
  {
    v3 = v2 & 0xFFFFFFFF00000000;
    goto LABEL_4;
  }

  if (!sub_23949EB88(&v13, &v14))
  {
    v3 = 0x46B00000000;
    goto LABEL_15;
  }

  if (*v15 != *v16 || *(v15 + 8) != *(v16 + 8) || *(v15 + 16) != *(v16 + 16))
  {
    v3 = 0x46D00000000;
LABEL_15:
    LODWORD(v2) = 157;
    goto LABEL_4;
  }

  if ((v17 & 0x80) != 0)
  {
    if ((v17 & 0x40) != 0 && v19 > 1u)
    {
      v3 = 0x47200000000;
    }

    else
    {
      if ((v18 & 0x20) != 0)
      {
        v8 = sub_23949E790(v12, v12);
        LODWORD(v2) = v8;
        v3 = v8 & 0xFFFFFFFF00000000;
        goto LABEL_4;
      }

      v3 = 0x47500000000;
    }
  }

  else
  {
    v3 = 0x46F00000000;
  }

  LODWORD(v2) = 77;
LABEL_4:
  sub_23949D9A0(&v9);
  v4 = *MEMORY[0x277D85DE8];
  return v2 | v3;
}

unint64_t sub_23949FD04(uint64_t a1, int a2)
{
  v6 = 0;
  v3 = sub_23949E8C0(a1 + 16, &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v6 == a2)
    {
      LODWORD(v3) = 0;
    }

    else
    {
      LODWORD(v3) = 157;
    }

    if (v6 == a2)
    {
      v4 = 0;
    }

    else
    {
      v4 = 0x45800000000;
    }
  }

  return v4 | v3;
}

uint64_t sub_23949FD74(_BYTE *a1, uint64_t a2, char *a3, unsigned int a4)
{
  if (a2)
  {
    if (a3)
    {
      v5 = *a1 == 0;
      if (*a1)
      {
        v6 = a1;
      }

      else
      {
        v6 = a1 + 1;
      }

      v7 = a2 - v5;
      v8 = a4 - (a2 - v5);
      if (a4 >= (a2 - v5))
      {
        if (!v7 || *v6)
        {
          bzero(a3, a4 - (a2 - v5));
          memcpy(&a3[v8], v6, v7);
          v10 = 0;
          v9 = 0;
          return v9 | v10;
        }

        v9 = 0x48D00000000;
      }

      else
      {
        v9 = 0x48900000000;
      }
    }

    else
    {
      v9 = 0x47D00000000;
    }

    v10 = 47;
  }

  else
  {
    v9 = 0x47C00000000;
    v10 = 47;
  }

  return v9 | v10;
}

uint64_t sub_23949FE4C(uint64_t a1, uint64_t *a2)
{
  v4 = a2[1];
  if (v4 < 0x49)
  {
    return 0x49800000019;
  }

  v11[16] = v2;
  v11[17] = v3;
  sub_2393F6DA8(v11, *a2, v4);
  v7 = sub_23949FEE8(a1, v11);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    v10 = sub_2393F6DCC(v11);
    sub_238DB8498(a2, v10);
    LODWORD(v7) = 0;
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t sub_23949FEE8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  result = sub_2393F77A4(a2, 0, 0x10u);
  if (!result)
  {
    v9 = v11;
    v10 = 33;
    sub_2393E99A4(&v6, a1);
    v7 = v6;
    v8 = 32;
    result = sub_2393F2B20(&v7, &v9);
    if (!result)
    {
      result = sub_2393F6EB4(a2, 0, 2u, 0, v9, v10);
      if (!result)
      {
        v9 = v11;
        v10 = 33;
        sub_2393E99A4(&v6, a1 + 32);
        v7 = v6;
        v8 = 32;
        result = sub_2393F2B20(&v7, &v9);
        if (!result)
        {
          result = sub_2393F6EB4(a2, 0, 2u, 0, v9, v10);
          if (!result)
          {
            result = sub_2393F77B0(a2);
          }
        }
      }
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394A0004(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 104) != 97)
  {
    return 0x4C50000002FLL;
  }

  v11[3] = v2;
  v11[4] = v3;
  sub_238DC45B4(v11, a1);
  sub_2393E99A4(&v10, a1 + 65);
  sub_2393F6DA8(v9, *a2, a2[1]);
  result = sub_2393F77A4(v9, 0, 0x10u);
  if (!result)
  {
    result = sub_2393F6DE8(v9, 1uLL);
    if (!result)
    {
      result = sub_2393F7164(v9, v10, 0x20u);
      if (!result)
      {
        result = sub_2393F77A4(v9, 128, 0);
        if (!result)
        {
          result = sub_2393F5C58(v9, 1025);
          if (!result)
          {
            result = sub_2393F77B0(v9);
            if (!result)
            {
              result = sub_2393F77A4(v9, 128, 1u);
              if (!result)
              {
                result = sub_2393F7438(v9, 0, v11[0], 0x41u);
                if (!result)
                {
                  result = sub_2393F77B0(v9);
                  if (!result)
                  {
                    v7 = sub_2393F77B0(v9);
                    if (!v7)
                    {
                      v8 = sub_2393F6DCC(v9);
                      sub_238DB8498(a2, v8);
                    }

                    return v7;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2394A0148(uint64_t a1, void *a2, void *a3)
{
  v3 = 0x4EE00000000;
  v4 = 47;
  if (a2 && a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = 0;
      v11 = (a1 + 40);
      do
      {
        v12 = *v11;
        v11 += 16;
        if (!v12)
        {
          break;
        }

        ++v10;
      }

      while (v10 != 5);
      if (v5 >= v10)
      {
        break;
      }

      v13 = a1 + 16 + 32 * v5;
      v14 = *(v13 + 24);
      if (v14 == 789)
      {
        v8 = *(v13 + 16);
        v7 = 1;
      }

      else if (v14 == 785)
      {
        v9 = *(v13 + 16);
        v6 = 1;
      }

      ++v5;
    }

    if (v6 & v7)
    {
      v3 = 0;
      v4 = 0;
      *a2 = v9;
      *a3 = v8;
    }

    else
    {
      v3 = 0x50500000000;
      v4 = 216;
    }
  }

  return v4 | v3;
}

unint64_t sub_2394A0210(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t *a6, void *a7)
{
  v26[9] = *MEMORY[0x277D85DE8];
  v19[0] = a1;
  v19[1] = a2;
  v18[0] = a3;
  v18[1] = a4;
  v25 = &unk_284BB9138;
  __src = &unk_2395D6B90;
  v10 = sub_2394A0354(v19, &__src);
  if (v10)
  {
    goto LABEL_4;
  }

  v19[2] = &unk_284BB9138;
  v20 = *__src;
  v12 = *(__src + 2);
  v11 = *(__src + 3);
  v13 = *(__src + 64);
  v21 = *(__src + 1);
  v22 = v12;
  v24 = v13;
  v23 = v11;
  memmove(v26, __src, 0x41uLL);
  v10 = sub_2394A03F4(v18, a7, a6);
  if (v10 || (v10 = sub_2393F3360(&v25, *a6, a5), v10))
  {
LABEL_4:
    v14 = v10 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v10) = 0;
    v14 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14 | v10;
}

unint64_t sub_2394A0354(uint64_t a1, void *a2)
{
  v8[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v8);
  v4 = sub_2394A2BA8(*a1, *(a1 + 8), v8, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    *a2 = v8[45];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394A03F4(uint64_t a1, void *a2, void *a3)
{
  v8[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v8);
  result = sub_2394A2BA8(*a1, *(a1 + 8), v8, 0);
  if (!result)
  {
    result = sub_2394A0148(v8, a2, a3);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394A0484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v7 = 0;
  result = sub_2394A0210(a1, a2, a3, a4, a5, &v7, a6);
  if (!result)
  {
    return 0;
  }

  return result;
}

uint64_t sub_2394A04BC(uint64_t a1, void *a2)
{
  v2 = 0;
  while (1)
  {
    v3 = 0;
    v4 = (a1 + 40);
    do
    {
      v5 = *v4;
      v4 += 16;
      if (!v5)
      {
        break;
      }

      ++v3;
    }

    while (v3 != 5);
    if (v2 >= v3)
    {
      break;
    }

    v6 = a1 + 16 + 32 * v2++;
    if (*(v6 + 24) == 789)
    {
      result = 0;
      *a2 = *(v6 + 16);
      return result;
    }
  }

  return 0x52E000000D8;
}

unint64_t sub_2394A052C(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v10);
  v7 = v10;
  v9 = 1;
  sub_23949DB2C(v10);
  v8 = 0;
  v4 = sub_23949DBA0(&v7, *a1, *(a1 + 8), 0);
  if (!v4)
  {
    v4 = sub_2394A05EC(v10, a2);
  }

  sub_23949D9A0(&v7);
  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

unint64_t sub_2394A05EC(uint64_t a1, uint64_t a2)
{
  v18 = 0;
  v4 = a1 + 16;
  v5 = sub_23949E8C0(a1 + 16, &v18);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFF00000000;
  }

  else if (v18 == 3)
  {
    v7 = 0;
    v8 = 0;
    LODWORD(v5) = 25;
    while (1)
    {
      v9 = 0;
      v10 = (a1 + 40);
      do
      {
        v11 = *v10;
        v10 += 16;
        if (!v11)
        {
          break;
        }

        ++v9;
      }

      while (v9 != 5);
      if (v7 >= v9)
      {
        break;
      }

      v12 = v4 + 32 * v7;
      if (*(v12 + 24) == 790)
      {
        if (v8 == 3)
        {
          v6 = 0x54E00000000;
          return v6 | v5;
        }

        v13 = *(v12 + 16);
        if (HIDWORD(v13))
        {
          v6 = 0x54F00000000;
          goto LABEL_15;
        }

        v14 = v8++;
        *(a2 + 4 * v14) = v13;
      }

      ++v7;
    }

    if (v8 <= 2u)
    {
      bzero((a2 + 4 * (v8 & 0x3F)), 12 - 4 * (v8 & 0x3F));
    }

    v15 = sub_239221020(a2);
    v6 = 0x55900000000;
    v16 = !v15;
    if (v15)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v5) = 89;
    }

    if (!v16)
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0x54300000000;
LABEL_15:
    LODWORD(v5) = 47;
  }

  return v6 | v5;
}

unint64_t sub_2394A0738(uint64_t a1, void *a2)
{
  v6[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v6);
  result = sub_2394A2BA8(*a1, *(a1 + 8), v6, 0);
  if (!result)
  {
    result = sub_2394A04BC(v6, a2);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394A07C0(uint64_t a1, _DWORD *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v8);
  v4 = sub_2394A2BA8(*a1, *(a1 + 8), v8, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    *a2 = v8[88];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394A0860(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v8);
  v4 = sub_2394A2BA8(*a1, *(a1 + 8), v8, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if ((v9 & 0x10) != 0)
  {
    v5 = 0;
    LODWORD(v4) = 0;
    *a2 = v8[42];
  }

  else
  {
    v5 = 0x58000000000;
    LODWORD(v4) = 216;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394A091C(uint64_t a1, _OWORD *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  sub_23949EC50(v13);
  v4 = sub_2394A2BA8(*a1, *(a1 + 8), v13, 0);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    v6 = v13[8];
    a2[6] = v13[7];
    a2[7] = v6;
    v7 = v13[10];
    a2[8] = v13[9];
    a2[9] = v7;
    v8 = v13[4];
    a2[2] = v13[3];
    a2[3] = v8;
    v9 = v13[6];
    a2[4] = v13[5];
    a2[5] = v9;
    v10 = v13[2];
    *a2 = v13[1];
    a2[1] = v10;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394A09DC(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1];
  if (HIDWORD(v2))
  {
    v5 = 0x59200000000;
    LODWORD(v4) = 47;
  }

  else
  {
    sub_2393F5CB4(&v7, *a1, v2);
    v4 = sub_2393F5CEC(&v7);
    if (!v4)
    {
      v4 = 0x59700000305;
      if (!v7 && v8 == 16)
      {
        v4 = sub_2393F5F1C(&v7);
        if (!v4)
        {
          v4 = sub_2393F5CEC(&v7);
          if (!v4)
          {
            v4 = 0x59B00000305;
            if (!v7 && v8 == 16)
            {
              v4 = sub_2393F5F1C(&v7);
              if (!v4)
              {
                v4 = sub_2393F5CEC(&v7);
                if (!v4)
                {
                  v4 = 0x59E00000305;
                  if (v7 == 128 && !v8)
                  {
                    v4 = sub_2393F5CEC(&v7);
                    if (!v4)
                    {
                      v4 = 0x5A100000305;
                      if (!v7 && v8 == 2)
                      {
                        v4 = sub_2393F5CEC(&v7);
                        if (!v4)
                        {
                          v4 = 0x5A400000305;
                          if (!v7 && v8 == 16)
                          {
                            v4 = sub_2393F5CEC(&v7);
                            if (!v4)
                            {
                              v4 = 0x5A700000305;
                              if (!v7 && v8 == 16)
                              {
                                v4 = sub_2393F5CEC(&v7);
                                if (!v4)
                                {
                                  v4 = 0x5AA00000305;
                                  if (!v7 && v8 == 16)
                                  {
                                    v4 = sub_23949F6CC(a2, &v7);
                                    if (!v4)
                                    {
                                      v4 = sub_2393F602C(&v7);
                                      if (!v4)
                                      {
                                        v4 = sub_2393F602C(&v7);
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
            }
          }
        }
      }
    }

    v5 = v4 & 0xFFFFFFFF00000000;
  }

  return v4 | v5;
}

uint64_t sub_2394A0BD0(uint64_t result)
{
  v1 = 0;
  do
  {
    v2 = result + v1;
    v1 += 32;
    *v2 = 0;
    *(v2 + 8) = 0;
    *(v2 + 23) = 0;
    *(v2 + 16) = 0;
  }

  while (v1 != 160);
  v3 = 0;
  v4 = result + 24;
  while (*v4)
  {
    ++v3;
    v4 += 32;
    if (v3 == 5)
    {
      goto LABEL_6;
    }
  }

  if (v3 > 4)
  {
LABEL_6:
    sub_239535914();
  }

  *v4 = 769;
  *(v4 - 24) = "*";
  *(v4 - 16) = 1;
  *(v4 + 2) = 0;
  return result;
}

unint64_t sub_2394A0C4C(uint64_t a1)
{
  v6[53] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v6);
  v2 = sub_2394A2BA8(*a1, *(a1 + 8), v6, 1);
  if (v2)
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    v2 = sub_2394A0CE8(v6);
    v3 = v2 & 0xFFFFFFFF00000000;
    if (!v2)
    {
      v3 = 0;
      LODWORD(v2) = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return v2 | v3;
}

unint64_t sub_2394A0CE8(uint64_t a1)
{
  v2 = sub_23949FD04(a1, 5);
  if (v2)
  {
LABEL_2:
    v3 = v2 & 0xFFFFFFFF00000000;
    return v3 | v2;
  }

  if (!sub_23949EDC8(a1, &xmmword_278A83090))
  {
    v3 = 0x5E400000000;
    goto LABEL_9;
  }

  if (*(a1 + 352) != 1)
  {
    v3 = 0x5E500000000;
    goto LABEL_9;
  }

  if (*(a1 + 356))
  {
    v3 = 0x5E600000000;
LABEL_9:
    LODWORD(v2) = 157;
    return v3 | v2;
  }

  if (!sub_23949EB88(a1 + 176, a1 + 16))
  {
    v3 = 0x5E700000000;
    goto LABEL_9;
  }

  v5 = *(a1 + 374);
  if ((v5 & 0x81) != 1)
  {
    v3 = 0x5EB00000000;
    goto LABEL_9;
  }

  v3 = 0x5EE00000000;
  LODWORD(v2) = 157;
  if ((v5 & 2) != 0 && *(a1 + 376) == 1)
  {
    v3 = 0x5F100000000;
    LODWORD(v2) = 157;
    if ((v5 & 4) != 0 && *(a1 + 378) == 3)
    {
      v2 = sub_23949E790(a1, a1);
      if (!v2)
      {
        LODWORD(v2) = 0;
        v3 = 0;
        return v3 | v2;
      }

      goto LABEL_2;
    }
  }

  return v3 | v2;
}

unint64_t sub_2394A0E10(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v8);
  v4 = sub_2394A2BA8(*a1, *(a1 + 8), v8, 1);
  if (v4 || (v4 = sub_2394A0CE8(v8), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2394A0ECC(v9, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      v5 = 0;
      LODWORD(v4) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394A0ECC(int8x16_t **a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = sub_2393F7E10(*a1, 0x41uLL, &v8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = 0;
    LODWORD(v3) = 0;
    v5 = v8;
    *(a2 + 16) = v9;
    *a2 = v5;
  }

  v6 = *MEMORY[0x277D85DE8];
  return v3 | v4;
}

unint64_t sub_2394A0F60(uint64_t a1, uint64_t a2)
{
  v9[8] = *MEMORY[0x277D85DE8];
  sub_23949EC50(v8);
  v4 = sub_2394A2BA8(*a1, *(a1 + 8), v8, 0);
  if (v4 || (v4 = sub_23949FD04(v8, 5), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v4 = sub_2394A0ECC(v9, a2);
    v5 = v4 & 0xFFFFFFFF00000000;
    if (!v4)
    {
      v5 = 0;
      LODWORD(v4) = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394A1020(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 8);
  if (v2)
  {
    if (!HIDWORD(v2))
    {
      v21 = 0;
      v5 = sub_2393D52C4(0xF4uLL);
      if (v5)
      {
        v6 = v5;
        sub_2393F6DA8(v17, v5, 244);
        v7 = (*(*a1 + 40))(a1);
        v8 = sub_2394AD9BC(v7, v17);
        if (v8 || (v9 = sub_2393F6DCC(v17), v8 = (*(*a1 + 24))(a1, v6, v9, v20), v8))
        {
          j__free(v6);
        }

        else
        {
          j__free(v6);
          sub_2393C7B90(v17);
          v12 = sub_2393C7BB8(v17, *a2, *(a2 + 8));
          v13 = (*(*a1 + 40))(a1, v12);
          sub_238DC45B4(&v16, v13 + 8);
          v19 = 0;
          v8 = sub_2393C8CE0(v17, 0x100uLL, 21, &v19);
          if (!v8)
          {
            v8 = sub_2393C8364(v17, 9uLL, v16, 0x41uLL);
            if (!v8)
            {
              v8 = sub_2393C8364(v17, 0xBuLL, v20, 0x40uLL);
              if (!v8)
              {
                v8 = sub_2393C8DE0(v17, v19);
                if (!v8)
                {
                  sub_238DB8498(a2, v18);
                  v10 = 0;
                  LODWORD(v8) = 0;
                  goto LABEL_16;
                }
              }
            }
          }
        }

        v10 = v8 & 0xFFFFFFFF00000000;
      }

      else
      {
        v10 = 0x61500000000;
        LODWORD(v8) = 11;
      }

LABEL_16:
      sub_2393F9144(v20, 64);
      v11 = v8;
      goto LABEL_17;
    }

    v10 = 0x62F00000000;
  }

  else
  {
    v10 = 0x62E00000000;
  }

  v11 = 47;
LABEL_17:
  v14 = *MEMORY[0x277D85DE8];
  return v11 | v10;
}

unint64_t sub_2394A12D0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*a1 || *(a1 + 1) != 3)
  {
    LODWORD(v6) = 773;
    LODWORD(v7) = 402;
    goto LABEL_7;
  }

  v6 = sub_2393F6100(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  v6 = sub_2393F5CEC(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  LODWORD(v6) = 773;
  LODWORD(v7) = 405;
  if (*a1 || *(a1 + 1) != 16)
  {
    goto LABEL_7;
  }

  v6 = sub_2393F5F1C(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  v6 = sub_2393F5CEC(a1);
  if (v6)
  {
    goto LABEL_5;
  }

  LODWORD(v6) = 773;
  LODWORD(v7) = 408;
  if (*a1 || *(a1 + 1) != 2)
  {
    goto LABEL_7;
  }

  sub_238DB6950(&v17, *(a1 + 8), *(a1 + 16));
  result = sub_23949FD74(v17, v18, v19, 0x20u);
  if (result)
  {
    goto LABEL_8;
  }

  v6 = sub_2393F5CEC(a1);
  if (v6)
  {
LABEL_5:
    v7 = HIDWORD(v6);
LABEL_7:
    result = v6 | (v7 << 32);
    goto LABEL_8;
  }

  LODWORD(v6) = 773;
  LODWORD(v7) = 413;
  if (*a1 || *(a1 + 1) != 2)
  {
    goto LABEL_7;
  }

  sub_238DB6950(&v17, *(a1 + 8), *(a1 + 16));
  result = sub_23949FD74(v17, v18, v20, 0x20u);
  if (result)
  {
    goto LABEL_8;
  }

  v10 = sub_2393F5CEC(a1);
  if (!v10)
  {
    LODWORD(v6) = 773;
    LODWORD(v7) = 417;
    goto LABEL_7;
  }

  v11 = v10;
  if (v10 != 768)
  {
    goto LABEL_24;
  }

  v12 = sub_2393F602C(a1);
  if (v12)
  {
    v11 = v12;
LABEL_24:
    LODWORD(v6) = v11;
    v7 = HIDWORD(v11);
    goto LABEL_7;
  }

  v13 = sub_2393F5CEC(a1);
  if (!v13)
  {
    LODWORD(v6) = 773;
    LODWORD(v7) = 419;
    goto LABEL_7;
  }

  v11 = v13;
  if (v13 != 768)
  {
    goto LABEL_24;
  }

  v14 = sub_2393F602C(a1);
  v16 = HIDWORD(v14);
  v15 = v14;
  if (v14 || (result = sub_2393C83AC(a2, a3, v19, 0x40u), !result))
  {
    LODWORD(v7) = v16;
    LODWORD(v6) = v15;
    goto LABEL_7;
  }

LABEL_8:
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394A1510(uint64_t a1, unint64_t a2, uint64_t a3)
{
  sub_2393C7B90(v9);
  if (!a2)
  {
    v7 = 0x22F00000000;
LABEL_10:
    LODWORD(v6) = 47;
    return v6 | v7;
  }

  if (HIDWORD(a2))
  {
    v7 = 0x23000000000;
    goto LABEL_10;
  }

  sub_2393F5CB4(&v10, a1, a2);
  sub_2393C7BB8(v9, *a3, *(a3 + 8));
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v6 = sub_2393C8CE0(v9, 0x100uLL, 21, &v15);
  if (!v6)
  {
    v6 = sub_2393F5CEC(&v10);
    if (!v6)
    {
      v6 = 0x1B600000305;
      if (!v10 && v11 == 16)
      {
        v6 = sub_2393F5F1C(&v10);
        if (v6)
        {
          goto LABEL_5;
        }

        v6 = sub_2393F5CEC(&v10);
        if (v6)
        {
          goto LABEL_5;
        }

        v6 = 0x1BA00000305;
        if (!v10 && v11 == 16)
        {
          v6 = sub_2393F5F1C(&v10);
          if (v6)
          {
            goto LABEL_5;
          }

          v6 = sub_2393F5CEC(&v10);
          if (v6)
          {
            goto LABEL_5;
          }

          v6 = 0x1BD00000305;
          if (v10 == 128 && !v11)
          {
            v6 = sub_2393F5F1C(&v10);
            if (v6)
            {
              goto LABEL_5;
            }

            v6 = sub_2393F5CEC(&v10);
            if (v6)
            {
              goto LABEL_5;
            }

            v6 = 0x1C000000305;
            if (!v10 && v11 == 2)
            {
              v6 = sub_2393F6188(&v10, &v17);
              if (v6)
              {
                goto LABEL_5;
              }

              if (v17 == 2)
              {
                v6 = sub_2393F5CEC(&v10);
                if (v6)
                {
                  if (v6 != 768)
                  {
                    goto LABEL_5;
                  }

                  v6 = sub_2393F602C(&v10);
                  if (v6)
                  {
                    goto LABEL_5;
                  }

                  v6 = sub_2393F5CEC(&v10);
                  if (v6)
                  {
                    goto LABEL_5;
                  }

                  v6 = 0x1C900000305;
                  if (!v10 && v11 == 2)
                  {
                    v6 = sub_2393C83AC(v9, 1uLL, v12, v13);
                    if (v6)
                    {
                      goto LABEL_5;
                    }

                    v6 = sub_2393F5CEC(&v10);
                    if (v6)
                    {
                      goto LABEL_5;
                    }

                    v6 = 0x1CF00000305;
                    if (!v10 && v11 == 16)
                    {
                      v6 = sub_2393F5F1C(&v10);
                      if (v6)
                      {
                        goto LABEL_5;
                      }

                      v6 = sub_2393F5CEC(&v10);
                      if (v6)
                      {
                        goto LABEL_5;
                      }

                      v6 = 0x1D200000305;
                      if (!v10 && v11 == 6)
                      {
                        v6 = sub_2393F5BA0(&v10, &v16);
                        if (v6)
                        {
                          goto LABEL_5;
                        }

                        if (v16 == 513)
                        {
                          v6 = sub_2393C8140(v9, 2uLL, 1u);
                          if (v6)
                          {
                            goto LABEL_5;
                          }

                          v6 = sub_2393F5CEC(&v10);
                          if (v6)
                          {
                            if (v6 != 768)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2393F602C(&v10);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1A88(&v10, v9, 3uLL);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1B04(&v10, v9);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1A88(&v10, v9, 6uLL);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2394A1CC0(&v10, v9);
                            if (v6)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2393F5CEC(&v10);
                            if (!v6 && v10 == 128)
                            {
                              switch(v11)
                              {
                                case 1:
                                  v6 = 0x1F000000306;
                                  goto LABEL_90;
                                case 2:
                                  v6 = 0x1F700000306;
                                  goto LABEL_90;
                                case 3:
                                  v6 = sub_2393F5F1C(&v10);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2394A1F58(&v10, v9);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F5CEC(&v10);
                                  if (!v6)
                                  {
                                    v6 = 0x20200000305;
                                    goto LABEL_90;
                                  }

                                  if (v6 != 768)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F602C(&v10);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F5CEC(&v10);
                                  break;
                              }
                            }

                            if (v6 != 768)
                            {
                              goto LABEL_5;
                            }

                            v6 = sub_2393F5CEC(&v10);
                            if (v6)
                            {
                              if (v6 != 768)
                              {
                                goto LABEL_5;
                              }

                              v6 = sub_2393F602C(&v10);
                              if (v6)
                              {
                                goto LABEL_5;
                              }

                              v6 = sub_2393F5CEC(&v10);
                              if (v6)
                              {
                                goto LABEL_5;
                              }

                              v6 = 0x21000000305;
                              if (!v10 && v11 == 16)
                              {
                                v6 = sub_2393F5F1C(&v10);
                                if (v6)
                                {
                                  goto LABEL_5;
                                }

                                v14 = 0;
                                v6 = sub_2393F5CEC(&v10);
                                if (v6)
                                {
                                  goto LABEL_5;
                                }

                                v6 = 0x21500000305;
                                if (v10)
                                {
                                  goto LABEL_5;
                                }

                                if (v11 != 6)
                                {
                                  goto LABEL_5;
                                }

                                v6 = sub_2393F5BA0(&v10, &v14);
                                if (v6)
                                {
                                  goto LABEL_5;
                                }

                                if (v14 != v16)
                                {
                                  v6 = 0x21800000306;
                                  goto LABEL_5;
                                }

                                v6 = sub_2393F5CEC(&v10);
                                if (v6)
                                {
                                  if (v6 != 768)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F602C(&v10);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = sub_2393F5CEC(&v10);
                                  if (v6)
                                  {
                                    goto LABEL_5;
                                  }

                                  v6 = 0x21D00000305;
                                  if (!v10 && v11 == 3)
                                  {
                                    v6 = sub_2394A12D0(&v10, v9, 0xBuLL);
                                    if (v6)
                                    {
                                      goto LABEL_5;
                                    }

                                    v6 = sub_2393F5CEC(&v10);
                                    if (v6)
                                    {
                                      if (v6 == 768)
                                      {
                                        v6 = sub_2393F602C(&v10);
                                        if (!v6)
                                        {
                                          v6 = sub_2393C8DE0(v9, v15);
                                        }
                                      }

                                      goto LABEL_5;
                                    }

                                    v6 = 0x22100000305;
                                  }
                                }

                                else
                                {
                                  v6 = 0x21A00000305;
                                }
                              }
                            }

                            else
                            {
                              v6 = 0x20C00000305;
                            }
                          }

                          else
                          {
                            v6 = 0x1D900000305;
                          }
                        }

                        else
                        {
                          v6 = 0x1D400000306;
                        }
                      }
                    }
                  }
                }

                else
                {
                  v6 = 0x1C500000305;
                }
              }

              else
              {
                v6 = 0x1C300000306;
              }
            }
          }
        }
      }

LABEL_90:
      v7 = v6 & 0x3FF00000000;
      return v6 | v7;
    }
  }

LABEL_5:
  if (v6 || (v6 = sub_2393C7CB8(v9), v6))
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_238DB8498(a3, v9[11]);
    v7 = 0;
    LODWORD(v6) = 0;
  }

  return v6 | v7;
}