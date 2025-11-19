BOOL sub_2394CB4DC(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *(a1 + 192);
  v2 = (a1 + 192);
  if (v3 != 1)
  {
    return 0;
  }

  v5 = sub_2393B50CC(v2);
  return *v5 == *a2 && *(v5 + 1) == *(a2 + 1) && *(v5 + 2) == *(a2 + 2);
}

uint64_t sub_2394CB550(uint64_t a1, _BYTE *a2, unsigned __int16 *a3)
{
  v5 = (a1 + 393);
  v6 = 1088;
  while (1)
  {
    v7 = v5 - 265 == a2 || *v5 == 0;
    if (!v7 && sub_2394CB4DC((v5 - 265), a3))
    {
      break;
    }

    v5 += 272;
    v6 -= 272;
    if (!v6)
    {
      return 0;
    }
  }

  return 1;
}

void sub_2394CB5BC(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (v3)
  {
    do
    {
      v5 = v3[2];
      sub_2394CB87C(a1 + 1424, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

uint64_t sub_2394CB608(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_2394CDDC8((a1 + 1424));
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *a3;
    *(v5 + 2) = *(a3 + 2);
    *v5 = v8;
    v5[2] = *a2;
    *a2 = v5;
  }

  else
  {
    v9 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "AttributePath pool full", v11, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x23u, 1);
    }

    v7 = 0x66800000000;
    v6 = 1480;
  }

  return v7 | v6;
}

void sub_2394CB6E0(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = 0;
    do
    {
      if (*(v2 + 8) == 0xFFFF)
      {
        goto LABEL_14;
      }

      v6 = *v2;
      if (*v2 == -1 || (v7 = *(v2 + 4), v7 == -1) || (v12 = *(v2 + 8), v14 = v6, v15 = v7, v13 = 0, sub_2394C91EC(a1, &v12), (v8 & 1) == 0) || (v9 = *a2) == 0)
      {
LABEL_14:
        v10 = (v2 + 16);
      }

      else
      {
        while (v9 == v2 || *(v9 + 8) != -1 && *v9 != -1 && *(v9 + 4) != -1 || !sub_2394CB810(v9, v2))
        {
          v9 = *(v9 + 16);
          if (!v9)
          {
            goto LABEL_14;
          }
        }

        v11 = *(v2 + 16);
        if (v2 == *a2)
        {
          *a2 = v11;
          sub_2394CB87C(a1 + 1424, v2);
          v10 = a2;
        }

        else
        {
          *(v5 + 16) = v11;
          v10 = (v5 + 16);
          sub_2394CB87C(a1 + 1424, v2);
        }

        v2 = v5;
      }

      v5 = v2;
      v2 = *v10;
    }

    while (*v10);
  }
}

BOOL sub_2394CB810(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (v2 != 0xFFFF && v2 != *(a2 + 8))
  {
    return 0;
  }

  if (*a1 != -1 && *a1 != *a2)
  {
    return 0;
  }

  v5 = *(a1 + 4);
  if (v5 != -1 && v5 != *(a2 + 4))
  {
    return 0;
  }

  v7 = *(a1 + 10);
  return v7 == 0xFFFF || v7 == *(a2 + 10);
}

void sub_2394CB87C(uint64_t a1, void *a2)
{
  if (a2)
  {
    v4 = sub_2393D69E8((a1 + 16), a2);
    if (!v4)
    {
      sub_239533344();
    }

    v5 = v4;
    *v4 = 0;
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

void sub_2394CB904(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (v3)
  {
    do
    {
      v5 = v3[2];
      sub_2394CB87C(a1 + 1480, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

uint64_t sub_2394CB950(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_2394CDE54((a1 + 1480));
  if (v5)
  {
    v6 = 0;
    v7 = 0;
    v8 = *a3;
    *(v5 + 7) = *(a3 + 7);
    *v5 = v8;
    v5[2] = *a2;
    *a2 = v5;
  }

  else
  {
    v9 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v11 = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "EventPath pool full", v11, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x23u, 1);
    }

    v7 = 0x6B900000000;
    v6 = 1480;
  }

  return v7 | v6;
}

void sub_2394CBA28(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (v3)
  {
    do
    {
      v5 = v3[2];
      sub_2394CB87C(a1 + 1536, v3);
      v3 = v5;
    }

    while (v5);
  }

  *a2 = 0;
}

unint64_t sub_2394CBA74(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = sub_2394CBB24(a1, a2, a3, (a1 + 1536));
  if (v3 == 11)
  {
    v4 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "DataVersionFilter pool full, ignore this filter", v7, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0x23u, 1);
    }

    v5 = 0;
    LODWORD(v3) = 0;
  }

  else
  {
    v5 = v3 & 0xFFFFFFFF00000000;
  }

  return v3 | v5;
}

uint64_t sub_2394CBB24(uint64_t a1, void *a2, uint64_t a3, unint64_t *a4)
{
  v6 = sub_2394CDEE0(a4);
  if (v6)
  {
    *v6 = *a3;
    v7 = *(a3 + 4);
    *(v6 + 4) = v7;
    if (v7 == 1)
    {
      *(v6 + 2) = *(a3 + 8);
    }

    v8 = 0;
    v9 = 0;
    *(v6 + 6) = *(a3 + 12);
    v6[2] = *a2;
    *a2 = v6;
  }

  else
  {
    v8 = 0x6E500000000;
    v9 = 11;
  }

  return v9 | v8;
}

void *sub_2394CBBAC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  (*(*a2 + 88))(v17, a2);
  v12 = 0;
  v14 = *a3;
  v15 = *(a3 + 2);
  v16 = (*(*a2 + 72))(a2);
  v13 = v17;
  sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
  result = (*(**(a1 + 1704) + 136))(v10);
  if (v11 == 1)
  {
    v7 = sub_2394C3EB0(v10);
    v8 = v7;
    v9 = BYTE2(v7);
    return (*(*a2 + 24))(a2, a3, &v8, 0);
  }

  return result;
}

uint64_t sub_2394CBD08(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x277D85DE8];
  LODWORD(v18) = 0;
  BYTE4(v18) = 32;
  v4 = sub_2394CBE98(a1, a2, 4u);
  if (v4)
  {
LABEL_2:
    v5 = v4;
    goto LABEL_3;
  }

  v8 = sub_2394CBF48(a1, a2 + 16, &v18);
  if (!v8)
  {
    v4 = sub_2394CBE98(v8, a2, BYTE4(v18) >> 3);
    if (!v4)
    {
      v4 = sub_2394CC054(a1, a2, &v18);
    }

    goto LABEL_2;
  }

  v5 = v8;
  v9 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HIWORD(*(a2 + 24));
    v11 = *(a2 + 24);
    v12 = HIWORD(*(a2 + 20));
    v13 = *(a2 + 20);
    v14 = *(a2 + 16);
    *buf = 67110144;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = v13;
    v27 = 1024;
    v28 = v14;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "No command 0x%04X_%04X in Cluster 0x%04X_%04X on Endpoint %u", buf, 0x20u);
  }

  if (sub_2393D5398(3u))
  {
    v16 = *(a2 + 20);
    v17 = *(a2 + 16);
    v15 = *(a2 + 24);
    sub_2393D5320(0xDu, 3);
  }

LABEL_3:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t sub_2394CBE98(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (*(a2 + 8))
  {
    v5 = *(a2 + 24);
    v10 = *(a2 + 20);
    v11 = *(a2 + 16);
    v12 = 3;
    v13 = v5;
    v14 = 1;
    v6 = sub_23949D748();
    v7 = sub_23949CFB0(v6, *(a2 + 8), &v10, a3);
    if (v7)
    {
      if (v7 == 168 || v7 == 165)
      {
        if (v7 == 165)
        {
          return 126;
        }

        else
        {
          return -99;
        }
      }

      else
      {
        return 1;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 126;
  }
}

uint64_t sub_2394CBF48(uint64_t a1, uint64_t a2, void *a3)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
  v6 = *(a1 + 1704);
  v14[0] = 8;
  memset(&v14[1], 0, 24);
  v15 = 0;
  (*(*v6 + 80))(v6, a2, v14);
  sub_2394C3CA4(v14, &v11);
  if (v12)
  {
    v7 = v11;
    v8 = 8 * v12;
    while (*v7 != *(a2 + 8))
    {
      v7 += 2;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_5;
      }
    }

    *a3 = *v7;
    sub_2393D6E84(&v13);
    v9 = 0;
  }

  else
  {
LABEL_5:
    sub_2393D6E84(&v13);
    v9 = sub_2394C425C(v6, a2, 129);
  }

  sub_2393D6B1C(v14);
  return v9;
}

uint64_t sub_2394CC054(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 4);
  if ((v4 & 4) != 0)
  {
    v6 = (*(*a1 + 104))(a1);
    sub_238EA6DC0(v6, &v10);
    v7 = (*(*v10 + 80))(v10);
    (*(*v10 + 32))(v10);
    if (!v7)
    {
      return 209;
    }

    v4 = *(a3 + 4);
  }

  if (v4)
  {
    v8 = *(a2 + 8);
    if (!v8 || !*v8)
    {
      return 126;
    }
  }

  if (v4 & 2) == 0 || (*(a2 + 28))
  {
    return 0;
  }

  return 198;
}

uint64_t sub_2394CC15C(void *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a1 + 201;
  v5 = a1[202];
  ++a1[204];
  sub_2393D6AA8(a1 + 201);
  --a1[204];
  sub_2393D6AA8(v4);
  if (v5 != v4)
  {
    sub_2395364DC();
  }

  v6 = a1[213];
  if (v6 == a2)
  {
    v6 = a2;
  }

  else
  {
    if (v6 && (*(*v6 + 104))(a1[213]))
    {
      v7 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Failure on interaction model shutdown: %s", &buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0x23u, 1);
      }
    }

    a1[213] = a2;
    if (a2)
    {
      *&buf = sub_2393B64C0();
      *(&buf + 1) = a1 + 162;
      v13 = a1 + 2;
      if ((*(*a2 + 96))(a2, &buf))
      {
        v8 = sub_2393D9044(0x23u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = sub_2393C9138();
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v9;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failure on interaction model startup: %s", &buf, 0xCu);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393C9138();
          sub_2393D5320(0x23u, 1);
        }
      }
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2394CC3D4(uint64_t a1, void (***a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  *(a3 + 40) = a1 + 8;
  sub_2394C891C(a1 + 152, a2);
  if (*(a4 + 4))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a4 + 6) == 1;
  }

  if (!v9 || *a4 != 8)
  {
    sub_239536574();
  }

  if (sub_2393BC2A0(a3))
  {
    sub_23953660C();
  }

  *(a1 + 1712) = a3;
  result = sub_2394C8DC0(a1, a3, v11, a5, 1);
  if (result)
  {
    result = sub_2394DEE10(result, a3, 0);
  }

  *(a1 + 1712) = 0;
  return result;
}

uint64_t sub_2394CC47C(uint64_t a1, void (***a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  *(a3 + 40) = a1 + 8;
  sub_2394C891C(a1 + 152, a2);
  if (*(a4 + 4))
  {
    v9 = 0;
  }

  else
  {
    v9 = *(a4 + 6) == 1;
  }

  if (!v9 || *a4 != 6)
  {
    sub_2395366A4();
  }

  if (sub_2393BC2A0(a3))
  {
    sub_23953673C();
  }

  *(a1 + 1712) = a3;
  result = sub_2394CA5B0(a1, a3, v11, a5, 1);
  if (result)
  {
    result = sub_2394DEE10(result, a3, 0);
  }

  *(a1 + 1712) = 0;
  return result;
}

uint64_t sub_2394CC56C(uint64_t a1)
{
  v2 = 0;
  v3 = &v2;
  sub_2393D6A10((a1 + 1608), &v3, sub_2394CDF84);
  return v2;
}

uint64_t sub_2394CC5B0(uint64_t a1, uint64_t a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  buf[0] = a3;
  result = sub_2393D6A10((a1 + 1608), buf, sub_2394CDFBC);
  v6 = *(a1 + 1648);
  if (v6)
  {
    do
    {
      while (*(v6 + 72) != a3)
      {
        v6 = *(v6 + 192);
        if (!v6)
        {
          goto LABEL_10;
        }
      }

      v7 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v14 = a3;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Fabric removed, deleting obsolete read client with FabricIndex: %u", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0x23u, 2);
      }

      v8 = *(v6 + 192);
      result = sub_2394D7E80(v6, 0x809000000A1, "src/app/InteractionModelEngine.cpp", 0);
      v6 = v8;
    }

    while (v8);
  }

LABEL_10:
  v9 = (a1 + 473);
  v10 = 1088;
  do
  {
    if (*v9)
    {
      result = sub_2393BCB0C((v9 - 265));
      if (result == a3)
      {
        v11 = sub_2393D9044(0x23u);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v14 = a3;
          _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Fabric removed, deleting obsolete write handler with FabricIndex: %u", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0x23u, 2);
        }

        result = sub_2393BBC74(v9 - 265);
      }
    }

    v9 += 272;
    v10 -= 272;
  }

  while (v10);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394CC7E0(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 1696);
  if (!v2 || (*(a1 + 1672) & 1) != 0)
  {
    v3 = 0;
    v4 = 0;
    goto LABEL_27;
  }

  *v18 = 0u;
  *v19 = 0u;
  v5 = (*(*v2 + 16))(v2);
  *(a1 + 1664) = 0;
  v6 = 0;
  if ((*(*v5 + 24))(v5, v16))
  {
    LOWORD(v6) = 0;
    do
    {
      ++*(a1 + 1664);
      if (v6 <= v17)
      {
        v6 = v17;
      }

      else
      {
        v6 = v6;
      }
    }

    while (((*(*v5 + 24))(v5, v16) & 1) != 0);
  }

  (*(*v5 + 32))(v5);
  v7 = *(a1 + 1664);
  if (!*(a1 + 1664))
  {
    v12 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_DEFAULT, "No subscriptions to resume", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x23u, 2);
    }

    goto LABEL_21;
  }

  *(a1 + 1672) = 1;
  v8 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    v21 = v7;
    v22 = 1024;
    v23 = v6;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Resuming %d subscriptions in %u seconds", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v15 = *(a1 + 1664);
    sub_2393D5320(0x23u, 2);
  }

  v9 = *(*(*(a1 + 88) + 88) + 24);
  v10 = (*(*v9 + 40))(v9, 1000 * v6, sub_2394C7F1C, a1);
  v11 = v10;
  if (!v10)
  {
LABEL_21:
    v3 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v3 = v10 & 0xFFFFFFFF00000000;
LABEL_22:
  if (v19[0])
  {
    j__free(v19[0]);
    v19[0] = 0;
  }

  if (v18[0])
  {
    j__free(v18[0]);
  }

  v4 = v11;
LABEL_27:
  v13 = *MEMORY[0x277D85DE8];
  return v4 | v3;
}

uint64_t sub_2394CCABC(uint64_t result)
{
  v1 = *(result + 1664);
  v2 = __OFSUB__(v1, 1);
  v3 = v1 - 1;
  if (v3 < 0 == v2)
  {
    *(result + 1664) = v3;
  }

  return result;
}

uint64_t sub_2394CCAD0(uint64_t a1)
{
  result = sub_2394C8C68(a1);
  if ((result & 1) == 0)
  {
    *(a1 + 1668) = 0;
  }

  return result;
}

void sub_2394CCB00(uint64_t *a1)
{
  sub_2394CD128(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCB50(uint64_t a1)
{
  sub_2394CD128((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCB94(uint64_t a1)
{
  sub_2394CD128((a1 - 16));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCBE0(uint64_t a1)
{
  sub_2394CD128((a1 - 24));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCC24(uint64_t a1)
{
  sub_2394CD128((a1 - 32));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCC68(uint64_t a1)
{
  sub_2394CD128((a1 - 40));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCCBC(uint64_t a1)
{
  sub_2394CD128((a1 - 48));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCD00(uint64_t a1)
{
  sub_2394CD128((a1 - 64));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCD44(uint64_t a1)
{
  sub_2394CD128((a1 - 72));

  JUMPOUT(0x23EE77B60);
}

void sub_2394CCD88(uint64_t a1)
{
  sub_2394CD128((a1 - 80));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394CCDC4(uint64_t a1)
{
  *a1 = &unk_284BB7CD0;
  *(a1 + 8) = &unk_284BAA120;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  sub_2393DB79C(a1 + 32);
  sub_2393DB79C(a1 + 64);
  sub_2393DB79C(a1 + 96);
  sub_2393DB79C(a1 + 128);
  sub_2393DB79C(a1 + 160);
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 252) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  return a1;
}

BOOL sub_2394CCE6C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v6 = a2;
  v8 = *a3;
  if (*a3 == -1)
  {
    sub_2394C4398(a1, a2, &v17);
    if (v18)
    {
      v10 = v17;
      v11 = 12 * v18 - 12;
      do
      {
        v12 = *v10;
        v10 += 3;
        v15[0] = v6;
        v16 = v12;
        v9 = sub_2394CCF5C(a1, v15, a3, a4);
        if (v9)
        {
          break;
        }

        v13 = v11;
        v11 -= 12;
      }

      while (v13);
    }

    else
    {
      v9 = 0;
    }

    sub_2393D6E84(&v19);
  }

  else
  {
    LOWORD(v17) = a2;
    HIDWORD(v17) = v8;
    return sub_2394CCF5C(a1, &v17, a3, a4);
  }

  return v9;
}

BOOL sub_2394CCF5C(uint64_t a1, __int16 *a2, int *a3, uint64_t a4)
{
  v14 = *(a2 + 1);
  v15 = *a2;
  v16 = 4;
  LOBYTE(v17) = 0;
  v18 = 0;
  v5 = a3[1];
  v6 = 1;
  if (v5 != -1)
  {
    v17 = a3[1];
    v18 = 1;
    v7 = *a3;
    v10[0] = *(a3 + 4);
    v11 = v7;
    v12 = v5;
    if ((*(*a1 + 56))(a1, v10, &v13))
    {
      return 0;
    }

    v6 = v13;
  }

  v9 = sub_23949D748();
  return sub_23949CFB0(v9, a4, &v14, v6) == 0;
}

uint64_t sub_2394CD024(void **a1, uint64_t a2)
{
  if (*(a2 + 169) == 1)
  {
    v2 = *(a2 + 112);
    if (v2)
    {
      v3 = 0;
      do
      {
        ++v3;
        v2 = *(v2 + 16);
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    **a1 += v3;
    v4 = *(a2 + 120);
    if (v4)
    {
      v5 = 0;
      do
      {
        ++v5;
        v4 = *(v4 + 16);
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    *a1[1] += v5;
    ++*a1[2];
  }

  return 0;
}

uint64_t sub_2394CD0A8(void **a1, uint64_t a2)
{
  if (!*(a2 + 169))
  {
    v2 = *(a2 + 112);
    if (v2)
    {
      v3 = 0;
      do
      {
        ++v3;
        v2 = *(v2 + 16);
      }

      while (v2);
    }

    else
    {
      v3 = 0;
    }

    **a1 += v3;
    v4 = *(a2 + 120);
    if (v4)
    {
      v5 = 0;
      do
      {
        ++v5;
        v4 = *(v4 + 16);
      }

      while (v4);
    }

    else
    {
      v5 = 0;
    }

    *a1[1] += v5;
    ++*a1[2];
  }

  return 0;
}

uint64_t *sub_2394CD128(uint64_t *a1)
{
  *a1 = &unk_284BBD5A8;
  a1[1] = &unk_284BBD670;
  a1[2] = &unk_284BBD6C0;
  a1[3] = &unk_284BBD6E8;
  a1[4] = &unk_284BBD710;
  a1[5] = &unk_284BBD748;
  a1[6] = &unk_284BBD780;
  a1[8] = &unk_284BBD7C0;
  a1[9] = &unk_284BBD7F8;
  a1[10] = &unk_284BBD830;
  sub_2394786E4(a1 + 199);
  sub_2394786E4(a1 + 192);
  sub_2394786E4(a1 + 185);
  sub_2394786E4(a1 + 178);
  a1[162] = &unk_284BBDB80;
  a1[163] = &unk_284BBDBB8;
  sub_2394786E4(a1 + 167);
  v2 = 136;
  do
  {
    v3 = &a1[v2];
    *(v3 - 8) = &unk_284BB7CD0;
    *(v3 - 7) = &unk_284BAA120;
    sub_238EF9EEC(&a1[v2 - 7]);
    v2 -= 34;
  }

  while (v2 * 8);
  sub_2394786E4(a1 + 19);
  sub_2394786E4(a1 + 12);
  return a1;
}

uint64_t sub_2394CD420(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) == *a1)
  {
    ++**(a1 + 1);
  }

  return 0;
}

uint64_t sub_2394CD448(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) == *a1)
  {
    v3 = sub_2393BB864(a2);
    if (v3)
    {
      v4 = *(v3 + 24);
    }

    else
    {
      v4 = 0;
    }

    if (v4 == a1[1])
    {
      ++**(a1 + 1);
    }
  }

  return 0;
}

uint64_t sub_2394CD4B4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*v2 == *a1)
  {
    **(a1 + 16) = a2;
    return 1;
  }

  else
  {
    result = 0;
    ++*v2;
  }

  return result;
}

uint64_t sub_2394CD4E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 169) == 1)
  {
    sub_2393B8A0C(a2, 0);
  }

  return 0;
}

BOOL sub_2394CD51C(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) != 1)
  {
    return 0;
  }

  v12[6] = v2;
  v12[7] = v3;
  v6 = sub_2393BB864(a2);
  (*(*v6 + 64))(v12);
  if (LOBYTE(v12[0]) == *a1 && BYTE1(v12[0]) == 64)
  {
    v7 = *(a1 + 1);
    if (HIDWORD(v7) == 4294967293)
    {
      v8 = 0;
      while (1)
      {
        v9 = *(&v12[2] + v8);
        if (v9)
        {
          if ((v7 - 1) < v9 && HIWORD(v9) == WORD1(v7))
          {
            break;
          }
        }

        v8 += 4;
        if (v8 == 12)
        {
          goto LABEL_12;
        }
      }

LABEL_13:
      **(a1 + 2) = (*(a2 + 168) & 4) != 0;
      return (**(a1 + 2) & 1) != 0;
    }

LABEL_12:
    if (v7 == v12[1])
    {
      goto LABEL_13;
    }
  }

  return 0;
}

uint64_t sub_2394CD62C(unsigned __int8 *a1, uint64_t a2)
{
  if (*(a2 + 169) != 1)
  {
    return 0;
  }

  v8[6] = v2;
  v8[7] = v3;
  v6 = sub_2393BB864(a2);
  (*(*v6 + 64))(v8);
  result = 0;
  if (LOBYTE(v8[0]) == *a1 && BYTE1(v8[0]) == 64)
  {
    if ((*(a2 + 168) & 4) != 0)
    {
      result = 1;
      **(a1 + 1) = 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2394CD6DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_284BB78D8;
  *(a1 + 8) = &unk_284BB7980;
  *(a1 + 16) = &unk_284BB79B8;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_2394DBE44(a1 + 48, a1 + 8);
  *(a1 + 608) = &unk_284BAA120;
  *(a1 + 616) = a1;
  *(a1 + 624) = 0;
  *(a1 + 632) = 0;
  return a1;
}

uint64_t sub_2394CD798(uint64_t *a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (sub_2393BAABC(a2, *a1))
  {
    v4 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_238EA6DC0(*a1, &v15);
      v5 = *(sub_239495304(v15) + 76);
      sub_238EA6DC0(*a1, &v14);
      v6 = *(sub_239495304(v14) + 72);
      sub_238EA6DC0(*a1, &v13);
      v7 = v13[24];
      *buf = 67109632;
      *&buf[4] = v5;
      v17 = 1024;
      v18 = v6;
      v19 = 1024;
      v20 = v7;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Deleting previous active subscription from NodeId: %08X%08X, FabricIndex: %u", buf, 0x14u);
      (*(*v13 + 32))(v13);
      (*(*v14 + 32))(v14);
      (*(*v15 + 32))(v15);
    }

    if (sub_2393D5398(2u))
    {
      sub_238EA6DC0(*a1, buf);
      v8 = *(sub_239495304(*buf) + 76);
      sub_238EA6DC0(*a1, &v15);
      v9 = *(sub_239495304(v15) + 72);
      sub_238EA6DC0(*a1, &v14);
      v12 = v14[24];
      sub_2393D5320(0x23u, 2);
      (*(*v14 + 32))(v14);
      (*(*v15 + 32))(v15);
      (*(**buf + 32))(*buf);
    }

    sub_2393B8A0C(a2, 0);
  }

  v10 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_2394CDA20(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_2393BB864(a2);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == **a1 && *(a2 + 169) == 1)
  {
    v6 = *(a2 + 112);
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *(v6 + 16);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 120);
    if (v8)
    {
      v9 = 0;
      do
      {
        ++v9;
        v8 = *(v8 + 16);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    *a1[1] += v7;
    *a1[2] += v9;
    ++*a1[3];
    v10 = a1[4];
    if (!*v10)
    {
      goto LABEL_31;
    }

    v11 = *a1[5];
    v13 = v7 > v11 || v9 > v11;
    if (v13 == 1 && *a1[6] <= v11 && *a1[7] <= v11)
    {
      *v10 = a2;
      *a1[6] = v7;
      *a1[7] = v9;
      return 0;
    }

    if (*(a2 + 40) < *(*v10 + 40))
    {
      v14 = *a1[6] > v11 || *a1[7] > v11;
      if (v14 == v13)
      {
LABEL_31:
        *v10 = a2;
      }
    }
  }

  return 0;
}

uint64_t sub_2394CDB90(unsigned __int8 **a1, uint64_t a2)
{
  v4 = sub_2393BB864(a2);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == **a1 && !*(a2 + 169))
  {
    v6 = *(a2 + 112);
    if (v6)
    {
      v7 = 0;
      do
      {
        ++v7;
        v6 = *(v6 + 16);
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(a2 + 120);
    if (v8)
    {
      v9 = 0;
      do
      {
        ++v9;
        v8 = *(v8 + 16);
      }

      while (v8);
    }

    else
    {
      v9 = 0;
    }

    *a1[1] += v7;
    *a1[2] += v9;
    ++*a1[3];
    v10 = a1[4];
    v11 = *v10;
    if (!*v10 || (v7 <= 9 ? (v12 = v9 > 9) : (v12 = 1), !v12 ? (v13 = 0) : (v13 = 1), v13 == 1 && *a1[5] <= 9uLL && *a1[6] < 0xAuLL || *(a2 + 40) > *(v11 + 40) && (*a1[5] <= 9uLL ? (v14 = *a1[6] > 9uLL) : (v14 = 1), v14 == v13)))
    {
      *v10 = a2;
      v11 = *a1[4];
    }

    if (v11 == a2)
    {
      *a1[5] = v7;
      *a1[6] = v9;
    }
  }

  return 0;
}

uint64_t sub_2394CDCFC(void **a1, uint64_t a2)
{
  if (!*(a2 + 169))
  {
    v4 = sub_2393BB864(a2);
    v5 = v4 ? *(v4 + 24) : 0;
    if (v5 == **a1)
    {
      v6 = *(a2 + 112);
      if (v6)
      {
        v7 = 0;
        do
        {
          ++v7;
          v6 = *(v6 + 16);
        }

        while (v6);
      }

      else
      {
        v7 = 0;
      }

      *a1[1] += v7;
      v8 = *(a2 + 120);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *(v8 + 16);
        }

        while (v8);
      }

      else
      {
        v9 = 0;
      }

      *a1[2] += v9;
      ++*a1[3];
    }
  }

  return 0;
}

void *sub_2394CDDC8(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    v2[1] = 0;
    v2[2] = 0;
    *v2 = -1;
    *(v2 + 2) = -1;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void *sub_2394CDE54(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = -1;
    v2[1] = 0xFFFFLL;
    v2[2] = 0;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void *sub_2394CDEE0(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = 0;
    v2[1] = 0;
    *v2 = -1;
    *(v2 + 6) = -1;
    v2[2] = 0;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

uint64_t sub_2394CDF84(void **a1, uint64_t a2)
{
  if (*(a2 + 169) == 1 && (*(a2 + 16) > *(a2 + 24) || (*(a2 + 168) & 0x10) != 0))
  {
    ++**a1;
  }

  return 0;
}

uint64_t sub_2394CDFBC(unsigned __int8 *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = sub_2393BB864(a2);
  if (v4)
  {
    v5 = *(v4 + 24);
  }

  else
  {
    v5 = 0;
  }

  if (v5 == *a1)
  {
    v6 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = sub_2393BB864(a2);
      if (v7)
      {
        v8 = *(v7 + 76);
      }

      else
      {
        v8 = 0;
      }

      v9 = sub_2393BB864(a2);
      if (v9)
      {
        v10 = *(v9 + 72);
      }

      else
      {
        v10 = 0;
      }

      v11 = *a1;
      *buf = 67109632;
      v20 = v8;
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      v24 = v11;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Deleting expired ReadHandler for NodeId: %08X%08X, FabricIndex: %u", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      v12 = sub_2393BB864(a2);
      if (v12)
      {
        v13 = *(v12 + 76);
      }

      v14 = sub_2393BB864(a2);
      if (v14)
      {
        v15 = *(v14 + 72);
      }

      v18 = *a1;
      sub_2393D5320(0x23u, 2);
    }

    sub_2393B8A0C(a2, 0);
  }

  v16 = *MEMORY[0x277D85DE8];
  return 0;
}

uint64_t sub_2394CE170(uint64_t result, int a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(result + 528);
  if (v2 != a2)
  {
    v4 = result;
    v5 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(v4 + 104);
      v7 = *(v4 + 96);
      *buf = 67110144;
      v14 = v6;
      v15 = 1024;
      v16 = HIDWORD(v7);
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v2;
      v21 = 1024;
      v22 = a2;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "OperationalSessionSetup[%u:%08X%08X]: State change %d --> %d", buf, 0x20u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      v12 = *(v4 + 528);
      v11 = HIDWORD(*(v4 + 96));
      v10 = *(v4 + 104);
      result = sub_2393D5320(0x22u, 3);
    }

    if (*(v4 + 528) == 6)
    {
      v8 = *(*(v4 + 40) + 88);
      if (v8)
      {
        result = *(v8 + 24);
        if (result)
        {
          result = (*(*result + 72))(result, sub_2394D0254, v4);
        }
      }
    }

    *(v4 + 528) = a2;
    if (a2 != 4 && *(v4 + 88))
    {
      result = (*(**(v4 + 80) + 8))(*(v4 + 80));
      *(v4 + 88) = 0;
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394CE32C(void *result)
{
  v1 = *(result[5] + 88);
  if (v1)
  {
    v2 = result;
    result = *(v1 + 24);
    if (result)
    {
      return (*(*result + 72))(result, sub_2394D0254, v2);
    }
  }

  return result;
}

uint64_t sub_2394CE37C(uint64_t result)
{
  if (*(result + 88))
  {
    v1 = result;
    result = (*(**(result + 80) + 8))(*(result + 80));
    *(v1 + 88) = 0;
  }

  return result;
}

uint64_t sub_2394CE3D4(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 528);
  v2 = v1 > 6;
  v3 = (1 << v1) & 0x4E;
  v4 = v2 || v3 == 0;
  if (v4 || (v6 = *(a1 + 16), v7 = *(a1 + 96), v8 = *(a1 + 104), *buf = 513, sub_23949A820(v6, v7, v8, buf, *(a1 + 532), v21), v21[0] != 1))
  {
    v16 = 0;
  }

  else
  {
    v9 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 104);
      v11 = *(a1 + 96);
      *buf = 67109632;
      v24 = v10;
      v25 = 1024;
      v26 = HIDWORD(v11);
      v27 = 1024;
      v28 = v11;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Found an existing secure session to [%u:%08X%08X]!", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      v20 = HIDWORD(*(a1 + 96));
      v19 = *(a1 + 104);
      sub_2393D5320(0x22u, 2);
    }

    v12 = sub_238EA9094(v21);
    v13 = sub_239495304(*v12);
    v14 = *(v13 + 96);
    *(a1 + 128) = *(v13 + 112);
    *(a1 + 112) = v14;
    *(a1 + 132) = *(v13 + 116);
    *(a1 + 136) = *(v13 + 120);
    v15 = sub_238EA9094(v21);
    v16 = sub_239495C6C((a1 + 144), v15);
    if (v21[0])
    {
      (*(*v22 + 32))(v22);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

unint64_t sub_2394CE598(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, char a5)
{
  *(a1 + 532) = a5;
  result = sub_2394D03B0(a1 + 184, a2, a3, a4);
  v7 = *(a1 + 528);
  if (v7 > 2)
  {
    if (*(a1 + 528) <= 4u)
    {
      if (v7 != 3)
      {
        if (v7 == 4)
        {
          return result;
        }

        goto LABEL_9;
      }

      if ((sub_2394CE3D4(a1) & 1) == 0)
      {
        v8 = 0x9600000000;
        goto LABEL_17;
      }

LABEL_19:
      sub_2394CE170(a1, 5);
      v9 = 0;
      v8 = 0;
      v10 = 0;
      goto LABEL_20;
    }

    if (v7 == 5)
    {
      goto LABEL_19;
    }

    if (v7 == 6)
    {
LABEL_12:
      result = sub_2394CE3D4(a1);
      if (!result)
      {
        return result;
      }

      goto LABEL_19;
    }

LABEL_9:
    v8 = 0xA300000000;
LABEL_17:
    v9 = "src/app/OperationalSessionSetup.cpp";
    v10 = 3;
    goto LABEL_20;
  }

  if (!*(a1 + 528))
  {
    v8 = 0x7300000000;
    goto LABEL_17;
  }

  if (v7 != 1)
  {
    if (v7 == 2)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if (sub_2394CE3D4(a1))
  {
    goto LABEL_19;
  }

  sub_2394CE170(a1, 2);
  result = sub_2394CE6E8(a1);
  v10 = result;
  if (!result)
  {
    return result;
  }

  v9 = v11;
  v8 = result & 0xFFFFFFFF00000000;
  sub_2394CE170(a1, 1);
LABEL_20:

  return sub_2394CEF6C(a1, v10 | v8, v9, 1, 0);
}

unint64_t sub_2394CE6E8(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 534))
  {
    --*(a1 + 534);
  }

  v2 = *(a1 + 535);
  if (v2 != 255)
  {
    *(a1 + 535) = ++v2;
  }

  if (*(a1 + 536))
  {
    --*(a1 + 536);
  }

  *buf = 2;
  v17 = "core_dev_operational_discovery_attempt_ctr";
  LODWORD(v18) = v2;
  BYTE4(v18) = 2;
  sub_23948BD20(buf);
  if (*(a1 + 224) && *(a1 + 232))
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 104);
      v5 = *(a1 + 96);
      *buf = 67109632;
      *&buf[4] = v4;
      LOWORD(v17) = 1024;
      *(&v17 + 2) = HIDWORD(v5);
      HIWORD(v17) = 1024;
      LODWORD(v18) = v5;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "OperationalSessionSetup[%u:%08X%08X]: Operational node lookup already in progress. Will NOT start a new one.", buf, 0x14u);
    }

    if (sub_2393D5398(2u))
    {
      v15 = HIDWORD(*(a1 + 96));
      v14 = *(a1 + 104);
      sub_2393D5320(0x22u, 2);
    }

    v6 = 0;
    v7 = 0;
  }

  else
  {
    *buf = 0;
    v17 = "core_dev_operational_discovery";
    BYTE4(v18) = 0;
    sub_23948BD20(buf);
    v8 = sub_2394A7FC0(*(a1 + 48), *(a1 + 104));
    if (v8)
    {
      v9 = *(v8 + 16);
      *buf = *(a1 + 96);
      v17 = v9;
      v18 = 0xAFC8000000C8;
      v10 = sub_2394E06B0();
      v11 = ((*v10)[3])(v10, buf, a1 + 216);
      v7 = v11 & 0xFFFFFFFF00000000;
      v6 = v11;
    }

    else
    {
      v7 = 0x25E00000000;
      v6 = 113;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

uint64_t sub_2394CE904(uint64_t result, uint64_t a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v26 = *a2;
  v2 = *(a2 + 20);
  v27 = *(a2 + 16);
  v28 = v2;
  v29 = *(a2 + 24);
  v3 = *(result + 533);
  *(result + 533) = 0;
  if (*(result + 528))
  {
    v5 = result;
    sub_2393E97D4(&v26, __str, 0x4CuLL);
    v6 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = *(v5 + 104);
      v8 = *(v5 + 96);
      v9 = *(v5 + 528);
      *buf = 67110146;
      *v31 = v7;
      *&v31[4] = 1024;
      *&v31[6] = HIDWORD(v8);
      LOWORD(v32) = 1024;
      *(&v32 + 2) = v8;
      HIWORD(v32) = 2080;
      v33 = __str;
      v34 = 1024;
      v35 = v9;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "OperationalSessionSetup[%u:%08X%08X]: Updating device address to %s while in state %d", buf, 0x24u);
    }

    if (sub_2393D5398(3u))
    {
      v25 = *(v5 + 528);
      v23 = *(v5 + 104);
      v24 = HIDWORD(*(v5 + 96));
      sub_2393D5320(0x22u, 3);
    }

    *(v5 + 112) = v26;
    v10 = v28;
    *(v5 + 128) = v27;
    *(v5 + 132) = v10;
    *(v5 + 136) = v29;
    v11 = *(v5 + 88);
    if (v11)
    {
      sub_2394C45C8(v11, (a2 + 32));
    }

    if (*(v5 + 528) != 2)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Received UpdateDeviceData in incorrect state", buf, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0x22u, 1);
      }

      v14 = "src/app/OperationalSessionSetup.cpp";
      v12 = v5;
      v13 = 0xEC00000003;
      goto LABEL_16;
    }

    sub_2394CE170(v5, 3);
    sub_239497B24(*(v5 + 16), v5 + 96, &v26);
    if (*(v5 + 529) == 1)
    {
      v12 = v5;
      v13 = 0;
      v14 = 0;
LABEL_16:
      result = sub_2394CEF6C(v12, v13, v14, 1, 0);
      goto LABEL_17;
    }

    result = sub_2394CECBC(v5, a2);
    v17 = result;
    if (result)
    {
      v18 = v16;
      v19 = sub_2393D9044(0);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_2393C9138();
        *buf = 136315650;
        *v31 = v20;
        *&v31[8] = 2080;
        v32 = "src/app/OperationalSessionSetup.cpp";
        LOWORD(v33) = 1024;
        *(&v33 + 2) = 254;
        _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0, 1);
      }

      sub_2394CE170(v5, 2);
      *(v5 + 533) = v3;
      v21 = sub_2394E06B0();
      result = ((*v21)[4])(v21, v5 + 216);
      if (result)
      {
        v12 = v5;
        v13 = v17;
        v14 = v18;
        goto LABEL_16;
      }
    }

    else if (v3)
    {
      v22 = sub_2393E9304(a2 + 32);
      result = sub_2394D00D4(v5, 0x10900000032, "src/app/OperationalSessionSetup.cpp", (v22 / 0x3E8) + 1);
    }
  }

LABEL_17:
  v15 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394CECBC(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 532) != 1)
  {
LABEL_4:
    v4 = (***(a1 + 80))(*(a1 + 80));
    *(a1 + 88) = v4;
    if (v4)
    {
      *buf = 0;
      v18 = "core_dev_case_session";
      v20 = 0;
      sub_23948BD20(buf);
      v5 = sub_2394C45DC(*(a1 + 88), a1 + 16, (a1 + 96), a1 + 112, a2 + 32, a1);
      v6 = v5;
      if (v5)
      {
        *buf = 1;
        v18 = "core_dev_case_session";
        v19 = v5;
        v20 = 3;
        sub_23948BD20(buf);
        if (*(a1 + 88))
        {
          (*(**(a1 + 80) + 8))(*(a1 + 80));
          *(a1 + 88) = 0;
        }

        v7 = v6 & 0xFFFFFFFF00000000;
        v8 = v6;
      }

      else
      {
        sub_2394CE170(a1, 4);
        v8 = 0;
        v7 = 0;
      }
    }

    else
    {
      v7 = 0x14100000000;
      v8 = 11;
    }

    goto LABEL_16;
  }

  if (*(a2 + 44) == 1)
  {
    *(a1 + 128) = 3;
    goto LABEL_4;
  }

  v9 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 96);
    v11 = *(a1 + 104);
    *buf = 67109632;
    v17 = HIDWORD(v10);
    LOWORD(v18) = 1024;
    *(&v18 + 2) = v10;
    HIWORD(v18) = 1024;
    v19 = v11;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "LargePayload session requested but peer does not support TCP server, PeerNodeId=<%08X%08X, %d>", buf, 0x14u);
  }

  if (sub_2393D5398(1u))
  {
    v14 = *(a1 + 96);
    v15 = *(a1 + 104);
    sub_2393D5320(0x22u, 1);
  }

  v7 = 0x13B00000000;
  v8 = 172;
LABEL_16:
  v12 = *MEMORY[0x277D85DE8];
  return v7 | v8;
}

uint64_t sub_2394CEEF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v8 = sub_2393E9304(a4) / 0x3E8 + a5 + 1;

  return sub_2394D00D4(a1, a2, a3, v8);
}

void *sub_2394CEF6C(uint64_t a1, unint64_t a2, const char *a3, char a4, int a5)
{
  if (*(a1 + 529) == 1 && *(a1 + 184) != a1 + 184)
  {
    sub_2395367D4();
  }

  v10 = (a1 + 544);
  v11 = *(a1 + 544);
  if (v11 != a1 + 544 && v11 != 0)
  {
    do
    {
      v13 = *(v11 + 16);
      if (v13)
      {
        *(v11 + 16) = 0;
        v13();
        v11 = *v10;
      }
    }

    while (v11 != v10 && v11);
  }

  v22[0] = v22;
  v22[1] = v22;
  v22[2] = 0;
  sub_2394CF120(v22, (a1 + 184));
  v14 = *(a1 + 40);
  if (*(a1 + 168) == 1)
  {
    v21 = *sub_238DE36B8((a1 + 168));
    (*(*v21 + 24))(v21);
    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  v20[0] = v15;
  *v19 = *(a1 + 96);
  v16 = *(a1 + 530);
  if (!a5)
  {
    v17 = *(a1 + 208);
    if (!v17)
    {
      sub_23953686C();
    }

    (*(*v17 + 16))(v17, a1);
  }

  sub_2394CF16C(v22, a2, a3, a4, v19, v14, v20, v16);
  if (v20[0] == 1)
  {
    (*(*v21 + 32))(v21);
  }

  return sub_2394D0350(v22);
}

uint64_t sub_2394CF120(uint64_t result, void **a2)
{
  if (result != a2)
  {
    v2 = *a2;
    if (*a2 != a2)
    {
      v3 = *(result + 8);
      *v3 = v2;
      v4 = v2[1];
      do
      {
        v2[1] = v3;
        v2 = *v2;
      }

      while (v2[1] == v4);
      *a2[1] = result;
      *(result + 8) = a2[1];
      *a2 = a2;
      a2[1] = a2;
    }
  }

  return result;
}

BOOL sub_2394CF16C(void *a1, unint64_t a2, const char *a3, char a4, uint64_t *a5, uint64_t a6, _BYTE *a7, __int16 a8)
{
  v46 = *MEMORY[0x277D85DE8];
  v38 = 0;
  v39 = 0;
  v37 = 0;
  result = sub_2394D0580(a1, &v39, &v38, &v37);
  if (result)
  {
    v19 = HIDWORD(a2);
    v20 = a2;
    do
    {
      v21 = *a1;
      v22 = *(*a1 + 16);
      if (v22)
      {
        *(v21 + 16) = 0;
        v22(v21, v17, v18);
      }

      if (v20)
      {
        if (v38)
        {
          (*(v38 + 32))(*(v38 + 24), a5, v20 | (v19 << 32), a3);
        }

        if (v37)
        {
          *buf = *a5;
          v41 = v20 | (v19 << 32);
          v42 = a3;
          v43 = a4;
          v44 = 0;
          if (v20 == 219)
          {
            v44 = 1;
            v45 = a8;
          }

          (*(v37 + 32))(*(v37 + 24), buf);
        }
      }

      else
      {
        if (!a6)
        {
          sub_23953699C();
        }

        v23 = sub_238DE36B8(a7);
        v24 = sub_239495304(*v23);
        if (((*(*v24 + 40))(v24) & 1) == 0)
        {
          sub_239536904();
        }

        if (v39 && (v25 = *(v39 + 24), v26 = *(v39 + 32), v27 = sub_238DE36B8(a7), v26(v25, a6, v27), v28 = sub_238DE36B8(a7), v29 = sub_239495304(*v28), ((*(*v29 + 40))(v29) & 1) == 0))
        {
          v30 = sub_2393D9044(0x22u);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v31 = *a5;
            v32 = HIDWORD(*a5);
            v33 = *(a5 + 8);
            *buf = 67109632;
            *&buf[4] = v32;
            *&buf[8] = 1024;
            *&buf[10] = v31;
            *&buf[14] = 1024;
            LODWORD(v41) = v33;
            _os_log_impl(&dword_238DAE000, v30, OS_LOG_TYPE_ERROR, "Success callback for connection to <%08X%08X, %d> tore down session", buf, 0x14u);
          }

          if (sub_2393D5398(1u))
          {
            v35 = *a5;
            v36 = *(a5 + 8);
            sub_2393D5320(0x22u, 1);
          }

          v20 = 2;
          v19 = 409;
          a3 = "src/app/OperationalSessionSetup.cpp";
        }

        else
        {
          v20 = 0;
        }
      }

      result = sub_2394D0580(a1, &v39, &v38, &v37);
    }

    while (result);
  }

  v34 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394CF410(uint64_t a1, unint64_t a2, const char *a3, char a4)
{
  if (*(a1 + 528) == 4)
  {
    if (a2 != 219 && a2 != 50)
    {
      goto LABEL_7;
    }

    v8 = sub_239493738(*(a1 + 88));
    v9 = *(v8 + 8);
    v15 = *v8;
    LODWORD(v16) = v9;
    sub_2394CE170(a1, 2);
    *(a1 + 533) = 1;
    v10 = sub_2394E06B0();
    result = ((*v10)[4])(v10, a1 + 216);
    if (result)
    {
      *(a1 + 533) = 0;
      sub_2394CE170(a1, 1);
      if (!*(a1 + 534) || sub_2394CF600(a1, &v19))
      {
LABEL_7:
        LODWORD(v15) = 1;
        v16 = "core_dev_operational_discovery";
        v17 = a2;
        v18 = 3;
        sub_23948BD20(&v15);
        LODWORD(v15) = 1;
        v16 = "core_dev_case_session";
        v17 = a2;
        v18 = 3;
        sub_23948BD20(&v15);
        return sub_2394CEF6C(a1, a2, a3, a4, 0);
      }

      sub_2394CE170(a1, 6);
      v13 = v19;
      v14 = sub_2393E9304(&v15);
      return sub_2394D00D4(a1, a2, a3, v13 + (v14 / 0x3E8) + 1);
    }
  }

  else
  {
    v12 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_ERROR, "OnSessionEstablishmentError was called while we were not connecting", &v15, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      return sub_2393D5320(0x22u, 1);
    }
  }

  return result;
}

unint64_t sub_2394CF600(uint64_t a1, _WORD *a2)
{
  v34 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 534))
  {
    sub_239536ACC();
  }

  v3 = *(*(a1 + 40) + 88);
  if (v3 && *(v3 + 24))
  {
    sub_2394CE170(a1, 1);
    v5 = *(a1 + 535);
    if (!*(a1 + 535))
    {
      sub_239536A34();
    }

    v6 = v5 - 1;
    if ((v5 - 1) >= 5)
    {
      v6 = 5;
    }

    v7 = 1000 << v6;
    if (*(a1 + 530))
    {
      if (v7 <= *(a1 + 530))
      {
        v7 = *(a1 + 530);
      }

      *(a1 + 530) = 0;
    }

    if ((v5 & 1) == 0)
    {
      sub_239476008(buf);
      v24 = sub_239476060();
      v25 = v8;
      if (buf[0] == 1)
      {
        v9 = sub_238DD173C(buf);
      }

      else
      {
        v9 = &v24;
      }

      v7 += sub_2393E93E8(v9);
    }

    *a2 = v7 / 0x3E8;
    v12 = *(*(*(a1 + 40) + 88) + 24);
    v13 = (*(*v12 + 40))(v12, v7, sub_2394D0254, a1);
    v10 = v13;
    v11 = HIDWORD(v13);
    v14 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 535);
      v16 = *(a1 + 534);
      v17 = *a2;
      v18 = sub_2393C9138();
      *buf = 67109890;
      v27 = v15;
      v28 = 1024;
      v29 = v16;
      v30 = 1024;
      v31 = v17;
      v32 = 2080;
      v33 = v18;
      _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "OperationalSessionSetup:attempts done: %u, attempts left: %u, retry delay %us, status %s", buf, 0x1Eu);
    }

    if (sub_2393D5398(2u))
    {
      v19 = *(a1 + 535);
      v20 = *(a1 + 534);
      v23 = *a2;
      sub_2393C9138();
      sub_2393D5320(0x22u, 2);
    }
  }

  else
  {
    v10 = 3;
    LODWORD(v11) = 733;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v10 | (v11 << 32);
}

uint64_t sub_2394CF874(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 528) == 4)
  {
    v9 = 1;
    v10 = "core_dev_operational_discovery";
    v11 = 0;
    v12 = 3;
    sub_23948BD20(&v9);
    v9 = 1;
    v10 = "core_dev_case_session";
    v11 = 0;
    v12 = 3;
    sub_23948BD20(&v9);
    if (sub_239495C6C((a1 + 144), a2))
    {
      sub_2394CE170(a1, 5);
      v4 = a1;
      v5 = 0;
      v6 = 0;
    }

    else
    {
      v6 = "src/app/OperationalSessionSetup.cpp";
      v4 = a1;
      v5 = 0x20800000003;
    }

    return sub_2394CEF6C(v4, v5, v6, 1, 0);
  }

  else
  {
    v7 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "OnSessionEstablished was called while we were not connecting", &v9, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      return sub_2393D5320(0x22u, 1);
    }
  }

  return result;
}

uint64_t sub_2394CF9AC(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284BBD970;
  *(a1 + 8) = &unk_284BBD9C8;
  v2 = (a1 + 224);
  if (*(a1 + 224) && *(a1 + 232))
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = *(a1 + 104);
      v5 = *(a1 + 96);
      *buf = 67109632;
      *v16 = v4;
      *&v16[4] = 1024;
      *&v16[6] = HIDWORD(v5);
      v17 = 1024;
      v18 = v5;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "OperationalSessionSetup[%u:%08X%08X]: Cancelling incomplete address resolution as device is being deleted.", buf, 0x14u);
    }

    if (sub_2393D5398(3u))
    {
      v14 = HIDWORD(*(a1 + 96));
      v13 = *(a1 + 104);
      sub_2393D5320(0x22u, 3);
    }

    v6 = sub_2394E06B0();
    if (((*v6)[5])(v6, a1 + 216, 1))
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        v7 = sub_2393C9138();
        *buf = 136315138;
        *v16 = v7;
        _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Lookup cancel failed: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0x22u, 1);
      }
    }
  }

  if (*(a1 + 88))
  {
    (*(**(a1 + 80) + 8))(*(a1 + 80));
  }

  v8 = *(*(a1 + 40) + 88);
  if (v8)
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      (*(*v9 + 72))(v9, sub_2394D0254, a1);
    }
  }

  sub_2394CEF6C(a1, 0x23800000074uLL, "src/app/OperationalSessionSetup.cpp", 1, 1);
  v10 = *(a1 + 560);
  if (v10)
  {
    *(a1 + 560) = 0;
    v10(a1 + 544);
  }

  sub_238EA9350(v2);
  sub_2394D0350((a1 + 184));
  sub_239495880(a1 + 144);
  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_2394CFC9C(uint64_t a1)
{
  sub_2394CF9AC(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394CFCD4(uint64_t a1)
{
  sub_2394CF9AC(a1 - 8);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394CFD10(uint64_t result)
{
  v9 = *MEMORY[0x277D85DE8];
  if ((*(result + 529) & 1) == 0)
  {
    v1 = result;
    if (*(result + 528) != 1)
    {
      sub_239536B64();
    }

    *(result + 529) = 1;
    sub_2394CE170(result, 2);
    result = sub_2394CE6E8(v1);
    v3 = result;
    if (result)
    {
      v4 = v2;
      v5 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v8 = sub_2393C9138();
        _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_ERROR, "Failed to look up peer address: %s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0x22u, 1);
      }

      result = sub_2394CEF6C(v1, v3, v4, 1, 0);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394CFE64(uint64_t a1, uint64_t a2, unint64_t a3, const char *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = *(a1 + 104);
    v9 = *(a1 + 96);
    *buf = 67109890;
    v19 = v8;
    LOWORD(v20) = 1024;
    *(&v20 + 2) = HIDWORD(v9);
    HIWORD(v20) = 1024;
    v21 = v9;
    v22 = 2080;
    v23 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "OperationalSessionSetup[%u:%08X%08X]: operational discovery failed: %s", buf, 0x1Eu);
  }

  if (sub_2393D5398(1u))
  {
    v10 = *(a1 + 104);
    v17 = *(a1 + 96);
    sub_2393C9138();
    sub_2393D5320(0x22u, 1);
  }

  if (*(a1 + 528) != 2)
  {
    goto LABEL_16;
  }

  v11 = *(a1 + 536);
  if (!*(a1 + 536))
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v19 = v11;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Retrying operational DNS-SD discovery. Attempts remaining: %u", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v16 = *(a1 + 536);
    sub_2393D5320(0x22u, 2);
  }

  v12 = *(a1 + 534);
  if (v12 != 255)
  {
    *(a1 + 534) = v12 + 1;
  }

  v13 = *(a1 + 535);
  if (*(a1 + 535))
  {
    LOBYTE(v13) = v13 - 1;
    *(a1 + 535) = v13;
    v13 = v13;
  }

  *buf = 2;
  v20 = "core_dev_operational_discovery_attempt_ctr";
  v21 = v13;
  LOBYTE(v22) = 2;
  sub_23948BD20(buf);
  if (!sub_2394CE6E8(a1))
  {
    result = sub_2394D00D4(a1, a3, a4, 0x3Cu);
  }

  else
  {
LABEL_16:
    *buf = 1;
    v20 = "core_dev_operational_discovery";
    v21 = a3;
    LOBYTE(v22) = 3;
    sub_23948BD20(buf);
    result = sub_2394CEF6C(a1, a3, a4, 1, 0);
  }

  v15 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D00D4(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int16 a4)
{
  v20 = 0;
  v4 = result + 544;
  if (*(result + 544) != result + 544)
  {
    v5 = result;
    v6 = *(result + 552);
    v19[0] = *(result + 544);
    v19[1] = v6;
    *v6 = v19;
    v7 = v19[0];
    *(v19[0] + 8) = v19;
    *(result + 552) = v4;
    *(result + 544) = v4;
    if (v7 != v19)
    {
      do
      {
        v16 = &v16;
        v17 = &v16;
        v18 = 0;
        v11 = *(v7 + 16);
        if (v11)
        {
          *(v7 + 16) = 0;
          v11(v7);
          v12 = *(v7 + 16);
          if (v12)
          {
            *(v7 + 16) = 0;
            v12(v7);
          }
        }

        v13 = v17;
        *(v7 + 8) = v17;
        *(v7 + 16) = sub_2394D0334;
        *v13 = v7;
        v17 = v7;
        *v7 = &v16;
        result = (*(v7 + 32))(*(v7 + 24), v5 + 96, a2, a3, a4);
        if (v16 != &v16)
        {
          result = sub_2394D02C0(v5, v7);
        }

        v14 = v18;
        if (v18)
        {
          v18 = 0;
          result = v14(&v16);
        }

        v7 = v19[0];
      }

      while (v19[0] != v19);
    }

    v15 = v20;
    if (v20)
    {
      v20 = 0;
      return v15(v19);
    }
  }

  return result;
}

_BYTE *sub_2394D021C(_BYTE *result, int a2)
{
  if (a2)
  {
    v2 = a2 - (result[528] != 1);
    if (result[534] < v2)
    {
      result[534] = v2;
    }

    if (result[536] < v2)
    {
      result[536] = v2;
    }
  }

  return result;
}

void *sub_2394D0254(uint64_t a1, uint64_t a2)
{
  sub_2394CE170(a2, 2);
  result = sub_2394CE6E8(a2);
  if (result)
  {

    return sub_2394CEF6C(a2, result, v4, 1, 0);
  }

  return result;
}

uint64_t sub_2394D02C0(uint64_t result, void *a2)
{
  v3 = result;
  v4 = a2[2];
  if (v4)
  {
    a2[2] = 0;
    result = v4(a2);
    v5 = a2[2];
    if (v5)
    {
      a2[2] = 0;
      result = v5(a2);
    }
  }

  a2[2] = sub_2394D0334;
  v6 = *(v3 + 552);
  a2[1] = v6;
  *v6 = a2;
  *(v3 + 552) = a2;
  *a2 = v3 + 544;
  return result;
}

void *sub_2394D0334(void *result)
{
  v1 = result[1];
  *(*result + 8) = v1;
  *v1 = *result;
  *result = result;
  result[1] = result;
  result[2] = 0;
  return result;
}

void *sub_2394D0350(void *a1)
{
  v2 = *a1;
  if (*a1 != a1)
  {
    do
    {
      v3 = *v2;
      *v2 = v2;
      v2[1] = v2;
      v2[2] = 0;
      v2 = v3;
    }

    while (v3 != a1);
  }

  *a1 = a1;
  a1[1] = a1;
  v4 = a1[2];
  if (v4)
  {
    a1[2] = 0;
    v4(a1);
  }

  return a1;
}

uint64_t sub_2394D03B0(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a2;
  v7 = result;
  if (a2)
  {
    v8 = a2[2];
    if (v8)
    {
      a2[2] = 0;
      result = v8(a2);
    }

    v6[2] = sub_2394D04B4;
    *v6 = v7;
    v9 = *(v7 + 8);
    v6[1] = v9;
    *v9 = v6;
    *(v7 + 8) = v6;
  }

  if (a3)
  {
    v10 = a3[2];
    if (v10)
    {
      a3[2] = 0;
      result = v10(a3);
    }

    a3[2] = sub_2394D04F8;
    *a3 = v7;
    if (v6)
    {
      v11 = v6;
    }

    else
    {
      v11 = v7;
    }

    if (!v6)
    {
      v6 = a3;
    }

    a3[1] = v11[1];
    **(v7 + 8) = a3;
    *(v7 + 8) = a3;
  }

  if (a4)
  {
    v12 = a4[2];
    if (v12)
    {
      a4[2] = 0;
      result = v12(a4);
    }

    a4[2] = sub_2394D053C;
    *a4 = v7;
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = v7;
    }

    a4[1] = v13[1];
    **(v7 + 8) = a4;
    *(v7 + 8) = a4;
  }

  return result;
}

uint64_t sub_2394D04B4(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  do
  {
    v3 = v2;
    v2 = *v2;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
  }

  while (v2[1] == v1);
  *v1 = v2;
  v4 = v2[1];
  do
  {
    v2[1] = v1;
    v2 = *v2;
  }

  while (v2[1] == v4);
  return result;
}

uint64_t sub_2394D04F8(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  do
  {
    v3 = v2;
    v2 = *v2;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
  }

  while (v2[1] == v1);
  *v1 = v2;
  v4 = v2[1];
  do
  {
    v2[1] = v1;
    v2 = *v2;
  }

  while (v2[1] == v4);
  return result;
}

uint64_t sub_2394D053C(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *v1;
  do
  {
    v3 = v2;
    v2 = *v2;
    *v3 = v3;
    v3[1] = v3;
    v3[2] = 0;
  }

  while (v2[1] == v1);
  *v1 = v2;
  v4 = v2[1];
  do
  {
    v2[1] = v1;
    v2 = *v2;
  }

  while (v2[1] == v4);
  return result;
}

BOOL sub_2394D0580(void *a1, void *a2, void *a3, void *a4)
{
  v4 = *a1;
  if (*a1 != a1)
  {
    v5 = v4[1];
    if (v4[2] == sub_2394D04B4)
    {
      *a2 = v4;
      v6 = *v4;
    }

    else
    {
      *a2 = 0;
      v6 = v4;
    }

    if (v6[1] == v5 && v6[2] == sub_2394D04F8)
    {
      *a3 = v6;
      v6 = *v6;
    }

    else
    {
      *a3 = 0;
    }

    if (v6[1] != v5 || v6[2] != sub_2394D053C)
    {
      v6 = 0;
    }

    *a4 = v6;
  }

  return v4 != a1;
}

uint64_t sub_2394D0624(void *a1, unsigned __int16 a2)
{
  v6 = a2;
  if ((*(*a1 + 32))(a1))
  {
    v3 = 0x1B00000000;
    v4 = 47;
  }

  else
  {
    sub_2394D088C(a1 + 1, &v6);
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394D06AC(void *a1, unsigned __int16 a2)
{
  v6 = a2;
  if ((*(*a1 + 32))(a1))
  {
    sub_2394D0D08(a1 + 1, &v6);
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = 0x2200000000;
    v4 = 16;
  }

  return v4 | v3;
}

uint64_t sub_2394D076C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(*a1 + 40))(a1);
  if (result)
  {
    v5 = a1[3];
    v6 = *(v5 + 16);
    result = sub_2394D0DF8(a1 + 1, v5);
    *(a2 + 2) = v6;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void *sub_2394D07E4(void *a1)
{
  *a1 = &unk_284BBDA40;
  sub_2394C763C((a1 + 1));
  return a1;
}

void sub_2394D0828(void *a1)
{
  *a1 = &unk_284BBDA40;
  sub_2394C763C((a1 + 1));

  JUMPOUT(0x23EE77B60);
}

uint64_t **sub_2394D088C(void *a1, unsigned __int16 *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_2394D0AAC(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_2394D0B9C(a1, prime);
    }
  }
}

void sub_2394D0B9C(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_238EAEDBC();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *sub_2394D0D08(void *a1, unsigned __int16 *a2)
{
  result = sub_2394D0D40(a1, a2);
  if (result)
  {
    sub_2394D0DF8(a1, result);
    return 1;
  }

  return result;
}

uint64_t **sub_2394D0D40(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_2394D0DF8(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_2394D0E3C(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *sub_2394D0E3C@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

unint64_t sub_2394D0F78(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v54 = *MEMORY[0x277D85DE8];
  if (sub_2393BC2A0(a2))
  {
    v9 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a2 + 112);
      if (sub_2394703E0(a2))
      {
        v11 = 105;
      }

      else
      {
        v11 = 114;
      }

      *buf = 67109376;
      *v48 = v10;
      *&v48[4] = 1024;
      *&v48[6] = v11;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Dropping Timed Request on group exchange %u%c", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v12 = *(a2 + 112);
      sub_2394703E0(a2);
      sub_2393D5320(0xDu, 1);
    }

LABEL_9:
    LODWORD(v13) = 0;
LABEL_10:
    v14 = 0;
    goto LABEL_52;
  }

  if (*(a1 + 8))
  {
    if (*(a1 + 8) == 2)
    {
      v15 = (*(*off_27DF765E8 + 2))(off_27DF765E8);
      v16 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a2 + 112);
        *buf = 67110144;
        *v48 = HIDWORD(v15);
        if (sub_2394703E0(a2))
        {
          v18 = 105;
        }

        else
        {
          v18 = 114;
        }

        *&v48[4] = 1024;
        *&v48[6] = v15;
        *v49 = 2048;
        *&v49[2] = a1;
        v50 = 1024;
        v51 = v17;
        v52 = 1024;
        v53 = v18;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Timed following action arrived at 0x%08X%08X: handler %p exchange %u%c", buf, 0x24u);
      }

      if (sub_2393D5398(3u))
      {
        v19 = *(a2 + 112);
        sub_2394703E0(a2);
        sub_2393D5320(0xDu, 3);
      }

      if (*(a1 + 24) < v15)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v20 = *(a2 + 112);
          v21 = sub_2394703E0(a2);
          *buf = 134218496;
          *v48 = a1;
          if (v21)
          {
            v22 = 105;
          }

          else
          {
            v22 = 114;
          }

          *&v48[8] = 1024;
          *v49 = v20;
          *&v49[4] = 1024;
          *&v49[6] = v22;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Timeout expired: handler %p exchange %u%c", buf, 0x18u);
        }

        if (sub_2393D5398(1u))
        {
          v23 = *(a2 + 112);
          sub_2394703E0(a2);
          sub_2393D5320(0xDu, 1);
        }

        v24 = 148;
LABEL_51:
        v34 = sub_2394DEE10(v24, a2, 0);
        v14 = v34;
        v13 = HIDWORD(v34);
        goto LABEL_52;
      }

      if (!*(a3 + 2))
      {
        v37 = *(a3 + 3);
        v38 = *a3;
        if (v37 == 1 && v38 == 8)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v39 = *(a2 + 112);
            v40 = sub_2394703E0(a2);
            *buf = 134218496;
            *v48 = a1;
            if (v40)
            {
              v41 = 105;
            }

            else
            {
              v41 = 114;
            }

            *&v48[8] = 1024;
            *v49 = v39;
            *&v49[4] = 1024;
            *&v49[6] = v41;
            _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Handing timed invoke to IM engine: handler %p exchange %u%c", buf, 0x18u);
          }

          if (sub_2393D5398(3u))
          {
            v42 = *(a2 + 112);
            sub_2394703E0(a2);
            sub_2393D5320(0xDu, 3);
          }

          (*(**(a1 + 16) + 16))(*(a1 + 16), a1, a2, a3, a4);
          goto LABEL_9;
        }

        if (v37 == 1 && v38 == 6)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v43 = *(a2 + 112);
            v44 = sub_2394703E0(a2);
            *buf = 134218496;
            *v48 = a1;
            if (v44)
            {
              v45 = 105;
            }

            else
            {
              v45 = 114;
            }

            *&v48[8] = 1024;
            *v49 = v43;
            *&v49[4] = 1024;
            *&v49[6] = v45;
            _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Handing timed write to IM engine: handler %p exchange %u%c", buf, 0x18u);
          }

          if (sub_2393D5398(3u))
          {
            v46 = *(a2 + 112);
            sub_2394703E0(a2);
            sub_2393D5320(0xDu, 3);
          }

          (*(**(a1 + 16) + 24))(*(a1 + 16), a1, a2, a3, a4);
          goto LABEL_9;
        }
      }
    }

    else
    {
      v16 = sub_2393D9044(0xDu);
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v30 = *(a2 + 112);
      v31 = sub_2394703E0(a2);
      *buf = 134218496;
      *v48 = a1;
      if (v31)
      {
        v32 = 105;
      }

      else
      {
        v32 = 114;
      }

      *&v48[8] = 1024;
      *v49 = v30;
      *&v49[4] = 1024;
      *&v49[6] = v32;
      _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Unexpected unknown message in tiemd interaction: handler %p exchange %u%c", buf, 0x18u);
    }

    if (sub_2393D5398(1u))
    {
      v33 = *(a2 + 112);
      sub_2394703E0(a2);
      sub_2393D5320(0xDu, 1);
    }

    v24 = 128;
    goto LABEL_51;
  }

  if (*(a3 + 2) || *(a3 + 3) != 1 || *a3 != 10)
  {
    sub_239536BFC();
  }

  *(a1 + 8) = 1;
  v25 = sub_2394D16D4(a1, a2, v8, a4);
  v14 = v25;
  v13 = HIDWORD(v25);
  if (!v25)
  {
    goto LABEL_10;
  }

  v26 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = *(a2 + 112);
    *buf = 134218496;
    *v48 = a1;
    if (sub_2394703E0(a2))
    {
      v28 = 105;
    }

    else
    {
      v28 = 114;
    }

    *&v48[8] = 1024;
    *v49 = v27;
    *&v49[4] = 1024;
    *&v49[6] = v28;
    _os_log_impl(&dword_238DAE000, v26, OS_LOG_TYPE_ERROR, "Failed to parse Timed Request action: handler %p exchange %u%c", buf, 0x18u);
  }

  if (sub_2393D5398(1u))
  {
    v29 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 1);
  }

  sub_2394DEE10(0x80u, a2, 0);
LABEL_52:
  v35 = *MEMORY[0x277D85DE8];
  return v14 | (v13 << 32);
}

unint64_t sub_2394D16D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v28);
  v29 = 0;
  sub_238DD2F90(v28, a4);
  sub_2393DD178(v27);
  v7 = sub_2393DD0A8(v27, v28);
  if (v7)
  {
    goto LABEL_15;
  }

  v26 = 0;
  v7 = sub_2393DB984(v27, &v26);
  if (v7)
  {
    goto LABEL_15;
  }

  v7 = sub_2393DD104(v27);
  if (v7)
  {
    goto LABEL_15;
  }

  v8 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = v26;
    v10 = *(a2 + 112);
    v11 = sub_2394703E0(a2);
    buf = __PAIR64__(v9, 67109888);
    v31 = 2048;
    if (v11)
    {
      v12 = 105;
    }

    else
    {
      v12 = 114;
    }

    *v32 = a1;
    *&v32[8] = 1024;
    *&v32[10] = v10;
    v33 = 1024;
    v34 = v12;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Got Timed Request with timeout %u: handler %p exchange %u%c", &buf, 0x1Eu);
  }

  if (sub_2393D5398(3u))
  {
    v13 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 3);
  }

  v14 = v26;
  sub_238EA6DC0(a2, &buf);
  v15 = sub_239495550(buf, 2000, 0);
  v16 = v15 <= v14 ? v14 : v15;
  sub_239470470(a2, v16);
  (*(*buf + 32))(buf);
  v7 = sub_2394DEE10(0, a2, 1);
  if (v7)
  {
LABEL_15:
    v17 = v7 & 0xFFFFFFFF00000000;
  }

  else
  {
    *(a1 + 8) = 2;
    v20 = (*(*off_27DF765E8 + 2))(off_27DF765E8) + v14;
    *(a1 + 24) = v20;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v21 = *(a2 + 112);
      v22 = sub_2394703E0(a2);
      LODWORD(buf) = 67110144;
      HIDWORD(buf) = HIDWORD(v20);
      if (v22)
      {
        v23 = 105;
      }

      else
      {
        v23 = 114;
      }

      v31 = 1024;
      *v32 = v20;
      *&v32[4] = 2048;
      *&v32[6] = a1;
      v33 = 1024;
      v34 = v21;
      v35 = 1024;
      v36 = v23;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Timed Request time limit 0x%08X%08X: handler %p exchange %u%c", &buf, 0x24u);
    }

    if (sub_2393D5398(3u))
    {
      v24 = *(a1 + 24);
      v25 = *(a2 + 112);
      sub_2394703E0(a2);
      sub_2393D5320(0xDu, 3);
    }

    v17 = 0;
    LODWORD(v7) = 0;
  }

  if (v29)
  {
    sub_2393D96C8(v29);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7 | v17;
}

unint64_t sub_2394D1A74(uint64_t a1, unsigned int a2)
{
  sub_2393D9C18(0x19uLL, 0x26u, &v12);
  if (v12)
  {
    sub_2393C7B90(v9);
    v10[1] = 0;
    v10[2] = 0;
    v10[0] = &unk_284BB83A8;
    v11 = 0;
    sub_238EA16C4(v10, &v12, 0);
    sub_2393C7BF0(v9, v10, 0xFFFFFFFF);
    sub_2393DB79C(&v8);
    v4 = sub_2393DD7B8(&v8, v9);
    if (!v4)
    {
      sub_2393DDB84(&v8, a2);
      v4 = v8;
      if (!v8)
      {
        v4 = sub_238DD2EFC(v9, &v12);
        if (!v4)
        {
          v7 = 1;
          v4 = sub_239470478(a1, 0x10000u, 10, &v12, &v7);
        }
      }
    }

    v5 = HIDWORD(v4);
    sub_2393B8400(v10);
    if (v12)
    {
      sub_2393D96C8(v12);
    }
  }

  else
  {
    LODWORD(v4) = 11;
    LODWORD(v5) = 40;
  }

  return v4 | (v5 << 32);
}

uint64_t sub_2394D1BD0(uint64_t a1)
{
  sub_2394D1C40(a1, 5);
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(*result + 32);

    return v3();
  }

  return result;
}

uint64_t sub_2394D1C40(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = a2;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 68157954;
    v7 = 10;
    v8 = 2080;
    v9 = sub_2394D2ACC(a1);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "WriteClient moving to [%10.10s]", buf, 0x12u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    sub_2394D2ACC(a1);
    result = sub_2393D5320(0xDu, 3);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394D1D28(uint64_t a1, void *a2)
{
  sub_2393C5AAC(v16);
  v17 = 0;
  sub_2393C5AAC(v14);
  sub_2393DD178(v13);
  sub_2393DD178(v12);
  sub_238DD2F90(v16, a2);
  v4 = sub_2393DD0A8(v13, v16);
  if (v4)
  {
    goto LABEL_2;
  }

  v6 = sub_2393DD1DC(v13, v12);
  v4 = v6;
  if (v6 == 33)
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
    if (v6)
    {
LABEL_2:
      v5 = v4 & 0xFFFFFFFF00000000;
      goto LABEL_5;
    }

    sub_2393DD1C8(v12, v14);
    LODWORD(v4) = 36;
    while (1)
    {
      v8 = sub_2393C6B34(v14);
      if (v8)
      {
        break;
      }

      if (v15 != 256)
      {
        v5 = 0x4700000000;
        goto LABEL_5;
      }

      sub_2393DD178(v11);
      v8 = sub_2393DD7F4(v11, v14);
      if (!v8)
      {
        v8 = sub_2394D1E90(a1, v11);
        if (!v8)
        {
          continue;
        }
      }

      v5 = v8 & 0xFFFFFFFF00000000;
LABEL_20:
      LODWORD(v4) = v8;
      goto LABEL_5;
    }

    if (v8 == 33)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v5 = v9 & 0xFFFFFFFF00000000;
      goto LABEL_20;
    }

    v10 = sub_2393DD104(v13);
    LODWORD(v4) = v10;
    v5 = v10 & 0xFFFFFFFF00000000;
  }

LABEL_5:
  if (v17)
  {
    sub_2393D96C8(v17);
  }

  return v4 | v5;
}

unint64_t sub_2394D1E90(uint64_t a1, int *a2)
{
  sub_2393DD178(v13);
  v11 = 0;
  v12 = 0;
  sub_2393DD178(v10);
  v7 = 0;
  v8 = 0;
  v9[12] = 0;
  memset(v9, 0, 11);
  v4 = sub_2393DB6C8(a2, v13);
  if (!v4)
  {
    v4 = sub_2393DAC08(v13, &v7, 0);
    if (!v4)
    {
      v4 = sub_2393DB490(a2, v10);
      if (!v4)
      {
        v4 = sub_2393DD458(v10, &v11);
        if (!v4)
        {
          v6 = *(a1 + 40);
          if (v6)
          {
            (*(*v6 + 16))(v6, a1, &v7, v11 | (v12 << 16));
          }
        }
      }
    }
  }

  return v4;
}

unint64_t sub_2394D1F98(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_2393DA93C((a1 + 184));
  v5 = *(a1 + 184);
  if (v5)
  {
    v6 = *(a1 + 192);
LABEL_7:
    v10 = v5 & 0xFFFFFFFF00000000;
    return v10 | v5;
  }

  v7 = v4;
  if (*(a2 + 16) == 1)
  {
    v8 = sub_238DE3698(a2 + 16);
    sub_2393DA83C(v7, *v8);
    *(a1 + 306) = 1;
  }

  v5 = *v7;
  if (*v7)
  {
    v9 = v7[1];
    goto LABEL_7;
  }

  v12 = sub_2393DA7FC(v7);
  v13 = v12;
  v14 = *a2;
  if (v14 != 0xFFFF)
  {
    sub_2393DAEE8(v12, v14);
  }

  v15 = sub_2393DAF28(v13, *(a2 + 1));
  sub_2393DAF68(v15, *(a2 + 2));
  v16 = *(a2 + 14);
  if (v16 >= 2)
  {
    if (v16 != 4)
    {
      v10 = 0x7600000000;
      LODWORD(v5) = 108;
      return v10 | v5;
    }

    LOBYTE(v18) = 0;
    v19 = 0;
    sub_2393DAFA8(v13, &v18);
  }

  v17 = sub_2393DA87C(v13);
  v10 = v17 & 0xFFFFFFFF00000000;
  if (v17)
  {
    LODWORD(v5) = v17;
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (!v17)
  {
    v10 = 0;
  }

  return v10 | v5;
}

unint64_t sub_2394D20BC(uint64_t a1)
{
  v2 = sub_2393DA98C(a1 + 184);
  v3 = sub_2393DA87C(v2);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2394D1C40(a1, 1);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

unint64_t sub_2394D2134(uint64_t a1, int a2)
{
  v15 = 0;
  if (*(a1 + 48) != 1)
  {
    v8 = 3;
    v7 = 142;
    return v8 | (v7 << 32);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    if (*(v3 + 60) == 21169)
    {
      v4 = *(v3 + 52);
      v5 = v4 >= 7;
      v6 = v4 - 7;
      if (v5)
      {
        *(v3 + 52) = v6;
        *(v3 + 40) += 7;
        v11 = sub_2393DA87C((a1 + 184));
        v8 = v11;
        if (v11)
        {
          v7 = HIDWORD(v11);
        }

        else
        {
          v12 = sub_2393DD394((a1 + 152), a2);
          v13 = sub_2393DD3D4(v12);
          if (v13 || (v13 = sub_238DD2EFC(a1 + 56, &v15), v13))
          {
            v7 = HIDWORD(v13);
            v8 = v13;
          }

          else
          {
            v14 = *(a1 + 296);
            if (!v14)
            {
              v7 = 0;
              v8 = 0;
              *(a1 + 296) = v15;
              return v8 | (v7 << 32);
            }

            sub_2393D982C(v14, &v15);
            v8 = 0;
            v7 = 0;
          }
        }
      }

      else
      {
        v7 = 176;
        v8 = 11;
      }

      goto LABEL_10;
    }

    v7 = 175;
  }

  else
  {
    v7 = 145;
  }

  v8 = 3;
LABEL_10:
  if (v15)
  {
    sub_2393D96C8(v15);
  }

  return v8 | (v7 << 32);
}

unint64_t sub_2394D2294(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    return 0;
  }

  else
  {
    return sub_2394D22C8(a1);
  }
}

unint64_t sub_2394D22C8(uint64_t a1)
{
  if (*(a1 + 48) == 1 && (v2 = sub_2394D2134(a1, 1), v2))
  {
    v3 = HIDWORD(v2);
  }

  else if (*(a1 + 288) == 1 && *(a1 + 296))
  {
    v3 = 175;
    LODWORD(v2) = 11;
  }

  else
  {
    sub_2393D9C18(0x4AAuLL, 0x26u, &v10);
    if (v10)
    {
      if (sub_2393D980C(v10) < 0x4AB)
      {
        v4 = 23;
      }

      else
      {
        v4 = (sub_2393D980C(v10) - 1171);
      }

      sub_238EA16C4(a1 + 120, &v10, 0);
      sub_2393C7BF0(a1 + 56, a1 + 120, 0xFFFFFFFF);
      v6 = sub_2393C7D60(a1 + 56, v4);
      v5 = v6;
      if (v6)
      {
        v3 = HIDWORD(v6);
      }

      else
      {
        v7 = sub_2393DD7B8(a1 + 152, a1 + 56);
        if (v7)
        {
          v3 = HIDWORD(v7);
          v5 = v7;
        }

        else
        {
          sub_2393DAE68((a1 + 152), *(a1 + 292));
          sub_2393DC99C((a1 + 152), *(a1 + 288));
          v5 = *(a1 + 152);
          if (v5 || (sub_2393DDBE0((a1 + 152)), (v5 = *(a1 + 152)) != 0))
          {
            v3 = *(a1 + 156);
            v9 = *(a1 + 160);
          }

          else if (*(a1 + 168))
          {
            v5 = 0;
            v3 = 0;
          }

          else
          {
            v3 = 210;
            v5 = 3;
          }
        }
      }

      if (v10)
      {
        sub_2393D96C8(v10);
      }
    }

    else
    {
      v5 = 11;
      v3 = 178;
    }

    LODWORD(v2) = v5;
  }

  return v2 | (v3 << 32);
}

unint64_t sub_2394D247C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C5AAC(v10);
  sub_2393C5BDC(v10, a3);
  v6 = sub_2394D1F98(a1, a2);
  if (v6)
  {
    goto LABEL_2;
  }

  v9 = *(sub_2393DA98C(a1 + 184) + 16);
  if (!v9)
  {
    v7 = 0xE000000000;
    LODWORD(v6) = 3;
    return v7 | v6;
  }

  v6 = sub_2393C8964(v9, 2uLL, v10);
  if (v6)
  {
LABEL_2:
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = sub_2394D20BC(a1);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (!v6)
    {
      LODWORD(v6) = 0;
      v7 = 0;
    }
  }

  return v7 | v6;
}

unint64_t sub_2394D2538(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  sub_2393C7B90(&v15);
  v6 = *(a1 + 200);
  v7 = v6[3];
  v9 = *v6;
  v8 = v6[1];
  v17 = v6[2];
  v18 = v7;
  v15 = v9;
  v16 = v8;
  result = sub_2394D247C(a1, a2, a3);
  if (result == 25 || result == 11)
  {
    v11 = *(a1 + 200);
    v12 = v15;
    v13 = v16;
    v14 = v18;
    v11[2] = v17;
    v11[3] = v14;
    *v11 = v12;
    v11[1] = v13;
    sub_2393D06DC((a1 + 184));
    result = sub_2394D22C8(a1);
    if (!result)
    {
      return sub_2394D247C(a1, a2, a3);
    }
  }

  return result;
}

unint64_t sub_2394D25E4(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (*(a1 + 48) != 1)
  {
    v8 = sub_2394D22C8(a1);
    if (v8)
    {
      goto LABEL_14;
    }
  }

  if (*(a2 + 14) || sub_2393C5C40(a3) != 22)
  {
    v8 = sub_2394D2538(a1, a2, a3);
    goto LABEL_14;
  }

  sub_2393C5AAC(v22);
  sub_2393C5AAC(v21);
  v20 = 0;
  v14 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 6);
  v17 = *(a2 + 14);
  v18 = *(a2 + 16);
  if (v18 == 1)
  {
    v19 = *(a2 + 5);
  }

  if (a4 != 1 && HIDWORD(v14) == 31)
  {
    sub_2393C5BDC(v22, a3);
    sub_2393C67F8(v22, v21);
    LOBYTE(v13[0]) = 0;
    v8 = sub_2394D27BC(a1, &v14, v21, v13, &v20);
    if (!v8)
    {
      if (LOBYTE(v13[0]) != 1)
      {
        v10 = 0;
        LODWORD(v8) = 0;
        return v8 | v10;
      }

      v8 = sub_2394D22C8(a1);
      if (!v8)
      {
        v9 = v20;
        goto LABEL_18;
      }
    }

LABEL_14:
    v10 = v8 & 0xFFFFFFFF00000000;
    return v8 | v10;
  }

  v13[0] = 0;
  v13[1] = 0;
  v8 = sub_238EFAB4C(a1, &v14, v13);
  if (v8)
  {
    goto LABEL_14;
  }

  v9 = 0;
LABEL_18:
  v17 = 4;
  sub_2393C5BDC(v22, a3);
  sub_2393C67F8(v22, v21);
  v12 = 0;
  while (1)
  {
    v8 = sub_2393C6B34(v21);
    if (v8)
    {
      break;
    }

    if (v9 < ++v12)
    {
      v8 = sub_2394D2538(a1, &v14, v21);
      if (v8)
      {
        goto LABEL_14;
      }
    }
  }

  v10 = v8 & 0xFFFFFFFF00000000;
  if (v8 == 33)
  {
    v10 = 0;
    LODWORD(v8) = 0;
  }

  return v8 | v10;
}

unint64_t sub_2394D27BC(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, _WORD *a5)
{
  result = sub_2394D28A4(a1, a2);
  if (!result)
  {
    v10 = sub_2393DA98C(a1 + 184);
    sub_2393C7B90(&v21);
    for (i = 0; ; i = *a5 + 1)
    {
      *a5 = i;
      result = sub_2393C6B34(a3);
      if (result)
      {
        break;
      }

      v12 = v10[2];
      v13 = v12[3];
      v15 = *v12;
      v14 = v12[1];
      v23 = v12[2];
      v24 = v13;
      v21 = v15;
      v22 = v14;
      result = sub_2393C8964(v12, 0x100uLL, a3);
      if (result == 11 || result == 25)
      {
        v17 = v10[2];
        v18 = v21;
        v19 = v22;
        v20 = v24;
        v17[2] = v23;
        v17[3] = v20;
        *v17 = v18;
        v17[1] = v19;
        sub_2393D06DC(v10);
        *a4 = 1;
        return sub_2394D2A18(a1);
      }

      if (result)
      {
        return result;
      }
    }

    if (result != 33)
    {
      return result;
    }

    return sub_2394D2A18(a1);
  }

  return result;
}

unint64_t sub_2394D28A4(uint64_t a1, unsigned __int16 *a2)
{
  sub_2393C7B90(&v16);
  v4 = *(a1 + 200);
  v5 = v4[3];
  v7 = *v4;
  v6 = v4[1];
  v18 = v4[2];
  v19 = v5;
  v16 = v7;
  v17 = v6;
  v8 = sub_2394D295C(a1, a2);
  if (v8 != 25 && v8 != 11)
  {
    goto LABEL_6;
  }

  v9 = *(a1 + 200);
  v10 = v16;
  v11 = v17;
  v12 = v19;
  v9[2] = v18;
  v9[3] = v12;
  *v9 = v10;
  v9[1] = v11;
  sub_2393D06DC((a1 + 184));
  v13 = sub_2394D22C8(a1);
  if (v13 || (v13 = sub_2394D295C(a1, a2), v13))
  {
    v14 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
LABEL_6:
    v14 = 0;
    LODWORD(v13) = 0;
  }

  return v13 | v14;
}

unint64_t sub_2394D295C(uint64_t a1, unsigned __int16 *a2)
{
  v4 = sub_2393C7D60(a1 + 56, 2u);
  if (v4)
  {
    goto LABEL_3;
  }

  v4 = sub_2394D1F98(a1, a2);
  if (v4)
  {
    goto LABEL_3;
  }

  v7 = *(sub_2393DA98C(a1 + 184) + 16);
  if (!v7)
  {
    v5 = 0x16800000000;
    LODWORD(v4) = 3;
    return v5 | v4;
  }

  v8 = 0;
  v4 = sub_2393C8CE0(v7, 2uLL, 22, &v8);
  if (v4)
  {
LABEL_3:
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v8 == 21)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = 3;
    }

    if (v8 == 21)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0x16D00000000;
    }
  }

  return v5 | v4;
}

unint64_t sub_2394D2A18(uint64_t a1)
{
  v2 = *(sub_2393DA98C(a1 + 184) + 16);
  if (!v2)
  {
    v6 = 0x17500000000;
LABEL_7:
    LODWORD(v7) = 3;
    return v6 & 0xFFFFFFFF00000000 | v7;
  }

  if (*(v2 + 60) != 21169)
  {
    v6 = 0xAF00000000;
    goto LABEL_7;
  }

  v3 = *(v2 + 52);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (v4)
  {
    *(v2 + 52) = v5;
    *(v2 + 40) += 2;
    v7 = sub_2393C8DE0(v2, 21);
    if (!v7)
    {
      v7 = sub_2394D20BC(a1);
    }

    v6 = v7;
  }

  else
  {
    v6 = 0xB000000000;
    LODWORD(v7) = 11;
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

const char *sub_2394D2ACC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 5)
  {
    return "N/A";
  }

  else
  {
    return off_278A83108[v1];
  }
}

uint64_t sub_2394D2AF4(uint64_t a1, uint64_t *a2, int a3)
{
  v21 = *MEMORY[0x277D85DE8];
  if (*(a1 + 48) != 1)
  {
    v7 = 458;
    LODWORD(v6) = 3;
    goto LABEL_13;
  }

  v6 = sub_2394D2134(a1, 0);
  if (!v6)
  {
    v13 = sub_239471E34(*(a1 + 8), a2, a1, 1u);
    if (!v13)
    {
      v7 = 466;
      LODWORD(v6) = 11;
      goto LABEL_13;
    }

    v14 = v13;
    sub_238EF9EEC(a1 + 16);
    *(a1 + 32) = v14;
    v14[5] = a1 + 16;
    v15 = sub_2393B59AC(a1 + 16);
    if (sub_2393BC2A0(v15) && (*(a1 + 306) & 1) != 0)
    {
      result = 0x1D70000002ALL;
      goto LABEL_18;
    }

    v16 = sub_2393B59AC(a1 + 16);
    if (a3)
    {
      sub_239470470(v16, a3);
    }

    else
    {
      sub_239470428(v16, 2000);
    }

    if (*(a1 + 288) == 1)
    {
      v17 = *(a1 + 32);
      v18 = sub_238EAB248((a1 + 288));
      v6 = sub_2394D1A74(v17, *v18);
      if (!v6)
      {
        sub_2394D1C40(a1, 2);
      }
    }

    else
    {
      v6 = sub_2394D2DF8(a1);
    }
  }

  v7 = HIDWORD(v6);
  if (v6)
  {
LABEL_13:
    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v20 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Write client failed to SendWriteRequest: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0xDu, 1);
    }

    goto LABEL_17;
  }

  v8 = *a2;
  if ((*(**a2 + 16))(*a2) == 3 || (*(*v8 + 16))(v8) == 4)
  {
    v9 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Closing on group Communication ", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    sub_2394D1BD0(a1);
  }

  LODWORD(v6) = 0;
LABEL_17:
  result = v6 | (v7 << 32);
LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394D2DF8(uint64_t a1)
{
  sub_2393D9EB8((a1 + 296), &v10);
  v2 = sub_2393B59AC(a1 + 16);
  v3 = sub_2393BC2A0(v2);
  if (*(a1 + 296) && v3)
  {
    v4 = 0x21500000000;
    v5 = 3;
  }

  else
  {
    v6 = sub_2393B59AC(a1 + 16);
    v9 = 1;
    v7 = sub_239470478(v6, 0x10000u, 6, &v10, &v9);
    v5 = v7;
    if (v7)
    {
      v4 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394D1C40(a1, 3);
      v5 = 0;
      v4 = 0;
    }
  }

  if (v10)
  {
    sub_2393D96C8(v10);
  }

  return v4 | v5;
}

unint64_t sub_2394D2EC8(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (*(a1 + 48) == 3 && !*(a1 + 296))
  {
    sub_2394D1C40(a1, 4);
  }

  if (*(a1 + 32) != a2)
  {
    v8 = 0;
    LODWORD(v9) = 3;
    v10 = 561;
LABEL_6:
    v11 = "src/app/WriteClient.cpp";
    goto LABEL_7;
  }

  v15 = *(a3 + 2);
  if (*(a1 + 48) == 2)
  {
    v8 = 1;
    LODWORD(v9) = 42;
    v10 = 577;
    v11 = "src/app/WriteClient.cpp";
    if (*(a3 + 2) || *(a3 + 3) != 1 || *a3 != 1)
    {
      goto LABEL_7;
    }

    v25 = 0;
    v26 = 0;
    v16 = sub_2394DEFB4(a4, &v25);
    v8 = v16 != 0;
    if (!v16)
    {
      v9 = v25;
      if (v25)
      {
        v11 = v26;
        goto LABEL_35;
      }

      v16 = sub_2394D2DF8(a1);
    }

    v9 = v16;
    v11 = v17;
LABEL_35:
    v10 = HIDWORD(v9);
    goto LABEL_7;
  }

  if (*(a3 + 2))
  {
    v8 = 1;
    LODWORD(v9) = 42;
    v10 = 604;
    goto LABEL_6;
  }

  v18 = *(a3 + 3);
  v19 = *a3;
  if (v18 != 1 || v19 != 7)
  {
    v8 = 1;
    LODWORD(v9) = 42;
    v10 = 604;
    v11 = "src/app/WriteClient.cpp";
    if (v18 != 1 || v19 != 1)
    {
      goto LABEL_7;
    }

    v25 = 0;
    v26 = 0;
    v22 = sub_2394DEFB4(a4, &v25);
    if (!v22)
    {
      LODWORD(v22) = v25;
      if (v25)
      {
        v10 = HIDWORD(v25);
        v11 = v26;
      }

      else
      {
        LODWORD(v22) = 42;
        v10 = 600;
      }

      goto LABEL_40;
    }

    v11 = v23;
LABEL_39:
    v10 = HIDWORD(v22);
LABEL_40:
    LODWORD(v9) = v22;
    goto LABEL_7;
  }

  v20 = sub_2394D1D28(a1, a4);
  v11 = v21;
  v10 = HIDWORD(v20);
  LODWORD(v9) = v20;
  if (v20)
  {
    v8 = 1;
    goto LABEL_7;
  }

  if (*(a1 + 296))
  {
    v22 = sub_2394D2DF8(a1);
    v11 = v24;
    v8 = 0;
    goto LABEL_39;
  }

  v8 = 0;
LABEL_7:
  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = v9 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (!v13)
  {
    (*(*v12 + 24))(v12, a1, v9 | (v10 << 32), v11);
  }

  if (v8)
  {
    sub_2394DEE10(0x80u, a2, 0);
  }

  if (*(a1 + 48) != 3)
  {
    sub_2394D1BD0(a1);
  }

  return v9 | (v10 << 32);
}

uint64_t sub_2394D3134(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v6 = 105;
    }

    else
    {
      v6 = 114;
    }

    *buf = 67109376;
    v12 = v5;
    v13 = 1024;
    v14 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Time out! failed to receive write response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 1);
  }

  v8 = *(a1 + 40);
  if (v8)
  {
    (*(*v8 + 24))(v8, a1, 0x27D00000032, "src/app/WriteClient.cpp");
  }

  result = sub_2394D1BD0(a1);
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394D3294(void *a1)
{
  sub_2394D32CC(a1);

  JUMPOUT(0x23EE77B60);
}

void *sub_2394D32CC(void *a1)
{
  *a1 = &unk_284BBDB18;
  sub_23947632C("src/app/WriteClient.h", 147);
  v2 = a1[37];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[37] = 0;
  v3 = a1[35];
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  a1[35] = 0;
  sub_2393B8400(a1 + 15);
  a1[2] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 2));
  return a1;
}

double sub_2394D3368(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_284BBDB80;
  *(a1 + 8) = &unk_284BBDBB8;
  *(a1 + 16) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 73) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 64) = a1 + 56;
  *(a1 + 72) = a1 + 56;
  *(a1 + 96) = 1;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  return result;
}

uint64_t sub_2394D33D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    *(a1 + 20) = 0;
    *(a1 + 24) = 0;
    *(a1 + 112) = a2;
  }

  else
  {
    v2 = 0x13400000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_2394D340C(uint64_t a1)
{
  v3[0] = 0;
  (*(*a1 + 32))(a1, v3);
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  return sub_2393D6A10((a1 + 56), a1 + 40, sub_2394D61EC);
}

uint64_t sub_2394D3480(uint64_t a1, int *a2, unsigned __int16 *a3)
{
  if (a2)
  {
    v4 = a2;
    v6 = 0;
    v7 = 0;
    do
    {
      if (*a3 == *(v4 + 6) && *(a3 + 1) == *v4)
      {
        v8 = sub_2394C9128(*(a1 + 104));
        v9 = *v4;
        v17[0] = *(v4 + 6);
        v18 = v9;
        v10 = *sub_238DE3698(v4 + 4);
        v19 = v8;
        v20 = -1;
        v22 = 0;
        v23 = 0;
        v21 = 0;
        v12 = sub_2394C40A8(&v19, v17) >> 32;
        v14 = (v11 & 0x100000000) == 0 || v10 != v12;
        sub_2393D6E84(&v23);
        v6 |= v14;
        v7 = 1;
      }

      v4 = *(v4 + 2);
    }

    while (v4);
    v15 = v7 & (v6 ^ 1);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_2394D3580(uint64_t a1, int *a2, uint64_t a3, char *a4, BOOL *a5)
{
  v163 = *MEMORY[0x277D85DE8];
  v115 = a3;
  sub_2393C7B90(&v111);
  v8 = *(a2 + 2);
  v9 = v8[3];
  v11 = *v8;
  v10 = v8[1];
  v113 = v8[2];
  v114 = v9;
  v111 = v11;
  v112 = v10;
  v12 = sub_2393DD418(a2);
  v13 = v12;
  v14 = *a2;
  if (*a2)
  {
    v15 = 0;
    v16 = a2[1];
    v17 = *(a2 + 1);
    v18 = 1;
LABEL_4:
    v21 = 1;
    goto LABEL_5;
  }

  v19 = v12[2];
  v15 = *(v19 + 44);
  v18 = 1;
  v20 = sub_2393C7D60(v19, 1u);
  v16 = HIDWORD(v20);
  v14 = v20;
  if (v20)
  {
    goto LABEL_4;
  }

  *v110 = 0;
  *&v110[4] = 0;
  v110[2] = 0;
  log = sub_2393D9044(0xDu);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    v35 = *(v115 + 16);
    v36 = *(v115 + 24);
    buf = __PAIR64__(HIDWORD(v36), 67109888);
    v134 = 1024;
    v135 = v36;
    v136 = 1024;
    v137 = HIDWORD(v35);
    v138 = 1024;
    v139 = v35;
    _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "Building Reports for ReadHandler with LastReportGeneration = 0x%08X%08X DirtyGeneration = 0x%08X%08X", &buf, 0x1Au);
  }

  if (sub_2393D5398(3u))
  {
    v95 = HIDWORD(*(v115 + 16));
    v94 = HIDWORD(*(v115 + 24));
    sub_2393D5320(0xDu, 3);
  }

  if ((*(v115 + 168) & 1) == 0)
  {
    sub_2393BB654(v115);
  }

  v37 = sub_2394C9128(*(a1 + 104));
  v38 = v115;
  v39 = (v115 + 64);
  sub_2394E08B4(&buf, v37, v115 + 64);
  v143 = v39;
  v40 = *(v38 + 64);
  v145 = *(v38 + 80);
  v144 = v40;
  if (!sub_2394E0EF8(&buf, v110, 0))
  {
LABEL_103:
    v21 = 0;
    goto LABEL_104;
  }

  v96 = a1;
  v97 = a4;
  v98 = v15;
  while ((*(v115 + 168) & 2) != 0)
  {
    v41 = *(v115 + 128);
    *v150 = *v110;
    *v151 = *&v110[8];
    v151[4] = 0;
    if ((sub_2394D3480(a1, v41, v150) & 1) == 0)
    {
      goto LABEL_42;
    }

LABEL_76:
    v68 = *(v143 + 4);
    v144 = *v143;
    LODWORD(v145) = v68;
    if ((sub_2394E0EF8(&buf, v110, 0) & 1) == 0)
    {
      goto LABEL_103;
    }
  }

  LOBYTE(v122[0]) = 0;
  *v150 = v110;
  *v151 = &v115;
  *&v151[8] = v122;
  sub_2393D6A10((a1 + 56), v150, sub_2394D6290);
  if ((v122[0] & 1) == 0)
  {
    goto LABEL_76;
  }

LABEL_42:
  sub_2393C7B90(&v106);
  v42 = v13[2];
  v43 = v42[3];
  v45 = *v42;
  v44 = v42[1];
  v108 = v42[2];
  v109 = v43;
  v106 = v45;
  v107 = v44;
  *v104 = *v110;
  *&v104[8] = *&v110[8];
  v105 = 0;
  v46 = *(v115 + 156);
  v47 = (*(v115 + 168) >> 3) & 1;
  v48 = sub_2393BB864(v115);
  if ((*(*v48 + 80))(v48))
  {
    v49 = v47 | 2;
  }

  else
  {
    v49 = v47;
  }

  v50 = sub_2394C9128(*(a1 + 104));
  v51 = sub_2393BB864(v115);
  (*(*v51 + 64))(v101);
  if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
  {
    *v150 = 67109376;
    *&v150[4] = *&v104[4];
    *v151 = 1024;
    *&v151[2] = *&v104[8];
    _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "<RE:Run> Cluster %x, Attribute %x is dirty", v150, 0xEu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xDu, 3);
  }

  v52 = sub_2394DF150();
  (*(*v52 + 16))(v52, 0, 0, v104);
  v128 = 0;
  v132 = v49;
  v129 = v101;
  v130 = *v104;
  v131 = *&v104[8];
  v123 = v50;
  v124 = -1;
  v126 = 0;
  v127 = 0;
  v125 = 0;
  v53 = sub_2394C40A8(&v123, v104);
  if ((v54 & 0x100000000) != 0)
  {
    v55 = HIDWORD(v53);
  }

  else
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *v150 = 0;
      _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "Read request on unknown cluster - no data version available", v150, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }

    LODWORD(v55) = 0;
  }

  sub_2393C7B90(v122);
  v56 = v13[2];
  v57 = v56[2];
  v58 = v56[3];
  v59 = v56[1];
  v122[0] = *v56;
  v122[1] = v59;
  v122[2] = v57;
  v122[3] = v58;
  v102 = 0uLL;
  v103 = 0;
  *v150 = v13;
  *v151 = v101[0];
  *&v151[16] = v101[1];
  v152 = *v104;
  v154 = *&v104[4];
  v153 = 0;
  v155 = 0;
  v156 = 0;
  v157 = 0;
  v158 = v55;
  v159 = 0;
  v160 = v49 & 1;
  v161 = -65536;
  v162 = v46 & 0xFFFFFF;
  v116 = v50;
  v117 = -1;
  v118 = -1;
  v120 = 0;
  v121 = 0;
  v119 = 0;
  v60 = sub_2394C417C(&v116, v104);
  v62 = v61;
  sub_2394D5E38(v101, v104, 1u, v146);
  if (v146[16] == 1)
  {
    v102 = *v146;
    v103 = 0;
LABEL_65:
    a4 = v97;
    v15 = v98;
    goto LABEL_66;
  }

  if ((v62 & 1) == 0)
  {
    v63 = sub_2394C425C(v50, v104, 134);
LABEL_64:
    LOBYTE(v102) = v63;
    *(&v102 + 1) = 0;
    v103 = 1;
    goto LABEL_65;
  }

  if ((v60 & 0x1F0000000000) == 0)
  {
    v63 = -113;
    goto LABEL_64;
  }

  sub_2394D5E38(v101, v104, (v60 >> 40) & 0x1F, v148);
  if (v149 == 1)
  {
    v102 = *v148;
    v103 = 0;
    v15 = v98;
  }

  else
  {
    v15 = v98;
    if (sub_2394C3920(v131))
    {
      sub_2394C394C(v50, &v130, v150, &v102);
    }

    else
    {
      (*(*v50 + 112))(&v102, v50, &v128, v150);
    }
  }

  a4 = v97;
LABEL_66:
  if (sub_2394C3F10(&v102))
  {
    v64 = HIWORD(v46);
    v65 = sub_2394DF150();
    (*(*v65 + 16))(v65, 0, 1, v104);
  }

  else
  {
    LOWORD(v46) = v162;
    LOBYTE(v64) = BYTE2(v162);
    if ((sub_2394C3F4C(&v102) & 1) == 0)
    {
      *v146 = &v147;
      *&v146[8] = xmmword_2395D7C00;
      v147 = 0;
      if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
      {
        v66 = sub_2394C3F74(&v102, v146);
        *v148 = 136315138;
        *&v148[4] = v66;
        _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "Failed to read attribute: %s", v148, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2394C3F74(&v102, v146);
        sub_2393D5320(0xDu, 1);
      }
    }
  }

  sub_2393D6E84(&v121);
  sub_2393D6E84(&v127);
  a1 = v96;
  if (sub_2394C3F10(&v102))
  {
LABEL_74:
    if (v14)
    {
      goto LABEL_105;
    }

    goto LABEL_75;
  }

  v69 = sub_2394C3E2C(&v102);
  v14 = v69;
  v16 = HIDWORD(v69);
  if ((v64 & 1) != 0 && sub_2394C3F4C(&v102))
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      *v150 = 67109888;
      *&v150[4] = HIWORD(*&v104[4]);
      *v151 = 1024;
      *&v151[2] = *&v104[4];
      *&v151[6] = 1024;
      *&v151[8] = HIWORD(*&v104[8]);
      *&v151[12] = 1024;
      *&v151[14] = *&v104[8];
      _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "List does not fit in packet, chunk between list items for clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04X", v150, 0x1Au);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    v70 = v115;
    *(v115 + 156) = v46;
    *(v70 + 158) = v64;
    goto LABEL_74;
  }

  v71 = v13[2];
  v72 = v106;
  v73 = v107;
  v74 = v109;
  v71[2] = v108;
  v71[3] = v74;
  *v71 = v72;
  v71[1] = v73;
  sub_2393D06DC(v13);
  v75 = v115;
  *(v115 + 156) = -1;
  *(v75 + 158) = 0;
  if (sub_2394C3F4C(&v102))
  {
    if (os_log_type_enabled(log, OS_LOG_TYPE_INFO))
    {
      v76 = HIWORD(*&v104[4]);
      v77 = *&v104[4];
      v78 = HIWORD(*&v104[8]);
      v79 = *&v104[8];
      v80 = sub_2393C9138();
      *v150 = 67110146;
      *&v150[4] = v76;
      *v151 = 1024;
      *&v151[2] = v77;
      *&v151[6] = 1024;
      *&v151[8] = v78;
      v15 = v98;
      *&v151[12] = 1024;
      *&v151[14] = v79;
      a4 = v97;
      *&v151[18] = 2080;
      *&v151[20] = v80;
      _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_INFO, "Next attribute value does not fit in packet, roll back on clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04X, err = %s", v150, 0x24u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393C9138();
      a4 = v97;
      v15 = v98;
      sub_2393D5320(0xDu, 3);
    }

    goto LABEL_74;
  }

  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    v81 = HIWORD(*&v104[4]);
    v82 = *&v104[4];
    v83 = HIWORD(*&v104[8]);
    v84 = *&v104[8];
    v85 = sub_2393C9138();
    *v150 = 67110146;
    *&v150[4] = v81;
    *v151 = 1024;
    *&v151[2] = v82;
    *&v151[6] = 1024;
    *&v151[8] = v83;
    *&v151[12] = 1024;
    *&v151[14] = v84;
    v15 = v98;
    *&v151[18] = 2080;
    *&v151[20] = v85;
    _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "Fail to retrieve data, roll back and encode status on clusterId: 0x%04X_%04X, attributeId: 0x%04X_%04Xerr = %s", v150, 0x24u);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    v15 = v98;
    sub_2393D5320(0xDu, 1);
  }

  v86 = sub_2394C3EB0(&v102);
  v150[0] = v86;
  *&v150[1] = 0;
  if (v86 <= 1u && ((v86 >> 8) & 0x100) != 0)
  {
    *&v150[1] = v86 >> 8;
  }

  v87 = sub_2393DB5A0(v13, v104, v150);
  v14 = v87;
  v16 = HIDWORD(v87);
  if (!v87)
  {
LABEL_75:
    v14 = 0;
    v67 = v115;
    *(v115 + 156) = -1;
    *(v67 + 158) = 0;
    goto LABEL_76;
  }

  v90 = v13[2];
  v91 = v106;
  v92 = v107;
  v93 = v109;
  v90[2] = v108;
  v90[3] = v93;
  *v90 = v91;
  v90[1] = v92;
  sub_2393D06DC(v13);
LABEL_105:
  v21 = 1;
LABEL_104:
  v88 = v143;
  v89 = v144;
  *(v143 + 4) = v145;
  *v88 = v89;
  sub_2393D6E84(&v142);
  sub_2393D6E84(&v141);
  sub_2393D6E84(&v140);
  v18 = 0;
LABEL_5:
  v22 = *(v13[2] + 44);
  if (a5)
  {
    *a5 = v22 != v15;
  }

  if (v14 == 11 || v14 == 25)
  {
    v24 = v18;
  }

  else
  {
    v24 = 1;
  }

  if (v24)
  {
    if (v14)
    {
      if (a4)
      {
        goto LABEL_16;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v27 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_INFO, "<RE:Run> We cannot put more chunks into this report. Enable chunking.", &buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }
  }

  v28 = v13[2];
  if (*(v28 + 60) == 21169)
  {
    v29 = *(v28 + 52);
    if (v29)
    {
      *(v28 + 52) = v29 - 1;
      ++*(v28 + 40);
    }
  }

  v30 = sub_2393DA87C(v13);
  if (v30)
  {
    sub_239536C9C();
  }

  v16 = HIDWORD(v30);
  if (v22 == v15)
  {
    v31 = *(a2 + 2);
    v32 = v111;
    v33 = v112;
    v34 = v114;
    v31[2] = v113;
    v31[3] = v34;
    *v31 = v32;
    v31[1] = v33;
    sub_2393D06DC(a2);
  }

  v14 = 0;
  if (a4)
  {
LABEL_16:
    *a4 = v21;
  }

LABEL_17:
  v25 = *MEMORY[0x277D85DE8];
  return v14 | (v16 << 32);
}

unint64_t sub_2394D4248(uint64_t a1, __int128 *a2, _BYTE *a3, uint64_t a4)
{
  v4 = *(a4 + 120);
  if (v4)
  {
    v8 = 0;
    while (1)
    {
      if (*(v4 + 4) == 0xFFFF)
      {
        goto LABEL_6;
      }

      v9 = *v4;
      if (*v4 == -1)
      {
        goto LABEL_6;
      }

      v10 = v4[1];
      if (v10 == -1)
      {
        goto LABEL_6;
      }

      v28 = a3;
      v34[0] = *(v4 + 4);
      v35 = v9;
      v36 = v10;
      memset(v33, 0, 3);
      v11 = sub_2393BB864(a4);
      (*(*v11 + 64))(&v29);
      v12 = sub_2394C9128(*(a1 + 104));
      v40 = v35;
      v41 = v34[0];
      v42 = 4;
      v43 = v36;
      v44 = 1;
      v13 = sub_23949D748();
      v14 = sub_23949CFB0(v13, &v29, &v40, 1u);
      v38 = v14;
      v39 = v15;
      if (!sub_2394D5F14(v34, &v38, v33))
      {
        break;
      }

      v16 = v27;
LABEL_18:
      if (LOBYTE(v33[0]))
      {
        v19 = a2[1];
        v29 = *a2;
        v30 = v19;
        v20 = a2[3];
        v31 = a2[2];
        v32 = v20;
        v21 = v33[0] | (LOBYTE(v33[1]) << 16);
        v27 = v16 & 0xFFFFFFFFFF000000 | v21;
        result = sub_2393DC77C(a2, v34, v16 & 0xFF000000 | v21);
        if (result)
        {
          v25 = v30;
          *a2 = v29;
          a2[1] = v25;
          v26 = v32;
          a2[2] = v31;
          a2[3] = v26;
          return result;
        }

        v8 = HIDWORD(result);
        a3 = v28;
        *v28 = 1;
      }

      else
      {
        a3 = v28;
      }

LABEL_6:
      v4 = *(v4 + 2);
      if (!v4)
      {
        return v8 << 32;
      }
    }

    v16 = v27;
    if (v14)
    {
      goto LABEL_11;
    }

    if ((*(*v12 + 56))(v12, v34, &v37))
    {
      LOBYTE(v18) = sub_2394C425C(v12, v34, 199);
    }

    else
    {
      v18 = sub_2394C425C(v12, v34, 0);
      if (!v18)
      {
        v23 = sub_23949D748();
        v14 = sub_23949CFB0(v23, &v29, &v40, v37);
        v38 = v14;
        v39 = v24;
        if (sub_2394D5F14(v34, &v38, v33))
        {
          LODWORD(v14) = 0;
          v17 = 0;
          goto LABEL_16;
        }

        v16 = v27;
        if (v14)
        {
LABEL_11:
          v17 = v14 & 0xFFFFFFFF00000000;
          goto LABEL_17;
        }

        LOBYTE(v18) = 0;
      }
    }

    LODWORD(v14) = 0;
    v17 = 0;
    LOBYTE(v33[0]) = v18;
    *(v33 + 1) = 0;
LABEL_16:
    v16 = v27;
LABEL_17:
    if (v14)
    {
      return v17 | v14;
    }

    goto LABEL_18;
  }

  v8 = 0;
  return v8 << 32;
}

unint64_t sub_2394D4504(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char *a5, _BYTE *a6)
{
  v49 = *MEMORY[0x277D85DE8];
  v47 = 0;
  v46 = 0;
  sub_2393C7B90(&v42);
  v12 = *(a2 + 16);
  v13 = v12[3];
  v15 = *v12;
  v14 = v12[1];
  v44 = v12[2];
  v45 = v13;
  v42 = v15;
  v43 = v14;
  if (!*(a3 + 120))
  {
    goto LABEL_9;
  }

  v16 = *(a1 + 112);
  if (!v16 || *(v16 + 24) == 3)
  {
    v17 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "EventManagement has not yet initialized", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }

    goto LABEL_9;
  }

  if (sub_2393BB20C(a3, v16))
  {
LABEL_9:
    v18 = 0;
    v19 = 0;
    v20 = 0;
    goto LABEL_10;
  }

  v27 = sub_2393DD354(a2);
  v19 = *a2;
  if (*a2)
  {
    v20 = 0;
    v18 = *(a2 + 4);
    v28 = *(a2 + 8);
    goto LABEL_10;
  }

  v29 = v27;
  v30 = v27[2];
  if (!v30)
  {
    v20 = 0;
    v19 = 3;
    v18 = 656;
    goto LABEL_10;
  }

  v31 = sub_2393C7D60(v30, 1u);
  v19 = v31;
  if (v31)
  {
    v20 = 0;
    v18 = HIDWORD(v31);
    goto LABEL_10;
  }

  v32 = sub_2394D4248(a1, v29[2], &v46, a3);
  if (v32)
  {
    goto LABEL_27;
  }

  v33 = *(a1 + 112);
  v34 = v29[2];
  v35 = *(a3 + 120);
  v36 = sub_2393BB864(a3);
  (*(*v36 + 64))(buf);
  v32 = sub_2393B7E3C(v33, v34, v35, (a3 + 48), &v47, buf);
  if (v32 <= 0x22 && ((1 << v32) & 0x600000001) != 0)
  {
    v20 = 0;
  }

  else
  {
    if (v32 != 25 && v32 != 11)
    {
LABEL_27:
      v20 = 0;
      v18 = HIDWORD(v32);
      v19 = v32;
      goto LABEL_10;
    }

    if (!v47)
    {
      if ((a4 & 1) == 0)
      {
        ++*(a3 + 48);
      }

      v41 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v41, OS_LOG_TYPE_INFO, "<RE:Run> first cluster event is too big so that it fails to fit in the packet!", buf, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0xDu, 3);
      }
    }

    v20 = 1;
  }

  v37 = v29[2];
  if (*(v37 + 60) == 21169)
  {
    v38 = *(v37 + 52);
    if (v38)
    {
      *(v37 + 52) = v38 - 1;
      ++*(v37 + 40);
      v39 = sub_2393DA87C(v29);
      v18 = HIDWORD(v39);
      v19 = v39;
      if (!v39)
      {
        v40 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          *&buf[4] = v47;
          _os_log_impl(&dword_238DAE000, v40, OS_LOG_TYPE_INFO, "Fetched %u events", buf, 8u);
        }

        if (sub_2393D5398(3u))
        {
          sub_2393D5320(0xDu, 3);
        }
      }
    }

    else
    {
      v19 = 11;
      v18 = 176;
    }
  }

  else
  {
    v19 = 3;
    v18 = 175;
  }

LABEL_10:
  if (a6)
  {
    *a6 = v46 | (v47 != 0);
  }

  if (v19 <= 0x19 && ((1 << v19) & 0x2000801) != 0 && (v46 & 1) == 0 && !v47)
  {
    v21 = *(a2 + 16);
    v22 = v42;
    v23 = v43;
    v24 = v45;
    v21[2] = v44;
    v21[3] = v24;
    *v21 = v22;
    v21[1] = v23;
    sub_2393D06DC(a2);
    v18 = 0;
    v19 = 0;
  }

  if (a5)
  {
    *a5 = v20;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v19 | (v18 << 32);
}

uint64_t sub_2394D495C(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  sub_2393C7B90(v31);
  v36[1] = 0;
  v36[2] = 0;
  v36[0] = &unk_284BB83A8;
  v37 = 0;
  sub_2394D60C8(&v30);
  v29 = 0;
  if (!a2)
  {
    v6 = 754;
    v7 = 47;
LABEL_20:
    sub_2393B8A0C(a2, 0);
    v11 = v7;
    goto LABEL_21;
  }

  if (!sub_2393BB864(a2))
  {
    v6 = 755;
LABEL_8:
    v7 = 3;
    goto LABEL_20;
  }

  v4 = sub_2393BB8B0(a2);
  sub_2393D9C18(v4, 0x26u, buf);
  v29 = *buf;
  if (!*buf)
  {
    v6 = 760;
LABEL_10:
    v7 = 11;
    goto LABEL_20;
  }

  if (sub_2393D980C(*buf) <= v4)
  {
    v5 = 16;
  }

  else
  {
    v5 = (sub_2393D980C(v29) - v4) + 16;
  }

  sub_238EA16C4(v36, &v29, 0);
  sub_2393C7BF0(v31, v36, 0xFFFFFFFF);
  sub_2393C7D60(v31, v5);
  v8 = sub_2393DD7B8(&v30, v31);
  if (v8)
  {
    v9 = 0;
    LOBYTE(v10) = 0;
    v6 = HIDWORD(v8);
    goto LABEL_19;
  }

  if (*(a2 + 169) == 1)
  {
    sub_2393DA83C(&v30, *(a2 + 8));
  }

  v8 = sub_2393C7D60(v31, 9u);
  if (v8 || (v28 = 0, v27 = 0, v8 = sub_2394D3580(a1, &v30, a2, &v28 + 1, &v27 + 1), v8))
  {
    v9 = 0;
    LOBYTE(v10) = 0;
    v6 = HIDWORD(v8);
    goto LABEL_19;
  }

  if (v35 != 21169)
  {
    v9 = 0;
    LOBYTE(v10) = 0;
    LODWORD(v8) = 3;
    v6 = 175;
    goto LABEL_19;
  }

  if (v34 < 3)
  {
    v9 = 0;
    LOBYTE(v10) = 0;
    LODWORD(v8) = 11;
    v6 = 176;
    goto LABEL_19;
  }

  v34 -= 3;
  v32 += 3;
  v8 = sub_2394D4504(a1, &v30, a2, SHIBYTE(v27), &v28, &v27);
  if (v8)
  {
    v9 = 0;
    LOBYTE(v10) = 0;
    v14 = HIDWORD(v8);
LABEL_30:
    v6 = v14;
    goto LABEL_19;
  }

  v10 = HIBYTE(v28) | v28;
  if ((v27 & 0x100) == 0 && (v27 & 1) == 0 && ((v10 ^ 1) & 1) == 0)
  {
    v15 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "No data actually encoded but hasMoreChunks flag is set, close read handler! (attribute too big?)", buf, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }

    v8 = sub_2393B9BE0(a2, 0x89u);
    v14 = HIDWORD(v8);
    v9 = v8 == 0;
    goto LABEL_30;
  }

  LODWORD(v8) = v30;
  if (v30)
  {
    v9 = 0;
    v6 = HIDWORD(v30);
    goto LABEL_19;
  }

  if (v35 != 21169)
  {
    v6 = 175;
    goto LABEL_8;
  }

  if (v34 < 6)
  {
    v6 = 176;
    goto LABEL_10;
  }

  v34 -= 6;
  v32 += 6;
  v16 = HIBYTE(v28) | v28;
  if (v10)
  {
    sub_2393DD394(&v30, 1);
  }

  else if (!*(a2 + 169))
  {
    sub_2393DC674(&v30, 1);
  }

  sub_2393DD3D4(&v30);
  if (v30)
  {
    sub_239536D34();
  }

  v8 = sub_238DD2EFC(v31, &v29);
  if (!v8)
  {
    v17 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v33;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_INFO, "<RE> Sending report (payload has %u bytes)...", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    ++*(a1 + 20);
    v18 = sub_2393BA1EC(a2, &v29, v10 & 1);
    v19 = v18;
    if (v18)
    {
      --*(a1 + 20);
    }

    v26 = HIDWORD(v18);
    if (v18)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v20 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_ERROR, "<RE> Error sending out report data with %s!", buf, 0xCu);
      }

      v7 = v19;
      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xDu, 1);
      }

      v6 = v26;
      goto LABEL_20;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v21 = *(a1 + 20);
      v22 = *(a1 + 24);
      v23 = "no more messages";
      if (v16)
      {
        v23 = "more messages";
      }

      *buf = 67109634;
      *&buf[4] = v21;
      *&buf[8] = 1024;
      *&buf[10] = v22;
      v39 = 2080;
      v40 = v23;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_INFO, "<RE> ReportsInFlight = %u with readHandler %u, RE has %s", buf, 0x18u);
    }

    if (sub_2393D5398(3u))
    {
      LOBYTE(v10) = v16;
      v25 = *(a1 + 24);
      v24 = *(a1 + 20);
      sub_2393D5320(0xDu, 3);
      v9 = 0;
    }

    else
    {
      v9 = 0;
      LOBYTE(v10) = v16;
    }

    v6 = v26;
    goto LABEL_72;
  }

  v9 = 0;
  v6 = HIDWORD(v8);
LABEL_19:
  v7 = v8;
  if (v8)
  {
    goto LABEL_20;
  }

LABEL_72:
  v7 = 0;
  if (!((*(a2 + 169) != 0) | v10 & 1) || v9)
  {
    goto LABEL_20;
  }

  v11 = 0;
LABEL_21:
  if (v29)
  {
    sub_2393D96C8(v29);
  }

  sub_2393B8400(v36);
  v12 = *MEMORY[0x277D85DE8];
  return v11 | (v6 << 32);
}

unint64_t sub_2394D4FF4(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  ++*(a1 + 20);
  result = sub_2393BA1EC(a2, a3, a4);
  if (result)
  {
    --*(a1 + 20);
  }

  return result;
}

uint64_t sub_2394D504C(uint64_t a1)
{
  v2 = *(a1 + 104);
  v3 = *(v2 + 1592);
  if (*(a1 + 20) > 3u || v3 == 0)
  {
    v5 = *(a1 + 24);
LABEL_16:
    if (v3 <= v5)
    {
      *(a1 + 24) = 0;
    }

    v14 = 1;
    v15 = &v14;
    result = sub_2393D6A10((v2 + 1608), &v15, sub_2394D6304);
    if (v14 == 1)
    {
      v12 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "All ReadHandler-s are clean, clear GlobalDirtySet", v13, 2u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0xDu, 3);
      }

      return sub_2393D6A10((a1 + 56), a1 + 40, sub_2394D61EC);
    }
  }

  else
  {
    v5 = *(a1 + 24);
    v6 = 1;
    while (1)
    {
      v7 = sub_2394C8378(*(a1 + 104), v5 % *(*(a1 + 104) + 1592));
      if (!v7)
      {
        sub_239536DCC();
      }

      if ((v8 = v7, v7[166] == 1) && (!v7[169] || (v7[168] & 2) != 0) || sub_2394D52E4(*(*(a1 + 104) + 1416), v7))
      {
        *(a1 + 32) = v8;
        result = sub_2394D495C(a1, v8);
        *(a1 + 32) = 0;
        if (result)
        {
          break;
        }
      }

      v10 = *(a1 + 20);
      v5 = *(a1 + 24) + 1;
      *(a1 + 24) = v5;
      if (v10 <= 3)
      {
        v11 = v6++;
        if (v3 > v11)
        {
          continue;
        }
      }

      v2 = *(a1 + 104);
      v3 = *(v2 + 1592);
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t sub_2394D51F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    LODWORD(v1) = 0;
    v2 = 0;
    return v2 | v1;
  }

  v4 = *(*(a1 + 104) + 88);
  if (!v4)
  {
    v2 = 0x37A00000000;
LABEL_11:
    LODWORD(v1) = 3;
    return v2 | v1;
  }

  v5 = *(v4 + 88);
  if (!v5)
  {
    v2 = 0x37F00000000;
    goto LABEL_11;
  }

  v6 = *(v5 + 24);
  if (!v6)
  {
    v2 = 0x38400000000;
    goto LABEL_11;
  }

  v1 = (*(*v6 + 80))(v6, sub_2394D5040, a1);
  if (v1)
  {
    v2 = v1 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v1) = 0;
    v2 = 0;
    *(a1 + 16) = 1;
  }

  return v2 | v1;
}

uint64_t sub_2394D52E4(uint64_t a1, uint64_t a2)
{
  v5 = (*(**(a1 + 72) + 40))(*(a1 + 72));
  v6 = 0;
  v7[0] = &v6;
  v7[1] = a2;
  sub_2393D6A10((a1 + 32), v7, sub_2394D61C4);
  result = v6;
  if (v6)
  {
    return sub_2394D6160(v6, &v5);
  }

  return result;
}

BOOL sub_2394D5370(uint64_t a1, uint64_t a2)
{
  v3[0] = a2;
  v3[1] = a1;
  return sub_2393D6A10((a1 + 56), v3, sub_2394D6330) == 1;
}

uint64_t sub_2394D53B4(uint64_t a1)
{
  v2 = 0;
  v3[0] = a1;
  v3[1] = &v2;
  sub_2393D6A10((a1 + 56), v3, sub_2394D63C4);
  return v2;
}

uint64_t sub_2394D53FC(uint64_t a1)
{
  v4[0] = a1;
  sub_2393D6A10((a1 + 56), v4, sub_2394D640C);
  v3 = 0;
  v4[0] = a1;
  v4[1] = &v3;
  sub_2393D6A10((a1 + 56), v4, sub_2394D63C4);
  return v3;
}

uint64_t sub_2394D5470(uint64_t a1)
{
  v4[0] = a1;
  sub_2393D6A10((a1 + 56), v4, sub_2394D64D4);
  v3 = 0;
  v4[0] = a1;
  v4[1] = &v3;
  sub_2393D6A10((a1 + 56), v4, sub_2394D63C4);
  return v3;
}

uint64_t sub_2394D54E4(unint64_t *a1, uint64_t a2)
{
  v10 = a2;
  v11 = a1;
  if (sub_2393D6A10(a1 + 7, &v10, sub_2394D6330) == 1 || (v10 = a2, v11 = a1, sub_2393D6A10(a1 + 7, &v10, sub_2394D6330) == 1))
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Cannot merge the new path into any existing path, create one.", &v10, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    v8 = sub_2394D567C(a1 + 5);
    if (v8)
    {
      v4 = 0;
      v5 = 0;
      v9 = *(a2 + 8);
      *v8 = *a2;
      v8[2] = v9;
      *(v8 + 2) = 0;
      *(v8 + 2) = a1[12];
    }

    else
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "mGlobalDirtySet pool full, cannot handle more entries!", &v10, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xDu, 1);
      }

      v5 = 0x44800000000;
      v4 = 11;
    }
  }

  return v5 | v4;
}

_DWORD *sub_2394D567C(unint64_t *a1)
{
  v2 = sub_2393D52C4(0x18uLL);
  v3 = v2;
  if (v2)
  {
    *v2 = -1;
    v2[2] = -1;
    *(v2 + 2) = 0;
    v4 = sub_2393D52C4(0x18uLL);
    if (v4)
    {
      *v4 = v3;
      v4[1] = a1 + 2;
      v4[2] = 0;
      v5 = a1[4];
      v4[2] = v5;
      *(v5 + 8) = v4;
      a1[4] = v4;
      v6 = a1[1];
      v7 = *a1 + 1;
      *a1 = v7;
      if (v7 > v6)
      {
        a1[1] = v7;
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

unint64_t sub_2394D5708(unint64_t *a1, uint64_t a2)
{
  v5 = a1[12];
  v4 = a1[13];
  a1[12] = v5 + 1;
  v12 = 0;
  v11 = sub_2394C9128(v4);
  v6 = a1[13];
  v13[0] = &v11;
  v13[1] = a2;
  v13[2] = &v12;
  sub_2393D6A10((v6 + 1608), v13, sub_2394D6598);
  if (v12 == 1)
  {
    v7 = sub_2394D54E4(a1, a2);
    v8 = v7 & 0xFFFFFFFF00000000;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2394D57C0(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 20);
  if (v2 == 4)
  {
    sub_2394D51F8(a1);
    v2 = *(a1 + 20);
  }

  else if (!v2)
  {
    sub_239536E64();
  }

  v3 = v2 - 1;
  *(a1 + 20) = v2 - 1;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    v9 = v3;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "<RE> OnReportConfirm: NumReports = %u", buf, 8u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    v7 = *(a1 + 20);
    result = sub_2393D5320(0xDu, 3);
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D58B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 104);
  v4 = a2;
  return sub_2393D6A10((v2 + 1608), &v4, sub_2394D661C);
}

unint64_t sub_2394D58F8(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v8 = a2;
  v4 = *(a1 + 104);
  *buf = &v8;
  sub_2393D6A10((v4 + 1608), buf, sub_2394D661C);
  if ((a2 - v8) < 0x201)
  {
    result = 0;
  }

  else
  {
    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = 512;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "<RE> Buffer overfilled CHIP_CONFIG_EVENT_LOGGING_BYTE_THRESHOLD %d, schedule engine run", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    result = sub_2394D51F8(a1);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394D5A18(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 104);
  if (!*(v3 + 1480))
  {
    return 0;
  }

  v11 = 0;
  *buf = a2;
  v13 = &v11;
  sub_2393D6A10((v3 + 1608), buf, sub_2394D6644);
  if (v11 == 1)
  {
    v6 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_INFO, "Urgent event will be sent once reporting is not blocked by the min interval", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    v7 = 0;
    v8 = 0;
  }

  else
  {
    v10 = sub_2394D58F8(a1, a3);
    v8 = v10 & 0xFFFFFFFF00000000;
    v7 = v10;
  }

  return v8 | v7;
}

uint64_t sub_2394D5B24(uint64_t a1, char *a2)
{
  v3 = *(a1 + 104);
  v4 = *a2;
  if (*a2)
  {
    v6[1] = a2[1];
  }

  v6[0] = v4;
  sub_2393D6A10((v3 + 1608), v6, sub_2394D66E0);
  return sub_2394D504C(a1);
}

unint64_t sub_2394D5B90(unint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_2394D5708(a1, a2);
  if (result)
  {
    v3 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v6 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Failed to set path dirty: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      result = sub_2393D5320(0xDu, 1);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394D5C88(void *a1)
{
  *a1 = &unk_284BBDB80;
  a1[1] = &unk_284BBDBB8;
  sub_2394786E4(a1 + 5);
  return a1;
}

void sub_2394D5CF0(void *a1)
{
  *a1 = &unk_284BBDB80;
  a1[1] = &unk_284BBDBB8;
  sub_2394786E4(a1 + 5);

  JUMPOUT(0x23EE77B60);
}

uint64_t *sub_2394D5D78(void *a1)
{
  *(a1 - 1) = &unk_284BBDB80;
  *a1 = &unk_284BBDBB8;
  return sub_2394786E4(a1 + 4);
}

void sub_2394D5DB8(void *a1)
{
  *(a1 - 1) = &unk_284BBDB80;
  *a1 = &unk_284BBDBB8;
  sub_2394786E4(a1 + 4);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394D5E38@<X0>(uint64_t a1@<X0>, __int16 *a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 2);
  v13 = *(a2 + 1);
  v14 = *a2;
  v15 = 1;
  v16 = v8;
  v17 = 1;
  v9 = sub_23949D748();
  result = sub_23949CFB0(v9, a1, &v13, a3);
  switch(result)
  {
    case 0xA8:
      if (*(a2 + 2) != 1)
      {
        v12 = 1437;
        goto LABEL_11;
      }

LABEL_8:
      *a4 = 0;
      *(a4 + 8) = 0;
      goto LABEL_12;
    case 0xA5:
      if ((a2[1] & 1) == 0)
      {
        v12 = 1406;
LABEL_11:
        *a4 = v12;
        *(a4 + 4) = 87;
        *(a4 + 8) = "src/app/reporting/Engine.cpp";
        goto LABEL_12;
      }

      goto LABEL_8;
    case 0:
      *a4 = 0;
      *(a4 + 16) = 0;
      return result;
  }

  *a4 = result;
  *(a4 + 8) = v11;
LABEL_12:
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_2394D5F14(unsigned __int16 *a1, int *a2, uint64_t a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = *a2;
  if (*a2 == 168 || v6 == 165)
  {
    v7 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = *a1;
      v9 = HIWORD(*(a1 + 1));
      v10 = *(a1 + 1);
      v11 = HIWORD(*(a1 + 2));
      v12 = *(a1 + 2);
      v13 = "ARL";
      *buf = 67110402;
      if (v6 == 165)
      {
        v13 = "ACL";
      }

      v21 = v8;
      v22 = 1024;
      v23 = v9;
      v24 = 1024;
      v25 = v10;
      v26 = 1024;
      v27 = v11;
      v28 = 1024;
      v29 = v12;
      v30 = 2080;
      v31 = v13;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Access to event (%u, 0x%04X_%04X, 0x%04X_%04X) denied by %s", buf, 0x2Au);
    }

    if (sub_2393D5398(3u))
    {
      *a2;
      v19 = *(a1 + 2);
      v18 = *(a1 + 1);
      v17 = *a1;
      sub_2393D5320(0x23u, 3);
    }

    if (*a2 == 165)
    {
      v14 = 126;
    }

    else
    {
      v14 = -99;
    }

    *a3 = v14;
    *(a3 + 1) = 0;
    result = 1;
  }

  else
  {
    result = 0;
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D60C8(uint64_t a1)
{
  sub_2393DB79C(a1);
  sub_2393DB79C(v2 + 32);
  sub_2393DB79C(a1 + 64);
  sub_2393DB79C(a1 + 96);
  sub_2393DB79C(a1 + 128);
  sub_2393DB79C(a1 + 160);
  sub_2393DB79C(a1 + 192);
  sub_2393DB79C(a1 + 224);
  sub_2393DB79C(a1 + 256);
  sub_2393DB79C(a1 + 288);
  sub_2393DB79C(a1 + 320);
  sub_2393DB79C(a1 + 352);
  sub_2393DB79C(a1 + 384);
  sub_2393DB79C(a1 + 416);
  sub_2393DB79C(a1 + 448);
  return a1;
}

uint64_t sub_2394D6160(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 166) != 1)
  {
    return 0;
  }

  if (*a2 < *(a1 + 24))
  {
    v3 = *(a1 + 40);
    return v3 & 1;
  }

  if (*(v2 + 16) <= *(v2 + 24) && (*(v2 + 168) & 0x10) == 0 && *a2 < *(a1 + 32))
  {
    v3 = *(a1 + 40);
    if ((v3 & 2) == 0)
    {
      return v3 & 1;
    }
  }

  return 1;
}

uint64_t sub_2394D61C4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != *(a1 + 8))
  {
    return 0;
  }

  **a1 = a2;
  return 1;
}

void sub_2394D6208(uint64_t a1, void *a2)
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

uint64_t sub_2394D6290(unsigned __int16 **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 8);
  if (v3 != 0xFFFF && v3 != **a1)
  {
    return 0;
  }

  if (*a2 != -1 && *a2 != *(v2 + 4))
  {
    return 0;
  }

  v6 = *(a2 + 4);
  v7 = *(v2 + 8);
  v8 = v6 == -1 || v6 == v7;
  if (!v8 || *(a2 + 16) <= *(*a1[1] + 24))
  {
    return 0;
  }

  v9 = a1[2];
  result = 1;
  *v9 = 1;
  return result;
}

uint64_t sub_2394D6304(_BYTE **a1, uint64_t a2)
{
  if (*(a2 + 16) <= *(a2 + 24) && (*(a2 + 168) & 0x10) == 0)
  {
    return 0;
  }

  **a1 = 0;
  return 1;
}

BOOL sub_2394D6330(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  if (sub_2394CB810(a2, *a1))
  {
    *(a2 + 16) = *(v4 + 96);
  }

  else
  {
    result = sub_2394CB810(*a1, a2);
    if (!result)
    {
      return result;
    }

    *(a2 + 16) = *(v4 + 96);
    *(a2 + 8) = *(*a1 + 8);
    *a2 = **a1;
    *(a2 + 10) = *(*a1 + 10);
    *(a2 + 4) = *(*a1 + 4);
  }

  return 1;
}

uint64_t sub_2394D63C4(uint64_t a1, void *a2)
{
  if (!a2[2])
  {
    sub_2394D6208(*a1 + 40, a2);
    **(a1 + 8) = 1;
  }

  return 0;
}

uint64_t sub_2394D640C(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  if (*a2 != -1 && *(a2 + 16))
  {
    v2 = *a1;
    v5 = &v4;
    sub_2393D6A10((v2 + 56), &v5, sub_2394D646C);
  }

  return 0;
}

uint64_t sub_2394D646C(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (v2 != a2 && *(a2 + 8) == *(v2 + 8) && *a2 == *v2)
  {
    v3 = *(a2 + 16);
    if (v3 > *(v2 + 16))
    {
      *(v2 + 16) = v3;
      v2 = **a1;
    }

    *(v2 + 4) = -1;
    *(v2 + 10) = -1;
    *(a2 + 16) = 0;
  }

  return 0;
}

uint64_t sub_2394D64D4(uint64_t *a1, uint64_t a2)
{
  v4 = a2;
  if (*(a2 + 8) != -1 && *(a2 + 16))
  {
    v2 = *a1;
    v5 = &v4;
    sub_2393D6A10((v2 + 56), &v5, sub_2394D6534);
  }

  return 0;
}

uint64_t sub_2394D6534(uint64_t **a1, uint64_t a2)
{
  v2 = **a1;
  if (v2 != a2 && *(a2 + 8) == *(v2 + 8))
  {
    v3 = *(a2 + 16);
    if (v3 > *(v2 + 16))
    {
      *(v2 + 16) = v3;
      v2 = **a1;
    }

    *v2 = -1;
    v4 = **a1;
    *(v4 + 4) = -1;
    *(v4 + 10) = -1;
    *(a2 + 16) = 0;
  }

  return 0;
}

uint64_t sub_2394D6598(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 166) - 1 <= 1)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      while (!sub_2393C07A0(v3, *(a1 + 8)))
      {
        v3 = *(v3 + 16);
        if (!v3)
        {
          return 0;
        }
      }

      sub_2393BB67C(a2, **a1, *(a1 + 8));
      **(a1 + 16) = 1;
    }
  }

  return 0;
}

uint64_t sub_2394D661C(unsigned int **a1, uint64_t a2)
{
  if (*(a2 + 169))
  {
    v2 = *(a2 + 152);
    if (v2 < **a1)
    {
      **a1 = v2;
    }
  }

  return 0;
}

uint64_t sub_2394D6644(unsigned __int16 **a1, uint64_t a2)
{
  if (*(a2 + 169))
  {
    v2 = *(a2 + 120);
    if (v2)
    {
      v3 = *a1;
      while (1)
      {
        v4 = *(v2 + 8);
        if ((v4 == 0xFFFF || v4 == **a1) && (*v2 == -1 || *v2 == *(v3 + 4)))
        {
          v7 = *(v2 + 4);
          v8 = v7 == -1 || v7 == *(v3 + 8);
          if (v8 && *(v2 + 10) == 1)
          {
            break;
          }
        }

        v2 = *(v2 + 16);
        if (!v2)
        {
          return 0;
        }
      }

      *a1[1] = 1;
      sub_2393BB8A4(a2);
    }
  }

  return 0;
}

uint64_t sub_2394D66E0(_BYTE *a1, uint64_t a2)
{
  if (*(a2 + 169))
  {
    if (*a1 != 1 || ((v3 = *sub_238DE36D8(a1), (v4 = sub_2393BB864(a2)) == 0) ? (v5 = 0) : (v5 = *(v4 + 24)), v3 == v5))
    {
      sub_2393BB8A4(a2);
    }
  }

  return 0;
}

unint64_t sub_2394D674C()
{
  v0 = sub_2394C7C20() + 1296;

  return sub_2394D51F8(v0);
}

double sub_2394D6778(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 40) = a1 + 32;
  *(a1 + 48) = a1 + 32;
  *(a1 + 72) = a2;
  *a1 = &unk_284BBDC40;
  *(a1 + 8) = &unk_284BBDCC8;
  if (!a2)
  {
    sub_239536EFC();
  }

  return result;
}

uint64_t sub_2394D67F8(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v11 = a2;
  v12 = 0;
  *buf = &v12;
  v14 = a2;
  sub_2393D6A10((a1 + 32), buf, sub_2394D61C4);
  if (v12)
  {
    sub_239536F94();
  }

  v12 = (*(**(a1 + 72) + 40))(*(a1 + 72));
  *buf = a1;
  v3 = sub_2394D6968((a1 + 16), &v11, buf, &v12);
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v3[3];
    v6 = v3[4];
    *buf = 67109888;
    *&buf[4] = HIDWORD(v5);
    LOWORD(v14) = 1024;
    *(&v14 + 2) = v5;
    HIWORD(v14) = 1024;
    v15 = HIDWORD(v6);
    v16 = 1024;
    v17 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Registered a ReadHandler that will schedule a report between system Timestamp: 0x%08X%08X and system Timestamp 0x%08X%08X.", buf, 0x1Au);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    v10 = HIDWORD(v3[4]);
    v9 = HIDWORD(v3[3]);
    result = sub_2393D5320(0xDu, 2);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394D6968(unint64_t *a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v8 = sub_2393D52C4(0x30uLL);
  v9 = v8;
  if (v8)
  {
    sub_2394D71CC(v8, *a2, *a3, a4);
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

uint64_t sub_2394D6A14(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6[0] = &v5;
  v6[1] = a2;
  result = sub_2393D6A10((a1 + 32), v6, sub_2394D61C4);
  v4 = v5;
  if (v5)
  {
    v6[0] = (*(**(a1 + 72) + 40))(*(a1 + 72));
    (*(*a1 + 112))(a1, &v5, v4, v6);
    return (*(*a1 + 96))(a1, v5, v4, v6);
  }

  return result;
}

uint64_t sub_2394D6B00(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10[0] = &v9;
  v10[1] = a2;
  result = sub_2393D6A10((a1 + 32), v10, sub_2394D61C4);
  v5 = v9;
  if (v9)
  {
    v6 = (*(**(a1 + 72) + 40))(*(a1 + 72));
    v10[0] = v6;
    v7 = *(v5 + 40);
    *(v5 + 40) = v7 & 0xFD;
    v8 = v6 + 1000 * *(a2 + 162);
    *(v5 + 24) = v6 + 1000 * *(a2 + 160);
    *(v5 + 32) = v8;
    *(v5 + 40) = v7 & 0xFC;
    (*(*a1 + 112))(a1, &v9, v5, v10);
    return (*(*a1 + 96))(a1, v9, v5, v10);
  }

  return result;
}

void sub_2394D6C24(uint64_t a1, uint64_t a2)
{
  sub_2394D6C8C(a1, a2);
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a2;
  sub_2393D6A10((a1 + 32), v5, sub_2394D61C4);
  if (v4)
  {
    sub_2394D6D0C(a1 + 16, v4);
  }
}

uint64_t sub_2394D6C8C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a2;
  result = sub_2393D6A10((a1 + 32), v5, sub_2394D61C4);
  if (v4)
  {
    return (*(**(a1 + 72) + 24))(*(a1 + 72));
  }

  return result;
}

void sub_2394D6D0C(uint64_t a1, void (***a2)(void))
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

unint64_t sub_2394D6DBC(uint64_t a1, int a2, uint64_t a3)
{
  (*(**(a1 + 72) + 24))(*(a1 + 72), a3);
  if (a2)
  {
    v6 = (*(**(a1 + 72) + 16))(*(a1 + 72), a3);
    v7 = v6 & 0xFFFFFFFF00000000;
    if (v6)
    {
      v8 = v6;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    (*(*a3 + 16))(a3);
    v7 = 0;
    v8 = 0;
  }

  return v8 | v7;
}

uint64_t sub_2394D6EDC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5[0] = &v4;
  v5[1] = a2;
  sub_2393D6A10((a1 + 32), v5, sub_2394D61C4);
  if (v4)
  {
    return (*(**(a1 + 72) + 32))(*(a1 + 72));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394D6F64(uint64_t a1, _DWORD *a2, uint64_t a3, unint64_t *a4)
{
  v8 = *(a3 + 8);
  v14 = 0;
  v15[0] = &v14;
  v15[1] = v8;
  sub_2393D6A10((a1 + 32), v15, sub_2394D61C4);
  if (!v14)
  {
    return 0x9B0000002FLL;
  }

  if (sub_2394D6160(a3, a4))
  {
    v9 = 0;
  }

  else
  {
    v11 = sub_2394D703C(a1, *(a3 + 8));
    v12 = *a4;
    if (v11 && (v13 = *(a3 + 24), v13 > v12))
    {
      v9 = v13 - v12;
    }

    else
    {
      v9 = *(a3 + 32) - v12;
    }
  }

  result = 0;
  *a2 = v9;
  return result;
}

uint64_t sub_2394D703C(uint64_t a1, uint64_t a2)
{
  if (!a2 || *(a2 + 166) != 1)
  {
    return 0;
  }

  if (!*(a2 + 169))
  {
    return 1;
  }

  v2 = *(a2 + 168);
  if ((v2 & 2) != 0)
  {
    return 1;
  }

  v3 = (v2 >> 4) & 1;
  if (*(a2 + 16) <= *(a2 + 24))
  {
    return v3;
  }

  else
  {
    return 1;
  }
}

void sub_2394D7088(void *a1)
{
  sub_2394D7104(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394D70C8(uint64_t a1)
{
  sub_2394D7104((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394D7104(void *a1)
{
  *a1 = &unk_284BBDC40;
  a1[1] = &unk_284BBDCC8;
  v3 = a1;
  sub_2393D6A10(a1 + 4, &v3, sub_2394D7284);
  *a1 = &unk_284BBDD78;
  a1[1] = &unk_284BBDDC0;
  sub_239475668(a1 + 2);
  return a1;
}

uint64_t sub_2394D71CC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  *result = &unk_284BBDE00;
  *(result + 16) = a3;
  *(result + 40) = 0;
  if (!a2)
  {
    sub_2395370C4();
  }

  if (!a3)
  {
    sub_23953702C();
  }

  *(result + 8) = a2;
  v4 = *(a2 + 162);
  *(result + 24) = *a4 + 1000 * *(a2 + 160);
  *(result + 32) = *a4 + 1000 * v4;
  return result;
}

uint64_t sub_2394D72C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *a1 = &unk_284BBDE50;
  *(a1 + 8) = 0;
  *(a1 + 16) = &unk_284BAA120;
  *(a1 + 24) = a1;
  *(a1 + 32) = 0;
  *(a1 + 40) = a4;
  *(a1 + 48) = 16842752;
  *(a1 + 52) = 0;
  *(a1 + 54) = 0;
  *(a1 + 60) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 1;
  *(a1 + 112) = a1 + 112;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1;
  *(a1 + 144) = sub_2394D7438;
  *(a1 + 152) = a1 + 152;
  *(a1 + 160) = a1 + 152;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1;
  *(a1 + 184) = sub_2394D7540;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = &unk_284BBBF18;
  *(a1 + 232) = 0;
  *(a1 + 296) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 312) = 0;
  *(a1 + 321) = 1;
  *(a1 + 323) = 0;
  *(a1 + 344) = 0;
  *(a1 + 336) = 0;
  *(a1 + 328) = 0;
  sub_23947632C("src/app/ReadClient.cpp", 53);
  *(a1 + 8) = a3;
  *(a1 + 80) = a5;
  *(a1 + 200) = a2;
  if (a5 == 1)
  {
    sub_2394CB0E4(a2, a1);
  }

  return a1;
}

uint64_t sub_2394D7438(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    sub_23953715C();
  }

  v6 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "HandleDeviceConnected", v9, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xDu, 2);
  }

  sub_239495C6C((a1 + 208), a3);
  *(a1 + 8) = a2;
  (*(**(a1 + 40) + 120))(*(a1 + 40), a3, a1 + 208);
  result = sub_2394D8640(a1, a1 + 208);
  if (result)
  {
    return sub_2394D7E80(a1, result, v8, 1);
  }

  return result;
}

uint64_t sub_2394D7540(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    sub_2395371F4();
  }

  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    *buf = 136315138;
    v15 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to establish CASE for re-subscription with error '%s'", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 24);
    sub_2393C9138();
    sub_2393D5320(0xDu, 1);
  }

  if (*(a2 + 34) == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v9 = *sub_238EAF004((a2 + 34));
      *buf = 67109120;
      LODWORD(v15) = v9;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "Will delay resubscription by %u ms due to BUSY response", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v13 = *sub_238EAF004((a2 + 34));
      sub_2393D5320(0xDu, 3);
    }
  }

  if (*(a2 + 34) == 1)
  {
    v10 = *sub_238EAF004((a2 + 34));
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 106) = v10;
  result = sub_2394D7E80(a1, *(a2 + 16), *(a2 + 24), 1);
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D76F8(uint64_t a1)
{
  *(a1 + 49) = 0;
  *(a1 + 51) = 1;
  *(a1 + 54) = 0;
  *(a1 + 60) = 0;
  *(a1 + 105) = 0;
  return sub_2394D7718(a1, 0);
}

uint64_t sub_2394D7718(uint64_t a1, unsigned int a2)
{
  v18 = *MEMORY[0x277D85DE8];
  *(a1 + 48) = a2;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 4)
    {
      v5 = "N/A";
    }

    else
    {
      v5 = off_278A83138[a2];
    }

    *buf = 136315906;
    v11 = "MoveToState";
    v12 = 2048;
    v13 = a1;
    v14 = 1040;
    v15 = 10;
    v16 = 2080;
    v17 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "%s ReadClient[%p]: Moving to [%10.10s]", buf, 0x26u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    v7 = *(a1 + 48);
    if (v7 <= 4)
    {
      v8 = off_278A83138[v7];
    }

    result = sub_2393D5320(0xDu, 3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

double sub_2394D7864(uint64_t a1)
{
  v2 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  (*(*v2 + 72))(v2, sub_2394DA91C, a1);
  v3 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  (*(*v3 + 72))(v3, sub_2394D7D00, a1);
  *(a1 + 105) = 0;
  if (*(a1 + 264) || *(a1 + 248) || *(a1 + 280))
  {
    (*(**(a1 + 40) + 88))(*(a1 + 40), a1 + 208);
    result = 0.0;
    *(a1 + 248) = 0u;
    v5 = a1 + 248;
    *(v5 + 16) = 0u;
    *(v5 + 32) = 0u;
  }

  return result;
}

uint64_t sub_2394D7968()
{
  v0 = *(**(*(*(sub_2394C7C20() + 11) + 88) + 24) + 72);

  return v0();
}

uint64_t sub_2394D79DC(uint64_t a1)
{
  v2 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
  result = (*(*v2 + 72))(v2, sub_2394D7D00, a1);
  *(a1 + 105) = 0;
  return result;
}

uint64_t sub_2394D7A48(uint64_t a1)
{
  *a1 = &unk_284BBDE50;
  sub_23947632C("src/app/ReadClient.cpp", 101);
  if (*(a1 + 80) == 1)
  {
    sub_2394D7864(a1);
    v2 = *(a1 + 200);
    if (v2)
    {
      sub_2394CB3D8(v2, a1);
    }
  }

  sub_239495880(a1 + 208);
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 168) = 0;
    v3(a1 + 152);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 128) = 0;
    v4(a1 + 112);
  }

  *(a1 + 16) = &unk_284BAA120;
  sub_238EF9EEC(a1 + 16);
  return a1;
}

void sub_2394D7B14(uint64_t a1)
{
  sub_2394D7A48(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394D7B4C(uint64_t a1)
{
  v2 = *(a1 + 328);
  if (v2 > 0xE)
  {
    v3 = 5538000;
  }

  else
  {
    v3 = 10000 * sub_2393D64AC(v2);
    if (!v3)
    {
      v4 = 0;
      goto LABEL_6;
    }
  }

  v4 = 30 * v3 / 0x64u + sub_2393F56E0() % (v3 - 30 * v3 / 0x64u);
LABEL_6:
  if (v4 <= *(a1 + 106))
  {
    return *(a1 + 106);
  }

  else
  {
    return v4;
  }
}

unint64_t sub_2394D7BD8(uint64_t a1, unsigned int a2, char *a3, int a4)
{
  if (*(a1 + 48))
  {
    v4 = 0x9600000000;
    LODWORD(v5) = 3;
  }

  else
  {
    v6 = a4;
    v9 = *a3;
    if (a4)
    {
      if (*a3)
      {
        v4 = 0x9B00000000;
        LODWORD(v5) = 47;
        return v5 | v4;
      }

      v13 = (a1 + 232);
      v14 = *(a1 + 232);
      *(a1 + 104) = a4;
      if (v14 == 1)
      {
        v15 = sub_238DE36B8(v13);
        v16 = sub_239495304(*v15);
        sub_239493108(v16);
      }
    }

    else
    {
      if (*a3)
      {
        v10 = sub_238EA9094(a3);
        sub_239495C6C((a1 + 208), v10);
      }

      *(a1 + 104) = v6;
    }

    v11 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
    v5 = (*(*v11 + 40))(v11, a2, sub_2394D7D00, a1);
    if (v5)
    {
      v4 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v4 = 0;
      LODWORD(v5) = 0;
      *(a1 + 105) = 1;
    }
  }

  return v5 | v4;
}

uint64_t sub_2394D7D00(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    sub_23953728C();
  }

  *(a2 + 105) = 0;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 104);
    *buf = 67109120;
    v16 = v4;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_DEFAULT, "OnResubscribeTimerCallback: ForceCASE = %d", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v14 = *(a2 + 104);
    sub_2393D5320(0xDu, 2);
  }

  v5 = *(a2 + 232);
  ++*(a2 + 328);
  if (v5 == 1 && (v6 = sub_238DE36B8((a2 + 232)), v7 = sub_239495304(*v6), ((*(*v7 + 40))(v7) & 1) != 0))
  {
    result = sub_2394D8640(a2, a2 + 208);
    v10 = result;
    if (result)
    {
      v11 = v9;
      v12 = 1;
LABEL_12:
      result = sub_2394D7E80(a2, v10, v11, v12 & 1);
    }
  }

  else
  {
    result = sub_2394DABEC(a2);
    if (result)
    {
      v12 = *(a2 + 104) ^ 1;
      v10 = 0x57500000003;
      v11 = "src/app/ReadClient.cpp";
      goto LABEL_12;
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D7E80(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a3;
  v5 = a2;
  if (!*(a1 + 80))
  {
    if (a2)
    {
      (*(**(a1 + 40) + 72))(*(a1 + 40), a2, a3);
    }

    goto LABEL_21;
  }

  if (*(a1 + 48) - 1 <= 1)
  {
    v11 = 1;
    v12 = "core_dev_subscription_setup";
    v13 = a2;
    v14 = 3;
    sub_23948BD20(&v11);
  }

  *(a1 + 49) = 0;
  *(a1 + 51) = 1;
  *(a1 + 54) = 0;
  *(a1 + 60) = 0;
  *(a1 + 105) = 0;
  sub_2394D7718(a1, 0);
  if (!v5)
  {
LABEL_20:
    sub_2394D7864(a1);
LABEL_21:
    sub_238EF9EEC(a1 + 16);
    return (*(**(a1 + 40) + 80))(*(a1 + 40), a1);
  }

  if (!a4 || !*(a1 + 256) && !*(a1 + 272))
  {
LABEL_19:
    (*(**(a1 + 40) + 72))(*(a1 + 40), v5, v4);
    goto LABEL_20;
  }

  result = (*(**(a1 + 40) + 64))(*(a1 + 40), a1, v5, v4);
  if (!result)
  {
    return result;
  }

  if (result != 22)
  {
    v4 = v9;
    v5 = result;
    goto LABEL_19;
  }

  if (v5 != 22)
  {
    sub_239537324();
  }

  v10 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "ICD device is inactive mark subscription as InactiveICDSubscription", &v11, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(0xDu, 2);
  }

  return sub_2394D7718(a1, 4u);
}

const char *sub_2394D80A0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 > 4)
  {
    return "N/A";
  }

  else
  {
    return off_278A83138[v1];
  }
}

unint64_t sub_2394D80C8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) == 1)
  {
    v2 = sub_2394D8640(a1, a2);
  }

  else
  {
    if (*(a1 + 80))
    {
      v3 = 0x11400000000;
      LODWORD(v2) = 47;
      return v2 | v3;
    }

    v2 = sub_2394D8118(a1, a2);
  }

  v3 = v2 & 0xFFFFFFFF00000000;
  return v2 | v3;
}

uint64_t sub_2394D8118(uint64_t a1, uint64_t a2)
{
  v63[5] = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    *&buf[4] = "SendReadRequest";
    v53 = 2048;
    *v54 = a1;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "%s ReadClient[%p]: Sending Read Request", buf, 0x16u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0xDu, 3);
  }

  if (*(a1 + 48))
  {
    result = 0x11D00000003;
    goto LABEL_18;
  }

  sub_238DB9BD8(&v50, *(a2 + 56), *(a2 + 64));
  sub_2394DB5F0(v49, *(a2 + 40), *(a2 + 48));
  sub_2394DB5F0(v48, *(a2 + 72), *(a2 + 80));
  v47 = 0;
  sub_2393DB79C(buf);
  sub_2393DB79C(&v55);
  sub_2393DB79C(&v56);
  sub_2393DB79C(&v57);
  sub_2393DB79C(&v58);
  sub_2393DB79C(&v59);
  sub_2393DB79C(&v60);
  sub_2393DB79C(&v61);
  sub_2393DB79C(&v62);
  sub_2393DB79C(v63);
  sub_2393C7B90(v44);
  v45[1] = 0;
  v45[2] = 0;
  v45[0] = &unk_284BB83A8;
  v46 = 0;
  sub_2394D86E0(v44);
  v6 = sub_2393DD7B8(buf, v44);
  if (v6)
  {
    goto LABEL_14;
  }

  if (v51)
  {
    v7 = sub_2393DD294(buf);
    v6 = *buf;
    if (*buf)
    {
      goto LABEL_14;
    }

    v6 = sub_2394D8780(*buf, v7, &v50);
    if (v6)
    {
      goto LABEL_14;
    }
  }

  if (v49[1])
  {
    v8 = sub_2393DD314(buf);
    v6 = *buf;
    if (*buf)
    {
      goto LABEL_14;
    }

    v6 = sub_2394D8858(*buf, v8, v49);
    if (v6)
    {
      goto LABEL_14;
    }

    LOBYTE(v39) = 0;
    v6 = sub_2394D8930(a1, a2, &v39);
    if (v6)
    {
      goto LABEL_14;
    }

    if (v39 == 1)
    {
      v12 = sub_2393DD354(buf);
      v6 = *buf;
      if (*buf)
      {
        goto LABEL_14;
      }

      v13 = sub_239289A18(&v39);
      v6 = sub_2393DC3F4(v12, *v13);
      if (v6)
      {
        goto LABEL_14;
      }
    }
  }

  v14 = sub_2393DD394(buf, *(a2 + 113));
  v6 = *v14;
  if (!*v14)
  {
    v43 = 0;
    sub_2393C7B90(&v39);
    v16 = *(*&v54[2] + 48);
    v18 = **&v54[2];
    v17 = *(*&v54[2] + 16);
    v41 = *(*&v54[2] + 32);
    v42 = v16;
    v39 = v18;
    v40 = v17;
    v19 = sub_2393DD2D4(buf);
    v6 = *buf;
    if (*buf)
    {
      goto LABEL_14;
    }

    if (v51)
    {
      v6 = sub_2394D8A00(a1, v19, &v50, v48, &v43);
      if (v6)
      {
        goto LABEL_14;
      }
    }

    v20 = v19[2];
    if (*(v20 + 60) != 21169)
    {
      v6 = 0xAF00000000;
      v9 = 3;
      goto LABEL_15;
    }

    v21 = *(v20 + 52);
    v22 = v21 >= 5;
    v23 = v21 - 5;
    if (v22)
    {
      *(v20 + 52) = v23;
      *(v20 + 40) += 5;
      if (v43 == 1)
      {
        v6 = sub_2393DA87C(v19);
        if (v6)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v24 = *&v54[2];
        v25 = v39;
        v26 = v40;
        v27 = v42;
        *(*&v54[2] + 32) = v41;
        v24[3] = v27;
        *v24 = v25;
        v24[1] = v26;
        sub_2393D06DC(buf);
      }

      v6 = sub_2393DD3D4(buf);
      if (v6)
      {
        goto LABEL_14;
      }

      v6 = sub_238DD2EFC(v44, &v47);
      if (v6)
      {
        goto LABEL_14;
      }

      if (*(a2 + 24) != 1)
      {
        v6 = 0x15D00000000;
        v9 = 119;
        goto LABEL_15;
      }

      v28 = *(a1 + 8);
      sub_238EA903C(a2, &v37);
      v29 = sub_238DE36B8(&v37);
      v30 = sub_239471E34(v28, v29, a1, 1u);
      if (v37 == 1)
      {
        (*(*v38 + 32))(v38);
      }

      if (v30)
      {
        sub_238EF9EEC(a1 + 16);
        *(a1 + 32) = v30;
        v30[5] = a1 + 16;
        v31 = *(a2 + 104);
        v32 = sub_2393B59AC(a1 + 16);
        if (v31)
        {
          sub_239470470(v32, *(a2 + 104));
        }

        else
        {
          sub_239470428(v32, 2000);
        }

        v33 = sub_2393B59AC(a1 + 16);
        v37 = 1;
        v6 = sub_239470478(v33, 0x10000u, 2, &v47, &v37);
        if (!v6)
        {
          v34 = sub_238DE36B8((a2 + 24));
          v35 = sub_239495304(*v34);
          *(a1 + 64) = (*(*v35 + 48))(v35);
          *(a1 + 72) = v36;
          sub_2394D7718(a1, 1u);
          v6 = 0;
          v9 = 0;
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v6 = 0x16000000000;
    }

    else
    {
      v6 = 0xB000000000;
    }

    v9 = 11;
    goto LABEL_15;
  }

  v15 = v14[1];
LABEL_14:
  v9 = v6;
LABEL_15:
  v10 = v6 & 0xFFFFFFFF00000000;
  sub_2393B8400(v45);
  if (v47)
  {
    sub_2393D96C8(v47);
  }

  result = v9 | v10;
LABEL_18:
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D8640(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 108) <= *(a2 + 110))
  {
    v4 = sub_2394DACC0(a1, a2);
    v5 = v4;
    v3 = HIDWORD(v4);
    if (v4)
    {
      v7 = 1;
      v8 = "core_dev_subscription_setup";
      v9 = v4;
      v10 = 3;
      sub_23948BD20(&v7);
      v2 = v5;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 47;
    v3 = 1166;
  }

  return v2 | (v3 << 32);
}

void sub_2394D86E0(uint64_t a1)
{
  sub_2393D9C18(0x4AAuLL, 0x26u, &v3);
  if (v3)
  {
    if (sub_2393D980C(v3) < 0x4AB)
    {
      v2 = 21;
    }

    else
    {
      v2 = (sub_2393D980C(v3) - 1173);
    }

    sub_238EA16C4(a1 + 64, &v3, 0);
    sub_2393C7BF0(a1, a1 + 64, 0xFFFFFFFF);
    sub_2393C7D60(a1, v2);
    if (v3)
    {
      sub_2393D96C8(v3);
    }
  }
}

unint64_t sub_2394D8780(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  if (v4)
  {
    v5 = *a3;
    v6 = 12 * v4;
    LODWORD(v7) = 181;
    while (*(v5 + 10) == -1 || *(v5 + 4) != -1)
    {
      v8 = sub_2393DB400(a2);
      if (*a2)
      {
        v12 = a2[1];
        v11 = *a2 & 0xFFFFFFFF00000000;
        v7 = *a2;
        return v11 | v7;
      }

      v9 = sub_2393DB028(v8, v5);
      if (v9)
      {
        v11 = v9 & 0xFFFFFFFF00000000;
        LODWORD(v7) = v9;
        return v11 | v7;
      }

      v5 += 12;
      v6 -= 12;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v11 = 0x18800000000;
  }

  else
  {
LABEL_8:
    v10 = sub_2393DA87C(a2);
    LODWORD(v7) = v10;
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  return v11 | v7;
}

unint64_t sub_2394D8858(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (v4)
  {
    v5 = *a3;
    v6 = 12 * v4;
    LODWORD(v7) = 182;
    while (*v5 != -1 || v5[1] == -1)
    {
      v8 = sub_2393DB400(a2);
      if (*a2)
      {
        v12 = a2[1];
        v11 = *a2 & 0xFFFFFFFF00000000;
        v7 = *a2;
        return v11 | v7;
      }

      v9 = sub_2393DC6B4(v8, v5);
      if (v9)
      {
        v11 = v9 & 0xFFFFFFFF00000000;
        LODWORD(v7) = v9;
        return v11 | v7;
      }

      v5 += 3;
      v6 -= 12;
      if (!v6)
      {
        goto LABEL_8;
      }
    }

    v11 = 0x17A00000000;
  }

  else
  {
LABEL_8:
    v10 = sub_2393DA87C(a2);
    LODWORD(v7) = v10;
    v11 = v10 & 0xFFFFFFFF00000000;
  }

  return v11 | v7;
}

unint64_t sub_2394D8930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 88) == 1)
  {
    v4 = 0;
    LODWORD(v5) = 0;
    *a3 = 1;
    v6 = *(a2 + 96);
  }

  else
  {
    v5 = (*(**(a1 + 40) + 104))(*(a1 + 40), a3);
    if (v5)
    {
      v4 = v5 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    if (*a3 != 1)
    {
      v4 = 0;
      LODWORD(v5) = 0;
      return v5 | v4;
    }

    v7 = sub_239289A18(a3);
    v4 = 0;
    LODWORD(v5) = 0;
    v6 = *v7 + 1;
    *a3 = 1;
  }

  *(a3 + 8) = v6;
  return v5 | v4;
}

unint64_t sub_2394D8A00(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, _BYTE *a5)
{
  v9 = (*(**(a1 + 40) + 96))(*(a1 + 40), a2, a3, a5);
  if (v9 || (*a5 & 1) == 0 && (v9 = sub_2394D8AA0(v9, a2, a3, a4, a5), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v9) = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_2394D8AA0(uint64_t a1, unint64_t *a2, void *a3, uint64_t *a4, _BYTE *a5)
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a4[1];
  if (!v6)
  {
    v11 = 0;
    v10 = 0;
LABEL_25:
    v31 = 0;
LABEL_26:
    v32 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = a4[1];
      *buf = 134218752;
      *&buf[4] = v33;
      *&buf[12] = 2048;
      *&buf[14] = v11;
      *&buf[22] = 2048;
      *&buf[24] = v10;
      LOWORD(v42) = 2048;
      *(&v42 + 2) = v31;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_DEFAULT, "%lu data version filters provided, %lu not relevant, %lu encoded, %lu skipped due to lack of space", buf, 0x2Au);
    }

    if (sub_2393D5398(2u))
    {
      v40 = a4[1];
      sub_2393D5320(0xDu, 2);
    }

    v30 = 0;
    v14 = 0;
    goto LABEL_31;
  }

  v10 = 0;
  v11 = 0;
  v12 = *a4;
  v13 = *a4 + 16 * v6;
  v14 = 47;
  while (1)
  {
    v15 = *(v12 + 12);
    if (v15 == 0xFFFF || *v12 == -1 || *(v12 + 4) != 1)
    {
      v30 = 0x19D00000000;
      goto LABEL_31;
    }

    v16 = a3[1];
    if (v16)
    {
      break;
    }

LABEL_18:
    ++v11;
LABEL_19:
    v12 += 16;
    if (v12 == v13)
    {
      goto LABEL_25;
    }
  }

  v17 = 12 * v16;
  v18 = *a3 + 8;
  v19 = v18;
  while (1)
  {
    v21 = *v19;
    v19 += 6;
    v20 = v21;
    if (v21 == 0xFFFF || v20 == v15)
    {
      v23 = *(v18 - 8);
      if (v23 == -1 || v23 == *v12)
      {
        break;
      }
    }

    v18 = v19;
    v17 -= 12;
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  sub_2393C7B90(buf);
  v25 = a2[2];
  v26 = v25[3];
  v28 = *v25;
  v27 = v25[1];
  v42 = v25[2];
  v43 = v26;
  *buf = v28;
  *&buf[16] = v27;
  v29 = sub_2393DBCB0(a2, v12);
  if (!v29)
  {
    ++v10;
    *a5 = 1;
    goto LABEL_19;
  }

  if (v29 == 25 || v29 == 11)
  {
    v36 = a2[2];
    v37 = *buf;
    v38 = *&buf[16];
    v39 = v43;
    v36[2] = v42;
    v36[3] = v39;
    *v36 = v37;
    v36[1] = v38;
    sub_2393D06DC(a2);
    v31 = a4[1] - ((v12 - *a4) >> 4);
    goto LABEL_26;
  }

  v30 = v29 & 0xFFFFFFFF00000000;
  v14 = v29;
LABEL_31:
  v34 = *MEMORY[0x277D85DE8];
  return v14 | v30;
}

uint64_t sub_2394D8D08(uint64_t a1)
{
  result = sub_2394CB44C(*(a1 + 200), a1);
  if ((result & 1) == 0)
  {
    sub_2395373BC();
  }

  if (*(a1 + 256) || *(a1 + 272))
  {
    if (*(a1 + 48) == 4)
    {

      return sub_2394D8DEC(a1, 0x1F100000032, "src/app/ReadClient.cpp");
    }

    else if (*(a1 + 105))
    {

      return sub_2394D8E90(a1, "check-in message");
    }

    else
    {

      return sub_2394D7E80(a1, 0x1FD00000032, "src/app/ReadClient.cpp", 1);
    }
  }

  return result;
}

uint64_t sub_2394D8DEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a1 + 232);
  v6 = (a1 + 232);
  if (v7 == 1)
  {
    v8 = sub_238DE36B8(v6);
    v9 = *(sub_239495304(*v8) + 136);
    v10 = *(*(*(a1 + 200) + 88) + 88);
    v12 = &v13;
    v13 = v9;
    v14[0] = a1 + 64;
    v14[1] = &v12;
    sub_2393D6A10((v10 + 128), v14, sub_2394DB610);
  }

  return sub_2394D7E80(a1, a2, a3, 1);
}

uint64_t sub_2394D8E90(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 105);
  if (v2 == 1)
  {
    v5 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 134218242;
      v11 = a1;
      v12 = 2080;
      v13 = a2;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "ReadClient[%p] triggering resubscribe, reason: %s", buf, 0x16u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    v6 = *(*(*(sub_2394C7C20() + 11) + 88) + 24);
    v7 = (*(*v6 + 72))(v6, sub_2394D7D00, a1);
    *(a1 + 105) = 0;
    sub_2394D7D00(v7, a1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

uint64_t sub_2394D8FD0(uint64_t a1, int a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!sub_2394CB44C(*(a1 + 200), a1))
  {
    sub_239537454();
  }

  *(a1 + 336) = a2 == 1;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 == 1)
    {
      v5 = "a";
    }

    else
    {
      v5 = "not a";
    }

    *buf = 136315138;
    v9 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Peer is now %s LIT ICD.", buf, 0xCu);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    *(a1 + 336);
    result = sub_2393D5320(0xDu, 2);
  }

  if ((*(a1 + 336) & 1) == 0 && *(a1 + 48) == 4)
  {
    result = sub_2394D8DEC(a1, 0x21200000032, "src/app/ReadClient.cpp");
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394D9118(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if ((*(a1 + 48) | 4) == 4)
  {
    v6 = 0x80;
    v7 = 539;
    v8 = 3;
LABEL_5:
    v9 = "src/app/ReadClient.cpp";
LABEL_6:
    sub_2394DEE10(v6, a2, 0);
    goto LABEL_7;
  }

  if (*(a3 + 2))
  {
    v6 = 0x80;
    v7 = 562;
    v8 = 42;
    goto LABEL_5;
  }

  v13 = *(a3 + 3);
  v14 = *a3;
  if (v13 == 1 && v14 == 5)
  {
    v15 = sub_2394D9384(a1, a4);
    v9 = v16;
    v7 = HIDWORD(v15);
  }

  else if (v13 == 1 && v14 == 4)
  {
    v17 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_238DAE000, v17, OS_LOG_TYPE_DEFAULT, "SubscribeResponse is received", &v21, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    v8 = 3;
    if (*(a1 + 32) != a2)
    {
      v6 = 0x80;
      v7 = 548;
      goto LABEL_5;
    }

    v18 = sub_2394D9680(a1, a4);
    v9 = v19;
    LODWORD(v21) = 1;
    v22 = "core_dev_subscription_setup";
    v7 = HIDWORD(v18);
    v23 = v18;
    v24 = 3;
    sub_23948BD20(&v21);
    LODWORD(v15) = v18;
  }

  else
  {
    v6 = 0x80;
    v7 = 562;
    v9 = "src/app/ReadClient.cpp";
    v8 = 42;
    if (v13 != 1 || v14 != 1)
    {
      goto LABEL_6;
    }

    if (*(a1 + 32) != a2)
    {
      v6 = 0x80;
      v7 = 554;
      v8 = 3;
      goto LABEL_6;
    }

    v21 = 0;
    v22 = 0;
    v15 = sub_2394DEFB4(a4, &v21);
    if (v15)
    {
      v9 = v20;
      v7 = HIDWORD(v15);
    }

    else
    {
      LODWORD(v15) = v21;
      if (v21)
      {
        v7 = HIDWORD(v21);
        v9 = v22;
      }

      else
      {
        LODWORD(v15) = 42;
        v7 = 558;
      }
    }
  }

  if (v15)
  {
    if (v15 == 107)
    {
      v6 = 125;
    }

    else
    {
      v6 = 0x80;
    }

    v8 = v15;
    goto LABEL_6;
  }

  if (*(a1 + 80) == 1)
  {
    v10 = 0;
    return v10 | (v7 << 32);
  }

  v8 = 0;
  v10 = 0;
  if (*(a1 + 52))
  {
    return v10 | (v7 << 32);
  }

LABEL_7:
  sub_2394D7E80(a1, v8 | (v7 << 32), v9, 1);
  v10 = v8;
  return v10 | (v7 << 32);
}

unint64_t sub_2394D9384(uint64_t a1, void *a2)
{
  sub_2393DD178(v20);
  v19 = 1;
  v18 = 0;
  sub_2393DD178(v17);
  sub_2393DD178(v16);
  sub_2393C5AAC(v14);
  v15 = 0;
  sub_238DD2F90(v14, a2);
  v4 = sub_2393DD0A8(v20, v14);
  v5 = v4;
  if (v4)
  {
    v6 = HIDWORD(v4);
    goto LABEL_32;
  }

  v7 = sub_2393DC51C(v20, &v19);
  if (v7)
  {
    if (v7 != 33)
    {
      goto LABEL_30;
    }

    v19 = 0;
  }

  v7 = sub_2393DA7E0(v20, &v18);
  if (v7 == 33)
  {
    if (*(a1 + 80) == 1)
    {
      v5 = 47;
      v6 = 660;
      goto LABEL_32;
    }
  }

  else
  {
    if (v7)
    {
      goto LABEL_30;
    }

    if (*(a1 + 80) != 1)
    {
      v5 = 47;
      v6 = 646;
      goto LABEL_32;
    }

    if (*(a1 + 51) == 1)
    {
      *(a1 + 60) = v18;
    }

    else if (*(a1 + 60) != v18)
    {
      v5 = 107;
      v6 = 653;
      goto LABEL_32;
    }
  }

  v7 = sub_2393DD284(v20, (a1 + 52));
  if (v7)
  {
    if (v7 != 33)
    {
      goto LABEL_30;
    }

    *(a1 + 52) = 0;
  }

  v7 = sub_2393DC8EC(v20, v17);
  if (v7)
  {
    if (v7 != 33)
    {
      goto LABEL_30;
    }
  }

  else
  {
    sub_2393C5AAC(v13);
    sub_2393DD1C8(v17, v13);
    v7 = sub_2394D99F8(a1, v13);
    if (v7)
    {
      goto LABEL_30;
    }
  }

  v7 = sub_2393DCCFC(v20, v16);
  if (v7)
  {
    if (v7 == 33)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_2393C5AAC(v13);
    sub_2393DD1C8(v16, v13);
    v7 = sub_2394D9C58(a1, v13);
    if (!v7)
    {
LABEL_24:
      if (*(a1 + 49) == 1 && (*(a1 + 52) & 1) == 0)
      {
        (*(**(a1 + 40) + 32))(*(a1 + 40));
        *(a1 + 49) = 0;
      }

      v7 = sub_2393DD104(v20);
      v6 = HIDWORD(v7);
      goto LABEL_31;
    }
  }

LABEL_30:
  v6 = HIDWORD(v7);
LABEL_31:
  v5 = v7;
LABEL_32:
  if (*(a1 + 80) == 1)
  {
    v8 = *(a1 + 48);
    if (v8 == 3)
    {
      if (v5)
      {
        goto LABEL_44;
      }

      (*(**(a1 + 40) + 16))(*(a1 + 40), a1);
      v9 = sub_2394DA288(a1);
      v6 = HIDWORD(v9);
      v5 = v9;
    }

    else if (v8 == 1)
    {
      sub_2394D7718(a1, 2u);
    }
  }

  if ((v19 & 1) == 0 && !v5)
  {
    if (*(a1 + 48) == 3)
    {
      v10 = *(a1 + 52);
    }

    else
    {
      v10 = 1;
    }

    v11 = sub_2394DEE10(0, *(a1 + 32), v10 & 1);
    v6 = HIDWORD(v11);
    v5 = v11;
  }

LABEL_44:
  *(a1 + 51) = 0;
  if (v15)
  {
    sub_2393D96C8(v15);
  }

  return v5 | (v6 << 32);
}

unint64_t sub_2394D9680(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v22);
  v23 = 0;
  sub_238DD2F90(v22, a2);
  sub_2393DD178(v21);
  v4 = sub_2393DD0A8(v21, v22);
  if (v4)
  {
LABEL_2:
    v5 = v4 & 0xFFFFFFFF00000000;
    goto LABEL_16;
  }

  v20 = 0;
  if (sub_2393DA7E0(v21, &v20))
  {
    v5 = 0x45500000000;
    LODWORD(v4) = 47;
  }

  else if (*(a1 + 60) == v20 && *(a1 + 80) == 1)
  {
    v4 = sub_2393DAA4C(v21, (a1 + 56));
    if (v4)
    {
      goto LABEL_2;
    }

    v6 = (*(*off_27DF765E8 + 2))(off_27DF765E8) - *(a1 + 344);
    v7 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 60);
      v9 = *(a1 + 54);
      v10 = *(a1 + 56);
      v11 = *(a1 + 72);
      v12 = *(a1 + 64);
      *buf = 67110656;
      v25 = v6;
      v26 = 1024;
      v27 = v8;
      v28 = 1024;
      v29 = v9;
      v30 = 1024;
      v31 = v10;
      v32 = 1024;
      v33 = v11;
      v34 = 1024;
      v35 = HIDWORD(v12);
      v36 = 1024;
      v37 = v12;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Subscription established in %ums with SubscriptionID = 0x%08x MinInterval = %us MaxInterval = %us Peer = %02x:%08X%08X", buf, 0x2Cu);
    }

    if (sub_2393D5398(2u))
    {
      v19 = HIDWORD(*(a1 + 64));
      v17 = *(a1 + 56);
      v18 = *(a1 + 72);
      v15 = *(a1 + 60);
      v16 = *(a1 + 54);
      sub_2393D5320(0xDu, 2);
    }

    v4 = sub_2393DD104(v21);
    if (v4)
    {
      goto LABEL_2;
    }

    sub_2394D7718(a1, 3u);
    (*(**(a1 + 40) + 56))(*(a1 + 40), v20);
    *(a1 + 328) = 0;
    v4 = sub_2394DA288(a1);
    if (v4)
    {
      goto LABEL_2;
    }

    v5 = 0;
    LODWORD(v4) = 0;
  }

  else
  {
    v5 = 0x45600000000;
    LODWORD(v4) = 107;
  }

LABEL_16:
  if (v23)
  {
    sub_2393D96C8(v23);
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394D9930(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2393BC49C(a1 + 16, a2);
  v5 = sub_2393B59AC(a1 + 16);
  sub_238EA6DC0(v5, &v11);
  sub_239495C6C((a1 + 208), &v11);
  (*(*v11 + 32))(v11);
  result = sub_2394D9384(a1, a3);
  v8 = result;
  if (result)
  {
    v9 = v7;
    if (result == 107)
    {
      v10 = 125;
    }

    else
    {
      v10 = 128;
    }

    sub_2394DEE10(v10, *(a1 + 32), 0);
    return sub_2394D7E80(a1, v8, v9, 1);
  }

  return result;
}

unint64_t sub_2394D99F8(uint64_t a1, uint64_t a2)
{
  result = sub_2393C6B34(a2);
  if (!result)
  {
    while (1)
    {
      sub_2393C5AAC(v25);
      sub_2393DD178(v24);
      sub_2393DD178(v23);
      v17[0] = 0;
      v19 = 0;
      v18 = 0;
      v20 = 0;
      v21 = 3;
      LOBYTE(v22) = 0;
      *(&v22 + 1) = 0;
      v15 = 0;
      v16 = 0;
      v5 = *(a2 + 48);
      v13[2] = *(a2 + 32);
      v13[3] = v5;
      v14 = *(a2 + 64);
      v6 = *(a2 + 16);
      v13[0] = *a2;
      v13[1] = v6;
      result = sub_2393DD7F4(v24, v13);
      if (result)
      {
        return result;
      }

      v7 = sub_2393DB490(v24, v23);
      if (v7 == 33)
      {
        break;
      }

      if (!v7)
      {
        v22 = *(a1 + 88);
        result = sub_2393DC15C(v23, v17);
        if (result)
        {
          return result;
        }

        *(a1 + 88) = v22;
        result = sub_2393DBF28(v23, v25);
        if (result)
        {
          return result;
        }

        v8 = v20 + 1;
        *(a1 + 296) = 1;
        *(a1 + 304) = v8;
        if ((*(a1 + 49) & 1) == 0)
        {
          (*(**(a1 + 40) + 24))(*(a1 + 40));
          *(a1 + 49) = 1;
        }

        v9 = *(**(a1 + 40) + 40);
LABEL_21:
        v9();
      }

      result = sub_2393C6B34(a2);
      if (result)
      {
        goto LABEL_2;
      }
    }

    sub_2393DD178(v12);
    sub_2393DD178(v11);
    sub_2393DD178(v10);
    result = sub_2393DB43C(v24, v12);
    if (result)
    {
      return result;
    }

    result = sub_2393DB6C8(v12, v11);
    if (result)
    {
      return result;
    }

    result = sub_2393DC470(v11, v17);
    if (result)
    {
      return result;
    }

    result = sub_2393DB490(v12, v10);
    if (result)
    {
      return result;
    }

    result = sub_2393DD458(v10, &v15);
    if (result)
    {
      return result;
    }

    if ((*(a1 + 49) & 1) == 0)
    {
      (*(**(a1 + 40) + 24))(*(a1 + 40));
      *(a1 + 49) = 1;
    }

    v9 = *(**(a1 + 40) + 40);
    goto LABEL_21;
  }

LABEL_2:
  if (result == 33)
  {
    return 0;
  }

  return result;
}