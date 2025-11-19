unint64_t sub_2393BA1EC(uint64_t a1, uint64_t *a2, int a3)
{
  v31 = *MEMORY[0x277D85DE8];
  if (*(a1 + 166) != 1)
  {
    v13 = sub_2393D9044(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = sub_2393C9138();
      *&buf[12] = 2080;
      *&buf[14] = "src/app/ReadHandler.cpp";
      v29 = 1024;
      v30 = 308;
      _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (!sub_2393D5398(1u))
    {
      v11 = 3;
      LODWORD(v12) = 308;
      goto LABEL_53;
    }

    LODWORD(v12) = 308;
    sub_2393C9138();
LABEL_52:
    sub_2393D5320(0, 1);
    v11 = 3;
    goto LABEL_53;
  }

  if ((*(a1 + 168) & 3) != 0)
  {
    v6 = sub_2393B59AC(a1 + 88);
    sub_238EA6DC0(v6, buf);
    sub_239495C6C((a1 + 176), buf);
    (*(**buf + 32))(*buf);
  }

  else
  {
    if (*(a1 + 104))
    {
      v14 = sub_2393D9044(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = sub_2393C9138();
        *&buf[12] = 2080;
        *&buf[14] = "src/app/ReadHandler.cpp";
        v29 = 1024;
        v30 = 316;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (!sub_2393D5398(1u))
      {
        v11 = 3;
        LODWORD(v12) = 316;
        goto LABEL_53;
      }

      LODWORD(v12) = 316;
      sub_2393C9138();
      goto LABEL_52;
    }

    if ((*(a1 + 200) & 1) == 0)
    {
      v21 = sub_2393D9044(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        *&buf[4] = sub_2393C9138();
        *&buf[12] = 2080;
        *&buf[14] = "src/app/ReadHandler.cpp";
        v29 = 1024;
        v30 = 317;
        _os_log_impl(&dword_238DAE000, v21, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (!sub_2393D5398(1u))
      {
        v11 = 3;
        LODWORD(v12) = 317;
        goto LABEL_53;
      }

      LODWORD(v12) = 317;
      sub_2393C9138();
      goto LABEL_52;
    }

    v17 = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 88);
    if (*(a1 + 200) == 1)
    {
      *&buf[8] = *sub_238DE36B8((a1 + 200));
      (*(**&buf[8] + 24))(*&buf[8]);
      v18 = 1;
    }

    else
    {
      v18 = 0;
    }

    buf[0] = v18;
    v22 = sub_238DE36B8(buf);
    v23 = sub_239471E34(v17, v22, a1, 1u);
    if (buf[0] == 1)
    {
      (*(**&buf[8] + 32))(*&buf[8]);
    }

    if (!v23)
    {
      v24 = sub_2393D9044(0);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = sub_2393C9138();
        *buf = 136315650;
        *&buf[4] = v25;
        *&buf[12] = 2080;
        *&buf[14] = "src/app/ReadHandler.cpp";
        v29 = 1024;
        v30 = 324;
        _os_log_impl(&dword_238DAE000, v24, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
      }

      if (!sub_2393D5398(1u))
      {
        v11 = 3;
        LODWORD(v12) = 324;
        goto LABEL_53;
      }

      LODWORD(v12) = 324;
      sub_2393C9138();
      goto LABEL_52;
    }

    sub_238EF9EEC(a1 + 88);
    *(a1 + 104) = v23;
    v23[5] = a1 + 88;
  }

  if (!*(a1 + 104))
  {
    v15 = sub_2393D9044(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_2393C9138();
      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = "src/app/ReadHandler.cpp";
      v29 = 1024;
      v30 = 328;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (!sub_2393D5398(1u))
    {
      v11 = 3;
      LODWORD(v12) = 328;
      goto LABEL_53;
    }

    LODWORD(v12) = 328;
    sub_2393C9138();
    goto LABEL_52;
  }

  if ((*(a1 + 168) & 1) == 0)
  {
    *(a1 + 32) = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 1392);
  }

  sub_2393B8624(a1, 1, a3);
  if (*(a1 + 169) == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a3;
  }

  v8 = sub_2393B59AC(a1 + 88);
  sub_239470428(v8, 2000);
  v9 = sub_2393B59AC(a1 + 88);
  *buf = v7;
  v10 = sub_239470478(v9, 0x10000u, 5, a2, buf);
  v11 = v10;
  v12 = HIDWORD(v10);
  if (!v10)
  {
    if (v7)
    {
      sub_2393B8C3C(a1, 2);
    }

    else
    {
      v19 = (*(**(a1 + 136) + 32))(*(a1 + 136));
      sub_2394D57C0(v19 + 1296);
    }

    if (*(a1 + 169) == 1 && (*(a1 + 168) & 3) == 0)
    {
      (*(**(a1 + 144) + 32))(*(a1 + 144), a1);
    }
  }

  if ((a3 & 1) == 0)
  {
    *(a1 + 24) = *(a1 + 32);
    sub_2393B8624(a1, 16, 0);
    v20 = (*(**(a1 + 136) + 32))(*(a1 + 136));
    sub_2394CBA28(v20, (a1 + 128));
  }

LABEL_53:
  v26 = *MEMORY[0x277D85DE8];
  return v11 | (v12 << 32);
}

unint64_t sub_2393BA950(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 1;
  v6 = *a3;
  if (*(a3 + 2))
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a3 + 3) == 1;
  }

  if (v7 && v6 == 1)
  {
    v13 = sub_2393B971C(a1, a2, a4, &v17);
    v12 = v13;
    v11 = v13 & 0xFFFFFFFF00000000;
    if ((v17 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      v19 = v6;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "ReadHandler:: Msg type %d not supported", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v16 = *a3;
      sub_2393D5320(0xDu, 3);
    }

    v11 = 0x18000000000;
    v12 = 42;
  }

  sub_2394DEE10(0x80u, a2, 0);
LABEL_15:
  if (v12)
  {
    sub_2393B8A0C(a1, 0);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11 | v12;
}

BOOL sub_2393BAABC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 169) != 1)
  {
    return 0;
  }

  v4 = sub_2393BB864(a1);
  if (v4)
  {
    v5 = *(v4 + 72);
  }

  else
  {
    v5 = 0;
  }

  sub_238EA6DC0(a2, &v11);
  if (v5 == *(sub_239495304(v11) + 72))
  {
    v7 = sub_2393BB864(a1);
    if (v7)
    {
      v8 = *(v7 + 24);
    }

    else
    {
      v8 = 0;
    }

    sub_238EA6DC0(a2, &v10);
    v6 = v8 == v10[24];
    (*(*v10 + 32))();
  }

  else
  {
    v6 = 0;
  }

  (*(*v11 + 32))(v11);
  return v6;
}

uint64_t sub_2393BABC4(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Time out! failed to receive status response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 1);
  }

  result = sub_2393B8A0C(a1, 1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393BACE4(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(v14);
  sub_2393DD1C8(a2, v14);
  v4 = 36;
  while (1)
  {
    v5 = sub_2393C6B34(v14);
    if (v5)
    {
      if (v5 == 33)
      {
        v9 = (*(**(a1 + 136) + 32))(*(a1 + 136));
        sub_2394CB6E0(v9, (a1 + 112));
        v8 = 0;
        v4 = 0;
        *(a1 + 64) = *(a1 + 112);
        *(a1 + 72) = -1;
        *(a1 + 74) = 0;
        *(a1 + 76) = -1;
        return v4 | v8;
      }

LABEL_11:
      v8 = v5 & 0xFFFFFFFF00000000;
      v4 = v5;
      return v4 | v8;
    }

    if (v15 != 256)
    {
      break;
    }

    v12 = -1;
    v13 = -1;
    sub_2393DD178(v11);
    v6 = sub_2393DD044(v11, v14);
    if (v6 || (v6 = sub_2393DAC60(v11, &v12), v6))
    {
      v4 = v6;
      v8 = v6 & 0xFFFFFFFF00000000;
      return v4 | v8;
    }

    v7 = (*(**(a1 + 136) + 32))(*(a1 + 136));
    v5 = sub_2394CB608(v7, (a1 + 112), &v12);
    if (v5)
    {
      goto LABEL_11;
    }
  }

  v8 = 0x1F100000000;
  return v4 | v8;
}

unint64_t sub_2393BAE54(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(v17);
  sub_2393DD1C8(a2, v17);
  LODWORD(v4) = 215;
  while (1)
  {
    v5 = sub_2393C6B34(v17);
    if (v5)
    {
      break;
    }

    if (v18 != 256)
    {
      v7 = 0x20B00000000;
      LODWORD(v4) = 36;
      return v4 | v7;
    }

    v13 = -1;
    v14 = 0;
    v16 = -1;
    sub_2393DD178(v12);
    sub_2393DD178(v11);
    v6 = sub_2393DD7F4(v11, v17);
    if (v6 || (v10 = 0, v6 = sub_2393DB994(v11, &v10), v6) || (v14 = 1, v15 = v10, v6 = sub_2393DB6C8(v11, v12), v6) || (v6 = sub_2393DB830(v12, &v16), v6) || (v6 = sub_2393DB840(v12, &v13), v6))
    {
LABEL_13:
      v7 = v6 & 0xFFFFFFFF00000000;
      LODWORD(v4) = v6;
      return v4 | v7;
    }

    v7 = 0x21600000000;
    if (v16 == -1 || v13 == -1)
    {
      return v4 | v7;
    }

    if (v14 != 1)
    {
      v7 = 0x21600000000;
      return v4 | v7;
    }

    v8 = (*(**(a1 + 136) + 32))(*(a1 + 136));
    v6 = sub_2394CBA74(v8, (a1 + 128), &v13);
    if (v6)
    {
      goto LABEL_13;
    }
  }

  if (v5 == 33)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  return v4 | v7;
}

unint64_t sub_2393BAFFC(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(v15);
  sub_2393DD1C8(a2, v15);
  LODWORD(v4) = 36;
  while (1)
  {
    v5 = sub_2393C6B34(v15);
    if (v5)
    {
      if (v5 == 33)
      {
        v4 = 0;
      }

      else
      {
        v4 = v5;
      }

      goto LABEL_12;
    }

    if (v16 != 256)
    {
      break;
    }

    v12 = -1;
    v13 = -1;
    v14 = 0;
    sub_2393DD178(v11);
    v6 = sub_2393DD044(v11, v15);
    if (v6 || (v6 = sub_2393DC52C(v11, &v12), v6))
    {
      v4 = v6;
LABEL_12:
      v9 = v4 & 0xFFFFFFFF00000000;
      return v4 | v9;
    }

    v7 = (*(**(a1 + 136) + 32))(*(a1 + 136));
    v8 = sub_2394CB950(v7, (a1 + 120), &v12);
    if (v8)
    {
      v9 = v8 & 0xFFFFFFFF00000000;
      LODWORD(v4) = v8;
      return v4 | v9;
    }
  }

  v9 = 0x22900000000;
  return v4 | v9;
}

unint64_t sub_2393BB11C(uint64_t a1, uint64_t a2)
{
  sub_2393C5AAC(v10);
  sub_2393DD1C8(a2, v10);
  LODWORD(v4) = 36;
  while (1)
  {
    v5 = sub_2393C6B34(v10);
    if (v5)
    {
      break;
    }

    if (v11 != 256)
    {
      v7 = 0x24100000000;
      return v4 | v7;
    }

    sub_2393DD178(v9);
    v6 = sub_2393DD7F4(v9, v10);
    if (!v6)
    {
      v6 = sub_2393DAA3C(v9, (a1 + 48));
      if (!v6)
      {
        continue;
      }
    }

    v7 = v6 & 0xFFFFFFFF00000000;
    LODWORD(v4) = v6;
    return v4 | v7;
  }

  if (v5 == 33)
  {
    v4 = 0;
  }

  else
  {
    v4 = v5;
  }

  v7 = v4 & 0xFFFFFFFF00000000;
  return v4 | v7;
}

const char *sub_2393BB1E4(uint64_t a1)
{
  v1 = *(a1 + 166);
  if (v1 > 3)
  {
    return "N/A";
  }

  else
  {
    return off_278A75C78[v1];
  }
}

BOOL sub_2393BB20C(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 168) & 1) == 0)
  {
    v2 = *(a2 + 40);
    if (v2 && *(a1 + 48) <= v2)
    {
      sub_2393B826C(a2, (a1 + 56), (a1 + 152));
      return 0;
    }

    return 1;
  }

  v4 = *(a1 + 56);
  return !v4 || *(a1 + 48) > v4;
}

void sub_2393BB284(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 1696);
  if (v2)
  {
    v3 = sub_2393BB864(a1);
    if (v3)
    {
      v4 = *(v3 + 72);
    }

    else
    {
      v4 = 0;
    }

    v10 = v4;
    v5 = sub_2393BB864(a1);
    if (v5)
    {
      v6 = *(v5 + 24);
    }

    else
    {
      v6 = 0;
    }

    v11 = v6;
    v12 = *(a1 + 8);
    v13 = 0;
    v14 = *(a1 + 160);
    v15 = (*(a1 + 168) & 8) != 0;
    *v16 = 0u;
    *v17 = 0u;
    if (!sub_2393BB474(&v10, *(a1 + 112)) && !sub_2393BB560(&v10, *(a1 + 120)) && (*(*v2 + 24))(v2, &v10))
    {
      v8 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_2393C9138();
        *buf = 136315138;
        v19 = v9;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to save subscription info error: '%s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xDu, 1);
      }
    }

    if (v17[0])
    {
      j__free(v17[0]);
      v17[0] = 0;
    }

    if (v16[0])
    {
      j__free(v16[0]);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

uint64_t sub_2393BB474(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 32;
  v4 = *(a1 + 32);
  *(v5 + 8) = 0;
  if (v4)
  {
    j__free(v4);
    *v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2;
  do
  {
    ++v7;
    v8 = *(v8 + 16);
    v6 += 12;
  }

  while (v8);
  if (v6 >> 16)
  {
    v11 = 0x6200000000;
LABEL_14:
    v12 = 11;
    return v12 | v11;
  }

  sub_238EF63CC(v5, v7, 0xCuLL);
  if (!*v5)
  {
    v11 = 0x6400000000;
    goto LABEL_14;
  }

  *(a1 + 40) = v7;
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = *v5 + v9;
      *(v10 + 8) = *(a2 + 8);
      *v10 = *a2;
      *(v10 + 4) = *(a2 + 4);
      a2 = *(a2 + 16);
      v9 += 12;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  v11 = 0;
  v12 = 0;
  return v12 | v11;
}

uint64_t sub_2393BB560(uint64_t a1, uint64_t a2)
{
  v5 = a1 + 48;
  v4 = *(a1 + 48);
  *(v5 + 8) = 0;
  if (v4)
  {
    j__free(v4);
    *v5 = 0;
  }

  if (!a2)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 0;
  v8 = a2;
  do
  {
    ++v7;
    v8 = *(v8 + 16);
    v6 += 12;
  }

  while (v8);
  if (v6 >> 16)
  {
    v11 = 0x7B00000000;
LABEL_14:
    v12 = 11;
    return v12 | v11;
  }

  sub_238EF63CC(v5, v7, 0xCuLL);
  if (!*v5)
  {
    v11 = 0x7D00000000;
    goto LABEL_14;
  }

  *(a1 + 56) = v7;
  if (v7)
  {
    v9 = 0;
    do
    {
      v10 = *v5 + v9;
      *(v10 + 8) = *(a2 + 8);
      *v10 = *a2;
      *(v10 + 4) = *(a2 + 4);
      *(v10 + 10) = *(a2 + 10);
      a2 = *(a2 + 16);
      v9 += 12;
      --v7;
    }

    while (v7);
  }

LABEL_11:
  v11 = 0;
  v12 = 0;
  return v12 | v11;
}

double sub_2393BB654(uint64_t a1)
{
  *(a1 + 64) = *(a1 + 112);
  *(a1 + 72) = -1;
  *(a1 + 74) = 0;
  result = NAN;
  *(a1 + 76) = -1;
  *(a1 + 156) = -1;
  *(a1 + 158) = 0;
  return result;
}

uint64_t sub_2393BB67C(uint64_t a1, uint64_t a2, int *a3)
{
  *(a1 + 16) = *((*(**(a1 + 136) + 32))(*(a1 + 136)) + 1392);
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v16 = 0;
  v18 = 0;
  v17 = 0;
  sub_2394E08B4(v12, a2, &v19);
  if (sub_2394E0EF8(v12, &v16, 0) && ((v6 = *(a3 + 4), v6 == 0xFFFF) || v6 == v16))
  {
    v8 = *a3;
    if (v8 == -1)
    {
      sub_2393D6E84(v15);
      sub_2393D6E84(v14);
      sub_2393D6E84(v13);
    }

    else
    {
      v9 = v18;
      sub_2393D6E84(v15);
      sub_2393D6E84(v14);
      sub_2393D6E84(v13);
      if (v8 != v9)
      {
        return (*(**(a1 + 144) + 24))(*(a1 + 144), a1);
      }
    }

    v10 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "The dirty path intersects the cluster we are currently reporting; reset the iterator to the beginning of that cluster", v12, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    v11 = *(a1 + 64);
    if (v11 && *(v11 + 4) == -1)
    {
      *(a1 + 80) = -1;
    }

    *(a1 + 156) = -1;
    *(a1 + 158) = 0;
  }

  else
  {
    sub_2393D6E84(v15);
    sub_2393D6E84(v14);
    sub_2393D6E84(v13);
  }

  return (*(**(a1 + 144) + 24))(*(a1 + 144), a1);
}

uint64_t sub_2393BB864(uint64_t a1)
{
  v3 = *(a1 + 200);
  v2 = (a1 + 200);
  if (v3 != 1)
  {
    return 0;
  }

  v4 = *sub_238DE36B8(v2);

  return sub_239495304(v4);
}

uint64_t sub_2393BB8B0(uint64_t a1)
{
  v1 = sub_2393BB864(a1);
  if (v1 && ((*(*v1 + 80))(v1) & 1) != 0)
  {
    return 63902;
  }

  else
  {
    return 1194;
  }
}

uint64_t sub_2393BB900()
{
  v0 = *(**(*(*(sub_2394C7C20() + 11) + 88) + 24) + 40);

  return v0();
}

uint64_t sub_2393BB9A4()
{
  v0 = *(**(*(*(sub_2394C7C20() + 11) + 88) + 24) + 72);

  return v0();
}

uint64_t sub_2393BBA18()
{
  v0 = *(**(*(*(sub_2394C7C20() + 11) + 88) + 24) + 56);

  return v0();
}

uint64_t sub_2393BBAD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 24))
  {
    if (a3)
    {
      if (a2)
      {
        *(a1 + 232) = a2;
        *(a1 + 256) = a3;
        sub_2393BBB5C(a1, 1u);
        v3 = 0;
        v4 = 0;
        *(a1 + 208) = 0;
        *(a1 + 192) = 0;
        return v4 | v3;
      }

      v3 = 0x5300000000;
    }

    else
    {
      v3 = 0x5200000000;
    }

    v4 = 47;
    return v4 | v3;
  }

  v3 = 0x5100000000;
  v4 = 3;
  return v4 | v3;
}

uint64_t sub_2393BBB5C(uint64_t a1, unsigned int a2)
{
  v12 = *MEMORY[0x277D85DE8];
  *(a1 + 265) = a2;
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    if (a2 > 3)
    {
      v5 = "N/A";
    }

    else
    {
      v5 = off_278A75C98[a2];
    }

    *buf = 136315138;
    v11 = v5;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "IM WH moving to [%s]", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    v7 = *(a1 + 265);
    if (v7 <= 3)
    {
      v8 = off_278A75C98[v7];
    }

    result = sub_2393D5320(0xDu, 3);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_2393BBC74(_BYTE *result)
{
  if (result[265])
  {
    v1 = result;
    sub_2393BBCD8(result, 0);
    sub_238EF9EEC(v1 + 8);
    *(v1 + 264) &= ~2u;
    *(v1 + 232) = 0;

    return sub_2393BBB5C(v1, 0);
  }

  return result;
}

_BYTE *sub_2393BBCD8(_BYTE *result, int a2)
{
  v2 = result + 192;
  if (result[192] == 1)
  {
    v3 = result;
    if ((result[264] & 8) != 0)
    {
      v5 = sub_2393B50CC(result + 192);
      result = *(v3 + 29);
      if (result)
      {
        v6 = *result + 128;
        if (a2)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        result = (*(*result + 128))(result, v5, v7);
      }
    }
  }

  *v2 = 0;
  return result;
}

uint64_t sub_2393BBD64(uint64_t a1, unsigned __int16 *a2)
{
  if (*(a1 + 232))
  {
    v8 = *(a1 + 232);
    v9 = -1;
    v10 = -1;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v2 = sub_2394C417C(&v8, a2);
    v4 = v3 & 1;
    v5 = v4 & (v2 >> 34);
    sub_2393D6E84(&v13);
  }

  else
  {
    v6 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Null data model while checking attribute properties.", &v8, 2u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393D5320(0xDu, 1);
    }

    v5 = 0;
    v4 = 0;
  }

  return v5 | (v4 << 8);
}

uint64_t sub_2393BBE44(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  sub_2393D9C18(0x4AAuLL, 0x26u, &v13);
  if (!v13)
  {
    return 1;
  }

  sub_2393C7B90(v10);
  v11[1] = 0;
  v11[2] = 0;
  v11[0] = &unk_284BB83A8;
  v12 = 0;
  sub_238EA16C4(v11, &v13, 0);
  sub_2393C7BF0(v10, v11, 0xFFFFFFFF);
  if (sub_2393DD7B8(a1 + 32, v10) || (sub_2393DD294((a1 + 32)), *(a1 + 32)))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2393BBF7C(a1, a3, a4);
    if (!v8)
    {
      v8 = !sub_2393BC2A0(a2) && sub_2393BC344(a1, v10) != 0;
    }
  }

  sub_2393B8400(v11);
  if (v13)
  {
    sub_2393D96C8(v13);
  }

  return v8;
}

uint64_t sub_2393BBF7C(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v26);
  v27 = 0;
  sub_2393DD178(v25);
  sub_2393DD178(v24);
  sub_2393C5AAC(v23);
  if (*(a1 + 252) == 1)
  {
    *(a1 + 252) = 0;
  }

  sub_238DD2F90(v26, a2);
  v6 = sub_2393DD0A8(v25, v26);
  if (v6)
  {
    goto LABEL_4;
  }

  v22 = (*(a1 + 264) & 2) != 0;
  v8 = sub_2393DA994(v25, &v22);
  if (v8 != 33 && v8)
  {
    goto LABEL_24;
  }

  v9 = *(a1 + 264);
  if (v22)
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  *(a1 + 264) = v9 & 0xFD | v10;
  v22 = v9 & 1;
  v6 = sub_2393DC8DC(v25, &v22);
  if (v6)
  {
    goto LABEL_4;
  }

  v11 = *(a1 + 264);
  *(a1 + 264) = v11 & 0xFE | v22;
  v22 = (v11 & 4) != 0;
  v12 = sub_2393DD284(v25, &v22);
  if (v12 != 33 && v12)
  {
LABEL_24:
    v7 = 0x80;
  }

  else
  {
    v13 = v22;
    if (v22)
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 264) = *(a1 + 264) & 0xFB | v14;
    if (!v13 || (v15 = sub_2393B59AC(a1 + 8), !sub_2393BC2A0(v15)) && (*(a1 + 264) & 1) == 0)
    {
      v6 = sub_2393DC8EC(v25, v24);
      if (!v6)
      {
        if ((*(a1 + 264) ^ a3))
        {
          v7 = -55;
          goto LABEL_5;
        }

        sub_2393DD1C8(v24, v23);
        v20 = sub_2393B59AC(a1 + 8);
        if (sub_2393BC2A0(v20))
        {
          v21 = sub_2393BD4B4(a1, v23);
        }

        else
        {
          v21 = sub_2393BCB70(a1, v23);
        }

        v6 = v21;
        if (!v21)
        {
          v6 = sub_2393DD104(v25);
          if (!v6)
          {
            v7 = 0;
LABEL_5:
            if (!v6)
            {
              goto LABEL_29;
            }

            goto LABEL_25;
          }
        }
      }

LABEL_4:
      v7 = 0x80;
      goto LABEL_5;
    }

    v7 = 0x80;
  }

LABEL_25:
  v16 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = sub_2393C9138();
    buf = 136315138;
    v29 = v17;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Failed to process write request: %s", &buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(0xDu, 1);
  }

LABEL_29:
  if (v27)
  {
    sub_2393D96C8(v27);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v7;
}

BOOL sub_2393BC2A0(uint64_t a1)
{
  v2 = *(a1 + 88);
  v1 = (a1 + 88);
  if (v2 != 1)
  {
    return 0;
  }

  v3 = sub_238DE36B8(v1);
  v4 = *v3;
  return (*(**v3 + 16))(*v3) == 3 || (*(*v4 + 16))(v4) == 4;
}

uint64_t sub_2393BC344(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (*(a1 + 265) != 2)
  {
    return 0xF100000003;
  }

  v3 = sub_2393BC7A8(a1, a2, &v8);
  if (!v3)
  {
    if (*(a1 + 24))
    {
      v5 = sub_2393B59AC(a1 + 8);
      sub_239470428(v5, 2000);
      v6 = sub_2393B59AC(a1 + 8);
      v7 = (*(a1 + 264) & 4) != 0;
      v3 = sub_239470478(v6, 0x10000u, 7, &v8, &v7);
      if (!v3)
      {
        sub_2393BBB5C(a1, 3u);
      }
    }

    else
    {
      v3 = 0xF600000003;
    }
  }

  if (v8)
  {
    sub_2393D96C8(v8);
  }

  return v3;
}

uint64_t sub_2393BC430(_BYTE *a1, uint64_t a2, void *a3, int a4)
{
  sub_2393BC49C((a1 + 8), a2);
  v8 = sub_2393BBE44(a1, a2, a3, a4);
  if (v8 || (a1[264] & 4) == 0)
  {
    sub_2393BBC74(a1);
  }

  return v8;
}

void sub_2393BC49C(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    sub_23952F160();
  }

  sub_238EF9EEC(a1);
  *(a1 + 16) = a2;
  *(a2 + 40) = a1;
}

uint64_t sub_2393BC4D4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  if (*(a1 + 24) != a2)
  {
    sub_23952F1F8();
  }

  if (sub_2393BC2A0(a2))
  {
    sub_23952F258();
  }

  if (*(a3 + 2))
  {
    goto LABEL_4;
  }

  v14 = *(a3 + 3);
  v15 = *a3;
  if (v14 == 1 && v15 == 6)
  {
    v16 = sub_2393BBE44(a1, a2, a4, 0);
    if (v16)
    {
      sub_2394DEE10(v16, a2, 0);
    }

    else if ((*(a1 + 264) & 4) != 0)
    {
LABEL_19:
      v10 = 0;
      v11 = 0;
      goto LABEL_9;
    }

    sub_2393BBC74(a1);
    goto LABEL_19;
  }

  if (v14 == 1 && v15 == 1)
  {
    *buf = 0;
    v19 = 0;
    sub_2394DEFB4(a4, buf);
  }

LABEL_4:
  v8 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = *a3;
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Unexpected message type %d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v17 = *a3;
    sub_2393D5320(0xDu, 3);
  }

  sub_2394DEE10(0x80u, a2, 0);
  sub_2393BBC74(a1);
  v10 = 0xC700000000;
  v11 = 42;
LABEL_9:
  v12 = *MEMORY[0x277D85DE8];
  return v11 | v10;
}

_BYTE *sub_2393BC68C(_BYTE *a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
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
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Time out! failed to receive status response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(1u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 1);
  }

  result = sub_2393BBC74(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393BC7A8(uint64_t a1, uint64_t a2, _WORD **a3)
{
  if (*(a1 + 265) == 2)
  {
    v6 = sub_2393DA98C(a1 + 32);
    v7 = sub_2393DA87C(v6);
    if (v7 || (v7 = sub_2393DD3D4((a1 + 32)), v7))
    {
      v8 = v7 & 0xFFFFFFFF00000000;
    }

    else
    {
      v7 = sub_238DD2EFC(a2, a3);
      v8 = v7 & 0xFFFFFFFF00000000;
      if (!v7)
      {
        LODWORD(v7) = 0;
        v8 = 0;
      }
    }
  }

  else
  {
    v8 = 0xE500000000;
    LODWORD(v7) = 3;
  }

  return v8 | v7;
}

uint64_t sub_2393BC848(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 232);
  if (result)
  {
    return (*(*result + 128))(result, a2, 0);
  }

  return result;
}

uint64_t sub_2393BC87C(uint64_t a1, uint64_t a2, int a3)
{
  result = *(a1 + 232);
  if (result)
  {
    v4 = *result + 128;
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    return (*(*result + 128))(result, a2, v5);
  }

  return result;
}

uint64_t sub_2393BC8B8(uint64_t a1, int a2)
{
  v2 = (a1 + 192);
  if (*(a1 + 192) == 1 && (*(a1 + 264) & 8) != 0)
  {
    v21 = -65536;
    v5 = sub_2394B4FC8();
    v6 = sub_2393B59AC(a1 + 8);
    sub_238EA6DC0(v6, &v19);
    v7 = *(sub_239495400(v19) + 44);
    (*(*v19 + 32))(v19);
    v8 = sub_2393BCB0C(a1);
    v9 = sub_2393B50CC(v2);
    v10 = *(v9 + 2);
    v19 = *v9;
    v20 = v10;
    *(a1 + 192) = 0;
    v11 = (*(*v5 + 120))(v5, v8, 0);
    if (!v11)
    {
      v17 = 0x12E00000000;
      v14 = 11;
      return v17 | v14;
    }

    v12 = v11;
    if ((*(*v11 + 24))(v11, &v21))
    {
      if (a2)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      v14 = 3;
      do
      {
        if (v7 == v21)
        {
          LOWORD(v19) = HIWORD(v21);
          v15 = *(a1 + 256);
          if (!v15)
          {
            v17 = 0x13900000000;
            return v17 | v14;
          }

          if (((*(*v15 + 16))(v15, a1, &v19) & 1) == 0)
          {
            v16 = *(a1 + 232);
            if (v16)
            {
              (*(*v16 + 128))(v16, &v19, v13);
            }
          }
        }
      }

      while (((*(*v12 + 24))(v12, &v21) & 1) != 0);
    }

    (*(*v12 + 32))(v12);
  }

  v14 = 0;
  v17 = 0;
  return v17 | v14;
}

uint64_t sub_2393BCB0C(uint64_t a1)
{
  v1 = sub_2393B59AC(a1 + 8);
  sub_238EA6DC0(v1, &v4);
  v2 = v4[24];
  (*(*v4 + 32))(v4);
  return v2;
}

uint64_t sub_2393BCB70(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 24))
  {
    return 0x15C000000ACLL;
  }

  v4 = sub_2393B59AC(a1 + 8);
  sub_238EA6DC0(v4, v50);
  (*(**v50 + 64))(v52);
  (*(**v50 + 32))(*v50);
  v5 = sub_2393C6B34(a2);
  if (v5)
  {
LABEL_3:
    if (v5 == 33)
    {
      v6 = *(a1 + 264);
      if ((v6 & 4) == 0)
      {
        sub_2393BBCD8(a1, (v6 >> 4) & 1);
      }

      v7 = 0;
      LODWORD(v5) = 0;
    }

    else
    {
      v7 = v5 & 0xFFFFFFFF00000000;
    }

    return v7 | v5;
  }

  while (1)
  {
    sub_2393C5AAC(v51);
    sub_2393DD178(v50);
    sub_2393DD178(v49);
    *v46 = 0;
    v46[2] = 0;
    v47 = 0;
    *&v46[4] = 0;
    *&v46[11] = 0;
    v9 = *(a2 + 48);
    v44[2] = *(a2 + 32);
    v44[3] = v9;
    v45 = *(a2 + 64);
    v10 = *(a2 + 16);
    v44[0] = *a2;
    v44[1] = v10;
    v5 = sub_2393DD7F4(v50, v44);
    if (v5 || (v5 = sub_2393DA78C(v50, v49), v5) || (v5 = sub_2393DAC08(v49, v46, 0), v5) || (v5 = sub_2393DA7F0(v50, v51), v5))
    {
      v7 = v5 & 0xFFFFFFFF00000000;
      return v7 | v5;
    }

    if (!v46[14])
    {
      v11 = sub_2393BBD64(a1, v46);
      if (v11 & 0x100) != 0 && (v11)
      {
        v46[14] = 1;
      }
    }

    v12 = *(a1 + 256);
    if (!v12)
    {
      LODWORD(v5) = 3;
      v7 = 0x17800000000;
      return v7 | v5;
    }

    if (((*(*v12 + 16))(v12, a1, v46) & 1) != 0 || v46[14] >= 2u && (*(a1 + 192) != 1 || (v13 = sub_2393BE2E0((a1 + 192)), *v13 != *v46) || *(v13 + 1) != *&v46[4] || *(v13 + 2) != *&v46[8]))
    {
      LOWORD(v40) = 156;
      BYTE2(v40) = 0;
      sub_2393BD0E0(a1, v46, &v40);
      goto LABEL_55;
    }

    if ((*(a1 + 264) & 8) != 0)
    {
      if (*(a1 + 192) != 1 || (v14 = sub_2393BE2E0((a1 + 192)), *v14 != *v46) || *(v14 + 1) != *&v46[4] || *(v14 + 2) != *&v46[8])
      {
        if (*(a1 + 192) == 1)
        {
          v15 = sub_2393B50CC((a1 + 192));
          v16 = *(a1 + 232);
          if (v16)
          {
            v17 = *v16 + 128;
            if ((*(a1 + 264) & 0x10) != 0)
            {
              v18 = 1;
            }

            else
            {
              v18 = 2;
            }

            (*(*v16 + 128))(v16, v15, v18);
          }
        }
      }
    }

    v20 = *(a1 + 192) != 1 || (v19 = sub_2393BE2E0((a1 + 192)), *v19 != *v46) || *(v19 + 1) != *&v46[4] || *(v19 + 2) != *&v46[8];
    v21 = v46[14];
    if (v20 && v46[14])
    {
      v22 = *(a1 + 232);
      if (v22)
      {
        (*(*v22 + 128))(v22, v46, 0);
        v21 = v46[14];
      }

      *(a1 + 264) |= 0x10u;
    }

    *(a1 + 264) = *(a1 + 264) & 0xF7 | (8 * (v21 != 0));
    *(a1 + 192) = 1;
    *(a1 + 196) = *v46;
    *(a1 + 204) = *&v46[8];
    v23 = sub_2394DF150();
    (*(*v23 + 16))(v23, 1, 0, v46);
    sub_2393C7B90(&v40);
    v39 = 0;
    v24 = *(sub_2393DA98C(a1 + 32) + 16);
    v25 = v24[3];
    v27 = *v24;
    v26 = v24[1];
    v42 = v24[2];
    v43 = v25;
    v40 = v27;
    v41 = v26;
    v28 = sub_2393DA7E0(v50, &v39);
    v29 = v28;
    if (v28 != 33)
    {
      break;
    }

LABEL_48:
    v30 = sub_2393BD1E0(a1, v52, v46, v51);
    if (v30)
    {
      v31 = sub_2393DA98C(a1 + 32);
      v32 = v31[2];
      v34 = v42;
      v33 = v43;
      v35 = v41;
      *v32 = v40;
      v32[1] = v35;
      v32[2] = v34;
      v32[3] = v33;
      sub_2393D06DC(v31);
      sub_2393DDF30(&v53, v30);
      v37 = v53;
      v38 = 0;
      if (v53 <= 1u && (v54 & 0x100) != 0)
      {
        v38 = v54;
      }

      v30 = sub_2393BD0E0(a1, v46, &v37);
      v29 = v30;
    }

    else
    {
      v29 = 0;
    }

    v36 = sub_2394DF150();
    (*(*v36 + 16))(v36, 1, 1, v46);
    if (v29)
    {
      goto LABEL_62;
    }

LABEL_55:
    v5 = sub_2393C6B34(a2);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  if (!v28)
  {
    v47 = 1;
    v48 = v39;
    goto LABEL_48;
  }

  v30 = v28;
LABEL_62:
  v7 = v30 & 0xFFFFFFFF00000000;
  LODWORD(v5) = v29;
  return v7 | v5;
}

unint64_t sub_2393BD0E0(uint64_t a1, unsigned __int16 *a2, unsigned __int8 *a3)
{
  v6 = sub_2393DA98C(a1 + 32);
  v7 = sub_2393DB564(v6);
  if (*a3)
  {
    *(a1 + 264) &= ~0x10u;
  }

  v8 = *v6;
  if (*v6)
  {
    v9 = v6[1];
  }

  else
  {
    v10 = sub_2393DB71C(v7);
    v8 = *v7;
    if (*v7)
    {
      goto LABEL_6;
    }

    v8 = sub_2393DB0F0(v10, a2);
    if (v8)
    {
      goto LABEL_8;
    }

    v14 = sub_2393DB75C(v7);
    v8 = *v7;
    if (*v7)
    {
LABEL_6:
      v11 = v7[1];
    }

    else
    {
      sub_2393DD518(v14, a3);
      v8 = *v14;
      if (*v14)
      {
        v15 = v14[1];
      }

      else
      {
        v8 = sub_2393DA87C(v7);
        if (!v8)
        {
          sub_2393BBB5C(a1, 2u);
          LODWORD(v8) = 0;
          v12 = 0;
          return v12 | v8;
        }
      }
    }
  }

LABEL_8:
  v12 = v8 & 0xFFFFFFFF00000000;
  return v12 | v8;
}

unint64_t sub_2393BD1E0(uint64_t a1, __int128 *a2, unsigned __int16 *a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  if (*(a1 + 232))
  {
    v8 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HIWORD(*(a3 + 1));
      v10 = *(a3 + 1);
      v11 = *a3;
      v12 = HIWORD(*(a3 + 2));
      v13 = *(a3 + 2);
      LODWORD(buf) = 67110144;
      DWORD1(buf) = v9;
      WORD4(buf) = 1024;
      *(&buf + 10) = v10;
      HIWORD(buf) = 1024;
      *v32 = v11;
      *&v32[4] = 1024;
      *&v32[6] = v12;
      *&v32[10] = 1024;
      v33 = v13;
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "Writing attribute: Cluster=0x%04X_%04X Endpoint=0x%x AttributeId=0x%04X_%04X", &buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      v22 = HIWORD(*(a3 + 2));
      v20 = *(a3 + 1);
      v21 = *a3;
      sub_2393D5320(0xDu, 3);
    }

    sub_2393BDF8C(a1, a2, a3, &v29);
    if (sub_2394C3F10(&v29))
    {
      LODWORD(buf) = 0;
      *v32 = *a3;
      *&v32[8] = *(a3 + 2);
      LOWORD(v33) = a3[6];
      BYTE2(v33) = *(a3 + 14);
      v34 = *(a3 + 16);
      if (v34 == 1)
      {
        v35 = *(a3 + 5);
      }

      *(&buf + 1) = a2;
      v36 = *(a1 + 264) & 1;
      v25 = a4;
      v26 = 0;
      v14 = a2[1];
      v27 = *a2;
      v28 = v14;
      (*(**(a1 + 232) + 120))(&v23);
      v29 = v23;
      v30 = v24;
    }

    if (sub_2394C3F10(&v29))
    {
      v15 = *a3;
      *&buf = *(a3 + 1);
      *(&buf + 7) = *(a3 + 2);
      v16 = 1;
    }

    else
    {
      v16 = 0;
      v15 = 0;
    }

    if (*(a1 + 252) == v16)
    {
      if (*(a1 + 252))
      {
        *(a1 + 240) = v15;
        *(a1 + 241) = buf;
        *(a1 + 248) = *(&buf + 7);
      }
    }

    else if (*(a1 + 252))
    {
      *(a1 + 252) = 0;
    }

    else
    {
      *(a1 + 240) = v15;
      *(a1 + 241) = buf;
      *(a1 + 248) = *(&buf + 7);
      *(a1 + 252) = 1;
    }

    v18 = sub_2394C3EB0(&v29);
    LOBYTE(buf) = v18;
    *(&buf + 1) = 0;
    if (v18 <= 1u && ((v18 >> 8) & 0x100) != 0)
    {
      *(&buf + 1) = v18 >> 8;
    }

    result = sub_2393BD0E0(a1, a3, &buf);
  }

  else
  {
    result = 0x37400000003;
  }

  v19 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2393BD4B4(uint64_t a1, uint64_t a2)
{
  v77 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 24))
  {
    result = 0x1C2000000ACLL;
    goto LABEL_71;
  }

  v4 = sub_2393B59AC(a1 + 8);
  sub_238EA6DC0(v4, v56);
  v5 = sub_239495400(v56[0]);
  (*(*v5 + 64))(v59);
  (*(*v56[0] + 32))(v56[0]);
  v6 = sub_2393B59AC(a1 + 8);
  sub_238EA6DC0(v6, v56);
  v7 = *(sub_239495400(v56[0]) + 44);
  (*(*v56[0] + 32))(v56[0]);
  v49 = sub_2393BCB0C(a1);
  if (sub_2393C6B34(a2))
  {
    goto LABEL_3;
  }

  while (2)
  {
    sub_2393C5AAC(v57);
    sub_2393DD178(v56);
    sub_2393DD178(v55);
    *v53 = 0;
    v53[2] = 0;
    v54 = 0;
    *&v53[4] = 0;
    *&v53[11] = 0;
    v12 = *(a2 + 48);
    v51[2] = *(a2 + 32);
    v51[3] = v12;
    v52 = *(a2 + 64);
    v13 = *(a2 + 16);
    v51[0] = *a2;
    v51[1] = v13;
    v14 = sub_2393DD7F4(v56, v51);
    if (v14 || (v14 = sub_2393DA78C(v56, v55), v14) || (v14 = sub_2393DAA9C(v55, v53, 0), v14) || (v14 = sub_2393DA7F0(v56, v57), v14))
    {
      v10 = v14 & 0xFFFFFFFF00000000;
      v9 = v14;
      goto LABEL_70;
    }

    if (!v53[14])
    {
      v53[14] = sub_2393C5C40(v57) == 22;
    }

    v15 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 67110144;
      DWORD1(buf) = v7;
      WORD4(buf) = 1024;
      *(&buf + 10) = *&v53[6];
      HIWORD(buf) = 1024;
      LODWORD(v73) = *&v53[4];
      WORD2(v73) = 1024;
      *(&v73 + 6) = *&v53[10];
      WORD5(v73) = 1024;
      HIDWORD(v73) = *&v53[8];
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "Received group attribute write for Group=%u Cluster=0x%04X_%04X attribute=0x%04X_%04X", &buf, 0x20u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    v16 = sub_2394B4FC8();
    v17 = (*(*v16 + 120))(v16, v49, 0);
    if (!v17)
    {
      v10 = 0x1E700000000;
      v9 = 11;
      goto LABEL_70;
    }

    v18 = v17;
    if ((*(a1 + 264) & 8) == 0 || *(a1 + 192) == 1 && (v20 = sub_2393BE2E0((a1 + 192)), *v20 == *v53) && *(v20 + 4) == *&v53[4])
    {
      v19 = 0;
    }

    else
    {
      v19 = *(a1 + 192);
    }

    v21 = 0;
    v22 = 0;
    v50 = -65536;
    while ((*(*v18 + 24))(v18, &v50))
    {
      if (v7 == v50)
      {
        *v53 = HIWORD(v50);
        if (v21)
        {
          v21 = 1;
          if ((v19 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else
        {
          v23 = v15;
          v24 = sub_2393BBD64(a1, v53);
          v25 = HIBYTE(v24);
          v26 = v53[14];
          if (!v53[14] && (*&v24 & ((v24 & 0xFF00) >> 8) & 1) != 0)
          {
            v26 = 1;
            v53[14] = 1;
          }

          if (*(a1 + 192) == 1)
          {
            v48 = *v53;
            v27 = *&v53[4];
            v28 = sub_2393BE2E0((a1 + 192));
            v29 = 1;
            if (*v28 == -1 && *(v28 + 1) == v27)
            {
              v29 = *(v28 + 2) != v48;
            }
          }

          else
          {
            v29 = 1;
          }

          v21 = v25;
          if (!v26)
          {
            v29 = 0;
          }

          v15 = v23;
          v22 = v29;
          if ((v19 & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        v30 = sub_2393B50CC((a1 + 192));
        v31 = *(v30 + 2);
        *&buf = *v30;
        DWORD2(buf) = v31;
        LOWORD(buf) = HIWORD(v50);
        v32 = *(a1 + 256);
        if (!v32)
        {
          v10 = 0x21100000000;
          goto LABEL_69;
        }

        if ((*(*v32 + 16))(v32, a1, &buf))
        {
          v33 = *(a1 + 232);
          if (v33)
          {
            (*(*v33 + 128))(v33, &buf, 1);
          }
        }

LABEL_43:
        v34 = *(a1 + 256);
        if (!v34)
        {
          v10 = 0x21800000000;
LABEL_69:
          (*(*v18 + 32))(v18);
          v9 = 3;
          goto LABEL_70;
        }

        if ((*(*v34 + 16))(v34, a1, v53))
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 67110144;
            DWORD1(buf) = HIWORD(v50);
            WORD4(buf) = 1024;
            *(&buf + 10) = *&v53[6];
            HIWORD(buf) = 1024;
            LODWORD(v73) = *&v53[4];
            WORD2(v73) = 1024;
            *(&v73 + 6) = *&v53[10];
            WORD5(v73) = 1024;
            HIDWORD(v73) = *&v53[8];
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "Writing attribute endpoint=%u Cluster=0x%04X_%04X attribute=0x%04X_%04X is conflict with other write transactions.", &buf, 0x20u);
          }

          if (sub_2393D5398(3u))
          {
            sub_2393D5320(0xDu, 3);
          }
        }

        else
        {
          if (v22)
          {
            v35 = *(a1 + 232);
            if (v35)
            {
              (*(*v35 + 128))(v35, v53, 0);
            }
          }

          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            LODWORD(buf) = 67110144;
            DWORD1(buf) = HIWORD(v50);
            WORD4(buf) = 1024;
            *(&buf + 10) = *&v53[6];
            HIWORD(buf) = 1024;
            LODWORD(v73) = *&v53[4];
            WORD2(v73) = 1024;
            *(&v73 + 6) = *&v53[10];
            WORD5(v73) = 1024;
            HIDWORD(v73) = *&v53[8];
            _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "Processing group attribute write for endpoint=%u Cluster=0x%04X_%04X attribute=0x%04X_%04X", &buf, 0x20u);
          }

          if (sub_2393D5398(3u))
          {
            sub_2393D5320(0xDu, 3);
          }

          v73 = v57[1];
          v74 = v57[2];
          v75 = v57[3];
          v76 = v58;
          buf = v57[0];
          v36 = sub_2394DF150();
          (*(*v36 + 16))(v36, 1, 0, v53);
          if (sub_2393BD1E0(a1, v59, v53, &buf))
          {
            v47 = v22;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v45 = HIWORD(v50);
              v37 = *&v53[6];
              v38 = v19;
              v39 = *&v53[4];
              log = v15;
              v40 = *&v53[10];
              v44 = *&v53[8];
              v41 = sub_2393C9138();
              *v60 = 67110402;
              v61 = v45;
              v62 = 1024;
              v63 = v37;
              v64 = 1024;
              v65 = v39;
              v19 = v38;
              v22 = v47;
              v66 = 1024;
              v67 = v40;
              v15 = log;
              v68 = 1024;
              v69 = v44;
              v70 = 2080;
              v71 = v41;
              _os_log_impl(&dword_238DAE000, log, OS_LOG_TYPE_ERROR, "WriteClusterData Endpoint=%u Cluster=0x%04X_%04X Attribute =0x%04X_%04X failed: %s", v60, 0x2Au);
            }

            if (sub_2393D5398(1u))
            {
              sub_2393C9138();
              v22 = v47;
              sub_2393D5320(0xDu, 1);
            }
          }

          v42 = sub_2394DF150();
          (*(*v42 + 16))(v42, 1, 1, v53);
        }
      }
    }

    *v53 = -1;
    *(a1 + 264) = *(a1 + 264) & 0xF7 | (8 * (v53[14] != 0));
    *(a1 + 192) = 1;
    *(a1 + 204) = *&v53[8];
    *(a1 + 196) = *v53;
    (*(*v18 + 32))(v18);
    if (!sub_2393C6B34(a2))
    {
      continue;
    }

    break;
  }

LABEL_3:
  v8 = sub_2393BC8B8(a1, 1);
  v9 = v8;
  v10 = v8 & 0xFFFFFFFF00000000;
LABEL_70:
  sub_2393BC8B8(a1, 0);
  result = v10 + v9;
LABEL_71:
  v43 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2393BDEB8(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *a3;
  v5 = 0;
  if (v4 <= 1u && (*(a3 + 1) & 0x100) != 0)
  {
    v5 = *(a3 + 1);
  }

  return sub_2393BD0E0(a1, a2, &v4);
}

unint64_t sub_2393BDEFC(uint64_t a1, unsigned __int16 *a2, __int16 a3)
{
  v5 = 1;
  v4 = a3 << 8;
  return sub_2393BDEB8(a1, a2, &v4);
}

unint64_t sub_2393BDF30(uint64_t a1, unsigned __int16 *a2, __int16 a3)
{
  v5 = 1;
  v4 = (a3 << 8) | 1;
  return sub_2393BDEB8(a1, a2, &v4);
}

const char *sub_2393BDF64(uint64_t a1)
{
  v1 = *(a1 + 265);
  if (v1 > 3)
  {
    return "N/A";
  }

  else
  {
    return off_278A75C98[v1];
  }
}

void **sub_2393BDF8C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_2393BE138(a1, a2, a3, 1u);
  if (result)
  {
    *a4 = result;
    *(a4 + 1) = 0;
    *(a4 + 16) = 1;
    return result;
  }

  v21 = *(a1 + 232);
  v22 = -1;
  v23 = -1;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  v9 = sub_2394C417C(&v21, a3);
  if (v10)
  {
    v11 = HIDWORD(v9);
    if ((v9 & 0x1F000000000000) == 0)
    {
      v13 = 136;
      goto LABEL_12;
    }

    v12 = sub_2393BE138(a1, a2, a3, HIWORD(v9) & 0x1F);
    if (!v12)
    {
      if (v11 & 0x40) == 0 || (*(a1 + 264))
      {
        if ((v11 & 4) == 0 || (v11 & 8) == 0 || *a2)
        {
          if (*(a3 + 16) == 1)
          {
            v16 = *(a1 + 232);
            v17 = -1;
            v19 = 0;
            v20 = 0;
            v18 = 0;
            v14 = sub_2394C40A8(&v16, a3);
            if ((v15 & 0x100000000) == 0)
            {
              sub_23952F2B8();
            }

            if (*sub_238DE3698((a3 + 16)) != HIDWORD(v14))
            {
              *a4 = 146;
              *(a4 + 2) = 0;
              *(a4 + 16) = 1;
              sub_2393D6E84(&v20);
              return sub_2393D6E84(&v26);
            }

            sub_2393D6E84(&v20);
          }

          *a4 = 0;
          goto LABEL_13;
        }

        v13 = 126;
      }

      else
      {
        v13 = 198;
      }

LABEL_12:
      *a4 = v13;
LABEL_13:
      *(a4 + 2) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    LOBYTE(v12) = sub_2394C425C(*(a1 + 232), a3, 134);
  }

  *a4 = v12;
  *(a4 + 1) = 0;
LABEL_14:
  *(a4 + 16) = 1;
  return sub_2393D6E84(&v26);
}

uint64_t sub_2393BE138(uint64_t a1, uint64_t a2, unsigned __int16 *a3, unsigned int a4)
{
  v6 = *a3;
  if (*(a1 + 252) == 1 && v6 == *(a1 + 240) && *(a3 + 1) == *(a1 + 244) && *(a3 + 2) == *(a1 + 248))
  {
    return 0;
  }

  else
  {
    v8 = *(a3 + 2);
    v13 = *(a3 + 1);
    v14 = v6;
    v15 = 2;
    v16 = v8;
    v17 = 1;
    v9 = sub_23949D748();
    v10 = sub_23949CFB0(v9, a2, &v13, a4);
    if (v10 == 168)
    {
      v11 = -99;
    }

    else
    {
      v11 = 1;
    }

    if (v10 == 165)
    {
      v7 = 126;
    }

    else
    {
      v7 = v11;
    }

    if (!v10)
    {
      return 0;
    }
  }

  return v7;
}

void *sub_2393BE200(void *a1)
{
  *a1 = &unk_284BB7CD0;
  a1[1] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 1));
  return a1;
}

void sub_2393BE260(void *a1)
{
  *a1 = &unk_284BB7CD0;
  a1[1] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 1));

  JUMPOUT(0x23EE77B60);
}

_BYTE *sub_2393BE2E0(_BYTE *a1)
{
  if ((*a1 & 1) == 0)
  {
    sub_23952F0D8();
  }

  return a1 + 4;
}

uint64_t sub_2393BE328(uint64_t a1)
{
  v8 = 0;
  v7 = 0;
  v2 = sub_2393BE3EC(a1, (a1 + 8), &v7, 1);
  v3 = **(a1 + 56);
  if (v2)
  {
    v4 = *(v3 + 72);

    return v4();
  }

  else
  {
    v6 = *(v3 + 32);

    return v6();
  }
}

unint64_t sub_2393BE3EC(uint64_t a1, unsigned __int16 *a2, _BYTE *a3, int a4)
{
  *&v16[11] = *MEMORY[0x277D85DE8];
  v5 = a1 + 8;
  if (*a2 != *(a1 + 8) || *(a2 + 1) != *(a1 + 12) || *(a2 + 2) != *(a1 + 16))
  {
    goto LABEL_19;
  }

  if (!a4)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_14;
  }

  v6 = 0;
  v7 = 0;
  if (!*a3)
  {
LABEL_19:
    if (*(a1 + 22))
    {
      v13 = 0;
      v14 = 0;
      sub_2393C5AAC(v11);
      v12 = 0;
      v8 = sub_2393BE5A0(a1, v11);
      if (v8 || (*(a1 + 22) = 1, v8 = sub_2393C6B34(v11), v8))
      {
        v6 = v8 & 0xFFFFFFFF00000000;
      }

      else
      {
        (*(**(a1 + 56) + 48))(*(a1 + 56), v5, v11, &v13);
        sub_2393BEAE0((a1 + 32));
        v6 = 0;
        LODWORD(v8) = 0;
        *v16 = 0;
        *&v16[7] = 0;
        *(a1 + 11) = v15;
        *(a1 + 19) = 0;
        *(a1 + 20) = 0;
        *(a1 + 22) = 0;
        *(a1 + 8) = 0;
        *(a1 + 10) = 0;
        *(a1 + 24) = 0;
      }

      if (v12)
      {
        j__free(v12);
      }

      v7 = v8;
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

LABEL_14:
  v9 = *MEMORY[0x277D85DE8];
  return v7 | v6;
}

unint64_t sub_2393BE5A0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 == v5)
  {
    v8 = 4;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *v4++;
      v6 += *(v7 + 16);
    }

    while (v4 != v5);
    v8 = v6 + 4;
  }

  v24 = sub_2393D52D0(v8, 1uLL);
  if (v24)
  {
    v25 = 0;
    sub_2393BEF18(v22, &v24, v8);
    v9 = sub_2393C8CE0(v22, 0x100uLL, 22, &v25);
    v10 = v9;
    if (v9)
    {
      v11 = HIDWORD(v9);
    }

    else
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      while (v12 != v13)
      {
        sub_2393C5AAC(v20);
        v21 = 0;
        sub_238DD2F90(v20, v12);
        v14 = sub_2393C6B34(v20);
        LODWORD(v15) = v14;
        if (v14)
        {
          v11 = HIDWORD(v14);
          if (v21)
          {
            sub_2393D96C8(v21);
          }

          goto LABEL_24;
        }

        v15 = sub_2393C8964(v22, 0x100uLL, v20);
        if (v21)
        {
          sub_2393D96C8(v21);
        }

        if (v15)
        {
          v11 = HIDWORD(v15);
LABEL_24:
          v10 = v15;
          goto LABEL_27;
        }

        ++v12;
      }

      v16 = sub_2393C8DE0(v22, v25);
      if (v16)
      {
        v11 = HIDWORD(v16);
        v10 = v16;
      }

      else
      {
        sub_2393BE788(v22, &v24);
        v17 = (a2 + 72);
        if ((a2 + 72) == &v24)
        {
          v18 = *v17;
        }

        else
        {
          v18 = v24;
          *v17 = v24;
          v24 = 0;
        }

        sub_2393C5ADC(a2, v18, v8);
        v11 = 0;
        v10 = 0;
      }
    }

LABEL_27:
    if (v23)
    {
      j__free(v23);
    }

    if (v24)
    {
      j__free(v24);
    }
  }

  else
  {
    v11 = 80;
    v10 = 11;
  }

  return v10 | (v11 << 32);
}

unint64_t sub_2393BE788(uint64_t a1, void *a2)
{
  v4 = sub_2393C7CB8(a1);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v6 = (a1 + 64);
    if ((a1 + 64) != a2)
    {
      *a2 = *v6;
      *v6 = 0;
    }

    sub_2393C7BB8(a1, 0, 0);
    LODWORD(v4) = 0;
    v5 = 0;
  }

  return v5 | v4;
}

unint64_t sub_2393BE7F8(void *a1, uint64_t a2)
{
  sub_2393C7B90(v23);
  v24[1] = 0;
  v24[2] = 0;
  v24[0] = &unk_284BB83A8;
  v25 = 0;
  sub_2393D9C18(0x4AAuLL, 0x26u, v26);
  v22 = v26[0];
  if (v26[0])
  {
    sub_238EA16C4(v24, &v22, 1);
    sub_2393C7BF0(v23, v24, 0xFFFFFFFF);
    v4 = sub_2393C8964(v23, 0x100uLL, a2);
    v5 = v4;
    if (v4)
    {
      v6 = HIDWORD(v4);
    }

    else
    {
      v7 = sub_238DD2EFC(v23, &v22);
      if (v7)
      {
        v6 = HIDWORD(v7);
        v5 = v7;
      }

      else
      {
        sub_2393D955C(&v22);
        v10 = a1[5];
        v9 = a1[6];
        if (v10 >= v9)
        {
          v12 = a1[4];
          v13 = (v10 - v12) >> 3;
          if ((v13 + 1) >> 61)
          {
            sub_238EAEDBC();
          }

          v14 = v9 - v12;
          v15 = v14 >> 2;
          if (v14 >> 2 <= (v13 + 1))
          {
            v15 = v13 + 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          v26[4] = a1 + 4;
          if (v16)
          {
            sub_2393BEFD8((a1 + 4), v16);
          }

          *(8 * v13) = v22;
          v11 = 8 * v13 + 8;
          v22 = 0;
          v17 = a1[4];
          v18 = a1[5];
          v19 = (8 * v13 + v17 - v18);
          sub_2393BF020((a1 + 4), v17, v18, v19);
          v20 = a1[4];
          a1[4] = v19;
          a1[5] = v11;
          v21 = a1[6];
          a1[6] = 0;
          v26[2] = v20;
          v26[3] = v21;
          v26[0] = v20;
          v26[1] = v20;
          sub_2393BF084(v26);
        }

        else
        {
          *v10 = v22;
          v11 = (v10 + 1);
          v22 = 0;
        }

        v5 = 0;
        v6 = 0;
        a1[5] = v11;
      }
    }

    if (v22)
    {
      sub_2393D96C8(v22);
    }
  }

  else
  {
    v5 = 11;
    v6 = 121;
  }

  sub_2393B8400(v24);
  return v5 | (v6 << 32);
}

unint64_t sub_2393BE9F8(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 14);
  if (v5 != 4)
  {
    if (v5 != 1)
    {
      goto LABEL_10;
    }

    v9 = 0;
    if (sub_2393C5C40(a3) != 22)
    {
      v7 = 0x9600000000;
      LODWORD(v6) = 35;
      return v6 | v7;
    }

    sub_2393BEAE0(a1 + 4);
    v6 = sub_2393C6A2C(a3, &v9);
    if (!v6)
    {
      do
      {
        v6 = sub_2393C6B34(a3);
        if (v6)
        {
          break;
        }

        v6 = sub_2393BE7F8(a1, a3);
      }

      while (!v6);
      if (v6 == 33)
      {
        v6 = sub_2393C6A98(a3, v9);
        if (!v6)
        {
          goto LABEL_10;
        }
      }
    }

LABEL_12:
    v7 = v6 & 0xFFFFFFFF00000000;
    return v6 | v7;
  }

  v6 = sub_2393BE7F8(a1, a3);
  if (v6)
  {
    goto LABEL_12;
  }

LABEL_10:
  v7 = 0;
  LODWORD(v6) = 0;
  return v6 | v7;
}

void sub_2393BEAE0(void *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; *i = 0)
  {
    v5 = *--i;
    v4 = v5;
    if (v5)
    {
      sub_2393D96C8(v4);
    }
  }

  a1[1] = v2;
}

unint64_t sub_2393BEB2C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = sub_2393BE3EC(a1, a2, a4, 0);
  v9 = result;
  if (!result)
  {
    if (*(a2 + 14))
    {
      v11 = *a4 == 0;
    }

    else
    {
      v11 = 0;
    }

    if (v11)
    {
      result = sub_2393BE9F8(a1, a2, a3);
      v9 = result;
      if (result)
      {
        goto LABEL_2;
      }
    }

    else
    {
      result = (*(**(a1 + 56) + 48))(*(a1 + 56), a2, a3, a4);
    }

    v12 = *a2;
    *(a1 + 16) = *(a2 + 8);
    *(a1 + 8) = v12;
    LOBYTE(v12) = *(a2 + 14);
    *(a1 + 20) = *(a2 + 12);
    *(a1 + 22) = v12;
    LODWORD(v12) = *(a2 + 16);
    *(a1 + 24) = v12;
    if (v12 == 1)
    {
      *(a1 + 28) = *(a2 + 20);
    }
  }

LABEL_2:
  if (v9)
  {
    v10 = *(**(a1 + 56) + 72);

    return v10();
  }

  return result;
}

uint64_t sub_2393BEC78(uint64_t a1)
{
  *a1 = &unk_284BB7D38;
  v3 = (a1 + 32);
  sub_2393BEF84(&v3);
  return a1;
}

uint64_t sub_2393BECD0(uint64_t a1)
{
  *a1 = &unk_284BB7D38;
  v3 = (a1 + 32);
  sub_2393BEF84(&v3);
  return MEMORY[0x23EE77B60](a1, 0x10A1C405D84613CLL);
}

uint64_t sub_2393BEDB4(uint64_t a1)
{
  sub_2393BEAE0((a1 + 32));
  v2 = *(**(a1 + 56) + 72);

  return v2();
}

uint64_t sub_2393BEF18(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  sub_2393C7B90(a1);
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  if ((v6 + 64) == a2)
  {
    v8 = 0;
  }

  else
  {
    *v7 = *a2;
    *a2 = 0;
    v8 = *v7;
  }

  sub_2393C7BB8(a1, v8, a3);
  return a1;
}

void sub_2393BEF84(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_2393BEAE0(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_2393BEFD8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  sub_238EAEDBC();
}

void sub_2393BF020(uint64_t a1, _WORD **a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (*v5)
      {
        sub_2393D96C8(*v5);
      }

      *v5++ = 0;
    }
  }
}

uint64_t sub_2393BF084(uint64_t a1)
{
  sub_2393BF0BC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2393BF0BC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 8);
    *(a1 + 16) = i - 8;
    v6 = *(i - 8);
    if (v6)
    {
      sub_2393D96C8(v6);
    }

    *v5 = 0;
  }
}

uint64_t sub_2393BF120(uint64_t result, uint64_t a2)
{
  *(result + 136) = 1;
  *(result + 144) = a2;
  return result;
}

uint64_t sub_2393BF138(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v3;
  LOWORD(v3) = *a3;
  *(result + 14) = *(a3 + 2);
  *(result + 12) = v3;
  return result;
}

uint64_t sub_2393BF15C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = *a2;
  v6 = *(a2 + 1);
  if (v5 == 0xFFFF || v6 == -1)
  {
    return 0x1B90000002FLL;
  }

  v9 = sub_2393BF20C(a1, v5, v6, &v13);
  v10 = v13;
  if (v13)
  {
    v11 = v13 & 0xFFFFFFFF00000000;
  }

  else
  {
    v12 = *(v9 + 32);
    *a3 = v12;
    v11 = 0;
    if (v12 == 1)
    {
      v10 = 0;
      *(a3 + 4) = *(v9 + 36);
    }

    else
    {
      v10 = 0;
    }
  }

  return v10 | v11;
}

uint64_t sub_2393BF20C(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = sub_2393BF650(a1, a2, a4);
  if (*a4)
  {
    return 0;
  }

  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v8;
  do
  {
    v12 = *(v9 + 32);
    v13 = v12 >= a3;
    v14 = v12 < a3;
    if (v13)
    {
      v11 = v9;
    }

    v9 = *(v9 + 8 * v14);
  }

  while (v9);
  if (v11 != v8 && *(v11 + 32) <= a3)
  {
    result = v11 + 40;
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
LABEL_11:
    result = 0;
    *a4 = 0x16500000010;
    a4[1] = "src/app/ClusterStateCache.cpp";
  }

  return result;
}

unint64_t sub_2393BF2A8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 120);
  v3 = a1 + 120;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v7 = v3;
  do
  {
    v8 = *(v4 + 48);
    v9 = v8 >= a2;
    v10 = v8 < a2;
    if (v9)
    {
      v7 = v4;
    }

    v4 = *(v4 + 8 * v10);
  }

  while (v4);
  if (v7 != v3 && *(v7 + 48) <= a2)
  {
    sub_2393C5AAC(v16);
    v17 = 0;
    sub_2393D9BEC(*(v7 + 80));
    v15 = *(v7 + 80);
    sub_238DD2F90(v16, &v15);
    if (v15)
    {
      sub_2393D96C8(v15);
    }

    v14 = sub_2393C6B34(v16);
    if (!v14)
    {
      sub_2393C5BDC(a3, v16);
      v14 = 0;
    }

    if (v17)
    {
      sub_2393D96C8(v17);
    }

    v11 = v14 & 0xFFFFFFFF00000000;
    v12 = v14;
  }

  else
  {
LABEL_9:
    v11 = 0x18D00000000;
    v12 = 16;
  }

  return v11 | v12;
}

uint64_t sub_2393BF3A0(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 120);
  v3 = a1 + 120;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 48);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 48) <= a2)
  {
    result = v6 + 32;
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
LABEL_9:
    result = 0;
    *a3 = 0x18D00000010;
    a3[1] = "src/app/ClusterStateCache.cpp";
  }

  return result;
}

uint64_t sub_2393BF404(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = sub_2393C1E98(a1 + 152, a2);
  if ((a1 + 160) == v5)
  {
    v7 = 0x1EE00000000;
    v6 = 16;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = *(v5 + 20);
    *(a3 + 2) = *(v5 + 42);
    *a3 = v8;
  }

  return v7 | v6;
}

uint64_t sub_2393BF49C(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  result = a1 + 24;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = result;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result && v5 >= *(v6 + 32))
    {
      return sub_2393C2444(v6 + 40, a2 + 1);
    }
  }

  return result;
}

uint64_t sub_2393BF4E8(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 24);
  result = a1 + 24;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = result;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result && v5 >= *(v6 + 32))
    {
      v12 = *(v6 + 48);
      v10 = v6 + 48;
      v11 = v12;
      if (v12)
      {
        v13 = *(a2 + 1);
        v14 = v10;
        do
        {
          v15 = *(v11 + 32);
          v8 = v15 >= v13;
          v16 = v15 < v13;
          if (v8)
          {
            v14 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        if (v14 != v10 && v13 >= *(v14 + 32))
        {
          return sub_2393C24F4(v14 + 40, a2 + 2);
        }
      }
    }
  }

  return result;
}

void sub_2393BF570(uint64_t a1, int a2)
{
  v4 = (a1 + 120);
  sub_238EF77DC(a1 + 112, *(a1 + 120));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  if (a2)
  {
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 160);
  v5 = (a1 + 160);
  sub_238EA183C((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
}

uint64_t sub_2393BF5D0(uint64_t a1, void *a2)
{
  if (*(a1 + 240) == -1 || *(a1 + 244) == -1)
  {
    v2 = 0x2B400000000;
    v3 = 3;
  }

  else
  {
    v2 = 0;
    v3 = 0;
    *a2 = *(a1 + 240);
  }

  return v3 | v2;
}

uint64_t sub_2393BF650(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = *(a1 + 24);
  v3 = a1 + 24;
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v3;
  do
  {
    v7 = *(v4 + 32);
    v8 = v7 >= a2;
    v9 = v7 < a2;
    if (v8)
    {
      v6 = v4;
    }

    v4 = *(v4 + 8 * v9);
  }

  while (v4);
  if (v6 != v3 && *(v6 + 32) <= a2)
  {
    result = v6 + 40;
    *a3 = 0;
    a3[1] = 0;
  }

  else
  {
LABEL_9:
    result = 0;
    *a3 = 0x15000000010;
    a3[1] = "src/app/ClusterStateCache.cpp";
  }

  return result;
}

uint64_t sub_2393BF6B4(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v7 = sub_2393BF20C(a1, a2, a3, a5);
  if (*a5)
  {
    return 0;
  }

  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v9;
  do
  {
    v13 = *(v10 + 32);
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * v15);
  }

  while (v10);
  if (v12 != v9 && *(v12 + 32) <= a4)
  {
    result = v12 + 40;
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
LABEL_11:
    result = 0;
    *a5 = 0x17B00000010;
    a5[1] = "src/app/ClusterStateCache.cpp";
  }

  return result;
}

unint64_t sub_2393BF750(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v46 = *MEMORY[0x277D85DE8];
  v44 = -1;
  v8 = a1 + 24;
  v7 = *(a1 + 24);
  v9 = a1 + 16;
  if (!v7)
  {
    goto LABEL_9;
  }

  v10 = *a2;
  v11 = a1 + 24;
  do
  {
    v12 = *(v7 + 32);
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v7;
    }

    v7 = *(v7 + 8 * v14);
  }

  while (v7);
  if (v11 == v8 || v10 < *(v11 + 32))
  {
LABEL_9:
    v11 = a1 + 24;
  }

  if (a3)
  {
    v43 = 0;
    v15 = sub_2393BFBAC(a1, a3, &v43);
    LODWORD(v16) = v15;
    if (v15)
    {
      v17 = v15 & 0xFFFFFFFF00000000;
LABEL_13:
      v18 = v16;
      goto LABEL_61;
    }

    if (*(a1 + 248) == 1)
    {
      v42 = 0;
      v19 = v43;
      v41 = sub_2393D52D0(v43, 1uLL);
      if (!v41)
      {
        v17 = 0x6000000000;
        LODWORD(v16) = 11;
        goto LABEL_13;
      }

      v42 = v19;
      sub_2393BEF18(v39, &v41, v43);
      v16 = sub_2393C8964(v39, 0x100uLL, a3);
      if (v16 || (v16 = sub_2393BE788(v39, &v41), v16))
      {
        if (v40)
        {
          j__free(v40);
        }

        v17 = v16 & 0xFFFFFFFF00000000;
        if (v41)
        {
          j__free(v41);
        }

        goto LABEL_13;
      }

      sub_2393BFCA4(&v44, &v41);
      if (v40)
      {
        j__free(v40);
      }

      if (v41)
      {
        j__free(v41);
      }
    }

    else
    {
      if (v44 == 1 && v45)
      {
        j__free(v45);
        v45 = 0;
      }

      LODWORD(v45) = v43;
      v44 = 2;
    }

    v39[0] = a2;
    v21 = sub_2393C25B0(v9, a2);
    v39[0] = a2 + 2;
    *(sub_2393C2878((v21 + 5), a2 + 1) + 72) = 0;
    v22 = *(a1 + 240);
    if (v22 != 0xFFFF)
    {
      v23 = *(a1 + 244);
      if (v23 != -1 && (v22 != *a2 || v23 != *(a2 + 1)))
      {
        sub_2393BFD18(a1);
      }
    }

    v24 = *(a1 + 64);
    if (v24 != (a1 + 72))
    {
      while (1)
      {
        v25 = *(v24 + 18);
        v26 = v25 == 0xFFFF || v25 == *a2;
        if (v26)
        {
          v27 = *(v24 + 7);
          v28 = v27 == -1 || v27 == *(a2 + 1);
          if (v28 && *(v24 + 8) == -1)
          {
            break;
          }
        }

        v29 = v24[1];
        if (v29)
        {
          do
          {
            v30 = v29;
            v29 = *v29;
          }

          while (v29);
        }

        else
        {
          do
          {
            v30 = v24[2];
            v26 = *v30 == v24;
            v24 = v30;
          }

          while (!v26);
        }

        v24 = v30;
        if (v30 == (a1 + 72))
        {
          goto LABEL_55;
        }
      }

      v39[0] = a2;
      v36 = sub_2393C25B0(v9, a2);
      v39[0] = a2 + 2;
      v37 = sub_2393C2878((v36 + 5), a2 + 1);
      v38 = *(a2 + 16);
      *(v37 + 64) = v38;
      if (v38 == 1)
      {
        *(v37 + 17) = *(a2 + 5);
      }
    }

LABEL_55:
    *(a1 + 240) = *a2;
  }

  else if (*(a1 + 248) == 1)
  {
    LOWORD(v45) = *a4;
    BYTE2(v45) = *(a4 + 2);
    v44 = 0;
  }

  else
  {
    if (*(a4 + 2))
    {
      v20 = 8;
    }

    else
    {
      v20 = 5;
    }

    LODWORD(v45) = v20;
    v44 = 2;
  }

  if (v11 == v8)
  {
    sub_2393BFDB8(a1 + 88, a2);
  }

  v39[0] = a2;
  v31 = sub_2393C25B0(v9, a2);
  v39[0] = a2 + 2;
  v32 = sub_2393C2878((v31 + 5), a2 + 1);
  v39[0] = a2 + 4;
  v33 = sub_2393C29A0((v32 + 5), a2 + 2);
  sub_2393BFE88(v33 + 5, &v44);
  if (*(a1 + 248) == 1)
  {
    sub_2393C2A78(a1 + 40, a2);
  }

  v17 = 0;
  v18 = 0;
LABEL_61:
  if (v44 == 1 && v45)
  {
    j__free(v45);
  }

  v34 = *MEMORY[0x277D85DE8];
  return v18 | v17;
}

unint64_t sub_2393BFBAC(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  sub_2393C5AAC(v13);
  sub_2393C5BDC(v13, a2);
  v5 = v14;
  v15[0] = sub_2393D52D0(v14, 1uLL);
  if (v15[0])
  {
    v15[1] = v5;
    sub_2393BEF18(v11, v15, v5);
    v6 = sub_2393C8964(v11, 0x100uLL, v13);
    v7 = v6;
    if (v6)
    {
      v8 = HIDWORD(v6);
    }

    else
    {
      *a3 = v11[11];
      v9 = sub_2393BE788(v11, v15);
      if (v9)
      {
        v7 = v9;
      }

      else
      {
        v7 = 0;
      }

      if (v9)
      {
        v8 = HIDWORD(v9);
      }

      else
      {
        v8 = 0;
      }
    }

    if (v12)
    {
      j__free(v12);
    }

    if (v15[0])
    {
      j__free(v15[0]);
    }
  }

  else
  {
    v7 = 11;
    v8 = 60;
  }

  return v7 | (v8 << 32);
}

void sub_2393BFCA4(void *a1, void **a2)
{
  v4 = (a1 + 1);
  if (*a1 == 1 && *v4)
  {
    j__free(*v4);
  }

  *v4 = 0;
  v4[1] = 0;
  if (v4 != a2)
  {
    a1[2] = a2[1];
    a2[1] = 0;
    a1[1] = *a2;
    *a2 = 0;
  }

  *a1 = 1;
}

uint64_t *sub_2393BFD18(uint64_t *result)
{
  if (*(result + 120) != -1)
  {
    v1 = result + 61;
    if (*(result + 61) != -1)
    {
      v2 = sub_2393C25B0((result + 2), result + 120);
      result = sub_2393C2878((v2 + 5), v1);
      if (*(result + 64) == 1)
      {
        *(result + 72) = 1;
        *(result + 19) = *(result + 17);
        *(result + 64) = 0;
      }
    }
  }

  return result;
}

void sub_2393BFDB8(uint64_t a1, _WORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 1;
    if (v7 <= -2)
    {
      sub_238EAEDBC();
    }

    v8 = v4 - *a1;
    if (v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    else
    {
      v9 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_2393C295C(a1, v10);
    }

    v11 = (2 * v7);
    *v11 = *a2;
    v6 = 2 * v7 + 2;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *sub_2393BFE88(uint64_t *a1, uint64_t *a2)
{
  v4 = a1 + 1;
  if (*a1 == 1 && *v4)
  {
    j__free(*v4);
    *v4 = 0;
  }

  v6 = (a2 + 1);
  v5 = *a2;
  *a1 = *a2;
  if (v5 == 2)
  {
    *v4 = *v6;
  }

  else if (v5 == 1)
  {
    *v4 = 0;
    v4[1] = 0;
    if (a1 != a2)
    {
      a1[2] = a2[2];
      a2[2] = 0;
      a1[1] = a2[1];
      a2[1] = 0;
    }
  }

  else
  {
    if (v5)
    {
      goto LABEL_14;
    }

    v7 = *v6;
    *(v4 + 2) = *(a2 + 10);
    *v4 = v7;
  }

  if (*a2 == 1 && *v6)
  {
    j__free(*v6);
    *v6 = 0;
  }

LABEL_14:
  *a2 = -1;
  return a1;
}

unint64_t sub_2393BFF60(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  if (!a3)
  {
    if (a4 && *(a1 + 248) == 1)
    {
      v19[0] = a2;
      v11 = sub_2393C2C84(a1 + 152, a2);
      LODWORD(v9) = 0;
      v12 = 0;
      v13 = *a4;
      *(v11 + 42) = *(a4 + 2);
      *(v11 + 40) = v13;
      return v12 | v9;
    }

LABEL_11:
    LODWORD(v9) = 0;
    v12 = 0;
    return v12 | v9;
  }

  v7 = (a1 + 136);
  if (*(a1 + 136) == 1)
  {
    v8 = *(a2 + 16);
    if (v8 <= *sub_239289A18(v7))
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 248) != 1)
  {
LABEL_18:
    LODWORD(v9) = 0;
    v12 = 0;
    *(a1 + 136) = 1;
    *(a1 + 144) = *(a2 + 16);
    return v12 | v9;
  }

  sub_2393D9C18(0x4AAuLL, 0x26u, &v22);
  if (v22)
  {
    sub_2393C7B90(v19);
    v20[1] = 0;
    v20[2] = 0;
    v20[0] = &unk_284BB83A8;
    v21 = 0;
    sub_238EA16C4(v20, &v22, 0);
    sub_2393C7BF0(v19, v20, 0xFFFFFFFF);
    v9 = sub_2393C8964(v19, 0x100uLL, a3);
    if (v9 || (v9 = sub_238DD2EFC(v19, &v22), v9))
    {
      v14 = 0;
    }

    else
    {
      sub_2393D955C(&v22);
      v16 = *(a2 + 16);
      v17[0] = *a2;
      v17[1] = v16;
      v17[2] = *(a2 + 32);
      v18 = v22;
      v22 = 0;
      sub_2393C2BA4(a1 + 112, v17);
      if (v18)
      {
        sub_2393D96C8(v18);
      }

      v14 = 1;
    }

    v12 = v9 & 0xFFFFFFFF00000000;
    sub_2393B8400(v20);
    if (v22)
    {
      sub_2393D96C8(v22);
    }

    if (v14)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v12 = 0xC500000000;
    LODWORD(v9) = 11;
  }

  return v12 | v9;
}

uint64_t sub_2393C0188(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  *(a1 + 240) = 0xFFFFFFFF0000FFFFLL;
  sub_238EA183C(a1 + 40, v1);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v2[6] = v2[5];
  v3 = *(**(v2 - 5) + 24);

  return v3();
}

void sub_2393C0200(uint64_t a1)
{
  sub_2393BFD18(a1);
  *(a1 + 240) = 0xFFFFFFFF0000FFFFLL;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v2 = *(a1 + 40);
  if (v2 != (a1 + 48))
  {
    do
    {
      (*(**(a1 + 8) + 128))(*(a1 + 8), a1, v2 + 28);
      v12 = *(v2 + 14) | (*(v2 + 8) << 32);
      sub_2393C2D2C(&v13, &v12);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 48));
    v6 = v13;
    if (v13 != v14)
    {
      do
      {
        (*(**(a1 + 8) + 136))(*(a1 + 8), a1, *(v6 + 14), *(v6 + 8));
        v7 = v6[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v6[2];
            v5 = *v8 == v6;
            v6 = v8;
          }

          while (!v5);
        }

        v6 = v8;
      }

      while (v8 != v14);
    }
  }

  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(**(a1 + 8) + 144))(*(a1 + 8), a1, v11);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8));
  sub_238EA183C(&v13, v14[0]);
}

uint64_t sub_2393C03D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 14) >= 2u)
  {
    sub_23952F354();
  }

  sub_2393C5AAC(v10);
  if (a3)
  {
    v8 = v10;
    sub_2393C5BDC(v10, a3);
  }

  else
  {
    v8 = 0;
  }

  sub_2393BF750(a1, a2, a3, a4);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2, v8, a4);
}

uint64_t sub_2393C0490(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  if (!(a3 | a4))
  {
    sub_23952F3EC();
  }

  sub_2393C5AAC(v10);
  if (a3)
  {
    v8 = v10;
    sub_2393C5BDC(v10, a3);
  }

  else
  {
    v8 = 0;
  }

  sub_2393BFF60(a1, a2, a3, a4);
  return (*(**(a1 + 8) + 40))(*(a1 + 8), a2, v8, a4);
}

unint64_t sub_2393C054C(uint64_t a1, unint64_t *a2, uint64_t a3, _BYTE *a4)
{
  sub_2393C7B90(&v42);
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = *a3;
    v10 = *a3 + 12 * v8;
    do
    {
      if (v9[1] == -1)
      {
        v11 = *(a3 + 8);
        if (v11)
        {
          v12 = *a3;
          v13 = 12 * v11;
          while (*(v12 + 4) == -1 || !sub_2393C07A0(v9, v12))
          {
            v12 += 12;
            v13 -= 12;
            if (!v13)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          sub_2393C2E28(a1 + 64, v9);
        }
      }

      v9 += 3;
    }

    while (v9 != v10);
  }

  __p = 0;
  v40 = 0;
  v41 = 0;
  sub_2393C0808(a1, &__p);
  *a4 = 0;
  v14 = __p;
  v15 = v40;
  if (__p == v40)
  {
    goto LABEL_36;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = a2[2];
    v19 = v18[3];
    v21 = *v18;
    v20 = v18[1];
    v44 = v18[2];
    v45 = v19;
    v42 = v21;
    v43 = v20;
    v22 = *(a3 + 8);
    if (v22)
    {
      break;
    }

LABEL_28:
    v14 += 6;
    if (v14 == v15)
    {
      goto LABEL_29;
    }
  }

  v23 = 12 * v22;
  v24 = *a3 + 8;
  v25 = v24;
  while (1)
  {
    v27 = *v25;
    v25 += 6;
    v26 = v27;
    if (v27 == 0xFFFF || v26 == *(v14 + 6))
    {
      v29 = *(v24 - 8);
      if (v29 == -1 || v29 == *v14)
      {
        break;
      }
    }

    v24 = v25;
    v23 -= 12;
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  v31 = sub_2393DBCB0(a2, v14);
  v16 = v31;
  v17 = HIDWORD(v31);
  if (!v31)
  {
    *a4 = 1;
    goto LABEL_28;
  }

LABEL_29:
  if (v16 == 25 || v16 == 11)
  {
    v32 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_DEFAULT, "OnUpdateDataVersionFilterList out of space; rolling back", &v38, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    v33 = a2[2];
    v34 = v42;
    v35 = v43;
    v36 = v45;
    v33[2] = v44;
    v33[3] = v36;
    *v33 = v34;
    v33[1] = v35;
    sub_2393D06DC(a2);
LABEL_36:
    v17 = 0;
    v16 = 0;
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return v16 | (v17 << 32);
}

BOOL sub_2393C07A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  result = 0;
  if (v2 == 0xFFFF || ((v3 = *(a2 + 8), v3 != 0xFFFF) ? (v4 = v2 == v3) : (v4 = 1), v4))
  {
    if (*a1 == -1 || (*a2 != -1 ? (v5 = *a1 == *a2) : (v5 = 1), v5))
    {
      v6 = *(a1 + 4);
      if (v6 == -1)
      {
        return 1;
      }

      v7 = *(a2 + 4);
      if (v7 == -1 || v6 == v7)
      {
        return 1;
      }
    }
  }

  return result;
}

unint64_t sub_2393C0808(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  v24 = (a1 + 24);
  if (v2 != (a1 + 24))
  {
    do
    {
      v3 = v2[5];
      if (v3 != v2 + 6)
      {
        v23 = *(v2 + 16);
        do
        {
          if (*(v3 + 72) == 1)
          {
            v4 = sub_238DE3698(v3 + 72);
            v5 = v3[5];
            if (v5 != v3 + 6)
            {
              v6 = 0;
              v7 = *(v3 + 8);
              v26 = *(v3 + 8);
              v27 = *v4;
              do
              {
                v8 = v5[5];
                if (v8 == 2)
                {
                  v9 = *sub_2393C0A84(v5 + 5);
                }

                else if (v8 == 1)
                {
                  sub_2393C5AAC(&v28);
                  v10 = *sub_2393C0AA8(v5 + 5);
                  v11 = sub_2393C0AA8(v5 + 5);
                  sub_2393C5ADC(&v28, v10, v11[1]);
                  result = sub_2393C6B34(&v28);
                  if (result)
                  {
                    return result;
                  }

                  result = sub_2393C6C04(&v28);
                  if (result)
                  {
                    return result;
                  }

                  v9 = v33;
                }

                else
                {
                  if (v8)
                  {
                    sub_23952F484();
                  }

                  if (*(sub_2393C0A64(v5 + 5) + 2))
                  {
                    v9 = 8;
                  }

                  else
                  {
                    v9 = 5;
                  }
                }

                v13 = v5[1];
                if (v13)
                {
                  do
                  {
                    v14 = v13;
                    v13 = *v13;
                  }

                  while (v13);
                }

                else
                {
                  do
                  {
                    v14 = v5[2];
                    v15 = *v14 == v5;
                    v5 = v14;
                  }

                  while (!v15);
                }

                v6 += v9;
                v5 = v14;
              }

              while (v14 != v3 + 6);
              if (v6)
              {
                v28 = v26;
                v29 = 1;
                v30 = v27;
                v31 = v23;
                v32 = v6;
                sub_2393C0ACC(a2, &v28);
              }
            }
          }

          v16 = v3[1];
          if (v16)
          {
            do
            {
              v17 = v16;
              v16 = *v16;
            }

            while (v16);
          }

          else
          {
            do
            {
              v17 = v3[2];
              v15 = *v17 == v3;
              v3 = v17;
            }

            while (!v15);
          }

          v3 = v17;
        }

        while (v17 != v2 + 6);
      }

      v18 = v2[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v2[2];
          v15 = *v19 == v2;
          v2 = v19;
        }

        while (!v15);
      }

      v2 = v19;
    }

    while (v19 != v24);
  }

  v20 = a2[1];
  v21 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v20 - *a2) >> 3));
  if (v20 == *a2)
  {
    v22 = 0;
  }

  else
  {
    v22 = v21;
  }

  return sub_2393C318C(*a2, v20, &v28, v22, 1);
}

void *sub_2393C0A64(void *a1)
{
  if (*a1)
  {
    sub_23952F51C();
  }

  return a1 + 1;
}

void *sub_2393C0A84(void *a1)
{
  if (*a1 != 2)
  {
    sub_23952F51C();
  }

  return a1 + 1;
}

void *sub_2393C0AA8(void *a1)
{
  if (*a1 != 1)
  {
    sub_23952F51C();
  }

  return a1 + 1;
}

uint64_t sub_2393C0ACC(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_2393C2F24(a1, a2);
  }

  else
  {
    *v3 = *a2;
    *(v3 + 4) = 0;
    v4 = *(a2 + 4);
    *(v3 + 4) = v4;
    if (v4 == 1)
    {
      *(v3 + 8) = *(a2 + 8);
      *(a2 + 4) = 0;
    }

    *(v3 + 12) = *(a2 + 12);
    *(v3 + 16) = *(a2 + 16);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_2393C0B50(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  *(result + 24) = 0;
  *result = &unk_284BB7DE0;
  *(result + 8) = a2;
  *(result + 16) = result + 24;
  *(result + 48) = 0;
  *(result + 32) = 0;
  *(result + 40) = result + 48;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 72) = 0;
  *(result + 56) = 0;
  *(result + 64) = result + 72;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 128) = 0;
  *(result + 120) = 0;
  *(result + 112) = result + 120;
  *(result + 136) = 0;
  *(result + 160) = 0;
  *(result + 152) = result + 160;
  *(result + 168) = 0;
  *(result + 176) = &unk_284BB7D38;
  *(result + 184) = 0;
  *(result + 186) = 0;
  *(result + 200) = 0;
  *(result + 188) = 0;
  *(result + 195) = 0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = 0;
  *(result + 232) = result;
  *(result + 240) = -1;
  *(result + 244) = -1;
  *(result + 248) = 0;
  v3 = *a3;
  *(result + 136) = v3;
  if (v3 == 1)
  {
    *(result + 144) = *(a3 + 1);
  }

  return result;
}

uint64_t sub_2393C0C28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 136);
  *a2 = v2;
  if (v2 == 1)
  {
    *(a2 + 8) = *(a1 + 144);
  }

  return 0;
}

uint64_t sub_2393C0C78(uint64_t a1, unsigned int *a2)
{
  v4 = *(a1 + 24);
  result = a1 + 24;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = result;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result && v5 >= *(v6 + 32))
    {
      return sub_2393C4664(v6 + 40, a2 + 1);
    }
  }

  return result;
}

uint64_t sub_2393C0CC4(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 24);
  result = a1 + 24;
  v3 = v4;
  if (v4)
  {
    v5 = *a2;
    v6 = result;
    do
    {
      v7 = *(v3 + 32);
      v8 = v7 >= v5;
      v9 = v7 < v5;
      if (v8)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * v9);
    }

    while (v3);
    if (v6 != result && v5 >= *(v6 + 32))
    {
      v12 = *(v6 + 48);
      v10 = v6 + 48;
      v11 = v12;
      if (v12)
      {
        v13 = *(a2 + 1);
        v14 = v10;
        do
        {
          v15 = *(v11 + 32);
          v8 = v15 >= v13;
          v16 = v15 < v13;
          if (v8)
          {
            v14 = v11;
          }

          v11 = *(v11 + 8 * v16);
        }

        while (v11);
        if (v14 != v10 && v13 >= *(v14 + 32))
        {
          return sub_2393C4714(v14 + 40, a2 + 2);
        }
      }
    }
  }

  return result;
}

void sub_2393C0D4C(uint64_t a1, int a2)
{
  v4 = (a1 + 120);
  sub_2393C1D78(a1 + 112, *(a1 + 120));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  if (a2)
  {
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 160);
  v5 = (a1 + 160);
  sub_238EA183C((v5 - 1), v6);
  *v5 = 0;
  v5[1] = 0;
  *(v5 - 1) = v5;
}

uint64_t sub_2393C0DAC(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, void *a5)
{
  v7 = sub_2393BF20C(a1, a2, a3, a5);
  if (*a5)
  {
    return 0;
  }

  v11 = *(v7 + 8);
  v9 = v7 + 8;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_11;
  }

  v12 = v9;
  do
  {
    v13 = *(v10 + 28);
    v14 = v13 >= a4;
    v15 = v13 < a4;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * v15);
  }

  while (v10);
  if (v12 != v9 && *(v12 + 28) <= a4)
  {
    result = v12 + 32;
    *a5 = 0;
    a5[1] = 0;
  }

  else
  {
LABEL_11:
    result = 0;
    *a5 = 0x17B00000010;
    a5[1] = "src/app/ClusterStateCache.cpp";
  }

  return result;
}

unint64_t sub_2393C0E48(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1 + 24;
  v6 = *(a1 + 24);
  v8 = a1 + 16;
  if (!v6)
  {
    goto LABEL_9;
  }

  v9 = *a2;
  v10 = a1 + 24;
  do
  {
    v11 = *(v6 + 32);
    v12 = v11 >= v9;
    v13 = v11 < v9;
    if (v12)
    {
      v10 = v6;
    }

    v6 = *(v6 + 8 * v13);
  }

  while (v6);
  if (v10 == v7 || v9 < *(v10 + 32))
  {
LABEL_9:
    v10 = a1 + 24;
  }

  if (a3)
  {
    v34 = 0;
    v14 = sub_2393BFBAC(a1, a3, &v34);
    v15 = v14;
    if (v14)
    {
      v16 = v14 & 0xFFFFFFFF00000000;
      return v15 | v16;
    }

    v17 = v34;
    v35 = a2;
    v18 = sub_2393C25B0(v8, a2);
    v35 = a2 + 2;
    *(sub_2393C2878((v18 + 5), a2 + 1) + 72) = 0;
    v19 = *(a1 + 240);
    if (v19 != 0xFFFF)
    {
      v20 = *(a1 + 244);
      if (v20 != -1 && (v19 != *a2 || v20 != *(a2 + 1)))
      {
        sub_2393BFD18(a1);
      }
    }

    v21 = *(a1 + 64);
    if (v21 != (a1 + 72))
    {
      while (1)
      {
        v22 = *(v21 + 18);
        v23 = v22 == 0xFFFF || v22 == *a2;
        if (v23)
        {
          v24 = *(v21 + 7);
          v25 = v24 == -1 || v24 == *(a2 + 1);
          if (v25 && *(v21 + 8) == -1)
          {
            break;
          }
        }

        v26 = v21[1];
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = v21[2];
            v23 = *v27 == v21;
            v21 = v27;
          }

          while (!v23);
        }

        v21 = v27;
        if (v27 == (a1 + 72))
        {
          goto LABEL_39;
        }
      }

      v35 = a2;
      v31 = sub_2393C25B0(v8, a2);
      v35 = a2 + 2;
      v32 = sub_2393C2878((v31 + 5), a2 + 1);
      v33 = *(a2 + 16);
      *(v32 + 64) = v33;
      if (v33 == 1)
      {
        *(v32 + 17) = *(a2 + 5);
      }
    }

LABEL_39:
    *(a1 + 240) = *a2;
  }

  else if (*(a4 + 2))
  {
    v17 = 8;
  }

  else
  {
    v17 = 5;
  }

  if (v10 == v7)
  {
    sub_2393BFDB8(a1 + 88, a2);
  }

  v35 = a2;
  v28 = sub_2393C25B0(v8, a2);
  v35 = a2 + 2;
  v29 = sub_2393C2878((v28 + 5), a2 + 1);
  v35 = a2 + 4;
  *(sub_2393C4798((v29 + 5), a2 + 2) + 8) = v17;
  if (*(a1 + 248) == 1)
  {
    sub_2393C2A78(a1 + 40, a2);
  }

  v16 = 0;
  v15 = 0;
  return v15 | v16;
}

uint64_t sub_2393C1124(uint64_t a1)
{
  v2 = (a1 + 48);
  v1 = *(a1 + 48);
  *(a1 + 240) = 0xFFFFFFFF0000FFFFLL;
  sub_238EA183C(a1 + 40, v1);
  *v2 = 0;
  v2[1] = 0;
  *(v2 - 1) = v2;
  v2[6] = v2[5];
  v3 = *(**(v2 - 5) + 24);

  return v3();
}

void sub_2393C119C(uint64_t a1)
{
  sub_2393BFD18(a1);
  *(a1 + 240) = 0xFFFFFFFF0000FFFFLL;
  v14[0] = 0;
  v14[1] = 0;
  v13 = v14;
  v2 = *(a1 + 40);
  if (v2 != (a1 + 48))
  {
    do
    {
      (*(**(a1 + 8) + 128))(*(a1 + 8), a1, v2 + 28);
      v12 = *(v2 + 14) | (*(v2 + 8) << 32);
      sub_2393C2D2C(&v13, &v12);
      v3 = v2[1];
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = v2[2];
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (a1 + 48));
    v6 = v13;
    if (v13 != v14)
    {
      do
      {
        (*(**(a1 + 8) + 136))(*(a1 + 8), a1, *(v6 + 14), *(v6 + 8));
        v7 = v6[1];
        if (v7)
        {
          do
          {
            v8 = v7;
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          do
          {
            v8 = v6[2];
            v5 = *v8 == v6;
            v6 = v8;
          }

          while (!v5);
        }

        v6 = v8;
      }

      while (v8 != v14);
    }
  }

  v9 = *(a1 + 88);
  v10 = *(a1 + 96);
  while (v9 != v10)
  {
    v11 = *v9++;
    (*(**(a1 + 8) + 144))(*(a1 + 8), a1, v11);
  }

  (*(**(a1 + 8) + 32))(*(a1 + 8));
  sub_238EA183C(&v13, v14[0]);
}

uint64_t sub_2393C136C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 14) >= 2u)
  {
    sub_23952F354();
  }

  sub_2393C5AAC(v10);
  if (a3)
  {
    v8 = v10;
    sub_2393C5BDC(v10, a3);
  }

  else
  {
    v8 = 0;
  }

  sub_2393C0E48(a1, a2, a3, a4);
  return (*(**(a1 + 8) + 48))(*(a1 + 8), a2, v8, a4);
}

uint64_t sub_2393C1454(uint64_t a1, uint64_t a2, uint64_t a3, __int16 *a4)
{
  if (!(a3 | a4))
  {
    sub_23952F3EC();
  }

  sub_2393C5AAC(v10);
  if (a3)
  {
    v8 = v10;
    sub_2393C5BDC(v10, a3);
  }

  else
  {
    v8 = 0;
  }

  sub_2393BFF60(a1, a2, a3, a4);
  return (*(**(a1 + 8) + 40))(*(a1 + 8), a2, v8, a4);
}

uint64_t sub_2393C1510(uint64_t a1)
{
  v1 = (a1 + 72);
  sub_238EA183C(a1 + 64, *(a1 + 72));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
  v2 = *(**(v1 - 8) + 80);

  return v2();
}

unint64_t sub_2393C15F8(uint64_t a1, unint64_t *a2, uint64_t a3, _BYTE *a4)
{
  sub_2393C7B90(&v42);
  v8 = *(a3 + 8);
  if (v8)
  {
    v9 = *a3;
    v10 = *a3 + 12 * v8;
    do
    {
      if (v9[1] == -1)
      {
        v11 = *(a3 + 8);
        if (v11)
        {
          v12 = *a3;
          v13 = 12 * v11;
          while (*(v12 + 4) == -1 || !sub_2393C07A0(v9, v12))
          {
            v12 += 12;
            v13 -= 12;
            if (!v13)
            {
              goto LABEL_9;
            }
          }
        }

        else
        {
LABEL_9:
          sub_2393C2E28(a1 + 64, v9);
        }
      }

      v9 += 3;
    }

    while (v9 != v10);
  }

  __p = 0;
  v40 = 0;
  v41 = 0;
  sub_2393C184C(a1, &__p);
  *a4 = 0;
  v14 = __p;
  v15 = v40;
  if (__p == v40)
  {
    goto LABEL_36;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v18 = a2[2];
    v19 = v18[3];
    v21 = *v18;
    v20 = v18[1];
    v44 = v18[2];
    v45 = v19;
    v42 = v21;
    v43 = v20;
    v22 = *(a3 + 8);
    if (v22)
    {
      break;
    }

LABEL_28:
    v14 += 6;
    if (v14 == v15)
    {
      goto LABEL_29;
    }
  }

  v23 = 12 * v22;
  v24 = *a3 + 8;
  v25 = v24;
  while (1)
  {
    v27 = *v25;
    v25 += 6;
    v26 = v27;
    if (v27 == 0xFFFF || v26 == *(v14 + 6))
    {
      v29 = *(v24 - 8);
      if (v29 == -1 || v29 == *v14)
      {
        break;
      }
    }

    v24 = v25;
    v23 -= 12;
    if (!v23)
    {
      goto LABEL_28;
    }
  }

  v31 = sub_2393DBCB0(a2, v14);
  v16 = v31;
  v17 = HIDWORD(v31);
  if (!v31)
  {
    *a4 = 1;
    goto LABEL_28;
  }

LABEL_29:
  if (v16 == 25 || v16 == 11)
  {
    v32 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v38 = 0;
      _os_log_impl(&dword_238DAE000, v32, OS_LOG_TYPE_DEFAULT, "OnUpdateDataVersionFilterList out of space; rolling back", &v38, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    v33 = a2[2];
    v34 = v42;
    v35 = v43;
    v36 = v45;
    v33[2] = v44;
    v33[3] = v36;
    *v33 = v34;
    v33[1] = v35;
    sub_2393D06DC(a2);
LABEL_36:
    v17 = 0;
    v16 = 0;
  }

  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }

  return v16 | (v17 << 32);
}

uint64_t sub_2393C184C(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = (a1 + 24);
  if (v3 != (a1 + 24))
  {
    do
    {
      v5 = v3[5];
      if (v5 != v3 + 6)
      {
        v6 = *(v3 + 16);
        do
        {
          if (*(v5 + 72) == 1)
          {
            v7 = sub_238DE3698(v5 + 72);
            v8 = v5[5];
            if (v8 != v5 + 6)
            {
              v9 = 0;
              v10 = *v7;
              do
              {
                v11 = v8[1];
                v12 = v8;
                if (v11)
                {
                  do
                  {
                    v13 = v11;
                    v11 = *v11;
                  }

                  while (v11);
                }

                else
                {
                  do
                  {
                    v13 = v12[2];
                    v14 = *v13 == v12;
                    v12 = v13;
                  }

                  while (!v14);
                }

                v9 += *(v8 + 8);
                v8 = v13;
              }

              while (v13 != v5 + 6);
              if (v9)
              {
                v23 = *(v5 + 8);
                v24 = 1;
                v25 = v10;
                v26 = v6;
                v27 = v9;
                sub_2393C0ACC(a2, &v23);
              }
            }
          }

          v15 = v5[1];
          if (v15)
          {
            do
            {
              v16 = v15;
              v15 = *v15;
            }

            while (v15);
          }

          else
          {
            do
            {
              v16 = v5[2];
              v14 = *v16 == v5;
              v5 = v16;
            }

            while (!v14);
          }

          v5 = v16;
        }

        while (v16 != v3 + 6);
      }

      v17 = v3[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v3[2];
          v14 = *v18 == v3;
          v3 = v18;
        }

        while (!v14);
      }

      v3 = v18;
    }

    while (v18 != v4);
  }

  v19 = a2[1];
  v20 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v19 - *a2) >> 3));
  if (v19 == *a2)
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  return sub_2393C318C(*a2, v19, &v23, v21, 1);
}

unint64_t sub_2393C1A44(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = sub_2393BF6B4(a1, *a2, *(a2 + 1), *(a2 + 2), &v10);
  LODWORD(v5) = v10;
  if (v10)
  {
    v6 = v10 & 0xFFFFFFFF00000000;
  }

  else if (*v4)
  {
    if (*v4 == 1)
    {
      v8 = *sub_2393C0AA8(v4);
      v9 = sub_2393C0AA8(v4);
      sub_2393C5ADC(a3, v8, v9[1]);
      v5 = sub_2393C6B34(a3);
      v6 = v5 & 0xFFFFFFFF00000000;
    }

    else
    {
      v6 = 0x12B00000000;
      LODWORD(v5) = 16;
    }
  }

  else
  {
    v6 = 0x12600000000;
    LODWORD(v5) = 202;
  }

  return v5 | v6;
}

unint64_t sub_2393C1B24(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = sub_2393BF6B4(a1, *a2, *(a2 + 1), *(a2 + 2), &v10);
  v5 = v10;
  if (v10)
  {
    v6 = v10 & 0xFFFFFFFF00000000;
  }

  else if (*v4)
  {
    v6 = 0x1DB00000000;
    v5 = 47;
  }

  else
  {
    v7 = sub_2393C0A64(v4);
    v6 = 0;
    v5 = 0;
    v8 = *(v7 + 2);
    *a3 = *v7;
    *(a3 + 2) = v8;
  }

  return v5 | v6;
}

uint64_t sub_2393C1BDC(uint64_t a1)
{
  *a1 = &unk_284BB7DE0;
  *(a1 + 176) = &unk_284BB7D38;
  v4 = (a1 + 208);
  sub_2393BEF84(&v4);
  sub_238EA183C(a1 + 152, *(a1 + 160));
  sub_2393C1D78(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_238EA183C(a1 + 64, *(a1 + 72));
  sub_238EA183C(a1 + 40, *(a1 + 48));
  sub_2393C1DD8(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t sub_2393C1CA0(uint64_t a1)
{
  *a1 = &unk_284BB7DE0;
  *(a1 + 176) = &unk_284BB7D38;
  v4 = (a1 + 208);
  sub_2393BEF84(&v4);
  sub_238EA183C(a1 + 152, *(a1 + 160));
  sub_2393C1D78(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  sub_238EA183C(a1 + 64, *(a1 + 72));
  sub_238EA183C(a1 + 40, *(a1 + 48));
  sub_2393C1DD8(a1 + 16, *(a1 + 24));
  return MEMORY[0x23EE77B60](a1, 0x10B1C40036DCBC2);
}

void sub_2393C1D78(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2393C1D78(a1, *a2);
    sub_2393C1D78(a1, a2[1]);
    v4 = a2[10];
    if (v4)
    {
      sub_2393D96C8(v4);
    }

    operator delete(a2);
  }
}

void sub_2393C1DD8(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2393C1DD8(a1, *a2);
    sub_2393C1DD8(a1, a2[1]);
    sub_2393C1E38((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void sub_2393C1E38(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_2393C1E38(a1, *a2);
    sub_2393C1E38(a1, a2[1]);
    sub_238EA183C((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

uint64_t *sub_2393C1E98(uint64_t a1, unsigned __int16 *a2)
{
  v3 = (a1 + 8);
  result = sub_2393C1F10(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == result)
  {
    return v3;
  }

  v5 = *a2;
  v6 = *(result + 14);
  if (v5 < v6)
  {
    return v3;
  }

  if (v5 == v6)
  {
    v7 = *(a2 + 1);
    v8 = *(result + 8);
    if (v7 < v8 || v7 == v8 && *(a2 + 2) < *(result + 9))
    {
      return v3;
    }
  }

  return result;
}

uint64_t *sub_2393C1F10(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, uint64_t *a4)
{
  result = a4;
  if (a3)
  {
    v5 = *a2;
    v6 = *(a2 + 1);
    v7 = *(a2 + 2);
    while (1)
    {
      v8 = *(a3 + 14);
      if (v8 >= v5)
      {
        if (v8 != v5)
        {
          goto LABEL_12;
        }

        v9 = *(a3 + 8);
        if (v9 >= v6)
        {
          break;
        }
      }

      ++a3;
LABEL_13:
      a3 = *a3;
      if (!a3)
      {
        return result;
      }
    }

    if (v9 == v6)
    {
      v10 = *(a3 + 9);
      v11 = v10 >= v7;
      v12 = v10 < v7;
      if (v11)
      {
        result = a3;
      }

      a3 += v12;
      goto LABEL_13;
    }

LABEL_12:
    result = a3;
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2393C1F70(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_2393C1FE0(a1, v4);
  return 1;
}

uint64_t *sub_2393C1FE0(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);
  sub_238EF7898(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t *sub_2393C2020(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  sub_2393C2094(v6, a2);
  return v3;
}

uint64_t *sub_2393C2094(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v5 = v3[2];
    v6 = 1;
    goto LABEL_8;
  }

LABEL_7:
  v6 = 0;
  v5 = v3[2];
  *(v2 + 16) = v5;
LABEL_8:
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v8 = 0;
      result = v2;
      goto LABEL_13;
    }

    v7 = (v3[2] + 8);
  }

  else
  {
    v5[1] = v2;
    v7 = v3[2];
  }

  v8 = *v7;
LABEL_13:
  v9 = *(v3 + 24);
  if (v3 != a2)
  {
    v10 = a2[2];
    v3[2] = v10;
    v10[*v10 != a2] = v3;
    v11 = *a2;
    *v3 = *a2;
    *(v11 + 16) = v3;
    v12 = a2[1];
    v3[1] = v12;
    if (v12)
    {
      *(v12 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v9)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v13 = v8[2];
    v14 = *(v8 + 24);
    if (*v13 == v8)
    {
      break;
    }

    if ((v8[3] & 1) == 0)
    {
      *(v8 + 24) = 1;
      *(v13 + 24) = 0;
      v15 = v8[2];
      v16 = *(v15 + 8);
      v17 = *v16;
      *(v15 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v15;
      }

      v18 = *(v15 + 16);
      v16[2] = v18;
      v18[*v18 != v15] = v16;
      *v16 = v15;
      *(v15 + 16) = v16;
      if (result == *v8)
      {
        result = v8;
      }

      v8 = *(*v8 + 8);
    }

    v19 = *v8;
    if (*v8 && *(v19 + 24) != 1)
    {
      v20 = v8[1];
      if (!v20)
      {
        goto LABEL_56;
      }

LABEL_55:
      if (*(v20 + 24) == 1)
      {
LABEL_56:
        *(v19 + 24) = 1;
        *(v8 + 24) = 0;
        v30 = *v8;
        v31 = *(*v8 + 8);
        *v8 = v31;
        if (v31)
        {
          *(v31 + 16) = v8;
        }

        v32 = v8[2];
        v30[2] = v32;
        v32[*v32 != v8] = v30;
        v30[1] = v8;
        v8[2] = v30;
      }

      else
      {
        v30 = v8;
      }

      v33 = v30[2];
      *(v30 + 24) = *(v33 + 24);
      *(v33 + 24) = 1;
      *(v30[1] + 24) = 1;
      v34 = v30[2];
      v35 = v34[1];
      v36 = *v35;
      v34[1] = *v35;
      if (v36)
      {
        *(v36 + 16) = v34;
      }

      v37 = v34[2];
      v35[2] = v37;
      v37[*v37 != v34] = v35;
      *v35 = v34;
      goto LABEL_73;
    }

    v20 = v8[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_55;
    }

    *(v8 + 24) = 0;
    v21 = v8[2];
    if (v21 == result || (v21[3] & 1) == 0)
    {
      goto LABEL_53;
    }

LABEL_49:
    v8 = *(v21[2] + 8 * (*v21[2] == v21));
  }

  if ((v8[3] & 1) == 0)
  {
    *(v8 + 24) = 1;
    *(v13 + 24) = 0;
    v22 = v8[2];
    v23 = *v22;
    v24 = *(*v22 + 8);
    *v22 = v24;
    if (v24)
    {
      *(v24 + 16) = v22;
    }

    v25 = v22[2];
    *(v23 + 16) = v25;
    v25[*v25 != v22] = v23;
    *(v23 + 8) = v22;
    v22[2] = v23;
    v26 = v8[1];
    if (result == v26)
    {
      result = v8;
    }

    v8 = *v26;
  }

  v27 = *v8;
  if (*v8 && *(v27 + 24) != 1)
  {
    goto LABEL_69;
  }

  v28 = v8[1];
  if (!v28 || *(v28 + 24) == 1)
  {
    *(v8 + 24) = 0;
    v21 = v8[2];
    if (*(v21 + 24) != 1 || v21 == result)
    {
LABEL_53:
      *(v21 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v27)
  {
    goto LABEL_66;
  }

  if (*(v27 + 24))
  {
    v28 = v8[1];
LABEL_66:
    *(v28 + 24) = 1;
    *(v8 + 24) = 0;
    v38 = v8[1];
    v39 = *v38;
    v8[1] = *v38;
    if (v39)
    {
      *(v39 + 16) = v8;
    }

    v40 = v8[2];
    v38[2] = v40;
    v40[*v40 != v8] = v38;
    *v38 = v8;
    v8[2] = v38;
  }

  else
  {
LABEL_69:
    v38 = v8;
  }

  v41 = v38[2];
  *(v38 + 24) = *(v41 + 24);
  *(v41 + 24) = 1;
  *(*v38 + 24) = 1;
  v34 = v38[2];
  v35 = *v34;
  v42 = (*v34)[1];
  *v34 = v42;
  if (v42)
  {
    v42[2] = v34;
  }

  v43 = v34[2];
  v35[2] = v43;
  v43[*v43 != v34] = v35;
  v35[1] = v34;
LABEL_73:
  v34[2] = v35;
  return result;
}

uint64_t sub_2393C2444(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_2393C24B4(a1, v4);
  return 1;
}

uint64_t *sub_2393C24B4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);
  sub_238EF78F8(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_2393C24F4(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_2393C2564(a1, v4);
  return 1;
}

uint64_t *sub_2393C2564(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_2393C2020(a1, a2);
  if (a2[5] == 1)
  {
    v4 = a2[6];
    if (v4)
    {
      j__free(v4);
    }
  }

  operator delete(a2);
  return v3;
}

uint64_t *sub_2393C25B0(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2393C2690(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = sub_2393C26E8(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *sub_2393C26E8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        return result;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v7 = v3[1];
        if (!v7 || (v8 = *(v7 + 24), v5 = (v7 + 24), v8 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v13 = *v3;
          v16 = *(*v3 + 8);
          *v3 = v16;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v13[2] = v17;
          v17[*v17 != v3] = v13;
          v13[1] = v3;
          goto LABEL_27;
        }
      }

      else if (!v4 || (v6 = *(v4 + 24), v5 = v4 + 3, v6 == 1))
      {
        v9 = *v2;
        if (*v2 == a2)
        {
          v12 = *(v9 + 8);
          *v2 = v12;
          if (v12)
          {
            *(v12 + 16) = v2;
            v3 = v2[2];
          }

          *(v9 + 16) = v3;
          v3[*v3 != v2] = v9;
          *(v9 + 8) = v2;
          v2[2] = v9;
          v3 = *(v9 + 16);
        }

        else
        {
          v9 = a2[2];
        }

        *(v9 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v3[1];
        v14 = *v13;
        v3[1] = *v13;
        if (v14)
        {
          *(v14 + 16) = v3;
        }

        v15 = v3[2];
        v13[2] = v15;
        v15[*v15 != v3] = v13;
        *v13 = v3;
LABEL_27:
        v3[2] = v13;
        return result;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v5 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_2393C2878(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_2393C295C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  sub_238EAEDBC();
}

uint64_t *sub_2393C29A0(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_2393C2A78(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_2393C2B14(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_2393C2B14(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    v8 = *(a3 + 2);
    do
    {
      while (1)
      {
        v9 = v4;
        v10 = *(v4 + 14);
        if (v6 >= v10)
        {
          if (v6 != v10)
          {
            break;
          }

          v11 = *(v9 + 8);
          if (v7 >= v11 && (v7 != v11 || v8 >= *(v9 + 9)))
          {
            break;
          }
        }

        v4 = *v9;
        result = v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= v6)
      {
        v12 = *(v9 + 8);
        if (v12 >= v7 && (v12 != v7 || *(v9 + 9) >= v8))
        {
          break;
        }
      }

      result = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = result;
  }

LABEL_17:
  *a2 = v9;
  return result;
}

void *sub_2393C2BA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *(a2 + 16);
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[6];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_2393C2C84(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_2393C2B14(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t sub_2393C2D2C(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *sub_2393C2DC0(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_2393C2DC0(uint64_t a1, void *a2, unsigned __int16 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 14);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 8);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_2393C2E28(uint64_t a1, unsigned int *a2)
{
  v2 = *sub_2393C2EC4(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_2393C2EC4(uint64_t a1, void *a2, unsigned int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *(a3 + 4);
    v7 = *a3;
    do
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 18);
        v10 = *(v8 + 7);
        if (v6 >= v9 && v7 >= v10)
        {
          break;
        }

        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_16;
        }
      }

      if (v9 >= v6 && v10 >= v7)
      {
        break;
      }

      result = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = result;
  }

LABEL_16:
  *a2 = v8;
  return result;
}

uint64_t sub_2393C2F24(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_238EAEDBC();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    sub_2393C3134(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v12 = v7;
  v14 = 0;
  *v7 = *a2;
  *(v7 + 4) = 0;
  v8 = *(a2 + 4);
  *(v7 + 4) = v8;
  if (v8 == 1)
  {
    *(24 * v2 + 8) = *(a2 + 8);
    *(a2 + 4) = 0;
  }

  *(24 * v2 + 0xC) = *(a2 + 12);
  *(24 * v2 + 0x10) = *(a2 + 16);
  v13 = v7 + 24;
  sub_2393C3078(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 24) % 0x18uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

uint64_t *sub_2393C3078(uint64_t *result, void *a2)
{
  v2 = a2[1];
  v4 = *result;
  v3 = result[1];
  v5 = v2 - (v3 - *result);
  if (v3 != *result)
  {
    v6 = v2 - 8 * ((v3 - *result) >> 3) + 8;
    do
    {
      *(v6 - 8) = *v4;
      *(v6 - 4) = 0;
      v7 = *(v4 + 4);
      *(v6 - 4) = v7;
      if (v7 == 1)
      {
        *v6 = *(v4 + 8);
        *(v4 + 4) = 0;
      }

      *(v6 + 4) = *(v4 + 12);
      *(v6 + 8) = *(v4 + 16);
      v4 += 24;
      v6 += 24;
    }

    while (v4 != v3);
  }

  a2[1] = v5;
  v8 = *result;
  result[1] = *result;
  *result = a2[1];
  a2[1] = v8;
  v9 = result[1];
  result[1] = a2[2];
  a2[2] = v9;
  v10 = result[2];
  result[2] = a2[3];
  a2[3] = v10;
  *a2 = a2[1];
  return result;
}

void sub_2393C3134(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_238EAEDBC();
}

uint64_t sub_2393C318C(uint64_t result, int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a2;
  v9 = result;
  v44 = a2;
  v45 = result;
  while (1)
  {
    --a4;
    v10 = v8 - v9;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 3);
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v44 = v8 - 6;
        if (*(v8 - 1) <= *(v9 + 2))
        {
          return result;
        }

        v42 = &v45;
        v43 = &v44;
        return sub_2393C379C(v42, v43);
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      v44 = v8 - 6;
      v49 = v9 + 6;
      v50 = v9;
      v48 = v8 - 6;
      v40 = *(v9 + 5);
      v41 = *(v8 - 1);
      if (v40 <= *(v9 + 2))
      {
        if (v41 <= v40)
        {
          return result;
        }

        result = sub_2393C379C(&v49, &v48);
        v38 = *(v49 + 2);
        v39 = *(v50 + 2);
LABEL_86:
        if (v38 <= v39)
        {
          return result;
        }

        v42 = &v50;
        v43 = &v49;
      }

      else
      {
        v42 = &v50;
        if (v41 <= v40)
        {
          result = sub_2393C379C(&v50, &v49);
          if (*(v48 + 2) <= *(v49 + 2))
          {
            return result;
          }

          v42 = &v49;
        }

        v43 = &v48;
      }

      return sub_2393C379C(v42, v43);
    }

    if (v11 == 4)
    {
      v44 = v8 - 6;
      return sub_2393C3810(v9, (v9 + 6), (v9 + 12), (v8 - 6));
    }

    if (v11 == 5)
    {
      break;
    }

LABEL_9:
    if (v10 <= 575)
    {
      if (a5)
      {
        return sub_2393C3938(v9, v8);
      }

      else
      {
        return sub_2393C3A20(v9, v8);
      }
    }

    if (a4 == -1)
    {
      if (v9 != v8)
      {
        return sub_2393C4120(v9, v8, v8, a3);
      }

      return result;
    }

    v12 = v11 >> 1;
    v13 = &v9[6 * (v11 >> 1)];
    if (v10 >= 0xC01)
    {
      v49 = v13;
      v50 = v9;
      v48 = v8 - 6;
      v14 = *(v13 + 2);
      v15 = *(v8 - 1);
      if (v14 <= *(v9 + 2))
      {
        if (v15 <= v14 || (sub_2393C379C(&v49, &v48), *(v49 + 2) <= *(v50 + 2)))
        {
LABEL_26:
          v49 = &v45[6 * v12 - 6];
          v50 = v45 + 6;
          v48 = v8 - 12;
          v23 = *(v49 + 2);
          v24 = *(v8 - 4);
          if (v23 <= *(v45 + 5))
          {
            if (v24 <= v23 || (sub_2393C379C(&v49, &v48), *(v49 + 2) <= *(v50 + 2)))
            {
LABEL_39:
              v49 = &v45[6 * v12 + 6];
              v50 = v45 + 12;
              v48 = v8 - 18;
              v27 = *(v49 + 2);
              v28 = *(v8 - 7);
              if (v27 <= *(v45 + 8))
              {
                if (v28 <= v27 || (sub_2393C379C(&v49, &v48), *(v49 + 2) <= *(v50 + 2)))
                {
LABEL_48:
                  v49 = &v45[6 * v12];
                  v50 = &v45[6 * v12 - 6];
                  v48 = &v45[6 * v12 + 6];
                  v31 = *(v49 + 2);
                  v32 = *(v48 + 2);
                  if (v31 <= *(v50 + 2))
                  {
                    if (v32 <= v31)
                    {
                      goto LABEL_57;
                    }

                    sub_2393C379C(&v49, &v48);
                    if (*(v49 + 2) <= *(v50 + 2))
                    {
                      goto LABEL_57;
                    }

                    v33 = &v50;
                    v34 = &v49;
                  }

                  else
                  {
                    v33 = &v50;
                    if (v32 <= v31)
                    {
                      sub_2393C379C(&v50, &v49);
                      if (*(v48 + 2) <= *(v49 + 2))
                      {
LABEL_57:
                        v50 = &v45[6 * v12];
                        sub_2393C379C(&v45, &v50);
                        goto LABEL_58;
                      }

                      v33 = &v49;
                    }

                    v34 = &v48;
                  }

                  sub_2393C379C(v33, v34);
                  goto LABEL_57;
                }

                v29 = &v50;
                v30 = &v49;
              }

              else
              {
                v29 = &v50;
                if (v28 <= v27)
                {
                  sub_2393C379C(&v50, &v49);
                  if (*(v48 + 2) <= *(v49 + 2))
                  {
                    goto LABEL_48;
                  }

                  v29 = &v49;
                }

                v30 = &v48;
              }

              sub_2393C379C(v29, v30);
              goto LABEL_48;
            }

            v25 = &v50;
            v26 = &v49;
          }

          else
          {
            v25 = &v50;
            if (v24 <= v23)
            {
              sub_2393C379C(&v50, &v49);
              if (*(v48 + 2) <= *(v49 + 2))
              {
                goto LABEL_39;
              }

              v25 = &v49;
            }

            v26 = &v48;
          }

          sub_2393C379C(v25, v26);
          goto LABEL_39;
        }

        v16 = &v50;
        v17 = &v49;
      }

      else
      {
        v16 = &v50;
        if (v15 <= v14)
        {
          sub_2393C379C(&v50, &v49);
          if (*(v48 + 2) <= *(v49 + 2))
          {
            goto LABEL_26;
          }

          v16 = &v49;
        }

        v17 = &v48;
      }

      sub_2393C379C(v16, v17);
      goto LABEL_26;
    }

    v49 = v9;
    v50 = v13;
    v48 = v8 - 6;
    v18 = *(v9 + 2);
    v19 = *(v13 + 2);
    v20 = *(v8 - 1);
    if (v18 <= v19)
    {
      if (v20 <= v18)
      {
        goto LABEL_58;
      }

      sub_2393C379C(&v49, &v48);
      if (*(v49 + 2) <= *(v50 + 2))
      {
        goto LABEL_58;
      }

      v21 = &v50;
      v22 = &v49;
    }

    else
    {
      v21 = &v50;
      if (v20 <= v18)
      {
        sub_2393C379C(&v50, &v49);
        if (*(v48 + 2) <= *(v49 + 2))
        {
          goto LABEL_58;
        }

        v21 = &v49;
      }

      v22 = &v48;
    }

    sub_2393C379C(v21, v22);
LABEL_58:
    if ((a5 & 1) != 0 || *(v45 - 1) > *(v45 + 2))
    {
      v35 = sub_2393C3C50(v45, v8);
      if (v36)
      {
        v37 = sub_2393C3DD4(v45, v35);
        v9 = (v35 + 24);
        result = sub_2393C3DD4(v35 + 24, v8);
        if (!result)
        {
          if (v37)
          {
            goto LABEL_64;
          }

          goto LABEL_63;
        }

        if (v37)
        {
          return result;
        }

        v44 = v35;
        v9 = v45;
        v8 = v35;
      }

      else
      {
LABEL_63:
        result = sub_2393C318C(v45, v35, a3, a4, a5 & 1);
        a5 = 0;
        v9 = (v35 + 24);
LABEL_64:
        v45 = v9;
      }
    }

    else
    {
      result = sub_2393C3AE4(v45, v8);
      v9 = result;
      a5 = 0;
      v45 = result;
    }
  }

  v44 = v8 - 6;
  v49 = v9 + 6;
  v50 = v9;
  v47 = v9 + 18;
  v48 = v9 + 12;
  v46 = v8 - 6;
  result = sub_2393C3810(v9, (v9 + 6), (v9 + 12), (v9 + 18));
  if (*(v8 - 1) > *(v9 + 11))
  {
    result = sub_2393C379C(&v47, &v46);
    if (*(v47 + 2) > *(v9 + 8))
    {
      result = sub_2393C379C(&v48, &v47);
      if (*(v48 + 2) > *(v9 + 5))
      {
        result = sub_2393C379C(&v49, &v48);
        v38 = *(v49 + 2);
        v39 = *(v9 + 2);
        goto LABEL_86;
      }
    }
  }

  return result;
}

uint64_t *sub_2393C379C(uint64_t *result, int **a2)
{
  v3 = *result;
  v4 = *a2;
  v5 = *(*result + 4);
  if (v5 == 1)
  {
    v2 = v3[2];
    *(v3 + 4) = 0;
  }

  v6 = *v3;
  v7 = *(v3 + 6);
  *v3 = *v4;
  v8 = *(v4 + 4);
  *(v3 + 4) = v8;
  if (v8 == 1)
  {
    v3[2] = v4[2];
  }

  *(v3 + 6) = *(v4 + 6);
  *v4 = v6;
  *(v4 + 4) = v5;
  if (v5)
  {
    v4[2] = v2;
  }

  *(v4 + 6) = v7;
  v9 = *(v3 + 2);
  *(v3 + 2) = *(v4 + 2);
  *(v4 + 2) = v9;
  return result;
}

uint64_t *sub_2393C3810(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = *(a2 + 16);
  v9 = *(a3 + 16);
  if (v8 <= result[2])
  {
    if (v9 > v8)
    {
      result = sub_2393C379C(&v17, &v16);
      if (*(v17 + 2) > v18[2])
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 > v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = sub_2393C379C(v10, v11);
      goto LABEL_10;
    }

    result = sub_2393C379C(&v18, &v17);
    if (*(v16 + 2) > *(v17 + 2))
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 16) > *(a3 + 16))
  {
    result = sub_2393C379C(&v13, &v12);
    if (*(v13 + 2) > *(a2 + 16))
    {
      result = sub_2393C379C(&v14, &v13);
      if (*(v14 + 2) > v7[2])
      {
        return sub_2393C379C(&v15, &v14);
      }
    }
  }

  return result;
}

_DWORD *sub_2393C3938(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v3 = result + 6;
    if (result + 6 != a2)
    {
      v4 = 0;
      v5 = result;
      do
      {
        v6 = v3;
        v7 = *(v5 + 5);
        if (v7 > *(v5 + 2))
        {
          v8 = *v6;
          v9 = *(v5 + 28);
          if (v9 == 1)
          {
            v2 = v5[8];
            *(v5 + 28) = 0;
          }

          v10 = *(v5 + 18);
          v11 = v4;
          while (1)
          {
            v12 = v11;
            v13 = result + v11;
            *(v13 + 24) = *v13;
            v14 = *(v13 + 4);
            *(v13 + 28) = v14;
            if (v14 == 1)
            {
              *(v13 + 32) = *(v13 + 8);
              *(v13 + 4) = 0;
            }

            *(v13 + 36) = *(v13 + 12);
            *(v13 + 40) = *(v13 + 16);
            if (!v12)
            {
              break;
            }

            v11 = v12 - 24;
            if (v7 <= *(result + v12 - 8))
            {
              v15 = (result + v12);
              goto LABEL_14;
            }
          }

          v15 = result;
LABEL_14:
          *v15 = v8;
          *(result + v12 + 4) = v9;
          if (v9)
          {
            v15[2] = v2;
          }

          *(v15 + 6) = v10;
          *(v15 + 2) = v7;
        }

        v3 = v6 + 6;
        v4 += 24;
        v5 = v6;
      }

      while (v6 + 6 != a2);
    }
  }

  return result;
}

_DWORD *sub_2393C3A20(_DWORD *result, _DWORD *a2)
{
  if (result != a2)
  {
    v3 = result + 6;
    if (result + 6 != a2)
    {
      v4 = result + 10;
      do
      {
        v5 = v3;
        v6 = *(result + 5);
        if (v6 > *(result + 2))
        {
          v7 = *v5;
          v8 = *(result + 28);
          if (v8 == 1)
          {
            v2 = result[8];
            *(result + 28) = 0;
          }

          v9 = *(result + 18);
          v10 = v4;
          do
          {
            *(v10 - 4) = *(v10 - 10);
            v11 = *(v10 - 36);
            *(v10 - 12) = v11;
            if (v11 == 1)
            {
              *(v10 - 2) = *(v10 - 8);
              *(v10 - 36) = 0;
            }

            *(v10 - 2) = *(v10 - 14);
            v12 = v10 - 3;
            *v10 = *(v10 - 3);
            v13 = *(v10 - 6);
            v10 -= 3;
          }

          while (v6 > v13);
          *(v12 - 4) = v7;
          *(v12 - 12) = v8;
          if (v8)
          {
            *(v12 - 2) = v2;
          }

          *(v12 - 2) = v9;
          *v12 = v6;
        }

        v3 = v5 + 6;
        v4 += 3;
        result = v5;
      }

      while (v5 + 6 != a2);
    }
  }

  return result;
}

uint64_t sub_2393C3AE4(int *a1, int *a2)
{
  v20 = a2;
  v4 = *(a1 + 4);
  if (v4 == 1)
  {
    v2 = a1[2];
    *(a1 + 4) = 0;
  }

  v5 = *(a1 + 2);
  if (v5 <= *(a2 - 1))
  {
    v9 = (a1 + 6);
    do
    {
      v7 = v9;
      if (v9 >= a2)
      {
        break;
      }

      v10 = *(v9 + 16);
      v9 += 24;
    }

    while (v5 <= v10);
  }

  else
  {
    v6 = a1;
    do
    {
      v7 = (v6 + 6);
      v8 = *(v6 + 5);
      v6 += 6;
    }

    while (v5 <= v8);
  }

  v11 = *a1;
  v12 = *(a1 + 6);
  v21 = v7;
  if (v7 < a2)
  {
    do
    {
      v13 = *(a2 - 1);
      a2 -= 6;
    }

    while (v5 > v13);
    v20 = a2;
  }

  if (v7 < a2)
  {
    do
    {
      sub_2393C379C(&v21, &v20);
      v7 = v21;
      do
      {
        v14 = *(v7 + 40);
        v7 += 24;
      }

      while (v5 <= v14);
      v21 = v7;
      v15 = v20;
      do
      {
        v16 = v15 - 6;
        v20 = v15 - 6;
        v17 = *(v15 - 1);
        v15 -= 6;
      }

      while (v5 > v17);
    }

    while (v7 < v16);
  }

  if ((v7 - 24) != a1)
  {
    *a1 = *(v7 - 24);
    v18 = *(v7 - 20);
    *(a1 + 4) = v18;
    if (v18 == 1)
    {
      a1[2] = *(v7 - 16);
    }

    *(a1 + 6) = *(v7 - 12);
    *(a1 + 2) = *(v7 - 8);
  }

  *(v7 - 24) = v11;
  *(v7 - 20) = v4;
  if (v4)
  {
    *(v7 - 16) = v2;
  }

  *(v7 - 12) = v12;
  *(v7 - 8) = v5;
  return v21;
}

unint64_t sub_2393C3C50(int *a1, int *a2)
{
  v3 = a2;
  v22 = a2;
  v5 = *(a1 + 4);
  if (v5 == 1)
  {
    v2 = a1[2];
    *(a1 + 4) = 0;
  }

  v6 = 0;
  v7 = *a1;
  v8 = *(a1 + 6);
  v9 = *(a1 + 2);
  do
  {
    v10 = *&a1[v6 + 10];
    v6 += 6;
  }

  while (v10 > v9);
  v11 = &a1[v6];
  v23 = &a1[v6];
  if (v6 == 6)
  {
    if (v11 >= a2)
    {
      v12 = v22;
    }

    else
    {
      do
      {
        v12 = v3 - 6;
        v14 = *(v3 - 1) > v9 || v11 >= v12;
        v3 -= 6;
      }

      while (!v14);
    }
  }

  else
  {
    do
    {
      v12 = v3 - 6;
      v13 = *(v3 - 1);
      v3 -= 6;
    }

    while (v13 <= v9);
  }

  v22 = v12;
  v15 = v11;
  if (v11 < v3)
  {
    do
    {
      sub_2393C379C(&v23, &v22);
      v15 = v23;
      do
      {
        v16 = *(v15 + 40);
        v15 += 24;
      }

      while (v16 > v9);
      v23 = v15;
      v17 = v22;
      do
      {
        v18 = v17 - 6;
        v22 = v17 - 6;
        v19 = *(v17 - 1);
        v17 -= 6;
      }

      while (v19 <= v9);
    }

    while (v15 < v18);
  }

  result = v15 - 24;
  if ((v15 - 24) != a1)
  {
    *a1 = *(v15 - 24);
    v21 = *(v15 - 20);
    *(a1 + 4) = v21;
    if (v21 == 1)
    {
      a1[2] = *(v15 - 16);
    }

    *(a1 + 6) = *(v15 - 12);
    *(a1 + 2) = *(v15 - 8);
  }

  *(v15 - 24) = v7;
  *(v15 - 20) = v5;
  if (v5)
  {
    *(v15 - 16) = v2;
  }

  *(v15 - 12) = v8;
  *(v15 - 8) = v9;
  return result;
}

BOOL sub_2393C3DD4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v26 = a2;
  v27 = a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v32 = a1;
        v30 = (a2 - 24);
        v31 = (a1 + 24);
        v9 = *(a1 + 40);
        v10 = *(a2 - 8);
        if (v9 > *(a1 + 16))
        {
          v5 = &v32;
          if (v10 <= v9)
          {
            sub_2393C379C(&v32, &v31);
            if (*(v30 + 2) <= *(v31 + 2))
            {
              return 1;
            }

            v5 = &v31;
          }

          v6 = &v30;
          goto LABEL_28;
        }

        if (v10 <= v9)
        {
          return 1;
        }

        sub_2393C379C(&v31, &v30);
        v7 = *(v31 + 2);
        v8 = *(v32 + 16);
        break;
      case 4:
        sub_2393C3810(a1, a1 + 24, a1 + 48, a2 - 24);
        return 1;
      case 5:
        v32 = a1;
        v30 = (a1 + 48);
        v31 = (a1 + 24);
        v28 = (a2 - 24);
        v29 = (a1 + 72);
        sub_2393C3810(a1, a1 + 24, a1 + 48, a1 + 72);
        if (*(v2 - 8) <= *(a1 + 88))
        {
          return 1;
        }

        sub_2393C379C(&v29, &v28);
        if (*(v29 + 2) <= *(a1 + 64))
        {
          return 1;
        }

        sub_2393C379C(&v30, &v29);
        if (*(v30 + 2) <= *(a1 + 40))
        {
          return 1;
        }

        sub_2393C379C(&v31, &v30);
        v7 = *(v31 + 2);
        v8 = *(a1 + 16);
        break;
      default:
        goto LABEL_18;
    }

    if (v7 > v8)
    {
      v5 = &v32;
      v6 = &v31;
      goto LABEL_28;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v26 = a2 - 24;
    if (*(a2 - 8) > *(a1 + 16))
    {
      v5 = &v27;
      v6 = &v26;
LABEL_28:
      sub_2393C379C(v5, v6);
    }

    return 1;
  }

LABEL_18:
  v11 = a1 + 48;
  v32 = a1;
  v30 = (a1 + 48);
  v31 = (a1 + 24);
  v12 = *(a1 + 40);
  v13 = *(a1 + 16);
  v14 = *(a1 + 64);
  if (v12 > v13)
  {
    v15 = &v32;
    if (v14 <= v12)
    {
      sub_2393C379C(&v32, &v31);
      if (*(v30 + 2) <= *(v31 + 2))
      {
        goto LABEL_33;
      }

      v15 = &v31;
    }

    v16 = &v30;
    goto LABEL_32;
  }

  if (v14 > v12)
  {
    sub_2393C379C(&v31, &v30);
    if (*(v31 + 2) > *(v32 + 16))
    {
      v15 = &v32;
      v16 = &v31;
LABEL_32:
      sub_2393C379C(v15, v16);
    }
  }

LABEL_33:
  v17 = a1 + 72;
  if (a1 + 72 == v2)
  {
    return 1;
  }

  v18 = 0;
  while (1)
  {
    v19 = *(v17 + 16);
    if (v19 > *(v11 + 16))
    {
      v20 = *(v17 + 4);
      if (v20 == 1)
      {
        LODWORD(v13) = *(v17 + 8);
        *(v17 + 4) = 0;
      }

      v21 = *v17;
      v22 = *(v17 + 12);
      do
      {
        v23 = v11;
        *(v11 + 24) = *v11;
        v24 = *(v11 + 4);
        *(v11 + 28) = v24;
        if (v24 == 1)
        {
          *(v11 + 32) = *(v11 + 8);
          *(v11 + 4) = 0;
        }

        *(v11 + 36) = *(v11 + 12);
        *(v11 + 40) = *(v11 + 16);
        if (v11 == v27)
        {
          break;
        }

        v11 -= 24;
      }

      while (v19 > *(v23 - 8));
      *v23 = v21;
      *(v23 + 4) = v20;
      if (v20)
      {
        *(v23 + 8) = v13;
      }

      *(v23 + 12) = v22;
      *(v23 + 16) = v19;
      ++v18;
      v2 = v26;
      if (v18 == 8)
      {
        break;
      }
    }

    v11 = v17;
    v17 += 24;
    if (v17 == v2)
    {
      return 1;
    }
  }

  return v17 + 24 == v26;
}

uint64_t sub_2393C4120(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  if (a1 != a2)
  {
    v8 = a1;
    v9 = a2 - a1;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
    if (a2 - a1 >= 25)
    {
      v11 = (v10 - 2) >> 1;
      v12 = v11 + 1;
      v4 = &a1[6 * v11];
      do
      {
        sub_2393C4324(v8, a4, v10, v4);
        v4 -= 6;
        --v12;
      }

      while (v12);
    }

    v24 = a2;
    v13 = a2;
    if (a2 != a3)
    {
      do
      {
        if (*(v13 + 16) > *(v25 + 2))
        {
          sub_2393C379C(&v24, &v25);
          sub_2393C4324(v25, a4, v10, v25);
          v13 = v24;
        }

        v13 += 24;
        v24 = v13;
      }

      while (v13 != a3);
      v8 = v25;
      v9 = a2 - v25;
    }

    if (v9 >= 25)
    {
      v14 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
      v15 = a2 - 24;
      do
      {
        v16 = *(v8 + 4);
        if (v16 == 1)
        {
          LODWORD(v4) = v8[2];
          *(v8 + 4) = 0;
        }

        v17 = *v8;
        v18 = *(v8 + 6);
        v19 = *(v8 + 2);
        v20 = sub_2393C445C(v8, a4, v14);
        if (v15 == v20)
        {
          *v20 = v17;
          *(v20 + 4) = v16;
          if (v16)
          {
            *(v20 + 8) = v4;
          }

          *(v20 + 12) = v18;
          *(v20 + 16) = v19;
        }

        else
        {
          *v20 = *v15;
          v21 = *(v15 + 4);
          *(v20 + 4) = v21;
          if (v21 == 1)
          {
            *(v20 + 8) = *(v15 + 8);
          }

          *(v20 + 12) = *(v15 + 12);
          *(v20 + 16) = *(v15 + 16);
          *v15 = v17;
          *(v15 + 4) = v16;
          if (v16)
          {
            *(v15 + 8) = v4;
          }

          *(v15 + 12) = v18;
          *(v15 + 16) = v19;
          sub_2393C44F8(v8, v20 + 24, a4, 0xAAAAAAAAAAAAAAABLL * ((v20 + 24 - v8) >> 3));
        }

        v15 -= 24;
      }

      while (v14-- > 2);
      return v24;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_2393C4324(uint64_t result, uint64_t a2, uint64_t a3, int *a4)
{
  if (a3 >= 2)
  {
    v5 = (a3 - 2) >> 1;
    if (v5 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v6 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v7 = (result + 24 * v6);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v4 = *(v7 + 5);
        v8 = *(v7 + 2) > v4;
        v9 = 24;
        if (*(v7 + 2) <= v4)
        {
          v9 = 0;
        }

        v7 = (v7 + v9);
        if (v8)
        {
          v6 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v10 = *(a4 + 2);
      if (*(v7 + 2) <= v10)
      {
        v11 = *(a4 + 4);
        if (v11 == 1)
        {
          LODWORD(v4) = a4[2];
          *(a4 + 4) = 0;
        }

        v12 = *a4;
        v13 = *(a4 + 6);
        do
        {
          v14 = v7;
          *a4 = *v7;
          v15 = *(v7 + 4);
          *(a4 + 4) = v15;
          if (v15 == 1)
          {
            a4[2] = v14[2];
            *(v14 + 4) = 0;
          }

          *(a4 + 6) = *(v14 + 6);
          *(a4 + 2) = *(v14 + 2);
          if (v5 < v6)
          {
            break;
          }

          v16 = (2 * v6) | 1;
          v7 = (result + 24 * v16);
          v17 = 2 * v6 + 2;
          if (v17 < a3)
          {
            v18 = *(v7 + 2);
            v19 = *(v7 + 5);
            v20 = v18 > v19;
            v21 = v18 <= v19 ? 0 : 24;
            v7 = (v7 + v21);
            if (v20)
            {
              v16 = v17;
            }
          }

          a4 = v14;
          v6 = v16;
        }

        while (*(v7 + 2) <= v10);
        *v14 = v12;
        *(v14 + 4) = v11;
        if (v11)
        {
          v14[2] = v4;
        }

        *(v14 + 6) = v13;
        *(v14 + 2) = v10;
      }
    }
  }

  return result;
}

uint64_t sub_2393C445C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = a1 + 24 * v3;
    v5 = v4 + 24;
    v6 = (2 * v3) | 1;
    v3 = 2 * v3 + 2;
    if (v3 >= a3)
    {
      v3 = v6;
    }

    else
    {
      v7 = *(v4 + 40);
      v8 = *(v4 + 64);
      v9 = v4 + 48;
      if (v7 <= v8)
      {
        v3 = v6;
      }

      else
      {
        v5 = v9;
      }
    }

    *a1 = *v5;
    v10 = *(v5 + 4);
    *(a1 + 4) = v10;
    if (v10 == 1)
    {
      *(a1 + 8) = *(v5 + 8);
      *(v5 + 4) = 0;
    }

    *(a1 + 12) = *(v5 + 12);
    *(a1 + 16) = *(v5 + 16);
    a1 = v5;
  }

  while (v3 <= (a3 - 2) / 2);
  return v5;
}

uint64_t sub_2393C44F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v5 >> 1;
    v7 = result + 24 * (v5 >> 1);
    v8 = *(a2 - 8);
    if (*(v7 + 16) > v8)
    {
      v9 = a2 - 24;
      v10 = *(a2 - 20);
      if (v10 == 1)
      {
        v4 = *(a2 - 16);
        *(a2 - 20) = 0;
      }

      v11 = *(a2 - 24);
      v12 = *(a2 - 12);
      do
      {
        v13 = v7;
        *v9 = *v7;
        v14 = *(v7 + 4);
        *(v9 + 4) = v14;
        if (v14 == 1)
        {
          *(v9 + 8) = *(v13 + 8);
          *(v13 + 4) = 0;
        }

        *(v9 + 12) = *(v13 + 12);
        *(v9 + 16) = *(v13 + 16);
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = result + 24 * v6;
        v9 = v13;
      }

      while (*(v7 + 16) > v8);
      *v13 = v11;
      *(v13 + 4) = v10;
      if (v10)
      {
        *(v13 + 8) = v4;
      }

      *(v13 + 12) = v12;
      *(v13 + 16) = v8;
    }
  }

  return result;
}

uint64_t sub_2393C45B4(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_2393C4624(a1, v4);
  return 1;
}

uint64_t *sub_2393C4624(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);
  sub_2393C1E38(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_2393C4664(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 32);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 32))
  {
    return 0;
  }

  sub_2393C46D4(a1, v4);
  return 1;
}

uint64_t *sub_2393C46D4(uint64_t **a1, uint64_t a2)
{
  v3 = sub_2393C2020(a1, a2);
  sub_238EA183C(a2 + 40, *(a2 + 48));
  operator delete(a2);
  return v3;
}

uint64_t sub_2393C4714(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = a1 + 8;
  do
  {
    v5 = *(v2 + 28);
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = *(v2 + 8 * v7);
  }

  while (v2);
  if (v4 == a1 + 8 || v3 < *(v4 + 28))
  {
    return 0;
  }

  sub_2393C2020(a1, v4);
  operator delete(v4);
  return 1;
}

uint64_t *sub_2393C4798(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *sub_2393C4890()
{
  if ((atomic_load_explicit(&qword_27DF77700, memory_order_acquire) & 1) == 0)
  {
    sub_23952F5A4();
  }

  return &qword_27DF77708;
}

uint64_t *sub_2393C48C8(uint64_t *result, uint64_t a2)
{
  *(result + 4) = -1;
  *(result + 3) = -1;
  result[2] = 0;
  *(result + 12) = -1;
  *(result + 7) = -1;
  result[4] = 0;
  v2 = *result;
  if (*result)
  {
    v3 = 0;
    do
    {
      v4 = *(v2 + 16);
      if (v2 == a2)
      {
        v5 = (v3 + 16);
        if (!v3)
        {
          v5 = result;
        }

        *v5 = v4;
        *(v2 + 16) = 0;
      }

      else
      {
        v3 = v2;
      }

      v2 = v4;
    }

    while (v4);
  }

  return result;
}

_BYTE *sub_2393C4928(_BYTE *result, int a2)
{
  *(result + 4) = -1;
  *(result + 3) = -1;
  *(result + 2) = 0;
  *(result + 12) = -1;
  *(result + 7) = -1;
  *(result + 4) = 0;
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    do
    {
      while (1)
      {
        v6 = v2;
        result = (v2 + 8);
        v7 = *(v2 + 8);
        v2 = *(v2 + 16);
        if (v7 == 1)
        {
          result = sub_238E0A934(result);
          if (*result == a2)
          {
            break;
          }
        }

        v5 = v6;
        if (!v2)
        {
          return result;
        }
      }

      v8 = (v5 + 16);
      if (!v5)
      {
        v8 = v4;
      }

      *v8 = v2;
      *(v6 + 16) = 0;
    }

    while (v2);
  }

  return result;
}

BOOL sub_2393C49D4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = -1;
  *(a1 + 12) = -1;
  *(a1 + 16) = 0;
  *(a1 + 24) = -1;
  *(a1 + 28) = -1;
  *(a1 + 32) = 0;
  v4 = *a1;
  if (*a1)
  {
    while (!sub_2393C4AC8(v4, a2))
    {
      v4 = *(v4 + 16);
      if (!v4)
      {
        v5 = *a1;
        goto LABEL_6;
      }
    }

    v7 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Duplicate attribute override registration failed", v8, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393D5320(0x23u, 1);
      return 0;
    }
  }

  else
  {
    v5 = 0;
LABEL_6:
    *(a2 + 16) = v5;
    *a1 = a2;
    return 1;
  }

  return result;
}

BOOL sub_2393C4AC8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v2 = (a1 + 8);
  if (v3 != 1)
  {
    return 1;
  }

  v4 = (a2 + 8);
  if (*(a2 + 8) != 1)
  {
    return 1;
  }

  v5 = *sub_238E0A934(v2);
  return v5 == *sub_238E0A934(v4);
}

uint64_t sub_2393C4B48(uint64_t *a1, int a2, int a3)
{
  v6 = a1 + 3;
  if (*(a1 + 12) == a2 && *(a1 + 7) == a3)
  {
    return 0;
  }

  if (*(a1 + 4) != a2 || *(a1 + 3) != a3 || (v7 = a1[2]) == 0)
  {
    v7 = *a1;
    if (*a1)
    {
      v8 = 2;
      v9 = 12;
      while (*(v7 + 8) == 1 && *sub_238E0A934((v7 + 8)) != a2 || *(v7 + 12) != a3)
      {
        v7 = *(v7 + 16);
        if (!v7)
        {
          v9 = 28;
          v8 = 4;
          goto LABEL_16;
        }
      }

      v6 -= 8;
    }

    else
    {
      v8 = 4;
      v9 = 28;
    }

LABEL_16:
    *v6 = a2;
    *(a1 + v9) = a3;
    a1[v8] = v7;
  }

  return v7;
}

unint64_t sub_2393C4C40(uint64_t a1, unint64_t *a2, unsigned __int16 *a3, unsigned int a4)
{
  v6 = a2;
  v7 = sub_2393DB564(a2);
  result = *v6;
  if (*v6)
  {
    goto LABEL_2;
  }

  v6 = sub_2393DB524(v7);
  result = *v7;
  if (*v7)
  {
    v10 = v7[1];
    return result;
  }

  sub_2393DA83C(v6, a4);
  v11 = sub_2393DA7FC(v6);
  result = *v6;
  if (*v6)
  {
LABEL_2:
    v9 = v6[1];
    return result;
  }

  v12 = sub_2393DAEE8(v11, *a3);
  v13 = sub_2393DAF28(v12, *(a3 + 1));
  sub_2393DAF68(v13, *(a3 + 2));
  if (*(a3 + 14) == 4)
  {
    v14 = 0;
    sub_2393DAFA8(v11, &v14);
  }

  result = sub_2393DA87C(v11);
  if (!result)
  {
    result = *v6;
    goto LABEL_2;
  }

  return result;
}

uint64_t sub_2393C4D18(uint64_t a1, uint64_t a2)
{
  result = sub_2393DA87C((a2 + 160));
  if (!result)
  {

    return sub_2393DA87C((a2 + 32));
  }

  return result;
}

unint64_t sub_2393C4D64(uint64_t a1)
{
  if (*(a1 + 72) != -1)
  {
    sub_23952F6D8();
  }

  v2 = *(a1 + 74) == 0xFFFF;
  *(a1 + 70) = v2;
  if (v2)
  {
    *(a1 + 76) = 0;
    *(a1 + 54) = 1;
    v3 = sub_2393C4C40(&v8, *a1, (a1 + 40), *(a1 + 64));
    if (v3)
    {
      goto LABEL_9;
    }

    v5 = *(*a1 + 176);
    v7 = 0;
    v3 = sub_2393C8CE0(v5, 2uLL, 22, &v7);
    if (v3)
    {
      goto LABEL_9;
    }

    if (v7 != 21)
    {
      sub_23952F778();
    }

    v3 = sub_2393C7D60(*(*a1 + 16), 3u);
    if (v3)
    {
LABEL_9:
      v4 = v3 & 0xFFFFFFFF00000000;
      return v4 | v3;
    }

    *(a1 + 74) = 0;
  }

  else
  {
    *(a1 + 54) = 4;
  }

  LODWORD(v3) = 0;
  v4 = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 1;
  return v4 | v3;
}

_BYTE *sub_2393C4E54(_BYTE *result)
{
  if (result[70] == 1)
  {
    v1 = result;
    v2 = *(*result + 176);
    if (*(v2 + 60) != 21169 || (v3 = *(v2 + 52), v4 = v3 >= 3, v5 = v3 - 3, !v4))
    {
      sub_23952F958();
    }

    *(v2 + 52) = v5;
    *(v2 + 40) += 3;
    if (sub_2393C8DE0(v2, 21))
    {
      sub_23952F818();
    }

    result = sub_2393C4D18(&v6, *v1);
    if (result)
    {
      sub_23952F8B8();
    }

    if ((v1[71] & 1) == 0)
    {
      v1[76] = 0;
    }
  }

  return result;
}

BOOL sub_2393C4EF0(unsigned __int16 *a1, _OWORD *a2)
{
  v2 = a1[36];
  v3 = a1[37];
  if (v2 < v3)
  {
    a1[36] = v2 + 1;
  }

  else
  {
    v4 = *(*a1 + 16);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[3];
    a2[2] = v4[2];
    a2[3] = v7;
    *a2 = v5;
    a2[1] = v6;
  }

  return v2 >= v3;
}

void *sub_2393C4F30(void *result, int a2, uint64_t a3, __int128 *a4)
{
  if (a2)
  {
    v4 = *result;
    v5 = v4[2];
    v6 = *a4;
    v7 = a4[1];
    v8 = a4[3];
    v5[2] = a4[2];
    v5[3] = v8;
    *v5 = v6;
    v5[1] = v7;
    return sub_2393D06DC(v4);
  }

  else
  {
    v9 = *(result + 36) + 1;
    *(result + 36) = v9;
    *(result + 37) = v9;
    *(result + 71) = 1;
  }

  return result;
}

BOOL sub_2393C4F7C(uint64_t a1)
{
  v1 = *(a1 + 14);
  result = 1;
  if ((v1 - 214) > 0x21 || ((1 << (v1 + 42)) & 0x2000001FFLL) == 0)
  {
    return (v1 - 40) < 8;
  }

  return result;
}

uint64_t sub_2393C4FD8(unsigned __int8 *a1)
{
  if (*a1 == 255)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_2393C4FE8(unsigned __int16 *a1)
{
  if (*a1 == 0xFFFF)
  {
    return 0;
  }

  else
  {
    return *a1;
  }
}

unsigned __int8 *sub_2393C4FFC(unsigned __int8 *result, unsigned __int8 *a2, unint64_t a3)
{
  v3 = result;
  if (a2)
  {
    v4 = *a2;
    if (v4 == 255)
    {
      v5 = -1;
    }

    else
    {
      if (v4 <= a3)
      {
        v5 = *a2;
      }

      else
      {
        v5 = a3;
      }

      result = memmove(result + 1, a2 + 1, v5);
    }
  }

  else
  {
    v5 = 0;
  }

  *v3 = v5;
  return result;
}

unsigned __int16 *sub_2393C5058(unsigned __int16 *result, unsigned __int16 *a2, unint64_t a3)
{
  v3 = result;
  if (a2)
  {
    if (*a2 == 255 && *(a2 + 1) == 255)
    {
      *result = -1;
    }

    else
    {
      v6 = *a2;
      v4 = a2 + 1;
      LODWORD(v5) = v6;
      if (v6 == 0xFFFF)
      {
        v5 = 0;
      }

      else
      {
        v5 = v5;
      }

      if (v5 <= a3)
      {
        v7 = v5;
      }

      else
      {
        v7 = a3;
      }

      result = memmove(result + 1, v4, v7);
      *v3 = v7;
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void *sub_2393C50D0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 1;
  return sub_2393C56C0((a1 + 16), 0x10uLL);
}

void sub_2393C50E8(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    j__free(v2);
    *(a1 + 16) = 0;
  }
}

unint64_t sub_2393C5120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  if (*a1 == 1)
  {
    v7 = *(a1 + 8);
    v8 = *(a2 + 8);
    if (v8 >= 16 - v7)
    {
      v9 = (16 - v7);
    }

    else
    {
      v9 = v8;
    }

    memcpy((*(a1 + 16) + v7), *a2, v9);
    *(a1 + 8) += v9;
    *a2 = sub_2393C5680(a2, v9);
    *(a2 + 8) = v10;
    v11 = sub_2393C52D8(a1);
    v6 = *a1;
    v12 = v11;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  if (v6 == 2)
  {
    v13 = *(a1 + 8);
    v14 = *(a1 + 4) - v13;
    v15 = *(a2 + 8);
    if (v15 >= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }

    memcpy((*(a1 + 16) + v13), *a2, v16);
    *(a1 + 8) += v16;
    *a2 = sub_2393C5680(a2, v16);
    *(a2 + 8) = v17;
    v11 = sub_2393C5408(a1, a3);
    v12 = v11;
  }

  if (v12)
  {
    if (v12 != 25)
    {
      *(a1 + 8) = 0;
      *a1 = 0;
      v18 = *(a1 + 16);
      if (v18)
      {
        j__free(v18);
        *(a1 + 16) = 0;
      }
    }
  }

  return v11 & 0xFFFFFFFF00000000 | v12;
}

uint64_t sub_2393C526C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5 = *(a2 + 8);
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  memcpy((*(a1 + 16) + *(a1 + 8)), *a2, v6);
  *(a1 + 8) += v6;
  result = sub_2393C5680(a2, v6);
  *a2 = result;
  *(a2 + 8) = v8;
  return result;
}

uint64_t sub_2393C52D8(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3 < 0x10)
  {
    return 0x7100000019;
  }

  v16 = v1;
  v17 = v2;
  v5 = (a1 + 16);
  v12[0] = *(a1 + 16);
  v12[1] = v12[0];
  v14 = 0;
  v15 = 0;
  v13 = v3;
  if (!v12[0])
  {
    v13 = 0;
  }

  v11 = 0;
  v10 = 0;
  sub_2393D5A68(v12, &v11);
  sub_2393D5AC4(v12, &v10);
  sub_2393D5A68(v12, (a1 + 4));
  v6 = v14;
  if (!v14)
  {
    if (v11 != 468644126)
    {
      v7 = 0x7700000000;
      v6 = 218;
      return v7 | v6;
    }

    v9 = *(a1 + 4);
    if (v9 > 0x400)
    {
      v7 = 0x7900000000;
    }

    else
    {
      sub_2393C56C0(v5, v9);
      if (*v5)
      {
        v6 = 0;
        v7 = 0;
        *a1 = 2;
        *(a1 + 8) = 0;
        return v7 | v6;
      }

      v7 = 0x7A00000000;
    }

    v6 = 11;
    return v7 | v6;
  }

  v7 = v14 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

uint64_t sub_2393C5408(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) < *(a1 + 4))
  {
    return 0x8400000019;
  }

  v15 = v2;
  v16 = v3;
  sub_2393C5AAC(v13);
  sub_2393C5ADC(v13, *(a1 + 16), *(a1 + 8));
  v7 = sub_2393C7114(v13, 21, 256);
  v8 = v7;
  if (!v7)
  {
    v12 = 0;
    v10 = sub_2393C6A2C(v13, &v12);
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C6FD0(v13, 0);
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C5F70(v13, a2);
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C6FD0(v13, 1);
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C5F70(v13, (a2 + 2));
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C6FD0(v13, 2);
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C5FC8(v13, (a2 + 4));
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C6FD0(v13, 3);
    if (v10)
    {
      goto LABEL_14;
    }

    v10 = sub_2393C61E0(v13, (a2 + 8));
    if (v10)
    {
      goto LABEL_14;
    }

    if (*(a2 + 16) > 0x40uLL)
    {
      v9 = 0x9500000000;
    }

    else
    {
      v10 = sub_2393C6FD0(v13, 4);
      if (v10)
      {
        goto LABEL_14;
      }

      v10 = sub_2393C5F2C(v13, (a2 + 24));
      if (v10)
      {
        goto LABEL_14;
      }

      v10 = sub_2393C6B34(v13);
      if (v10)
      {
        goto LABEL_14;
      }

      v11 = v14;
      if (v14 == 5)
      {
        *(a2 + 36) = 0;
        *(a2 + 32) = 1;
        v10 = sub_2393C5FC8(v13, (a2 + 36));
        if (v10)
        {
          goto LABEL_14;
        }

        v10 = sub_2393C6B34(v13);
        if (v10)
        {
          goto LABEL_14;
        }

        v11 = v14;
      }

      if (v11 == 6)
      {
        *(a2 + 44) = 0;
        *(a2 + 40) = 1;
        v10 = sub_2393C5FC8(v13, (a2 + 44));
        if (v10)
        {
          goto LABEL_14;
        }

        v10 = sub_2393C6B34(v13);
        if (v10)
        {
          goto LABEL_14;
        }

        v11 = v14;
      }

      if (v11 != 7)
      {
LABEL_33:
        v10 = sub_2393C6F5C(v13, 8);
        if (!v10)
        {
          v10 = sub_238EA4DB4(v13, (a2 + 64));
          if (!v10)
          {
            v10 = sub_2393C6FD0(v13, 9);
            if (!v10)
            {
              v10 = sub_2393C60CC(v13, (a2 + 72));
              if (!v10)
              {
                v10 = sub_2393C6A98(v13, v12);
                if (!v10)
                {
                  v9 = 0;
                  LODWORD(v10) = 0;
                  goto LABEL_15;
                }
              }
            }
          }
        }

LABEL_14:
        v9 = v10 & 0xFFFFFFFF00000000;
LABEL_15:
        v8 = v10;
        return v8 | v9;
      }

      v10 = sub_2393C61E0(v13, (a2 + 48));
      if (v10)
      {
        goto LABEL_14;
      }

      if (*(a2 + 56) <= 0x100uLL)
      {
        v10 = sub_2393C6B34(v13);
        if (v10)
        {
          goto LABEL_14;
        }

        goto LABEL_33;
      }

      v9 = 0xA900000000;
    }

    LODWORD(v10) = 30;
    goto LABEL_15;
  }

  v9 = v7 & 0xFFFFFFFF00000000;
  return v8 | v9;
}

uint64_t sub_2393C5680(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (v2 < a2)
  {
    sub_23952F9F8();
  }

  sub_238DB6950(&v4, *a1 + a2, v2 - a2);
  return v4;
}

void *sub_2393C56C0(void **a1, size_t a2)
{
  v4 = *a1;
  if (v4)
  {
    j__free(v4);
    *a1 = 0;
  }

  result = sub_2393D52C4(a2);
  *a1 = result;
  return result;
}

uint64_t sub_2393C5700(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  *result = &unk_284BB8000;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 56) = 0;
  *(result + 48) = a4;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2393C5738(uint64_t result, uint64_t a2, int a3)
{
  *result = &unk_284BB8000;
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 56) = 0;
  *(result + 48) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2393C5770(uint64_t result, uint64_t a2, int a3)
{
  *(result + 24) = 0;
  *(result + 32) = a2;
  *(result + 40) = a3;
  *(result + 56) = 0;
  *(result + 48) = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

unint64_t sub_2393C578C(uint64_t a1)
{
  sub_2393C5AAC(v8);
  sub_2393C5B2C(v8, a1, *(a1 + 56));
  v8[0] = *(a1 + 8);
  v2 = sub_2393C6B34(v8);
  if (v2 || (v2 = sub_2393C6C04(v8), v2) || (v5 = *(a1 + 56), v6 = v10, v7 = v9, *(a1 + 24)) && (sub_2393C5B2C(v8, a1, *(a1 + 56)), v8[0] = *(a1 + 8), v2 = (*(a1 + 24))(a1, *(a1 + 16), v8), v2))
  {
    v3 = v2 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v2) = 0;
    v3 = 0;
    *(a1 + 56) = v5 - v6;
    *(a1 + 48) = v7;
  }

  return v3 | v2;
}

unint64_t sub_2393C5880(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 40);
  if (v7 >= v8)
  {
    v9 = sub_2393C578C(a1);
    if (v9)
    {
      v10 = v9 & 0xFFFFFFFF00000000;
      return v10 | v9;
    }

    v7 = *(a1 + 56);
    v8 = *(a1 + 40);
  }

  v11 = *(a1 + 32) + (*(a1 + 48) - *(a1 + 32) + v7) % v8;
  *a3 = v11;
  v12 = *(a1 + 48);
  if (v11 >= v12)
  {
    v13 = *(a1 + 40) + *(a1 + 32) - v11;
  }

  else
  {
    v13 = v12 - v11;
  }

  LODWORD(v9) = 0;
  v10 = 0;
  *a4 = v13;
  return v10 | v9;
}

uint64_t sub_2393C593C(uint64_t result, unint64_t *a2, _DWORD *a3)
{
  v3 = *(result + 32) + (*(result + 48) - *(result + 32) + *(result + 56)) % *(result + 40);
  *a2 = v3;
  v4 = *(result + 48);
  if (v3 >= v4)
  {
    v5 = *(result + 40) + *(result + 32) - v3;
  }

  else
  {
    v5 = v4 - v3;
  }

  *a3 = v5;
  return result;
}

uint64_t sub_2393C5990(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  if (a4)
  {
    v4 = a3 + a4;
    v5 = *(a1 + 48);
    if (v4 <= v5)
    {
      v6 = *(a1 + 40) + v4 - v5;
    }

    else
    {
      v6 = v4 - v5;
    }

    *(a1 + 56) = v6;
  }

  return 0;
}

uint64_t sub_2393C59EC(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 40);
  v8 = *a3;
  if (*a3)
  {
    v9 = *(a1 + 32);
    if (v8 < v4 + v7)
    {
      v10 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    *a3 = v5;
    v9 = *(a1 + 32);
    if (v5 != v9 + *(a1 + 40))
    {
      v9 = v5;
    }
  }

  v11 = v4 + (v5 - v4 + v6) % v7;
  *a3 = v9;
  if (*(a1 + 56) && v11 <= v9)
  {
    v12 = *(a1 + 40) + *(a1 + 32) - v9;
    *a4 = v12;
    if (v11 != *a3 || v8 == 0)
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v11 - v9;
  }

LABEL_15:
  *a4 = v10;
  return 0;
}

double sub_2393C5AAC(uint64_t a1)
{
  *a1 = -1;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = -1;
  *(a1 + 68) = -1;
  *(a1 + 70) = 0;
  return result;
}

uint64_t sub_2393C5ADC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 0xFFFFFFFF)
  {
    v3 = 0xFFFFFFFFLL;
  }

  else
  {
    v3 = a3;
  }

  *(result + 40) = a2;
  *(result + 48) = a2 + v3;
  *(result + 56) = 0;
  *(result + 60) = v3;
  *(result + 68) = -1;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 16) = 256;
  *(result + 64) = -1;
  *(result + 70) = 0;
  *result = -1;
  return result;
}

uint64_t sub_2393C5B18(uint64_t result)
{
  *(result + 68) = -1;
  *(result + 16) = 256;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_2393C5B2C(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 40) = 0;
  *(a1 + 32) = a2;
  v6 = 0;
  result = (*(*a2 + 16))(a2, a1, a1 + 40, &v6);
  if (!result)
  {
    result = 0;
    *(a1 + 48) = *(a1 + 40) + v6;
    *(a1 + 56) = 0;
    *(a1 + 60) = a3;
    *(a1 + 68) = -1;
    *(a1 + 64) = -1;
    *a1 = -1;
    *(a1 + 16) = 256;
    *(a1 + 24) = 0;
    *(a1 + 70) = 0;
    *(a1 + 8) = 0;
  }

  return result;
}

uint64_t sub_2393C5BDC(uint64_t result, uint64_t a2)
{
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 60) = *(a2 + 60);
  *(result + 68) = *(a2 + 68);
  *(result + 64) = *(a2 + 64);
  *(result + 70) = *(a2 + 70);
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_2393C5C40(uint64_t a1)
{
  v1 = *(a1 + 68);
  v2 = v1 & 0x1F;
  if (v1 == 0xFFFF)
  {
    v2 = -1;
  }

  if (v2 == 24)
  {
    return 0xFFFFFFFFLL;
  }

  if ((v2 & 0xFE) == 0xA)
  {
    return 10;
  }

  result = v2;
  if (v1 != 0xFFFF && result < 20)
  {
    return v1 & 0x1C;
  }

  return result;
}

uint64_t sub_2393C5C98(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1 == 0xFFFF)
  {
    return -1;
  }

  else
  {
    return v1 & 0x1F;
  }
}

uint64_t sub_2393C5CB8(uint64_t a1)
{
  v1 = *(a1 + 68);
  if (v1 == 0xFFFF || (v1 & 0x1Cu) - 12 > 7)
  {
    return 0;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_2393C5CE4(uint64_t a1, char *a2)
{
  v2 = *(a1 + 68);
  if (v2 == 0xFFFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = v2 & 0x1F;
  }

  if (v3 == 8)
  {
    v4 = 0;
  }

  else
  {
    if (v3 != 9)
    {
      v5 = 0x8F00000000;
      v6 = 38;
      return v6 | v5;
    }

    v4 = 1;
  }

  v5 = 0;
  v6 = 0;
  *a2 = v4;
  return v6 | v5;
}

uint64_t sub_2393C5D48(uint64_t a1, _BYTE *a2)
{
  v4 = 0;
  result = sub_2393C5DA0(a1, &v4);
  if (v4 != v4)
  {
    return 0x990000008FLL;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_2393C5DA0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 68);
  if (v2 == 0xFFFF)
  {
    v3 = 255;
  }

  else
  {
    v3 = v2 & 0x1F;
  }

  v4 = 0xC900000026;
  if (v3 <= 1)
  {
    if (v3)
    {
      v5 = *(a1 + 24);
    }

    else
    {
      v5 = *(a1 + 24);
    }

    goto LABEL_12;
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 24);
    goto LABEL_12;
  }

  if (v3 == 3)
  {
    v5 = *(a1 + 24);
LABEL_12:
    v4 = 0;
    *a2 = v5;
  }

  return v4;
}

uint64_t sub_2393C5E20(uint64_t a1, _WORD *a2)
{
  v4 = 0;
  result = sub_2393C5DA0(a1, &v4);
  if (v4 != v4)
  {
    return 0xA50000008FLL;
  }

  *a2 = v4;
  return result;
}