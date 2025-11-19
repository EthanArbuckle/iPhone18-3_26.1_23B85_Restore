unint64_t sub_2394BC690(uint64_t a1)
{
  if ((*(*a1 + 24))(a1))
  {
    v1 = sub_239480530();
    v2 = v1 & 0xFFFFFFFF00000000;
    if (v1)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    if (!v1)
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0x2A700000000;
    v3 = 3;
  }

  return v2 | v3;
}

uint64_t sub_2394BC700(uint64_t a1)
{
  if ((*(*a1 + 24))(a1))
  {
    return sub_2393D52B8();
  }

  else
  {
    return 0x2AF00000003;
  }
}

unint64_t sub_2394BC774(uint64_t a1, uint64_t *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) == 2)
  {
    v4 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *a2;
      v5 = a2[1];
      v7 = HIDWORD(*a2);
      *buf = 67109888;
      v14 = HIDWORD(v5);
      v15 = 1024;
      v16 = v5;
      v17 = 1024;
      v18 = v7;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Resolving %08X%08X:%08X%08X ...", buf, 0x1Au);
    }

    if (sub_2393D5398(2u))
    {
      v11 = HIDWORD(*a2);
      v10 = HIDWORD(a2[1]);
      sub_2393D5320(0x22u, 2);
    }

    memset(v22, 0, sizeof(v22));
    v21 = 0u;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 120;
    result = sub_23948BE1C(buf, 0x22uLL, a2);
    if (!result)
    {
      v23 = 0x72657474616D5FLL;
      v24 = 256;
      v25 = 3;
      v12 = 0;
      result = sub_239480F60(buf, &v12, sub_2394BAC50, a1);
    }
  }

  else
  {
    result = 0x2BC00000003;
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394BC920(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  result = sub_23948BE1C(v4, 0x22uLL, a2);
  if (!result)
  {
    result = sub_2394812A4(v4);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394BC988(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = sub_2394BB300(a1);
  if (v6)
  {
    goto LABEL_2;
  }

  (*(*a1 + 120))(a1, a3);
  if (*a2 == 6)
  {
    memset(v17, 0, sizeof(v17));
    v16 = 0u;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 120;
    v13 = *a2;
    v14 = *(a2 + 16);
    v6 = sub_23948C07C(__str, 0x22uLL, &v13);
    if (!v6)
    {
      v18 = 0x6372657474616D5FLL;
      v19 = 0;
      v20 = 3;
      LODWORD(v13) = 0;
      v10 = sub_2394BCC6C(a3);
      v6 = sub_239480F60(__str, &v13, sub_2394BCB8C, v10);
      if (!v6)
      {
        v7 = 0;
        goto LABEL_3;
      }

LABEL_10:
      sub_2394BA25C(a3);
    }
  }

  else
  {
    v13 = *a2;
    v14 = *(a2 + 16);
    v6 = sub_23948C274(__str, 0x21uLL, &v13, 2);
    if (!v6)
    {
      *&v13 = 0;
      v12 = 0;
      v11 = sub_2394BCC6C(a3);
      v6 = sub_239480A9C(__str, 0, 3, &v12, sub_2394BCCA0, v11, &v13);
      if (!v6)
      {
        *(a3 + 16) = v13;
        *(a3 + 24) = 1;
        goto LABEL_2;
      }

      goto LABEL_10;
    }
  }

LABEL_2:
  v7 = v6;
LABEL_3:
  v8 = *MEMORY[0x277D85DE8];
  return v6 & 0xFFFFFFFF00000000 | v7;
}

void sub_2394BCB8C(int *a1, uint64_t a2, uint64_t *a3, int a4)
{
  v8[54] = *MEMORY[0x277D85DE8];
  if (a4 && a4 != 164)
  {

    sub_2394BA25C(a1);
  }

  else
  {
    v8[0] = -1;
    sub_2394BB0EC(a2, a3, v8);
    v6 = sub_23949EAFC(v8);
    sub_2394BDBAC(v6);
    sub_2394BE1B0(a1);
    if (!a4)
    {
      sub_2394BA25C(a1);
    }

    v7 = *MEMORY[0x277D85DE8];
  }
}

int *sub_2394BCC6C(int *result)
{
  v1 = *result;
  if (*result == -1)
  {
    sub_23952FE00();
  }

  if (!v1)
  {
    sub_23952FEA0();
  }

  *result = v1 + 1;
  return result;
}

void sub_2394BCCA0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5)
{
  v12[54] = *MEMORY[0x277D85DE8];
  if (a5)
  {
    if (*(a1 + 24) == 1)
    {
      *(a1 + 24) = 0;
    }

    v6 = *MEMORY[0x277D85DE8];

    sub_2394BA25C(a1);
  }

  else
  {
    v8 = a3;
    if (a3)
    {
      v9 = a2 + 75;
      do
      {
        sub_2394BCC6C(a1);
        if (!strcmp(v9, "_matter"))
        {
          v12[0] = -1;
          sub_2394BB090(v9 - 75, v12);
          v10 = sub_23949EB1C(v12);
          sub_2394BE26C(v10);
          sub_2394BE1B0(a1);
          sub_2394BA25C(a1);
        }

        else if (*(v9 - 41) && *(v9 + 29) && (*(v9 + 69) & 1) != 0)
        {
          sub_23947EE68(v12, v9 + 53, 1);
          sub_2394BCB8C(a1, v9 - 75, v12, 0);
        }

        else
        {
          LODWORD(v12[0]) = *(v9 + 17);
          sub_239480F60(v9 - 75, v12, sub_2394BCB8C, a1);
        }

        v9 += 152;
        --v8;
      }

      while (v8);
    }

    if (a4)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;
      }

      sub_2394BA25C(a1);
    }

    v11 = *MEMORY[0x277D85DE8];
  }
}

unint64_t sub_2394BCE7C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = sub_2394BB300(a1);
  if (!v6)
  {
    (*(*a1 + 120))(a1, a3);
    if (*a2 == 6)
    {
      memset(v16, 0, sizeof(v16));
      v15 = 0u;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 120;
      v12 = *a2;
      v13 = *(a2 + 16);
      v6 = sub_23948C07C(__str, 0x22uLL, &v12);
      if (v6)
      {
        goto LABEL_7;
      }

      v17 = 0x6472657474616D5FLL;
      v18 = 0;
      v19 = 3;
      LODWORD(v12) = 0;
      v7 = sub_2394BCC6C(a3);
      if (sub_239480F60(__str, &v12, sub_2394BCB8C, v7))
      {
        sub_2394BA25C(a3);
      }
    }

    v12 = *a2;
    v13 = *(a2 + 16);
    v6 = sub_23948C274(__str, 0x21uLL, &v12, 3);
    if (!v6)
    {
      *&v12 = 0;
      v11 = 0;
      v10 = sub_2394BCC6C(a3);
      v6 = sub_239480A9C(__str, 0, 3, &v11, sub_2394BCCA0, v10, &v12);
      if (v6)
      {
        sub_2394BA25C(a3);
      }

      else
      {
        *(a3 + 16) = v12;
        *(a3 + 24) = 1;
      }
    }
  }

LABEL_7:
  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_2394BD070(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = sub_2394BB300(a1);
  if (!v6)
  {
    (*(*a1 + 120))(a1, a3);
    v11 = *a2;
    v12 = *(a2 + 16);
    v6 = sub_23948C274(__str, 0x35uLL, &v11, 1);
    if (!v6)
    {
      *&v11 = 0;
      v10 = 0;
      v9 = sub_2394BCC6C(a3);
      v6 = sub_239480A9C(__str, 1u, 3, &v10, sub_2394BCCA0, v9, &v11);
      if (v6)
      {
        sub_2394BA25C(a3);
      }

      else
      {
        *(a3 + 16) = v11;
        *(a3 + 24) = 1;
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

unint64_t sub_2394BD1B4(_BYTE *a1, int a2, __int128 *a3, uint64_t a4)
{
  switch(a2)
  {
    case 1:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = sub_2394BD070(a1, &v7, a4);
      break;
    case 3:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = sub_2394BCE7C(a1, &v7, a4);
      break;
    case 2:
      v7 = *a3;
      v8 = *(a3 + 2);
      v4 = sub_2394BC988(a1, &v7, a4);
      break;
    default:
      v5 = 0x35000000000;
      LODWORD(v4) = 47;
      return v4 | v5;
  }

  v5 = v4 & 0xFFFFFFFF00000000;
  return v4 | v5;
}

uint64_t sub_2394BD26C(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  *(a2 + 24) = 0;
  return sub_239480BDC(v2);
}

uint64_t sub_2394BD2A4(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 24) & 1) == 0)
  {
    return 0;
  }

  v2 = *(a2 + 16);
  *(a2 + 24) = 0;
  return sub_239480BDC(v2);
}

unint64_t sub_2394BD2DC(_BYTE *a1, char *a2, uint64_t a3, uint64_t a4, uint32_t *a5)
{
  result = sub_2394BB300(a1);
  if (!result)
  {
    v10 = *a5;
    return sub_239481700(a2, a3, a4, &v10);
  }

  return result;
}

uint64_t *sub_2394BD344()
{
  if ((byte_2814F7138 & 1) == 0)
  {
    byte_2814F7138 = 1;
    qword_2814F7128 = 0;
    unk_2814F7130 = 0;
    qword_2814F7110 = &unk_284BBCF48;
    qword_2814F7118 = &unk_284BBCFE0;
    unk_2814F7120 = 0;
  }

  return &qword_2814F7110;
}

uint64_t *sub_2394BD3AC()
{
  if ((byte_2814F7138 & 1) == 0)
  {
    byte_2814F7138 = 1;
    qword_2814F7128 = 0;
    unk_2814F7130 = 0;
    qword_2814F7110 = &unk_284BBCF48;
    qword_2814F7118 = &unk_284BBCFE0;
    unk_2814F7120 = 0;
  }

  return &qword_2814F7118;
}

double sub_2394BD44C(uint64_t a1)
{
  *(a1 + 123) = 0u;
  *(a1 + 114) = 0u;
  *(a1 + 98) = 0u;
  if (*(a1 + 148) == 1)
  {
    *(a1 + 148) = 0;
  }

  if (*(a1 + 156) == 1)
  {
    *(a1 + 156) = 0;
  }

  if (*(a1 + 162) == 1)
  {
    *(a1 + 162) = 0;
  }

  if (*(a1 + 142) == 1)
  {
    *(a1 + 142) = 0;
  }

  *(a1 + 8) = 0;
  *(a1 + 96) = 0;
  *(a1 + 139) = 0;
  *a1 = 0;
  for (i = 16; i != 96; i += 16)
  {
    result = *&xmmword_27DF7BD44;
    *(a1 + i) = xmmword_27DF7BD44;
  }

  return result;
}

uint64_t sub_2394BD4D0(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 98);
  if (*(a1 + 98))
  {
    v3 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v39 = v2;
      _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "\tHostname: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x22u, 3);
    }
  }

  if (*(a1 + 8))
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = sub_2393CF6CC((a1 + 16 + 16 * v4), buf, 0x2Eu);
      v7 = sub_2393D9044(0x22u);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v34 = 67109378;
        v35 = v5;
        v36 = 2080;
        v37 = v6;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "\tIP Address #%d: %s", v34, 0x12u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0x22u, 3);
      }

      v4 = v5;
    }

    while (*(a1 + 8) > v5++);
  }

  v9 = *(a1 + 96);
  if (*(a1 + 96))
  {
    v10 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      LODWORD(v39) = v9;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_INFO, "\tPort: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v28 = *(a1 + 96);
      sub_2393D5320(0x22u, 3);
    }
  }

  v11 = *(a1 + 148);
  v12 = sub_2393D9044(0x22u);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v11 == 1)
  {
    if (v13)
    {
      v14 = *(a1 + 144);
      *buf = 67109120;
      LODWORD(v39) = v14;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval idle: %u ms", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v29 = *(a1 + 144);
LABEL_26:
      sub_2393D5320(0x22u, 3);
    }
  }

  else
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval idle: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      goto LABEL_26;
    }
  }

  v15 = *(a1 + 156);
  v16 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v15 == 1)
  {
    if (v16)
    {
      v17 = *(a1 + 152);
      *buf = 67109120;
      LODWORD(v39) = v17;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval active: %u ms", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v30 = *(a1 + 152);
LABEL_35:
      sub_2393D5320(0x22u, 3);
    }
  }

  else
  {
    if (v16)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Interval active: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      goto LABEL_35;
    }
  }

  v18 = *(a1 + 162);
  v19 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v18 == 1)
  {
    if (v19)
    {
      v20 = *(a1 + 160);
      *buf = 67109120;
      LODWORD(v39) = v20;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Active Threshold: %u ms", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v31 = *(a1 + 160);
LABEL_44:
      sub_2393D5320(0x22u, 3);
    }
  }

  else
  {
    if (v19)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tMrp Active Threshold: not present", buf, 2u);
    }

    if (sub_2393D5398(3u))
    {
      goto LABEL_44;
    }
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v21 = *(a1 + 139);
    *buf = 67109120;
    LODWORD(v39) = v21;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tTCP Client Supported: %d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v32 = *(a1 + 139);
    sub_2393D5320(0x22u, 3);
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v22 = *(a1 + 140);
    *buf = 67109120;
    LODWORD(v39) = v22;
    _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tTCP Server Supported: %d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v33 = *(a1 + 140);
    sub_2393D5320(0x22u, 3);
  }

  v23 = *(a1 + 142);
  v24 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
  if (v23 == 1)
  {
    if (v24)
    {
      if (*(a1 + 141))
      {
        v25 = "LIT";
      }

      else
      {
        v25 = "SIT";
      }

      *buf = 136315138;
      v39 = v25;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tThe ICD operates in %s", buf, 0xCu);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      *(a1 + 141);
LABEL_64:
      result = sub_2393D5320(0x22u, 3);
    }
  }

  else
  {
    if (v24)
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v12, OS_LOG_TYPE_INFO, "\tICD: not present", buf, 2u);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      goto LABEL_64;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394BDB24(__int128 *a1, uint64_t a2, void *a3, char *__str, size_t __size)
{
  v12 = *a1;
  v13 = *(a1 + 2);
  v8 = sub_23948C07C(__str, __size, &v12);
  if (v8)
  {
    v9 = v8 & 0xFFFFFFFF00000000;
  }

  else
  {
    LODWORD(v8) = 0;
    v9 = 0;
    v10 = (*a3)++;
    *(a2 + 8 * v10) = __str;
  }

  return v9 | v8;
}

uint64_t sub_2394BDBAC(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Discovered commissionable/commissioner node:", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x22u, 3);
  }

  sub_2394BD4D0(a1);
  v3 = *(a1 + 168);
  if (v3)
  {
    v25 = 0u;
    memset(v26, 0, sizeof(v26));
    v23 = 0u;
    v24 = 0u;
    *buf = 0u;
    v22 = 0u;
    sub_2393D5E58((a1 + 190), v3, buf, 0x65uLL, 3u);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v19 = 136315138;
      v20 = buf;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tRotating ID: %s", v19, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x22u, 3);
    }
  }

  if (*(a1 + 257))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = a1 + 257;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tDevice Name: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x22u, 3);
    }
  }

  v4 = *(a1 + 182);
  if (*(a1 + 182))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tVendor ID: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v13 = *(a1 + 182);
      sub_2393D5320(0x22u, 3);
    }
  }

  v5 = *(a1 + 184);
  if (*(a1 + 184))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tProduct ID: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v14 = *(a1 + 184);
      sub_2393D5320(0x22u, 3);
    }
  }

  v6 = *(a1 + 176);
  if (v6)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tDevice Type: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v15 = *(a1 + 176);
      sub_2393D5320(0x22u, 3);
    }
  }

  v7 = *(a1 + 180);
  if (*(a1 + 180))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tLong Discriminator: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v16 = *(a1 + 180);
      sub_2393D5320(0x22u, 3);
    }
  }

  if (*(a1 + 290))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = a1 + 290;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tPairing Instruction: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x22u, 3);
    }
  }

  v8 = *(a1 + 186);
  if (*(a1 + 186))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tPairing Hint: %u", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      v17 = *(a1 + 186);
      sub_2393D5320(0x22u, 3);
    }
  }

  if (*(a1 + 240))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = a1 + 240;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tInstance Name: %s", buf, 0xCu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x22u, 3);
    }
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v9 = *(a1 + 188);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tCommissioning Mode: %u", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v18 = *(a1 + 188);
    sub_2393D5320(0x22u, 3);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 189))
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tSupports Commissioner Generated Passcode: %s", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    *(a1 + 189);
    result = sub_2393D5320(0x22u, 3);
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394BE1B0(uint64_t a1)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(*v3 + 16);

    return v4();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v6 = sub_2393D9044(0x22u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Missing commissioning delegate. Data discarded", v7, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      return sub_2393D5320(0x22u, 1);
    }
  }

  return result;
}

uint64_t sub_2394BE26C(unint64_t *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = sub_2393D9044(0x22u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Discovered Operational node:\r\n", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x22u, 3);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v4 = *a1;
    v3 = a1[1];
    v5 = HIDWORD(*a1);
    *buf = 67109888;
    *v12 = HIDWORD(v3);
    *&v12[4] = 1024;
    *&v12[6] = v3;
    v13 = 1024;
    v14 = v5;
    v15 = 1024;
    v16 = v4;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\tNode Instance: %08X%08X-%08X%08X", buf, 0x1Au);
  }

  if (sub_2393D5398(3u))
  {
    v10 = HIDWORD(*a1);
    v9 = HIDWORD(a1[1]);
    sub_2393D5320(0x22u, 3);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    if (*(a1 + 16))
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    *buf = 136315138;
    *v12 = v6;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "\thasZeroTTL: %s\r\n", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    *(a1 + 16);
    result = sub_2393D5320(0x22u, 3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394BE454(char *a1, size_t a2, uint64_t a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((a4 - 10) > 2)
  {
    v8 = 0xE300000000;
    LODWORD(v9) = 47;
  }

  else if (*(a3 + 12) == 1)
  {
    if (a4 == 12)
    {
      v7 = *(a3 + 8);
    }

    else
    {
      v7 = *(a3 + 4 * (a4 != 10));
      if (v7 > 0x36EE80)
      {
        v10 = sub_2393D9044(0x22u);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          if (a4 == 10)
          {
            v11 = "idle";
          }

          else
          {
            v11 = "active";
          }

          *buf = 136315138;
          v15 = v11;
          _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "MRP retry interval %s value exceeds allowed range of 1 hour, using maximum available", buf, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0x22u, 2);
        }

        v7 = 3600000;
      }
    }

    v9 = sub_2394BE5EC(a1, a2, 1, "%u", v7);
    v8 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = 0xE400000000;
    LODWORD(v9) = 28;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

uint64_t sub_2394BE5EC(char *a1, size_t a2, int a3, char *__format, ...)
{
  va_start(va, __format);
  if (vsnprintf(a1, a2, __format, va) >= a3)
  {
    return 0;
  }

  else
  {
    return 0xA80000001ELL;
  }
}

uint64_t sub_2394BE648(_BYTE *a1)
{
  v1 = 8;
  if (a1[8])
  {
    v1 = 16;
  }

  if (a1[24] == 1)
  {
    return v1 + 8;
  }

  if (a1[40])
  {
    return v1 | 2;
  }

  return v1;
}

uint64_t sub_2394BE684(uint64_t a1)
{
  v1 = 8;
  if ((*(a1 + 8) & 0x10) == 0)
  {
    v1 = 6;
  }

  if (*(a1 + 12))
  {
    return v1 + 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2394BE6AC(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  sub_2393D5964(a2, &v9);
  result = *(a2 + 24);
  if (result)
  {
    goto LABEL_2;
  }

  if (v9 > 0xFu)
  {
    return 0x8E000000A7;
  }

  *(a1 + 47) = v9;
  sub_2393D5A0C(a2, (a1 + 44));
  result = *(a2 + 24);
  if (result)
  {
LABEL_2:
    v5 = *(a2 + 32);
    return result;
  }

  v8 = 0;
  sub_2393D5964(a2, &v8);
  result = *(a2 + 24);
  v6 = *(a2 + 32);
  if (!result)
  {
    v7 = v8;
    *(a1 + 48) = v8;
    *(a1 + 46) = v7 & 3;
  }

  return result;
}

uint64_t sub_2394BE758(uint64_t a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  v4[0] = *(*a2 + 8);
  v4[1] = v4[0];
  v6 = 0;
  v7 = 0;
  v5 = v2;
  if (!v4[0])
  {
    v5 = 0;
  }

  return sub_2394BE6AC(a1, v4);
}

uint64_t sub_2394BE79C(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v11 = a2;
  v12 = a2;
  v14 = 0;
  v15 = 0;
  v13 = a3;
  if (!a2)
  {
    v13 = 0;
  }

  result = sub_2394BE6AC(a1, &v11);
  if (result)
  {
    return result;
  }

  sub_2393D5A68(&v11, a1);
  result = v14;
  if (v14)
  {
    return result;
  }

  if ((*(a1 + 47) & 4) != 0)
  {
    v10 = 0;
    sub_2393D5AC4(&v11, &v10);
    result = v14;
    if (v14)
    {
      return result;
    }

    *(a1 + 8) = 1;
    *(a1 + 16) = v10;
  }

  else
  {
    *(a1 + 8) = 0;
  }

  v7 = *(a1 + 46);
  if (v7 > 1)
  {
    return 0xBD000000ACLL;
  }

  v8 = *(a1 + 47);
  if ((~v8 & 3) == 0)
  {
    return 0xC3000000ACLL;
  }

  if (v8)
  {
    v10 = 0;
    sub_2393D5AC4(&v11, &v10);
    result = v14;
    if (v14)
    {
      return result;
    }

    *(a1 + 24) = 1;
    *(a1 + 32) = v10;
    goto LABEL_19;
  }

  if ((v8 & 2) == 0)
  {
    *(a1 + 24) = 0;
LABEL_19:
    *(a1 + 40) = 0;
LABEL_20:
    if ((*(a1 + 48) & 0x20) == 0)
    {
      v9 = v12;
LABEL_22:
      *a4 = v9 - v11;
      return result;
    }

    LOWORD(v10) = 0;
    sub_2393D5A0C(&v11, &v10);
    result = v14;
    if (!v14)
    {
      if (v13 >= v10)
      {
        v9 = v12 + v10;
        goto LABEL_22;
      }

      return 0xE6000000ACLL;
    }

    return result;
  }

  if (v7 != 1)
  {
    return 0xD3000000ACLL;
  }

  LOWORD(v10) = 0;
  sub_2393D5A0C(&v11, &v10);
  result = v14;
  if (!v14)
  {
    *(a1 + 40) = 1;
    *(a1 + 42) = v10;
    *(a1 + 24) = 0;
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2394BE94C(uint64_t a1, void **a2)
{
  v6 = 0;
  v3 = sub_2394BE79C(a1, (*a2)[1], (*a2)[3], &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D9984(*a2, v6);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394BE9B8(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v14 = a2;
  v15 = a2;
  v17 = 0;
  v18 = 0;
  v16 = a3;
  if (!a2)
  {
    v16 = 0;
  }

  v13 = 0;
  sub_2393D5964(&v14, &v13);
  sub_2393D5964(&v14, a1);
  sub_2393D5A0C(&v14, (a1 + 2));
  result = v17;
  if (!v17)
  {
    v7 = v13;
    *(a1 + 8) = v13;
    if ((v7 & 0x10) != 0)
    {
      LOWORD(v11) = 0;
      sub_2393D5A0C(&v14, &v11);
      result = v17;
      if (v17)
      {
        return result;
      }

      v8 = v11;
    }

    else
    {
      v8 = 0;
    }

    v12 = 0;
    sub_2393D5A0C(&v14, &v12);
    result = v17;
    if (!v17)
    {
      *(a1 + 4) = v8 | (v12 << 16);
      v9 = *(a1 + 8);
      if ((v9 & 2) != 0)
      {
        v11 = 0;
        sub_2393D5A68(&v14, &v11);
        result = v17;
        if (v17)
        {
          return result;
        }

        *(a1 + 12) = 1;
        *(a1 + 16) = v11;
        if ((*(a1 + 8) & 8) == 0)
        {
          goto LABEL_12;
        }
      }

      else
      {
        *(a1 + 12) = 0;
        if ((v9 & 8) == 0)
        {
LABEL_12:
          v10 = v15;
          goto LABEL_13;
        }
      }

      LOWORD(v11) = 0;
      sub_2393D5A0C(&v14, &v11);
      result = v17;
      if (!v17)
      {
        if (v16 < v11)
        {
          return 0x127000000ACLL;
        }

        v10 = v15 + v11;
LABEL_13:
        *a4 = v10 - v14;
      }
    }
  }

  return result;
}

unint64_t sub_2394BEB24(uint64_t a1, void **a2)
{
  v6 = 0;
  v3 = sub_2394BE9B8(a1, (*a2)[1], (*a2)[3], &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2393D9984(*a2, v6);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394BEB90(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v7 = (a1 + 8);
  if (*(a1 + 8))
  {
    v8 = 16;
  }

  else
  {
    v8 = 8;
  }

  v10 = (a1 + 24);
  v9 = *(a1 + 24);
  if (v9 == 1)
  {
    if (v8 + 8 <= a3)
    {
      v11 = *(a1 + 40);
      if (v11)
      {
        v12 = 0x13E00000000;
LABEL_38:
        v13 = 172;
        return v13 | v12;
      }

      goto LABEL_12;
    }

LABEL_11:
    v12 = 0x13D00000000;
    v13 = 47;
    return v13 | v12;
  }

  v11 = *(a1 + 40);
  if (*(a1 + 40))
  {
    v8 |= 2uLL;
  }

  if (v8 > a3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (!a4)
  {
    v12 = 0x13F00000000;
    goto LABEL_38;
  }

  if (*(a1 + 46) > 1u)
  {
    v12 = 0x14000000000;
    goto LABEL_38;
  }

  if (*(a1 + 8))
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  if (v11)
  {
    v15 = 2;
  }

  else
  {
    v15 = 0;
  }

  *a2 = v14 | v15 | v9;
  *(a2 + 1) = *(a1 + 44);
  *(a2 + 3) = *(a1 + 48);
  *(a2 + 4) = *a1;
  if (*(a1 + 8) == 1)
  {
    *(a2 + 8) = *sub_238DE36B8((a1 + 8));
    v16 = (a2 + 16);
  }

  else
  {
    v16 = (a2 + 8);
  }

  if (*v10 == 1)
  {
    *v16++ = *sub_238DE36B8(v7 + 16);
  }

  else if (*(a1 + 40) == 1)
  {
    *v16 = *sub_238E0A934((a1 + 40));
    v16 = (v16 + 2);
  }

  v17 = v16 - a2;
  v18 = 8;
  if (*v7)
  {
    v18 = 16;
  }

  if (*v10 == 1)
  {
    v18 += 8;
  }

  else if (*(a1 + 40))
  {
    v18 |= 2uLL;
  }

  if (v17 != v18)
  {
    v12 = 0x15C00000000;
    goto LABEL_38;
  }

  v12 = 0;
  v13 = 0;
  *a4 = v17;
  return v13 | v12;
}

uint64_t sub_2394BED64(_BYTE *a1, void **a2)
{
  v4 = 8;
  if (a1[8])
  {
    v4 = 16;
  }

  if (a1[24] == 1)
  {
    v5 = v4 + 8;
  }

  else if (a1[40])
  {
    v5 = v4 | 2;
  }

  else
  {
    v5 = v4;
  }

  if (!sub_2393D9AD4(*a2, v5))
  {
    return 0x1670000000BLL;
  }

  sub_2393D9734(*a2, (*a2)[1] - v5);
  v9 = 0;
  v6 = sub_2394BEB90(a1, (*a2)[1], (*a2)[3], &v9);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v9 == v5)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = 172;
    }

    if (v9 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x16B00000000;
    }
  }

  return v7 | v6;
}

uint64_t sub_2394BEE58(uint64_t a1, uint64_t a2, unint64_t a3, _WORD *a4)
{
  v4 = (a1 + 12);
  v5 = 8;
  if ((*(a1 + 8) & 0x10) == 0)
  {
    v5 = 6;
  }

  if (*(a1 + 12))
  {
    v6 = v5 + 4;
  }

  else
  {
    v6 = v5;
  }

  if (v6 <= a3)
  {
    *a2 = *(a1 + 8);
    *(a2 + 1) = *a1;
    *(a2 + 2) = *(a1 + 2);
    if ((*(a1 + 8) & 0x10) != 0)
    {
      *(a2 + 4) = *(a1 + 4);
      v12 = a2 + 6;
    }

    else
    {
      v12 = a2 + 4;
    }

    *v12 = *(a1 + 6);
    v13 = v12 + 2;
    if (*(a1 + 12) == 1)
    {
      *(v12 + 2) = *sub_238DE3698((a1 + 12));
      v13 = v12 + 6;
      v14 = *v4;
    }

    else
    {
      v14 = 0;
    }

    v15 = v13 - a2;
    v16 = 8;
    if ((*(a1 + 8) & 0x10) == 0)
    {
      v16 = 6;
    }

    if (v14)
    {
      v16 += 4;
    }

    if (v15 == v16)
    {
      v7 = 0;
      v8 = 0;
      *a4 = v15;
    }

    else
    {
      v7 = 0x18400000000;
      v8 = 172;
    }
  }

  else
  {
    v7 = 0x17100000000;
    v8 = 47;
  }

  return v8 | v7;
}

uint64_t sub_2394BEF90(uint64_t a1, void **a2)
{
  v4 = 8;
  if ((*(a1 + 8) & 0x10) == 0)
  {
    v4 = 6;
  }

  if (*(a1 + 12))
  {
    v5 = v4 + 4;
  }

  else
  {
    v5 = v4;
  }

  if (!sub_2393D9AD4(*a2, v5))
  {
    return 0x18F0000000BLL;
  }

  sub_2393D9734(*a2, (*a2)[1] - v5);
  v9 = 0;
  v6 = sub_2394BEE58(a1, (*a2)[1], (*a2)[3], &v9);
  if (v6)
  {
    v7 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (v9 == v5)
    {
      LODWORD(v6) = 0;
    }

    else
    {
      LODWORD(v6) = 172;
    }

    if (v9 == v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x19300000000;
    }
  }

  return v7 | v6;
}

uint64_t sub_2394BF070(_OWORD *a1, uint64_t a2, _OWORD *a3, unint64_t a4, _WORD *a5)
{
  if (*(a2 + 44))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 46) == 0;
  }

  if (v5)
  {
    v6 = 0x19C00000000;
    v7 = 128;
  }

  else if (a4 >= 0x10)
  {
    v6 = 0;
    v7 = 0;
    *a1 = *a3;
    *a5 = 16;
  }

  else
  {
    v6 = 0x19D00000000;
    v7 = 47;
  }

  return v7 | v6;
}

uint64_t sub_2394BF0DC(_OWORD *a1, uint64_t a2, _OWORD *a3, unint64_t a4, _WORD *a5)
{
  if (*(a2 + 44))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(a2 + 46) == 0;
  }

  if (v5)
  {
    v6 = 0x1AC00000000;
    v7 = 17;
  }

  else if (a4 >= 0x10)
  {
    v6 = 0;
    v7 = 0;
    *a3 = *a1;
    *a5 = 16;
  }

  else
  {
    v6 = 0x1AD00000000;
    v7 = 47;
  }

  return v7 | v6;
}

BOOL sub_2394BF148(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  result = 1;
  if (v2 > 3)
  {
    if (v2 == 4)
    {
      return *(a1 + 24) == *(a2 + 24);
    }

    if (v2 != 5)
    {
      return result;
    }

    v7 = *(a1 + 24);
    v8 = *(a2 + 24);
    return v7 == v8;
  }

  if (v2 == 1 || v2 == 3)
  {
    result = sub_2393CF8F8(a1, a2);
    if (result)
    {
      if (*(a1 + 18) != *(a2 + 18))
      {
        return 0;
      }

      v7 = *(a1 + 20);
      v8 = *(a2 + 20);
      return v7 == v8;
    }
  }

  return result;
}

void *sub_2394BF204(void *a1)
{
  *a1 = &unk_284BBD0A0;
  sub_2394BF988(a1);
  return a1;
}

void *sub_2394BF248(void *a1)
{
  *a1 = &unk_284BBD0A0;
  sub_2394BF988(a1);
  return a1;
}

void sub_2394BF28C(void *a1)
{
  *a1 = &unk_284BBD0A0;
  sub_2394BF988(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394BF2F0(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28))
  {
    (*(*a1 + 56))(a1);
  }

  v4 = sub_2394BF63C(*a2, (a1 + 16));
  if (v4)
  {
    goto LABEL_9;
  }

  (*(**(a1 + 16) + 32))(*(a1 + 16), *(a2 + 16));
  v5 = sub_2393D9044(1u);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = *(a2 + 10);
    *buf = 67109120;
    LODWORD(v18) = v6;
    _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "UDP::Init bind&listen port=%d", buf, 8u);
  }

  if (sub_2393D5398(3u))
  {
    v16 = *(a2 + 10);
    sub_2393D5320(1u, 3);
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 8);
  v9 = *(a2 + 10);
  *buf = *(a2 + 12);
  v4 = sub_2393D3838(v7, v8, &xmmword_27DF7BD44, v9, buf);
  if (v4 || (v4 = sub_2393D39F8(*(a1 + 16), sub_2394BF7D4, sub_2394BF850, a1), v4))
  {
LABEL_9:
    v10 = sub_2393D9044(1u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = sub_2393C9138();
      *buf = 136315138;
      v18 = v11;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Failed to initialize Udp transport: %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393C9138();
      sub_2393D5320(1u, 2);
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      (*(*v12 + 24))(v12);
      *(a1 + 16) = 0;
    }
  }

  else
  {
    *(a1 + 24) = *(a2 + 8);
    *(a1 + 28) = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v15 = (*(**(a1 + 16) + 16))(*(a1 + 16));
      *buf = 67109120;
      LODWORD(v18) = v15;
      _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_INFO, "UDP::Init bound to port=%d", buf, 8u);
    }

    if (sub_2393D5398(3u))
    {
      (*(**(a1 + 16) + 16))(*(a1 + 16));
      sub_2393D5320(1u, 3);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t sub_2394BF63C(_BYTE *a1, uint64_t *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_23947632C("src/inet/InetLayer.h", 82);
  if (a1[8] == 2)
  {
    v4 = (*(*a1 + 16))(a1);
    *a2 = v4;
    if (v4)
    {
      v5 = sub_2393DA0AC();
      v6 = *(v5 + 3) + 1;
      *(v5 + 3) = v6;
      if (*(sub_2393DA0B8() + 3) >= v6)
      {
        v8 = 0;
        v9 = 0;
      }

      else
      {
        v7 = sub_2393DA0B8();
        v8 = 0;
        v9 = 0;
        *(v7 + 3) = v6;
      }
    }

    else
    {
      v10 = sub_2393D9044(1u);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = &unk_2395D76BD;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "%s endpoint pool FULL", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1u, 1);
      }

      v8 = 0x5900000000;
      v9 = 193;
    }
  }

  else
  {
    v8 = 0x5300000000;
    v9 = 3;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9 | v8;
}

uint64_t sub_2394BF7D4(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = *(a1 + 16);
  v4 = *(a3 + 18);
  v5 = *(a3 + 8);
  v7 = *a3;
  v8 = 1;
  v9 = v4;
  v10 = v5;
  v11 = 0;
  return (*(**(v3 + 8) + 16))(*(v3 + 8), &v7, a2, 0);
}

uint64_t sub_2394BF850()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = sub_2393D9044(1u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v4 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "Failed to receive UDP message: %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(1u, 1);
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394BF940(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    sub_23953609C();
  }

  v3 = *(*v2 + 16);

  return v3();
}

_BYTE *sub_2394BF988(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    sub_2393D3B88(result);
    result = (*(**(a1 + 16) + 24))(*(a1 + 16));
    *(a1 + 16) = 0;
  }

  *(a1 + 28) = 0;
  return result;
}

unint64_t sub_2394BF9E4(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 16) != 1)
  {
    v7 = 0x6700000000;
    v8 = 47;
    return v8 | v7;
  }

  v14 = v2;
  v15 = v3;
  if (*(a1 + 28) != 1)
  {
    v7 = 0x6800000000;
LABEL_8:
    v8 = 3;
    return v8 | v7;
  }

  if (!*(a1 + 16))
  {
    v7 = 0x6900000000;
    goto LABEL_8;
  }

  v12 = 0;
  sub_2393CFEFC(v10);
  v11 = *a2;
  v13 = *(a2 + 9);
  v12 = *(a2 + 5);
  v6 = sub_2393D3B44(*(a1 + 16));
  v7 = v6 & 0xFFFFFFFF00000000;
  v8 = v6;
  return v8 | v7;
}

unint64_t sub_2394BFAB8(uint64_t a1, _DWORD *a2, int a3)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_2393E97D4(a2, __str, 0x4CuLL);
  v6 = sub_2393D9044(1u);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (a3)
  {
    if (v7)
    {
      *buf = 136315138;
      v13 = __str;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Joining Multicast Group with address %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1u, 2);
    }

    v8 = *(a1 + 16);
    (*(*v8 + 8))(buf, v8);
    result = sub_2393D3BC4(v8, buf, a2);
  }

  else
  {
    if (v7)
    {
      *buf = 136315138;
      v13 = __str;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Leaving Multicast Group with address %s", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1u, 2);
    }

    v10 = *(a1 + 16);
    (*(*v10 + 8))(buf, v10);
    result = sub_2393D3CC4(v10, buf, a2);
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394BFD08(void *a1)
{
  *a1 = &unk_284BBD118;
  sub_2394C0684(a1);
  return a1;
}

void *sub_2394BFD4C(void *a1)
{
  *a1 = &unk_284BBD118;
  sub_2394C0684(a1);
  return a1;
}

void sub_2394BFD90(void *a1)
{
  *a1 = &unk_284BBD118;
  sub_2394C0684(a1);

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394BFDF4(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    v2 = result;
    v3 = 0;
    for (i = 0; i < v1; ++i)
    {
      v5 = *(v2 + 40) + v3;
      if (*(v5 + 72))
      {
        result = sub_2394BFE68(v2, v5, 0, 0, 0);
        v1 = *(v2 + 48);
      }

      v3 += 112;
    }
  }

  return result;
}

uint64_t sub_2394BFE68(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if (*(a2 + 48) != 5 && *(a2 + 72))
  {
    v9 = result;
    sub_2393E97D4(a2 + 8, __str, 0x4CuLL);
    v10 = sub_2393D9044(1u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "Closing connection with peer %s.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1u, 2);
    }

    v11 = *(a2 + 72);
    if (a3)
    {
      sub_2393D1530(v11);
    }

    else
    {
      sub_2393D14D8(v11);
    }

    v12 = *(a2 + 48);
    *(a2 + 48) = 5;
    if (a5 == 1)
    {
      if (v12 == 3)
      {
        *buf = sub_2393E967C(a2);
        (*(**(v9 + 8) + 32))(*(v9 + 8), buf, a3, a4);
        if (*buf)
        {
          sub_2393E9744(*buf);
        }
      }

      else
      {
        (*(**(v9 + 8) + 40))(*(v9 + 8), a2, a3, a4);
      }
    }

    result = sub_2394C14C8(a2);
    --*(v9 + 32);
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394C0048(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  if (!*(a1 + 25))
  {
    *(a1 + 24) = *(a2 + 8);
    v6 = sub_2393D3604(*a2, (a1 + 16));
    v3 = HIDWORD(v6);
    v4 = v6;
    if (v6)
    {
      goto LABEL_13;
    }

    if (*(a2 + 16) == 1)
    {
      v7 = sub_2393D0E28(*(a1 + 16), *(a2 + 8), &xmmword_27DF7BD44, *(a2 + 10), *(a2 + 12) != 0);
      v4 = v7;
      if (v7)
      {
        v3 = HIDWORD(v7);
        goto LABEL_13;
      }

      *(*(a1 + 16) + 16) = a1;
      *(*(a1 + 16) + 72) = sub_2394C02BC;
      *(*(a1 + 16) + 80) = sub_2394C0590;
      v8 = sub_2393D0F20(*(a1 + 16));
      v3 = HIDWORD(v8);
      v4 = v8;
      if (v8)
      {
LABEL_13:
        if (!v4)
        {
          goto LABEL_20;
        }

        goto LABEL_14;
      }

      v9 = sub_2393D9044(1u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a2 + 10);
        *buf = 67109120;
        LODWORD(v18) = v10;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "TCP server listening on port %d for incoming connections", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        v16 = *(a2 + 10);
        sub_2393D5320(1u, 2);
      }
    }

    *(a1 + 25) = 1;
    goto LABEL_13;
  }

  v3 = 95;
  v4 = 3;
LABEL_14:
  v11 = sub_2393D9044(1u);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = sub_2393C9138();
    *buf = 136315138;
    v18 = v12;
    _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Failed to initialize TCP transport: %s", buf, 0xCu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393C9138();
    sub_2393D5320(1u, 1);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    sub_2393D1550(v13);
    *(a1 + 16) = 0;
  }

LABEL_20:
  v14 = *MEMORY[0x277D85DE8];
  return v4 | (v3 << 32);
}

uint64_t sub_2394C02BC(uint64_t a1, void *a2, _DWORD *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 16);
  v17 = 0uLL;
  v18 = 0;
  v19 = 5540;
  v20 = 0;
  v21 = 0;
  v8 = sub_2394C16F4(a2, &v17);
  if (v8)
  {
    v9 = *(a1 + 80);
    v10 = *MEMORY[0x277D85DE8];

    return v9(a2, v8, v7);
  }

  else
  {
    v12 = sub_2394C06C0(v6, a2, &v17);
    if (v12)
    {
      v13 = v12;
      a2[2] = *(a1 + 16);
      a2[5] = sub_2394C1590;
      a2[6] = 0;
      a2[7] = sub_2394C1BA0;
      (*(*a2 + 24))(a2);
      ++*(v6 + 32);
      *(v13 + 48) = 4;
      (*(*a2 + 32))(a2, *(v13 + 64), *(v13 + 66));
      sub_2393CF6CC(a3, v24, 0x4Cu);
      v14 = sub_2393D9044(1u);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v23 = v24;
        _os_log_impl(&dword_238DAE000, v14, OS_LOG_TYPE_DEFAULT, "Incoming connection established with peer at %s.", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(1u, 2);
      }

      result = (*(**(v6 + 8) + 24))(*(v6 + 8), v13);
    }

    else
    {
      v15 = sub_2393D9044(1u);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *v24 = 0;
        _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Insufficient connection space to accept new connections.", v24, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(1u, 1);
      }

      sub_2393D1550(a2);
      result = (*(a1 + 80))(a2, 0x2A800000072, "src/transport/raw/TCP.cpp");
    }

    v16 = *MEMORY[0x277D85DE8];
  }

  return result;
}

uint64_t sub_2394C0590(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2393D1550(a1);
  v1 = sub_2393D9044(1u);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v5 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_ERROR, "Accept error: %s", buf, 0xCu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(1u, 1);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C0684(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_2393D1550(v2);
    *(a1 + 16) = 0;
  }

  result = sub_2394BFDF4(a1);
  *(a1 + 25) = 0;
  return result;
}

uint64_t sub_2394C06C0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v16[4] = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 48);
  v7 = 1;
  while (1)
  {
    v8 = v7;
    if (v6)
    {
      break;
    }

LABEL_11:
    v7 = 0;
    if ((v8 & 1) == 0)
    {
      v9 = 0;
      goto LABEL_15;
    }
  }

  v9 = *(a1 + 40);
  while (*(v9 + 72))
  {
    v9 += 112;
    if (!--v6)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 40);
        if (v12)
        {
          v13 = sub_2393E967C((v12 + v10));
          if (v13)
          {
            sub_2393E9744(v13);
          }
        }

        ++v11;
        v6 = *(a1 + 48);
        v10 += 112;
      }

      while (v11 < v6);
      goto LABEL_11;
    }
  }

  if (*v9)
  {
    sub_23953615C();
  }

  v16[0] = &unk_284BBD210;
  v16[1] = a1;
  v16[3] = v16;
  sub_2394C07E8(v9, a2, a3, v16);
  sub_2394C24D8(v16);
LABEL_15:
  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

void *sub_2394C07E8(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  *(a1 + 72) = a2;
  v6 = *a3;
  *(a1 + 24) = *(a3 + 4);
  *(a1 + 8) = v6;
  *(a1 + 28) = *(a3 + 5);
  *(a1 + 32) = *(a3 + 3);
  v7 = *(a1 + 40);
  if (v7)
  {
    sub_2393D96C8(v7);
  }

  *(a1 + 40) = 0;
  *(a1 + 56) = 0;

  return sub_2394C1FA0((a1 + 80), a4);
}

uint64_t sub_2394C085C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a2 + 16) == 3)
  {
    v4 = result;
    if (*(result + 48))
    {
      v6 = 0;
      for (i = 0; i < *(v4 + 48); ++i)
      {
        v8 = *(v4 + 40);
        v9 = v8 + v6;
        if (*(v8 + v6 + 72))
        {
          result = sub_2394BF148(v9 + 8, a2);
          if (result)
          {
            v13 = 0;
            v10 = *(v9 + 72);
            if (!v10 || *(v8 + v6 + 48) != 4 || !(**v10)(v10, v14, &v13) || (v12 = sub_2394C097C(v4, v8 + v6), !v12))
            {
              result = sub_2393E967C((v8 + v6));
              *a3 = result;
              return result;
            }

            result = sub_2394BFE68(v4, v8 + v6, v12, v11, 1);
          }
        }

        v6 += 112;
      }
    }
  }

  *a3 = 0;
  return result;
}

unint64_t sub_2394C097C(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v4 = sub_2393D3604(*(*(a1 + 16) + 24), &v12);
  v5 = v4;
  if (v4)
  {
    v6 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v7 = v12;
    *(v12 + 16) = a1;
    *(v7 + 32) = sub_2394C17C8;
    *(v7 + 116) = *(a1 + 28);
    v8 = *(a2 + 26);
    v11 = *(a2 + 28);
    v9 = sub_2393D0FE8(v7, a2 + 8, v8, &v11);
    v5 = v9;
    if (v9)
    {
      v6 = v9 & 0xFFFFFFFF00000000;
      sub_2393D1550(v7);
    }

    else
    {
      *(a2 + 48) = 3;
      sub_2393D1550(*(a2 + 72));
      v6 = 0;
      v5 = 0;
      *(a2 + 72) = v12;
    }
  }

  return v5 | v6;
}

uint64_t sub_2394C0A68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return 0;
  }

  for (result = *(a1 + 40); ; result += 112)
  {
    v4 = *(result + 72);
    v5 = v4 != a2 || v4 == 0;
    if (!v5 && *(result + 48) == 4)
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

_WORD *sub_2394C0AA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 && (v4 = *(a1 + 48)) != 0)
  {
    v5 = *(a1 + 40);
    while (*(v5 + 72) != a2)
    {
      v5 += 112;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    result = sub_2393E967C(v5);
  }

  else
  {
LABEL_6:
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t sub_2394C0AFC(uint64_t a1, void **a2)
{
  if (*(a1 + 25) == 1)
  {
    if (((*a2)[3] + 4) > 0xFA00)
    {
      v3 = 0xFC00000000;
      v4 = 47;
    }

    else if (sub_2393D9AD4(*a2, 4u))
    {
      sub_2393D9734(*a2, (*a2)[1] - 4);
      v3 = 0;
      v4 = 0;
      *(*a2)[1] = *(*a2 + 6) - 4;
    }

    else
    {
      v3 = 0xFF00000000;
      v4 = 11;
    }
  }

  else
  {
    v3 = 0xFA00000000;
    v4 = 3;
  }

  return v4 | v3;
}

unint64_t sub_2394C0BC0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) == 3)
  {
    v6 = sub_2394C0AFC(a1, a3);
    v7 = v6;
    if (v6)
    {
      v8 = v6 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394C085C(a1, a2, &v13);
      v10 = v13;
      if (v13)
      {
        v11 = *(v13 + 72);
        if (v11 && *(v13 + 48) == 4)
        {
          v12 = sub_2393D1118(v11, a3, 1);
        }

        else
        {
          v12 = sub_2394C0CBC(a1, &v13, a3);
        }

        v7 = v12;
        v8 = v12 & 0xFFFFFFFF00000000;
        sub_2393E9744(v10);
      }

      else
      {
        v8 = 0x11000000000;
        v7 = 3;
      }
    }
  }

  else
  {
    v8 = 0x10B00000000;
    v7 = 47;
  }

  return v8 | v7;
}

uint64_t sub_2394C0CBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  if (!*a2)
  {
    return 0x16300000003;
  }

  v6 = v3 + 8;
  v12 = 0;
  v7 = *(a1 + 56);
  v11[0] = v3 + 8;
  v11[1] = &v12;
  v11[2] = a3;
  v13 = v11;
  (*(*v7 + 40))(v7, &v13, sub_2394C2558);
  if ((v12 & 1) != 0 || (*(**(a1 + 56) + 16))(*(a1 + 56), v6, a3))
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v8 = 0x17E00000000;
    v9 = 11;
  }

  return v9 | v8;
}

unint64_t sub_2394C0DC8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (*a2)
  {
    v6 = sub_2394C0AFC(a1, a3);
    if (!v6)
    {
      v7 = *(*a2 + 72);
      if (v7 && *(*a2 + 48) == 4)
      {
        v6 = sub_2393D1118(v7, a3, 1);
      }

      else
      {
        v6 = sub_2394C0CBC(a1, a2, a3);
      }
    }

    v8 = v6 & 0xFFFFFFFF00000000;
  }

  else
  {
    v8 = 0x11B00000000;
    LODWORD(v6) = 47;
  }

  return v8 | v6;
}

unint64_t sub_2394C0E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v23 = 0;
  if (*a4)
  {
    sub_2393E9744(*a4);
    *a4 = 0;
  }

  v8 = sub_2393D3604(*(*(a1 + 16) + 24), &v23);
  v9 = v8;
  if (!v8)
  {
    v11 = v23;
    *(v23 + 16) = a1;
    *(v11 + 32) = sub_2394C17C8;
    *(v11 + 116) = *(a1 + 28);
    sub_2394C085C(a1, a2, &v22);
    v12 = v22;
    if (v22)
    {
      if (a3)
      {
        if (*(v22 + 48) != 4 || *(v22 + 7))
        {
          v9 = 3;
          v10 = 315;
          goto LABEL_23;
        }

        *(v22 + 7) = a3;
      }

      if (*a4 != v12)
      {
        v18 = sub_2393E967C(v12);
        if (*a4)
        {
          sub_2393E9744(*a4);
        }

        *a4 = v18;
      }

      if (*(v12 + 48) != 4)
      {
        v9 = 0;
        v10 = 0;
        goto LABEL_28;
      }

      (*(**(a1 + 8) + 32))(*(a1 + 8), &v22, 0, 0);
      v10 = 0;
      v9 = 0;
      goto LABEL_23;
    }

    v13 = sub_2394C06C0(a1, v23, a2);
    if (!v13 || (v14 = sub_2393E967C(v13)) == 0 || (v15 = v14, v22 = sub_2393E967C(v14), sub_2393E9744(v15), (v12 = v22) == 0))
    {
      v9 = 11;
      v10 = 329;
      goto LABEL_25;
    }

    *(v22 + 7) = a3;
    *(v12 + 48) = 3;
    v16 = *(a2 + 18);
    v21 = *(a2 + 20);
    v17 = sub_2393D0FE8(v23, a2, v16, &v21);
    v9 = v17;
    if (v17)
    {
      v10 = HIDWORD(v17);
      sub_2394C14C8(v12);
    }

    else
    {
      ++*(a1 + 32);
      if (*a4 == v12)
      {
        v9 = 0;
        v10 = 0;
        v11 = 0;
        goto LABEL_28;
      }

      v20 = sub_2393E967C(v12);
      if (*a4)
      {
        sub_2393E9744(*a4);
      }

      v11 = 0;
      v10 = 0;
      v9 = 0;
      *a4 = v20;
    }

LABEL_23:
    v12 = v22;
    if (!v22)
    {
      if (!v11)
      {
        return v9 | (v10 << 32);
      }

LABEL_25:
      sub_2393D1550(v11);
      return v9 | (v10 << 32);
    }

LABEL_28:
    sub_2393E9744(v12);
    if (!v11)
    {
      return v9 | (v10 << 32);
    }

    goto LABEL_25;
  }

  v10 = HIDWORD(v8);
  return v9 | (v10 << 32);
}

uint64_t sub_2394C10F0(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = result;
  *(a2 + 32) = sub_2394C17C8;
  *(a2 + 116) = *(result + 28);
  return result;
}

unint64_t sub_2394C1110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = a1;
    v7 = *(a1 + 40);
    LODWORD(a1) = 172;
    while (1)
    {
      v8 = *(v7 + 72);
      v9 = v8 != a2 || v8 == 0;
      if (!v9 && *(v7 + 48) == 4)
      {
        break;
      }

      v7 += 112;
      if (!--v4)
      {
        v10 = 0x18B00000000;
        goto LABEL_11;
      }
    }

    v13 = *(v7 + 40);
    if (v13)
    {
      sub_2393D982C(v13, a4);
    }

    else
    {
      *(v7 + 40) = *a4;
      *a4 = 0;
    }

    while (1)
    {
      a1 = *(v7 + 40);
      if (!a1)
      {
        v10 = 0;
        goto LABEL_11;
      }

      a1 = sub_2393D9A20(a1, &__dst, 4uLL);
      if (a1)
      {
        break;
      }

      v14 = __dst;
      if (__dst >= 0xF9FC)
      {
        v16 = sub_2393D9044(1u);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v19 = v14;
          _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_ERROR, "Received TCP message of length %u exceeds limit.", buf, 8u);
        }

        if (sub_2393D5398(1u))
        {
          sub_2393D5320(1u, 1);
        }

        sub_2394BFE68(v6, v7, 0x1A000000004, "src/transport/raw/TCP.cpp", 1);
        v10 = 0x1A200000000;
        LODWORD(a1) = 4;
        goto LABEL_11;
      }

      v15 = *(v7 + 40);
      if (*(v15 + 16) - 4 < __dst || (*(v7 + 40) = sub_2393D99AC(v15, 4uLL), !v14))
      {
        v10 = 0;
        LODWORD(a1) = 0;
        goto LABEL_11;
      }

      a1 = sub_2394C1340(v6, a3, v7, v14);
      if (a1)
      {
        v10 = a1 & 0xFFFFFFFF00000000;
        goto LABEL_11;
      }
    }

    v10 = a1 & 0xFFFFFFFF00000000;
    if (a1 == 25)
    {
      v10 = 0;
      LODWORD(a1) = 0;
    }
  }

  else
  {
    v10 = 0x18B00000000;
    LODWORD(a1) = 172;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return a1 | v10;
}

uint64_t sub_2394C1340(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = (a3 + 40);
  if (*(*(a3 + 40) + 24) == a4)
  {
    sub_2393D9EB8((a3 + 40), &v17);
    v18 = v17;
  }

  else
  {
    sub_2393D9C18(a4, 0, &v17);
    v14 = v17;
    v18 = v17;
    if (!v17)
    {
      v13 = 0x1D000000000;
      v12 = 11;
      return v13 | v12;
    }

    v10 = sub_2393D9A20(*v7, *(v17 + 1), a4);
    *v7 = sub_2393D99AC(*v7, a4);
    if (v10)
    {
      v11 = v10 & 0xFFFFFFFF00000000;
LABEL_12:
      sub_2393D96C8(v14);
      v12 = v10;
      v13 = v11;
      return v13 | v12;
    }

    sub_2393D97A0(v14, a4, 0);
  }

  v17 = 0;
  v8 = sub_2393E967C(a3);
  if (v8)
  {
    v9 = v8;
    v17 = sub_2393E967C(v8);
    sub_2393E9744(v9);
  }

  (*(**(a1 + 8) + 16))(*(a1 + 8), a2, &v18, &v17);
  if (v17)
  {
    sub_2393E9744(v17);
  }

  LODWORD(v10) = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = v18;
  if (v18)
  {
    goto LABEL_12;
  }

  return v13 | v12;
}

uint64_t sub_2394C14C8(uint64_t a1)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_2393D1550(v2);
  }

  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 26) = 5540;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  v3 = *(a1 + 40);
  if (v3)
  {
    sub_2393D96C8(v3);
  }

  *(a1 + 40) = 0;
  *(a1 + 56) = 0;
  v6[0] = &unk_284BBD180;
  v6[3] = v6;
  sub_2394C20AC(v6, (a1 + 80));
  result = sub_2394C24D8(v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394C1590(uint64_t a1, uint64_t *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v12 = 5540;
  v13 = 0;
  v14 = 0;
  v4 = sub_2394C16F4(a1, v10);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else if (sub_2394C1110(*(a1 + 16), a1, v10, a2))
  {
    v6 = sub_2393D9044(1u);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v16 = v7;
      _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_ERROR, "Failed to accept received TCP message: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(1u, 1);
    }

    v5 = 0x21400000000;
    LODWORD(v4) = 192;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4 | v5;
}

unint64_t sub_2394C16F4(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v9 = 0;
  v4 = (**a1)(a1, &v11, &v10);
  if (v4 || (v4 = (*(*a1 + 16))(a1, &v9), v4))
  {
    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0;
    LODWORD(v4) = 0;
    v7 = v10;
    v8 = v9;
    *a2 = v11;
    *(a2 + 16) = 3;
    *(a2 + 18) = v7;
    *(a2 + 20) = v8;
    *(a2 + 24) = 0;
  }

  return v4 | v5;
}

uint64_t sub_2394C17C8(void *a1, uint64_t a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v31[0] = a2;
  v31[1] = a3;
  v29 = 0;
  v30 = a1;
  v28 = 0;
  v27 = 0;
  v6 = a1[2];
  v25 = 0;
  v26 = v6;
  v21 = 0uLL;
  LOBYTE(v22) = 0;
  HIWORD(v22) = 5540;
  v23 = 0;
  v24 = 0;
  sub_2394C0AA4(v6, a1, __str);
  v7 = *__str;
  if (*__str && (v8 = sub_2393E967C(*__str), v25 = v8, sub_2393E9744(v7), v8))
  {
    v9 = 0;
    v10 = *(v8 + 6);
    v11 = *(v8 + 7);
    v21 = *(v8 + 4);
    v22 = v10;
    v23 = v11;
    v24 = *(v8 + 4);
  }

  else
  {
    v28 = sub_2394C16F4(a1, &v21);
    v29 = v12;
    if (v28)
    {
      goto LABEL_8;
    }

    v8 = 0;
    v9 = 1;
  }

  sub_2393E97D4(&v21, __str, 0x4CuLL);
  if (a2)
  {
    if ((v9 & 1) == 0)
    {
      sub_2394BFE68(v6, v8, a2, a3, 1);
      goto LABEL_13;
    }

LABEL_8:
    sub_2393D1550(a1);
LABEL_13:
    v15 = sub_2393D9044(1u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = sub_2393C9138();
      *buf = 136315394;
      *&buf[4] = __str;
      *&buf[12] = 2080;
      *&buf[14] = v16;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_ERROR, "Connection establishment with %s encountered an error: %s", buf, 0x16u);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(1u, 1);
    }

    goto LABEL_17;
  }

  a1[5] = sub_2394C1590;
  a1[6] = 0;
  a1[7] = sub_2394C1BA0;
  if (v9)
  {
    sub_2395361FC();
  }

  *(v8 + 48) = 4;
  v14 = (*(*a1 + 24))(a1);
  v28 = v14;
  v29 = v13;
  if (v14)
  {
    sub_2394BFE68(v6, v8, v14, v13, 1);
  }

  else
  {
    v19 = *(v6 + 56);
    *buf = &v21;
    *&buf[8] = &v27;
    *&buf[16] = &v26;
    v34 = v31;
    v35 = &v28;
    v36 = &v30;
    v32 = buf;
    (*(*v19 + 40))(v19, &v32, sub_2394C25B8);
    (*(*v30 + 32))(v30, v8[32], v8[33]);
    v20 = sub_2393D9044(1u);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = __str;
      _os_log_impl(&dword_238DAE000, v20, OS_LOG_TYPE_DEFAULT, "Connection established successfully with %s.", buf, 0xCu);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(1u, 2);
    }

    (*(**(v26 + 8) + 32))(*(v26 + 8), &v25, 0, 0);
  }

LABEL_17:
  result = v25;
  if (v25)
  {
    result = sub_2393E9744(v25);
  }

  v18 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C1BA0(uint64_t a1, unint64_t a2, const char *a3)
{
  v6 = *(a1 + 16);
  sub_2394C0AA4(v6, a1, &v10);
  v7 = v10;
  if (v10)
  {
    v8 = HIDWORD(a2);
    if (!a2)
    {
      if (*(v10 + 72))
      {
        if (*(v10 + 48) == 4)
        {
          LODWORD(a2) = 60;
        }

        else
        {
          LODWORD(a2) = 0;
        }

        if (*(v10 + 48) == 4)
        {
          LODWORD(v8) = 637;
          a3 = "src/transport/raw/TCP.cpp";
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }
    }

    sub_2394BFE68(v6, v10, a2 | (v8 << 32), a3, 1);

    return sub_2393E9744(v7);
  }

  else
  {

    return sub_2393D1550(a1);
  }
}

unint64_t sub_2394C1C94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 25) == 1)
  {
    if (*(a2 + 16) == 3)
    {
      if (*(a1 + 32) >= *(a1 + 48))
      {
        v10 = 0x2BA00000000;
        v11 = 11;
      }

      else
      {
        sub_2393E97D4(a2, __str, 0x4CuLL);
        v8 = sub_2393D9044(1u);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v15 = __str;
          _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_DEFAULT, "Connecting to peer %s.", buf, 0xCu);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(1u, 2);
        }

        v9 = sub_2394C0E68(a1, a2, a3, a4);
        v10 = v9 & 0xFFFFFFFF00000000;
        v11 = v9;
        if (!v9)
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 0x2B800000000;
      v11 = 47;
    }
  }

  else
  {
    v10 = 0x2B500000000;
    v11 = 3;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10 | v11;
}

uint64_t sub_2394C1E18(uint64_t result, uint64_t a2, int a3)
{
  v3 = *a2 != 0;
  if (*(a2 + 72))
  {
    v4 = a3;
    v6 = result;
    v7 = *(a2 + 48);
    v8 = v7 == 4 ? a3 : 0;
    v9 = v7 != 3 && v8 == 0;
    if (v9 || (result = sub_2394BFE68(result, a2, 0x2CE00000002, "src/transport/raw/TCP.cpp", *a2 != 0), *(a2 + 72)))
    {
      if (*(a2 + 48) == 4 && (v4 & 1) == 0)
      {

        return sub_2394BFE68(v6, a2, 0, 0, v3);
      }
    }
  }

  return result;
}

BOOL sub_2394C1EE0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    v2 = *(a1 + 40) + 48;
    v3 = 1;
    v4 = *(a1 + 48);
    v5 = 1;
    do
    {
      if (*(v2 + 24) && *v2 == 4)
      {
        break;
      }

      v5 = v3++ < v1;
      v2 += 112;
      --v4;
    }

    while (v4);
  }

  else
  {
    return 0;
  }

  return v5;
}

void *sub_2394C1FA0(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  sub_2394C2014(v5, a2);
  sub_2394C20AC(v5, a1);
  sub_2394C24D8(v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t sub_2394C2014(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

void *sub_2394C20AC(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C2394(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBD1F0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394C2450(uint64_t result, void *a2)
{
  *a2 = &unk_284BBD210;
  a2[1] = *(result + 8);
  return result;
}

uint64_t sub_2394C248C(uint64_t a1, uint64_t a2)
{
  if (sub_238EF7E8C(a2, &unk_284BBD270))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2394C24D8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_2394C2558(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  if (!sub_2394BF148(a2, **a1))
  {
    return 0;
  }

  v4 = 1;
  *v3[1] = 1;
  sub_2393D982C(*(a2 + 32), v3[2]);
  return v4;
}

uint64_t sub_2394C25B8(uint64_t **a1, uint64_t a2)
{
  v3 = *a1;
  if (sub_2394BF148(a2, **a1))
  {
    *v3[1] = 1;
    v4 = *(a2 + 32);
    v10 = v4;
    *(a2 + 32) = 0;
    v5 = *(*v3[2] + 56);
    (*(*v5 + 24))(v5, a2);
    if (!*v3[3] && !*v3[4])
    {
      v6 = sub_2393D1118(*v3[5], &v10, 1);
      v7 = v3[4];
      *v7 = v6;
      v7[1] = v8;
      v4 = v10;
    }

    if (v4)
    {
      sub_2393D96C8(v4);
    }
  }

  return 0;
}

void *sub_2394C2690(void *a1)
{
  *a1 = &unk_284BBD290;
  a1[2] = &unk_284BBD310;
  sub_2394C26F4(a1);
  return a1;
}

void *sub_2394C26F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_2393CCA60(v2);
    *(*(a1 + 24) + 16) = 0;
    *(a1 + 24) = 0;
  }

  result = *(a1 + 40);
  if (result)
  {
    result = sub_2393CA360(result);
    *(a1 + 40) = 0;
  }

  *(a1 + 32) = 0;
  return result;
}

void *sub_2394C2740(void *a1)
{
  *a1 = &unk_284BBD290;
  a1[2] = &unk_284BBD310;
  sub_2394C26F4(a1);
  return a1;
}

void *sub_2394C27A4(void *a1)
{
  *(a1 - 2) = &unk_284BBD290;
  *a1 = &unk_284BBD310;
  return sub_2394C26F4((a1 - 2));
}

void sub_2394C27E8(void *a1)
{
  *a1 = &unk_284BBD290;
  a1[2] = &unk_284BBD310;
  sub_2394C26F4(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394C286C(void *a1)
{
  *(a1 - 2) = &unk_284BBD290;
  *a1 = &unk_284BBD310;
  sub_2394C26F4((a1 - 2));

  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394C28F0(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 32))
  {
    v6 = *a2;
    if (!*a2)
    {
      v4 = 0x4300000000;
      goto LABEL_3;
    }

    v13 = v2;
    v14 = v3;
    *(a1 + 24) = v6;
    if (*(v6 + 16) && (a2[1] & 1) != 0)
    {
      v8 = sub_2393D9044(1u);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_INFO, "BLEBase::Init - not overriding transport", v11, 2u);
      }

      if (!sub_2393D5398(3u))
      {
        goto LABEL_15;
      }
    }

    else
    {
      *(v6 + 16) = a1 + 16;
      v9 = sub_2393D9044(1u);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "BLEBase::Init - setting/overriding transport", buf, 2u);
      }

      if (!sub_2393D5398(3u))
      {
        goto LABEL_15;
      }
    }

    sub_2393D5320(1u, 3);
LABEL_15:
    v4 = 0;
    v5 = 0;
    *(a1 + 32) = 1;
    return v5 | v4;
  }

  v4 = 0x4200000000;
LABEL_3:
  v5 = 3;
  return v5 | v4;
}

uint64_t sub_2394C2A34(void *a1, _DWORD *a2)
{
  if (*a2 == 3)
  {
    a1[5] = a2;
    (*(*a1 + 96))(a1);
    v2 = 0;
    v3 = 0;
  }

  else
  {
    v2 = 0x5700000000;
    v3 = 47;
  }

  return v3 | v2;
}

uint64_t sub_2394C2AAC(uint64_t a1, _DWORD *a2)
{
  if (*a2 == 3)
  {
    v3 = *(a1 - 16);
    v2 = a1 - 16;
    *(v2 + 40) = a2;
    (*(v3 + 96))(v2, a2);
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = 0x5700000000;
    v5 = 47;
  }

  return v5 | v4;
}

unint64_t sub_2394C2B24(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a2 + 16) != 2)
  {
    v6 = 0x6300000000;
    LODWORD(v5) = 47;
    return v6 | v5;
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    v6 = 0x6400000000;
LABEL_10:
    LODWORD(v5) = 3;
    return v6 | v5;
  }

  v4 = *(a1 + 32);
  if (!v4)
  {
    v6 = 0x6500000000;
    goto LABEL_10;
  }

  if (v4 != 2)
  {
    v5 = sub_2394C2BD0(a1, a3);
    if (v5)
    {
      goto LABEL_6;
    }

LABEL_12:
    LODWORD(v5) = 0;
    v6 = 0;
    return v6 | v5;
  }

  v5 = sub_2393CAD14(v3, a3);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = v5 & 0xFFFFFFFF00000000;
  return v6 | v5;
}

uint64_t sub_2394C2BD0(uint64_t a1, void *a2)
{
  result = 0x750000000BLL;
  v4 = *(a1 + 56);
  if (v4)
  {
    v6 = 0;
    while (*(*(a1 + 48) + 8 * v6))
    {
      if (v4 == ++v6)
      {
        return result;
      }
    }

    v7 = sub_2393D9044(1u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "Message appended to BLE send queue", v10, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(1u, 3);
    }

    v8 = *(a1 + 48);
    v9 = *(v8 + 8 * v6);
    if (v9)
    {
      sub_2393D96C8(v9);
    }

    result = 0;
    *(v8 + 8 * v6) = *a2;
    *a2 = 0;
  }

  return result;
}

uint64_t sub_2394C2CCC(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(1u);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_INFO, "BleConnectionComplete: endPoint %p", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1u, 3);
  }

  *(a1 + 40) = a2;
  result = sub_2393C9340(a2);
  if (result)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      sub_2393CA360(v6);
      *(a1 + 40) = 0;
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = sub_2393C9138();
      *buf = 136315138;
      v10 = v7;
      _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_ERROR, "Failed to setup BLE endPoint: %s", buf, 0xCu);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393C9138();
      result = sub_2393D5320(1u, 1);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C2E54(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  sub_2394C2F48(a1);
  v1 = sub_2393D9044(1u);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v5 = sub_2393C9138();
    _os_log_impl(&dword_238DAE000, v1, OS_LOG_TYPE_INFO, "BleConnection Error: %s", buf, 0xCu);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    sub_2393C9138();
    result = sub_2393D5320(1u, 3);
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394C2F48(uint64_t a1)
{
  v2 = sub_2393D9044(1u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Clearing BLE pending packets.", v6, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(1u, 3);
  }

  if (*(a1 + 56))
  {
    v3 = 0;
    do
    {
      v4 = *(a1 + 48);
      v5 = *(v4 + 8 * v3);
      if (v5)
      {
        sub_2393D96C8(v5);
      }

      *(v4 + 8 * v3++) = 0;
    }

    while (v3 < *(a1 + 56));
  }
}

uint64_t sub_2394C3010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 2;
  v6 = 5540;
  v7 = 0;
  v8 = 0;
  return (*(**(a1 + 8) + 16))(*(a1 + 8), v4, a3, 0);
}

uint64_t sub_2394C3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = 0;
  v4[1] = 0;
  v5 = 2;
  v6 = 5540;
  v7 = 0;
  v8 = 0;
  return (*(**(a1 - 8) + 16))(*(a1 - 8), v4, a3, 0);
}

uint64_t sub_2394C30E0(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  *(a1 + 32) = 2;
  if (a3)
  {
    v8 = sub_2393D9044(1u);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v18 = sub_2393C9138();
      _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Failed to establish BLE connection: %s", buf, 0xCu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(1u, 1);
    }

    result = (*(*a1 + 104))(a1, a2, a3, a4);
  }

  else
  {
    if (*(a1 + 56))
    {
      v10 = 0;
      v11 = 0;
      do
      {
        v12 = *(a1 + 48);
        if (*(v12 + v10) && sub_2393CAD14(a2, (v12 + v10)))
        {
          v13 = sub_2393D9044(1u);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v14 = sub_2393C9138();
            *buf = 136315138;
            v18 = v14;
            _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_ERROR, "Deferred sending failed: %s", buf, 0xCu);
          }

          if (sub_2393D5398(1u))
          {
            sub_2393C9138();
            sub_2393D5320(1u, 1);
          }
        }

        ++v11;
        v10 += 8;
      }

      while (v11 < *(a1 + 56));
    }

    v15 = sub_2393D9044(1u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v18 = a2;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_INFO, "BLE EndPoint %p Connection Complete", buf, 0xCu);
    }

    result = sub_2393D5398(3u);
    if (result)
    {
      result = sub_2393D5320(1u, 3);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2394C3398(uint64_t a1)
{
  *(a1 + 32) = 1;
  *(a1 + 40) = 0;
  sub_2394C2F48(a1);
}

void sub_2394C33A8(uint64_t a1)
{
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  sub_2394C2F48(a1 - 16);
}

uint64_t sub_2394C33DC(uint64_t result)
{
  *result = &unk_284BBD3A8;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_2394C3408(uint64_t result)
{
  *result = &unk_284BBD3A8;
  *(result + 16) = 0;
  return result;
}

void sub_2394C342C(uint64_t a1)
{
  *a1 = &unk_284BBD3A8;
  *(a1 + 16) = 0;
  JUMPOUT(0x23EE77B60);
}

uint64_t sub_2394C3460(uint64_t a1)
{
  v2 = sub_2393D9044(9u);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_DEFAULT, "NFCBase::Init", v7, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  if (*(a1 + 16))
  {
    v3 = 0x3800000000;
    v4 = 3;
  }

  else
  {
    *(a1 + 16) = 1;
    v5 = sub_23948A9E8();
    sub_23948AC38(v5, a1);
    v3 = 0;
    v4 = 0;
  }

  return v4 | v3;
}

uint64_t sub_2394C3528(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16))
  {
    v4 = sub_23948A9E8();
    result = sub_23948AD28(v4, a2);
    if (result)
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    *(a1 + 16) = v6;
  }

  else
  {
    v7 = sub_2393D9044(9u);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_ERROR, "Invalid state in NFCBase::CanSendToPeer()", v8, 2u);
    }

    result = sub_2393D5398(1u);
    if (result)
    {
      sub_2393D5320(9u, 1);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2394C35E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2393D9044(9u);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "NFCBase::OnNfcTagResponse", v8, 2u);
  }

  if (sub_2393D5398(2u))
  {
    sub_2393D5320(9u, 2);
  }

  return (*(**(a1 + 8) + 16))(*(a1 + 8), a2, a3, 0);
}

uint64_t sub_2394C36AC()
{
  v0 = sub_2393D9044(9u);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_DEFAULT, "NFCBase::OnNfcTagError", v2, 2u);
  }

  result = sub_2393D5398(2u);
  if (result)
  {
    return sub_2393D5320(9u, 2);
  }

  return result;
}

uint64_t sub_2394C3730(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) == 5)
  {
    if (*(a1 + 16) == 2)
    {
      v5 = sub_23948A9E8();
      sub_23948AE34(v5, a2, a3);
      v6 = 0;
      v7 = 0;
    }

    else
    {
      v6 = 0x6600000000;
      v7 = 3;
    }
  }

  else
  {
    v6 = 0x6500000000;
    v7 = 47;
  }

  return v7 | v6;
}

unint64_t sub_2394C37B8(uint64_t a1, _BYTE *a2)
{
  if ((*a1 & 1) == 0)
  {
    if (sub_2393C5C40(*(a1 + 8)) != 21)
    {
      v7 = 0x1C00000000;
      LODWORD(v5) = 38;
      return v5 | v7;
    }

    v5 = sub_2393C6A2C(*(a1 + 8), (a1 + 4));
    if (v5)
    {
      goto LABEL_12;
    }

    *a1 = 1;
  }

  v4 = *(a1 + 8);
  while (1)
  {
    v5 = sub_2393C6B34(v4);
    if (v5)
    {
      break;
    }

    v4 = *(a1 + 8);
    v6 = *(v4 + 16);
    if (v6 <= 0xFF)
    {
      v7 = 0;
      LODWORD(v5) = 0;
      *a2 = v6;
      return v5 | v7;
    }
  }

  if (v5 != 33)
  {
LABEL_12:
    v7 = v5 & 0xFFFFFFFF00000000;
    return v5 | v7;
  }

  v5 = sub_2393C6A98(*(a1 + 8), *(a1 + 4));
  v7 = v5 & 0xFFFFFFFF00000000;
  if (!v5)
  {
    v7 = 0x3800000000;
    LODWORD(v5) = 33;
  }

  return v5 | v7;
}

uint64_t sub_2394C389C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = a2;
  *(a1 + 8) = sub_2393C8CE0(a2, a3, 21, (a1 + 24));
  *(a1 + 16) = v4;
  return a1;
}

unint64_t sub_2394C38E0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    result = *(a1 + 8);
    v3 = *(a1 + 16);
  }

  else
  {
    result = sub_2393C8DE0(*a1, *(a1 + 24));
    *(a1 + 8) = result;
    *(a1 + 16) = v4;
  }

  return result;
}

BOOL sub_2394C3920(int a1)
{
  v1 = 0;
  do
  {
    v2 = dword_2395D7960[v1];
  }

  while (v2 != a1 && v1++ != 2);
  return v2 == a1;
}

uint64_t sub_2394C394C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result;
  v8 = *(a2 + 8);
  if (v8 != 65531)
  {
    if (v8 == 65529)
    {
      v25 = 8;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v10 = (*(*result + 80))(result, a2, &v25);
      if (!v10)
      {
        sub_2394C3CA4(&v25, &v22);
        *(a3 + 68) = 1;
        v12 = sub_2393C4D64(a3);
        if (!v12)
        {
          v30 = a3;
          sub_2393C7B90(v31);
          if (v23)
          {
            v16 = v22;
            v17 = 8 * v23;
            while (1)
            {
              v32 = *v16;
              v12 = sub_2392CB948(v30, v31, &v32);
              if (v12)
              {
                goto LABEL_31;
              }

              v16 += 2;
              v17 -= 8;
              if (!v17)
              {
                goto LABEL_30;
              }
            }
          }

          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v8 != 65528)
      {
        *a4 = 0x680000002FLL;
        *(a4 + 8) = "src/app/GlobalAttributes.cpp";
LABEL_23:
        *(a4 + 16) = 0;
        return result;
      }

      v25 = 4;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v10 = (*(*result + 72))(result, a2, &v25);
      if (!v10)
      {
        sub_238DB91E0(&v25, &v22);
        *(a3 + 68) = 1;
        v12 = sub_2393C4D64(a3);
        if (!v12)
        {
          v30 = a3;
          sub_2393C7B90(v31);
          if (v23)
          {
            v13 = v22;
            v14 = 4 * v23;
            while (1)
            {
              v32 = *v13;
              v12 = sub_2392CB948(v30, v31, &v32);
              if (v12)
              {
                break;
              }

              ++v13;
              v14 -= 4;
              if (!v14)
              {
                goto LABEL_30;
              }
            }

LABEL_31:
            v19 = v15;
            sub_2393C4E54(a3);
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        goto LABEL_25;
      }
    }

LABEL_19:
    v18 = v9;
    result = sub_2393D6B1C(&v25);
    if (v10 == 216)
    {
      result = sub_2394C425C(v6, a2, 1);
      *a4 = result;
      *(a4 + 1) = 0;
      *(a4 + 16) = 1;
      return result;
    }

    *a4 = v10;
    *(a4 + 8) = v18;
    goto LABEL_23;
  }

  v25 = 8;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v10 = (*(*result + 64))(result, a2, &v25);
  if (v10)
  {
    goto LABEL_19;
  }

  sub_2394C3CA4(&v25, &v22);
  *(a3 + 68) = 1;
  v12 = sub_2393C4D64(a3);
  if (!v12)
  {
    v30 = a3;
    sub_2393C7B90(v31);
    if (v23)
    {
      v20 = v22;
      v21 = 8 * v23;
      do
      {
        v32 = *v20;
        v12 = sub_2392CB948(v30, v31, &v32);
        if (v12)
        {
          goto LABEL_31;
        }

        v20 += 2;
        v21 -= 8;
      }

      while (v21);
    }

LABEL_30:
    sub_2393C4E54(a3);
    v19 = 0;
    v12 = 0;
    *(a3 + 74) = -1;
    *(a3 + 76) = 0;
    goto LABEL_32;
  }

LABEL_25:
  v19 = v11;
LABEL_32:
  *a4 = v12;
  *(a4 + 8) = v19;
  *(a4 + 16) = 0;
  sub_2393D6E84(&v24);
  return sub_2393D6B1C(&v25);
}

void *sub_2394C3CA4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v8 = 0;
  v9 = 0;
  v7 = 0;
  sub_2393D6E5C(a1, &v9, &v8, &v7);
  v3 = v9;
  v4 = v7;
  result = sub_23947EE68(a2, v9, v8);
  if (v4)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  a2[2] = v6;
  return result;
}

uint64_t sub_2394C3D0C(uint64_t a1, int *a2)
{
  v4 = *(a1 + 16);
  v5 = a2[4];
  if (v4 != -1 && v5 == v4)
  {
    v12 = &v11;
    if (((off_284BBD400[v4])(&v12, a1, a2) & 1) == 0)
    {
      v4 = *(a1 + 16);
      v5 = a2[4];
      goto LABEL_10;
    }

    return 1;
  }

  if (v5 == v4)
  {
    return 1;
  }

LABEL_10:
  if (v4 == 1)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (v4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a1;
  }

  if (v8)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v9 = a2;
    return sub_2394C3DCC(v8, v9);
  }

  result = 0;
  if (v5 == 1 && v9)
  {
    v8 = a2;
    return sub_2394C3DCC(v8, v9);
  }

  return result;
}

uint64_t sub_2394C3DCC(unsigned __int8 *a1, int *a2)
{
  v2 = *a1;
  if (v2 >= 2)
  {
    v4 = *a2;
LABEL_6:
    v6 = v2 | 0x500;
    return v4 == v6;
  }

  v3 = *(a1 + 1);
  if ((v3 & 0x100) == 0)
  {
    v4 = *a2;
    if (!(v2 | *a2))
    {
      return 1;
    }

    goto LABEL_6;
  }

  if (v2 == 1)
  {
    v6 = v3 | 0x600;
    v4 = *a2;
    return v4 == v6;
  }

  return 0;
}

unint64_t sub_2394C3E2C(unsigned __int8 *a1)
{
  if (!a1)
  {
    goto LABEL_12;
  }

  v1 = *(a1 + 4);
  if (v1 != 1)
  {
    if (!v1)
    {
      v3 = *a1;
      v2 = *(a1 + 1);
      v4 = *a1 & 0xFFFFFFFF00000000;
      return v4 | v3;
    }

LABEL_12:
    sub_238EAC830();
  }

  v4 = *a1;
  if (*a1)
  {
    if (v4 == 1 && (v5 = *(a1 + 1), (v5 & 0x100) != 0))
    {
      LODWORD(v3) = v5 | 0x600;
      v4 = 0x6700000000;
    }

    else
    {
      LODWORD(v3) = v4 | 0x500;
      v4 = 0x6800000000;
    }
  }

  else
  {
    LODWORD(v3) = *a1;
  }

  return v4 | v3;
}

uint64_t sub_2394C3EB0(__int16 *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = *(a1 + 4);
  if (!v1)
  {
    v2 = *(a1 + 1);
    sub_2393DDF30(&v4, *a1);
    return v4 | (v5 << 16);
  }

  if (v1 != 1)
  {
LABEL_7:
    sub_238EAC830();
  }

  v4 = *a1;
  v5 = *(a1 + 2);
  return v4 | (v5 << 16);
}

BOOL sub_2394C3F10(int *a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v1 = a1[4];
  if (v1 == 1)
  {
    v2 = *a1;
    return v2 == 0;
  }

  if (v1)
  {
LABEL_7:
    sub_238EAC830();
  }

  v2 = *a1;
  return v2 == 0;
}

_DWORD *sub_2394C3F4C(_DWORD *result)
{
  if (result)
  {
    return (!result[4] && (*result == 11 || *result == 25));
  }

  return result;
}

char *sub_2394C3F74(unsigned __int8 *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 4);
  if (v3 != 1)
  {
    if (!v3)
    {
      v4 = *a1;
      v5 = *(a1 + 1);

      return sub_2393C9138();
    }

LABEL_11:
    sub_238EAC830();
  }

  a2[2] = 0;
  **a2 = 0;
  v8 = sub_2393DDC88(*a1);
  sub_2393D6EF4(a2, "%s(%d)", v8, *a1);
  if (*a1 <= 1u)
  {
    v9 = *(a1 + 1);
    if ((v9 & 0x100) != 0)
    {
      sub_2393D6EF4(a2, ", Code %d", v9);
    }
  }

  return *a2;
}

uint64_t sub_2394C4050(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v3 = *a2;
  if (v3 != *a3)
  {
    return 0;
  }

  if (v3 > 1)
  {
    return 1;
  }

  v4 = HIBYTE(*(a2 + 1));
  v5 = *(a3 + 1);
  result = v4 == v5 >> 8;
  if (v4 == v5 >> 8)
  {
    if (v4)
    {
      return *(a2 + 1) == v5;
    }

    else
    {
      return v4 == v5 >> 8;
    }
  }

  return result;
}

unint64_t sub_2394C40A8(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_8;
  }

  v5 = *a2;
  if (*(a1 + 8) != v5)
  {
    *(a1 + 8) = v5;
    sub_2394C4398(v3, *a2, &v13);
    *(a1 + 16) = v13;
    sub_2393D6EB4((a1 + 32), &v14);
    sub_2393D6E84(&v14);
  }

  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 16);
    v8 = 12 * v6;
    while (*v7 != *(a2 + 1))
    {
      v7 += 3;
      v8 -= 12;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v9 = *v7 & 0xFFFFFFFFFFFFFF00;
    v12 = v7[2] | 0x100000000;
    v10 = *v7;
  }

  else
  {
LABEL_8:
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

unint64_t sub_2394C417C(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a1;
  if (!v3)
  {
    goto LABEL_9;
  }

  if (*(a1 + 8) != *a2 || *(a1 + 12) != *(a2 + 1))
  {
    *(a1 + 8) = *a2;
    sub_2394C440C(v3, a2, &v11);
    *(a1 + 16) = v11;
    sub_2393D6EB4((a1 + 32), &v12);
    sub_2393D6E84(&v12);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    v6 = *(a1 + 16);
    v7 = 8 * v5;
    while (*v6 != *(a2 + 2))
    {
      v6 += 2;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    v9 = *v6;
    v8 = *v6 & 0xFFFFFFFFFFFFFF00;
    v9 = v9;
  }

  else
  {
LABEL_9:
    v8 = 0;
    v9 = 0;
  }

  return v9 | v8;
}

uint64_t sub_2394C425C(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v11 = a1;
  LOWORD(v12) = -1;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  sub_2394C40A8(&v11, a2);
  v7 = v6;
  sub_2393D6E84(&v14);
  if ((v7 & 0x100000000) == 0)
  {
    sub_2394C4324(a1, &v11);
    if (v12)
    {
      v8 = v11;
      v9 = 6 * v12;
      while (*v8 != *a2)
      {
        v8 += 3;
        v9 -= 6;
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      a3 = 195;
    }

    else
    {
LABEL_6:
      a3 = 127;
    }

    sub_2393D6E84(v13);
  }

  return a3;
}

uint64_t sub_2394C4324@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = 0;
  v4[0] = 6;
  memset(&v4[1], 0, 24);
  (*(*a1 + 16))(a1, v4);
  sub_238DB91E0(v4, a2);
  return sub_2393D6B1C(v4);
}

uint64_t sub_2394C4398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = 12;
  memset(&v5[1], 0, 24);
  v6 = 0;
  (*(*a1 + 48))(a1, a2, v5);
  sub_238DB91E0(v5, a3);
  return sub_2393D6B1C(v5);
}

uint64_t sub_2394C440C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5[0] = 8;
  memset(&v5[1], 0, 24);
  v6 = 0;
  (*(*a1 + 64))(a1, a2, v5);
  sub_2394C3CA4(v5, a3);
  return sub_2393D6B1C(v5);
}

uint64_t sub_2394C4480(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    result = (*(*a2 + 104))(a2, result);
    *(v3 + 16) = a2;
  }

  return result;
}

uint64_t sub_2394C4510(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = (*(*result + 112))(result, a1);
    *(a1 + 16) = 0;
  }

  return result;
}

void *sub_2394C4564(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    (*(*a2 + 104))(a2, a1);
    a1[2] = a2;
  }

  return a1;
}

uint64_t sub_2394C45C8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 152) = *(a2 + 4);
  *(result + 144) = v2;
  return result;
}

uint64_t sub_2394C45DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*(a2 + 32))
  {
    return 0x260000002FLL;
  }

  sub_2394C4774(*a2, a4, a5, v32);
  if (v32[0] == 1)
  {
    v10 = *(a2 + 24);
    v11 = sub_238EA9094(v32);
    if (a1)
    {
      v12 = a1 + 8;
    }

    else
    {
      v12 = 0;
    }

    v13 = sub_239471E34(v10, v11, v12, 1u);
    if (v13)
    {
      v14 = v13;
      v15 = *(a2 + 48);
      if (v15 == 1)
      {
        v29[0] = 1;
        v30 = *(a2 + 52);
        v31 = *(a2 + 60);
      }

      else
      {
        sub_239476008(v29);
        LOBYTE(v15) = v29[0];
      }

      *(a1 + 480) = *(a2 + 40);
      v19 = *(a2 + 32);
      v20 = *a3;
      v21 = a3[1];
      v22 = *a2;
      v23 = *(a2 + 8);
      v24 = *(a2 + 16);
      v26[0] = v15;
      if (v15)
      {
        v27 = v30;
        v28 = v31;
      }

      v25 = sub_2393E024C(a1, v22, v19, v20, v21, v14, v23, v24, a6, v26);
      v18 = v25;
      if (v25)
      {
        v17 = v25 & 0xFFFFFFFF00000000;
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0x3300000000;
      v18 = 172;
    }
  }

  else
  {
    v17 = 0x2A00000000;
    v18 = 11;
  }

  if (v32[0] == 1)
  {
    (*(*v33 + 32))(v33);
  }

  return v17 | v18;
}

void *sub_2394C4774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  do
  {
    v8 = sub_2393F56A8();
  }

  while ((v8 - 1) > 0xFFFFFFEFFFFFFFFELL);

  return sub_2394C47EC((a1 + 48), v8, a2, a3, a4);
}

void *sub_2394C47EC@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = 0;
  v10 = a2;
  result = sub_23949B780(a1, &v11, &v10, a3, a4, a1);
  if (result)
  {
    v8 = *a3;
    *(result + 20) = *(a3 + 16);
    *(result + 4) = v8;
    *(result + 21) = *(a3 + 20);
    result[11] = *(a3 + 24);
    *(a5 + 8) = result;
    result = (*(*result + 24))(result);
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  *a5 = v9;
  return result;
}

uint64_t sub_2394C4894(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (!*a3)
  {
    return 0x2F00000003;
  }

  if (!*(a3 + 3))
  {
    return 0x3000000003;
  }

  if (!*(a3 + 4))
  {
    return 0x3100000003;
  }

  if (!*(a3 + 5))
  {
    return 0x3200000003;
  }

  v3 = *a3;
  v4 = a3[2];
  *(a1 + 32) = a3[1];
  *(a1 + 48) = v4;
  *(a1 + 16) = v3;
  v5 = *(a3 + 48);
  *(a1 + 64) = v5;
  if (v5 == 1)
  {
    v6 = *(a3 + 52);
    *(a1 + 76) = *(a3 + 15);
    *(a1 + 68) = v6;
  }

  *(a1 + 80) = a3[4];
  sub_23947561C(*(a3 + 3) + 96, a1 + 8);
  v7 = (*sub_2394E06B0())[2];

  return v7();
}

uint64_t sub_2394C4990()
{
  v0 = (*sub_2394E06B0())[6];

  return v0();
}

_BYTE *sub_2394C49EC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, void *a7, char a8)
{
  v30 = *MEMORY[0x277D85DE8];
  v16 = sub_2393D9044(0x27u);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = *(a2 + 8);
    v18 = *a2;
    v19 = HIDWORD(*a2);
    *buf = 67109632;
    *&buf[4] = v17;
    *&buf[8] = 1024;
    *&buf[10] = v19;
    *&buf[14] = 1024;
    LODWORD(v26) = v18;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "FindOrEstablishSession: PeerId = [%d:%08X%08X]", buf, 0x14u);
  }

  if (sub_2393D5398(3u))
  {
    v24 = HIDWORD(*a2);
    v23 = *(a2 + 8);
    sub_2393D5320(0x27u, 3);
  }

  result = (*(**(a1 + 88) + 16))(*(a1 + 88), *a2, a2[1], 0);
  if (result)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "FindOrEstablishSession: No existing OperationalSessionSetup instance found", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x27u, 3);
  }

  result = (***(a1 + 88))(*(a1 + 88), a1 + 16, *(a1 + 80), *a2, a2[1], a1);
  if (result)
  {
LABEL_11:
    v21 = result;
    result = sub_2394D021C(result, a6);
    if (a7)
    {
      result = sub_2394D02C0(v21, a7);
    }

    if (a4)
    {
      result = sub_2394CE8E8(v21, a3, a4, a8);
    }

    if (a5)
    {
      result = sub_2394CE8F4(v21, a3, a5, a8);
    }
  }

  else
  {
    if (a4)
    {
      result = (*(a4 + 32))(*(a4 + 24), a2, 0x710000000BLL, "src/app/CASESessionManager.cpp");
    }

    if (a5)
    {
      *buf = *a2;
      v26 = 0x760000000BLL;
      v27 = "src/app/CASESessionManager.cpp";
      v28 = 0;
      v29 = 0;
      result = (*(a5 + 32))(*(a5 + 24), buf);
    }
  }

  v22 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C4D4C(void *a1, uint64_t *a2, uint64_t a3, char a4)
{
  v5 = a1[2];
  if (!v5)
  {
    v12 = 0x2F00000000;
LABEL_13:
    v13 = 3;
    return v12 | v13;
  }

  if (!a1[5])
  {
    v12 = 0x3000000000;
    goto LABEL_13;
  }

  if (!a1[6])
  {
    v12 = 0x3100000000;
    goto LABEL_13;
  }

  if (!a1[7])
  {
    v12 = 0x3200000000;
    goto LABEL_13;
  }

  v8 = *a2;
  v7 = a2[1];
  v17 = 513;
  sub_23949A820(v5, v8, v7, &v17, a4, v15);
  if (v15[0] == 1)
  {
    v9 = sub_238EA9094(v15);
    v10 = sub_239495304(*v9);
    v11 = *(v10 + 96);
    *(a3 + 16) = *(v10 + 112);
    *a3 = v11;
    *(a3 + 20) = *(v10 + 116);
    *(a3 + 24) = *(v10 + 120);
    if (v15[0])
    {
      (*(*v16 + 32))(v16);
    }

    v12 = 0;
    v13 = 0;
  }

  else
  {
    v12 = 0xA000000000;
    v13 = 72;
  }

  return v12 | v13;
}

uint64_t sub_2394C4E90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = a2[1];
  v9 = 513;
  return sub_23949A820(v5, v7, v6, &v9, a3, a4);
}

uint64_t sub_2394C4ECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = (*(**(a1 + 88) + 16))(*(a1 + 88), a2, a3, 1);
  v7 = sub_2393D9044(0x27u);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (v6)
  {
    if (v8)
    {
      *buf = 67109376;
      v12 = HIDWORD(a2);
      v13 = 1024;
      v14 = a2;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "UpdatePeerAddress: Found existing OperationalSessionSetup instance for peerId[%08X%08X]", buf, 0xEu);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0x27u, 3);
    }

LABEL_11:
    result = sub_2394CFD10(v6);
    goto LABEL_12;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "UpdatePeerAddress: No existing OperationalSessionSetup instance found", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x27u, 3);
  }

  v6 = (***(a1 + 88))(*(a1 + 88), a1 + 16, *(a1 + 80), a2, a3, a1);
  if (v6)
  {
    goto LABEL_11;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_INFO, "UpdatePeerAddress: Failed to allocate OperationalSessionSetup instance", buf, 2u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    result = sub_2393D5320(0x27u, 3);
  }

LABEL_12:
  v10 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C50E8(void **a1, void *a2)
{
  v3 = (*(*a1[11] + 16))(a1[11], *a2, a2[1], 0);
  v4 = (*a1)[2];

  return v4(a1, v3);
}

uint64_t sub_2394C5174(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return (*(**(result + 88) + 8))();
  }

  return result;
}

void sub_2394C51A8(void *a1)
{
  sub_2394C5224(a1);

  JUMPOUT(0x23EE77B60);
}

void sub_2394C51E8(uint64_t a1)
{
  sub_2394C5224((a1 - 8));

  JUMPOUT(0x23EE77B60);
}

void *sub_2394C5224(void *a1)
{
  *a1 = &unk_284BBD420;
  a1[1] = &unk_284BBD450;
  if (a1[2])
  {
    v2 = a1[5];
    if (v2)
    {
      if (a1[6] && a1[7])
      {
        sub_23947561C(v2 + 96, 0);
      }
    }
  }

  return a1;
}

uint64_t sub_2394C52B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_284BBD4D0;
  *(a1 + 8) = &unk_284BAA120;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_2393DB79C(a1 + 48);
  sub_2393DB79C(a1 + 80);
  sub_2393DB79C(a1 + 112);
  sub_2393DB79C(a1 + 144);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = -1;
  sub_2393C7B90(a1 + 208);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = &unk_284BB83A8;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_284BBDA40;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 364) = 1;
  *(a1 + 366) = 0;
  *(a1 + 367) = a5;
  *(a1 + 368) = a4;
  *(a1 + 369) = 0;
  *(a1 + 371) = 0;
  *(a1 + 372) = a6;
  sub_23947632C("src/app/CommandSender.cpp", 63);
  return a1;
}

uint64_t sub_2394C5408(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, char a6)
{
  *a1 = &unk_284BBD4D0;
  *(a1 + 8) = &unk_284BAA120;
  *(a1 + 16) = a1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;
  sub_2393DB79C(a1 + 48);
  sub_2393DB79C(a1 + 80);
  sub_2393DB79C(a1 + 112);
  sub_2393DB79C(a1 + 144);
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 204) = -1;
  sub_2393C7B90(a1 + 208);
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 272) = &unk_284BB83A8;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_284BBDA40;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 1065353216;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 364) = 1;
  *(a1 + 366) = 0;
  *(a1 + 367) = a5;
  *(a1 + 368) = a4;
  *(a1 + 369) = 0;
  *(a1 + 371) = 1;
  *(a1 + 372) = a6;
  sub_23947632C("src/app/CommandSender.cpp", 72);
  *(a1 + 352) = a1 + 304;
  return a1;
}

void *sub_2394C556C(void *a1)
{
  sub_23947632C("src/app/CommandSender.cpp", 80);
  a1[38] = &unk_284BBDA40;
  sub_2394C763C((a1 + 39));
  sub_2393B8400(a1 + 34);
  v2 = a1[24];
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  a1[24] = 0;
  a1[1] = &unk_284BAA120;
  sub_238EF9EEC((a1 + 1));
  return a1;
}

void sub_2394C5608(void *a1)
{
  sub_2394C556C(a1);

  JUMPOUT(0x23EE77B60);
}

unint64_t sub_2394C5640(uint64_t a1)
{
  if (*(a1 + 369))
  {
LABEL_16:
    LODWORD(v6) = 0;
    v5 = 0;
    return v5 | v6;
  }

  sub_2394C57B0(a1 + 208);
  if (*(a1 + 372))
  {
    v2 = 63902;
  }

  else
  {
    v2 = 1194;
  }

  sub_2393D9C18(v2, 0x26u, &v12);
  v3 = v12;
  v13 = v12;
  if (!v12)
  {
    v5 = 0x6100000000;
    LODWORD(v6) = 11;
    return v5 | v6;
  }

  if (sub_2393D980C(v12) <= v2)
  {
    v4 = 16;
  }

  else
  {
    v4 = sub_2393D980C(v3) - v2 + 16;
  }

  sub_238EA16C4(a1 + 272, &v13, 0);
  sub_2393C7BF0(a1 + 208, a1 + 272, 0xFFFFFFFF);
  v6 = sub_2393DC940(a1 + 48, a1 + 208);
  if (v6)
  {
    goto LABEL_12;
  }

  v6 = sub_2393C7D60(*(a1 + 64), v4);
  if (v6)
  {
    goto LABEL_12;
  }

  v9 = sub_2393DAE68((a1 + 48), *(a1 + 367));
  sub_2393DC99C(v9, *(a1 + 368));
  v6 = *(a1 + 48);
  if (v6)
  {
    v7 = 0;
    v10 = *(a1 + 56);
  }

  else
  {
    v7 = 1;
    sub_2393DC9DC((a1 + 48), 1);
    v6 = *(a1 + 48);
    v11 = *(a1 + 56);
    if (v6)
    {
LABEL_12:
      v7 = 0;
      goto LABEL_13;
    }

    *(a1 + 369) = 1;
  }

LABEL_13:
  v5 = v6 & 0xFFFFFFFF00000000;
  if (v13)
  {
    sub_2393D96C8(v13);
  }

  if (v7)
  {
    goto LABEL_16;
  }

  return v5 | v6;
}

void sub_2394C57B0(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_2393D96C8(v2);
  }

  v3 = *(a1 + 72);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (v3)
  {

    sub_2393D96C8(v3);
  }
}

unint64_t sub_2394C5804(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  if (*(a1 + 366) == 2)
  {
    v6 = sub_2394C5970(a1, (a1 + 192));
    if (v6)
    {
      goto LABEL_3;
    }

    v9 = sub_239471E34(*(a1 + 40), a2, a1, 1u);
    if (v9)
    {
      v10 = v9;
      sub_238EF9EEC(a1 + 8);
      *(a1 + 24) = v10;
      v10[5] = a1 + 8;
      v11 = sub_2393B59AC(a1 + 8);
      if (sub_2393BC2A0(v11))
      {
        v7 = 0x8800000000;
        LODWORD(v6) = 42;
      }

      else
      {
        v12 = sub_2393B59AC(a1 + 8);
        v13 = sub_239495550(*a2, 2000, 1);
        if (*a3 == 1)
        {
          v13 = *sub_239475ED8(a3);
        }

        sub_239470470(v12, v13);
        if (*(a1 + 200) != 1)
        {
          v6 = sub_2394C5AD0(a1);
          goto LABEL_3;
        }

        v14 = *(a1 + 24);
        v15 = sub_238EAB248((a1 + 200));
        v6 = sub_2394D1A74(v14, *v15);
        if (v6)
        {
LABEL_3:
          v7 = v6 & 0xFFFFFFFF00000000;
          return v6 | v7;
        }

        sub_2394C59E8(a1, 3);
        v7 = 0;
        LODWORD(v6) = 0;
      }
    }

    else
    {
      v7 = 0x8500000000;
      LODWORD(v6) = 11;
    }
  }

  else
  {
    v7 = 0x7F00000000;
    LODWORD(v6) = 3;
  }

  return v6 | v7;
}

unint64_t sub_2394C5970(uint64_t a1, _WORD **a2)
{
  if (*(a1 + 366) == 2)
  {
    v4 = sub_2393DCB40(a1 + 80);
    if (!v4)
    {
      v4 = sub_2393DCA2C(a1 + 48);
      if (!v4)
      {
        v4 = sub_238DD2EFC(a1 + 208, a2);
      }
    }

    v5 = v4 & 0xFFFFFFFF00000000;
  }

  else
  {
    v5 = 0x28900000000;
    LODWORD(v4) = 3;
  }

  return v5 | v4;
}

uint64_t sub_2394C59E8(uint64_t a1, char a2)
{
  v10 = *MEMORY[0x277D85DE8];
  *(a1 + 366) = a2;
  v3 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 68157954;
    v7 = 10;
    v8 = 2080;
    v9 = sub_2394C749C(a1);
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_INFO, "ICR moving to [%10.10s]", buf, 0x12u);
  }

  result = sub_2393D5398(3u);
  if (result)
  {
    sub_2394C749C(a1);
    result = sub_2393D5320(0xDu, 3);
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2394C5AD0(uint64_t a1)
{
  v2 = sub_2393B59AC(a1 + 8);
  v6 = 1;
  v3 = sub_239470478(v2, 0x10000u, 8, (a1 + 192), &v6);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFF00000000;
  }

  else
  {
    sub_2394C59E8(a1, 4);
    LODWORD(v3) = 0;
    v4 = 0;
  }

  return v4 | v3;
}

unint64_t sub_2394C5B48(unsigned __int8 *a1, uint64_t *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1[372] == 1 && !(*(**a2 + 80))())
  {
    v9 = 0xA600000000;
LABEL_13:
    v10 = 3;
    goto LABEL_14;
  }

  v6 = a1[368];
  v7 = a1[200];
  if (v6 != v7)
  {
    v11 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      v17 = v6;
      v18 = 1024;
      v19 = v7;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "Inconsistent timed request state in CommandSender: mTimedRequest (%d) != mTimedInvokeTimeoutMs.HasValue() (%d)", buf, 0xEu);
    }

    if (sub_2393D5398(1u))
    {
      v14 = a1[368];
      v15 = a1[200];
      sub_2393D5320(0xDu, 1);
    }

    v9 = 0xAF00000000;
    goto LABEL_13;
  }

  buf[0] = *a3;
  if (buf[0] == 1)
  {
    v17 = *(a3 + 4);
  }

  v8 = sub_2394C5804(a1, a2, buf);
  v9 = v8 & 0xFFFFFFFF00000000;
  v10 = v8;
LABEL_14:
  v12 = *MEMORY[0x277D85DE8];
  return v10 | v9;
}

unint64_t sub_2394C5CD0(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 366) == 2)
  {
    v4 = sub_2394C5970(a1, (a1 + 192));
    if (v4)
    {
LABEL_3:
      v5 = v4 & 0xFFFFFFFF00000000;
      return v5 | v4;
    }

    v7 = sub_239471E34(*(a1 + 40), a2, a1, 1u);
    if (v7)
    {
      v8 = v7;
      sub_238EF9EEC(a1 + 8);
      *(a1 + 24) = v8;
      v8[5] = a1 + 8;
      v9 = sub_2393B59AC(a1 + 8);
      if (sub_2393BC2A0(v9))
      {
        v4 = sub_2394C5AD0(a1);
        if (v4)
        {
          goto LABEL_3;
        }

        *(a1 + 367) = 0;
        sub_2394C59E8(a1, 6);
        sub_2394C6CC4(a1);
        LODWORD(v4) = 0;
        v5 = 0;
      }

      else
      {
        v5 = 0xBF00000000;
        LODWORD(v4) = 42;
      }
    }

    else
    {
      v5 = 0xBC00000000;
      LODWORD(v4) = 11;
    }
  }

  else
  {
    v5 = 0xB600000000;
    LODWORD(v4) = 3;
  }

  return v5 | v4;
}

uint64_t sub_2394C5DD8(uint64_t a1)
{
  *(a1 + 367) = 0;
  sub_2394C59E8(a1, 6);

  return sub_2394C6CC4(a1);
}

unint64_t sub_2394C5E1C(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4)
{
  if (*(a1 + 366) == 4)
  {
    sub_2394C59E8(a1, 5);
  }

  v24 = 0;
  if (*(a1 + 24) != a2)
  {
    LOBYTE(v8) = 0;
    v9 = 224;
    LODWORD(v10) = 3;
LABEL_5:
    v11 = "src/app/CommandSender.cpp";
    goto LABEL_6;
  }

  v13 = *(a3 + 2);
  if (*(a1 + 366) == 3)
  {
    v9 = 239;
    LODWORD(v10) = 42;
    LOBYTE(v8) = 1;
    v11 = "src/app/CommandSender.cpp";
    if (*(a3 + 2) || *(a3 + 3) != 1 || *a3 != 1)
    {
      goto LABEL_6;
    }

    v22 = 0;
    v23 = 0;
    v14 = sub_2394DEFB4(a4, &v22);
    v8 = v14 != 0;
    if (!v14)
    {
      v10 = v22;
      if (v22)
      {
        v11 = v23;
LABEL_31:
        v9 = HIDWORD(v10);
        if (!v10)
        {
          goto LABEL_32;
        }

        goto LABEL_6;
      }

      v14 = sub_2394C5AD0(a1);
    }

    v10 = v14;
    v11 = v15;
    goto LABEL_31;
  }

  if (*(a3 + 2))
  {
    v9 = 268;
    LODWORD(v10) = 42;
    LOBYTE(v8) = 1;
    goto LABEL_5;
  }

  v16 = *(a3 + 3);
  v17 = *a3;
  if (v16 == 1 && v17 == 9)
  {
    ++*(a1 + 360);
    v18 = sub_2394C60AC(a1, a4, &v24);
    v11 = v19;
    v9 = HIDWORD(v18);
    LODWORD(v10) = v18;
    if (!v18)
    {
      if (v24 == 1)
      {
        sub_2394DEE10(0, a2, 1);
        sub_2394C59E8(a1, 4);
        return 0;
      }

      goto LABEL_8;
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    v11 = "src/app/CommandSender.cpp";
    v9 = 268;
    LODWORD(v10) = 42;
    v8 = 1;
    if (v16 == 1 && v17 == 1)
    {
      v22 = 0;
      v23 = 0;
      v20 = sub_2394DEFB4(a4, &v22);
      if (v20)
      {
        v11 = v21;
        v9 = HIDWORD(v20);
      }

      else
      {
        LODWORD(v20) = v22;
        if (v22)
        {
          v9 = HIDWORD(v22);
          v11 = v23;
        }

        else
        {
          LODWORD(v20) = 42;
          v9 = 264;
        }
      }

      LODWORD(v10) = v20;
      if (!v20)
      {
LABEL_32:
        if (!v8)
        {
          goto LABEL_8;
        }

        goto LABEL_7;
      }
    }
  }

LABEL_6:
  sub_2394C62AC(a1, v10 | (v9 << 32), v11);
  if (v8)
  {
LABEL_7:
    sub_2394DEE10(0x80u, a2, 0);
  }

LABEL_8:
  if (*(a1 + 366) != 4)
  {
    if (!v10)
    {
      sub_2394C6350(a1);
    }

    *(a1 + 367) = 0;
    sub_2394C59E8(a1, 6);
    sub_2394C6CC4(a1);
  }

  return v10 | (v9 << 32);
}

unint64_t sub_2394C60AC(uint64_t a1, void *a2, char *a3)
{
  sub_2393C5AAC(v17);
  v18 = 0;
  sub_2393C5AAC(v15);
  sub_2393DD178(v14);
  sub_2393DD178(v13);
  v12 = 0;
  sub_238DD2F90(v17, a2);
  v6 = sub_2393DD0A8(v14, v17);
  if (v6 || (v6 = sub_2393DA994(v14, &v12), v6) || (v6 = sub_2393DCCFC(v14, v13), v6))
  {
LABEL_4:
    v7 = v6;
  }

  else
  {
    sub_2393DD1C8(v13, v15);
    v7 = 36;
    while (!sub_2393C6B34(v15))
    {
      if (v16 != 256)
      {
        v6 = 0x13D00000000;
        goto LABEL_5;
      }

      sub_2393DD178(v11);
      v6 = sub_2393DD7F4(v11, v15);
      if (!v6)
      {
        v6 = sub_2394C6454(a1, v11);
        if (!v6)
        {
          continue;
        }
      }

      goto LABEL_4;
    }

    v9 = sub_2393DCD50(v14, a3);
    v6 = v9;
    if (v9)
    {
      if (v9 != 33)
      {
        goto LABEL_4;
      }

      *a3 = 0;
    }

    if (v12 == 1 && *a3 == 1)
    {
      v10 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v11[0]) = 0;
        _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_ERROR, "Spec violation! InvokeResponse has suppressResponse=true, and moreChunkedMessages=true", v11, 2u);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393D5320(0xDu, 1);
      }

      v6 = 0x15100000000;
      v7 = 35;
    }

    else
    {
      v6 = sub_2393DD104(v14);
      v7 = v6;
    }
  }

LABEL_5:
  if (v18)
  {
    sub_2393D96C8(v18);
  }

  return v6 & 0xFFFFFFFF00000000 | v7;
}

uint64_t sub_2394C62AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 371);
  result = *(a1 + 32);
  if (v8 == 1)
  {
    if (result)
    {
      v11[2] = v3;
      v11[3] = v4;
      v11[0] = a2;
      v11[1] = a3;
      return (*(*result + 32))(result, a1, v11);
    }
  }

  else if (result)
  {
    v10 = *(*result + 24);

    return v10();
  }

  return result;
}

void *sub_2394C6350(uint64_t a1)
{
  result = *(a1 + 352);
  if (result)
  {
    if (*(a1 + 371) == 1)
    {
      if (*(a1 + 32))
      {
        result = (*(*result + 48))(&v3 + 6);
        if (BYTE6(v3) == 1)
        {
          while (1)
          {
            WORD2(v3) = 0;
            WORD2(v3) = *sub_238EAB248(&v3 + 6);
            (*(**(a1 + 32) + 24))(*(a1 + 32), a1, &v3 + 4);
            result = (*(**(a1 + 352) + 48))(&v3);
            BYTE6(v3) = v3;
            if (v3 != 1)
            {
              break;
            }

            v4 = WORD1(v3);
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_2394C6454(uint64_t a1, int *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  sub_2393C5AAC(v38);
  v36[0] = 0;
  v4 = *(a1 + 362);
  sub_2393DD178(v35);
  v5 = sub_2393DB490(a2, v35);
  v6 = v5;
  if (v5 == 33)
  {
    sub_2393DD178(buf);
    sub_2393DD178(v34);
    v6 = sub_2393DB43C(a2, buf);
    if (v6)
    {
      goto LABEL_54;
    }

    v6 = sub_2393DB6C8(buf, v34);
    if (v6)
    {
      goto LABEL_54;
    }

    v6 = sub_2393DB984(v34, &v41);
    if (v6)
    {
      goto LABEL_54;
    }

    v6 = sub_2393DB994(v34, &v42 + 1);
    if (v6)
    {
      goto LABEL_54;
    }

    v6 = sub_2393DB840(v34, &v42);
    if (v6)
    {
      goto LABEL_54;
    }

    sub_2393DB910(buf, v38);
    v31 = v45;
    v32 = v46;
    v33 = v47;
    v29 = *buf;
    v30 = v44;
    v6 = sub_2394C6D2C(&v29, v36, v4 > 1);
    if (v6)
    {
      goto LABEL_54;
    }

    v27 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67110144;
      *&buf[4] = v41;
      *&buf[8] = 1024;
      *&buf[10] = HIWORD(HIDWORD(v42));
      *&buf[14] = 1024;
      LODWORD(v44) = WORD2(v42);
      WORD2(v44) = 1024;
      *(&v44 + 6) = WORD1(v42);
      WORD5(v44) = 1024;
      HIDWORD(v44) = v42;
      _os_log_impl(&dword_238DAE000, v27, OS_LOG_TYPE_DEFAULT, "Received Command Response Data, Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X", buf, 0x20u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0xDu, 2);
    }

    v10 = 1;
  }

  else
  {
    if (v5)
    {
      v8 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = sub_2393C9138();
        *buf = 136315138;
        *&buf[4] = v9;
        _os_log_impl(&dword_238DAE000, v8, OS_LOG_TYPE_ERROR, "Received malformed Command Response, err=%s", buf, 0xCu);
      }

      if (sub_2393D5398(1u))
      {
        sub_2393C9138();
        sub_2393D5320(0xDu, 1);
      }

      if (v6)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_2393DD178(buf);
      v6 = sub_2393DB6C8(v35, buf);
      if (v6)
      {
        goto LABEL_54;
      }

      v6 = sub_2393DB994(buf, &v42 + 1);
      if (v6)
      {
        goto LABEL_54;
      }

      v6 = sub_2393DB840(buf, &v42);
      if (v6)
      {
        goto LABEL_54;
      }

      v6 = sub_2393DB984(buf, &v41);
      if (v6)
      {
        goto LABEL_54;
      }

      sub_2393DD178(v34);
      sub_2393DB490(v35, v34);
      v6 = sub_2393DD458(v34, &v39);
      if (v6)
      {
        goto LABEL_54;
      }

      v31 = v35[2];
      v32 = v35[3];
      v33 = v35[4];
      v29 = v35[0];
      v30 = v35[1];
      v6 = sub_2394C6D2C(&v29, v36, v4 > 1);
      if (v6)
      {
        goto LABEL_54;
      }

      v7 = sub_2393D9044(0xDu);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67110400;
        *&buf[4] = v41;
        *&buf[8] = 1024;
        *&buf[10] = HIWORD(HIDWORD(v42));
        *&buf[14] = 1024;
        LODWORD(v44) = WORD2(v42);
        WORD2(v44) = 1024;
        *(&v44 + 6) = WORD1(v42);
        WORD5(v44) = 1024;
        HIDWORD(v44) = v42;
        LOWORD(v45) = 1024;
        *(&v45 + 2) = v39;
        _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Received Command Response Status for Endpoint=%u Cluster=0x%04X_%04X Command=0x%04X_%04X Status=0x%x", buf, 0x26u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0xDu, 2);
      }
    }

    v10 = 0;
  }

  v11 = v36[0];
  if (v36[0] == 1)
  {
    v12 = *(a1 + 352);
    if (v12)
    {
      v13 = sub_238EAB248(v36);
      v6 = (*(*v12 + 24))(v12, *v13);
      if (v6)
      {
        v14 = *(a1 + 24);
        if (v14 && *(v14 + 88) == 1)
        {
          sub_238EA6DC0(v14, buf);
          v15 = (*(**buf + 48))(*buf);
          v17 = v16;
          (*(**buf + 32))(*buf);
          v18 = v17;
        }

        else
        {
          v18 = 0;
          v15 = 0;
        }

        v19 = sub_2393D9044(0xDu);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v20 = *sub_238EAB248(v36);
          *buf = 67109888;
          *&buf[4] = HIDWORD(v15);
          *&buf[8] = 1024;
          *&buf[10] = v15;
          *&buf[14] = 1024;
          LODWORD(v44) = v18;
          WORD2(v44) = 1024;
          *(&v44 + 6) = v20;
          _os_log_impl(&dword_238DAE000, v19, OS_LOG_TYPE_ERROR, "Received Unexpected Response from remote node <%08X%08X, %d>, commandRef=%u", buf, 0x1Au);
        }

        if (sub_2393D5398(1u))
        {
          v28 = *sub_238EAB248(v36);
          sub_2393D5320(0xDu, 1);
        }

        goto LABEL_54;
      }

      v11 = v36[0];
    }

    else
    {
      v11 = 1;
    }
  }

  if ((v11 & 1) == 0 && v4 <= 1)
  {
    v21 = *(a1 + 352);
    if (v21)
    {
      if ((*(*v21 + 40))(v21) == 1)
      {
        (*(**(a1 + 352) + 48))(buf);
        v36[0] = buf[0];
        if (buf[0] == 1)
        {
          v37 = *&buf[2];
        }
      }
    }
  }

  if (v39 && *(a1 + 371) != 1)
  {
    v23 = sub_2393DD584(&v39);
    sub_2394C62AC(a1, v23, v24);
  }

  else
  {
    LOWORD(v34[0]) = v41;
    v34[1] = HIDWORD(v42);
    v34[2] = v42;
    *buf = v34;
    *&buf[8] = &v39;
    v22 = v38;
    if (!v10)
    {
      v22 = 0;
    }

    *&v44 = v22;
    BYTE8(v44) = v36[0];
    if (v36[0] == 1)
    {
      WORD5(v44) = v37;
    }

    sub_2394C6DC8(a1, buf);
  }

  v6 = 0;
LABEL_54:
  v25 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t sub_2394C6B7C(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = sub_2393D9044(0xDu);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_238DAE000, v4, OS_LOG_TYPE_DEFAULT, "Time out! failed to receive invoke command response from Exchange: %u%c", buf, 0xEu);
  }

  if (sub_2393D5398(2u))
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    sub_2393D5320(0xDu, 2);
  }

  sub_2394C62AC(a1, 0x16200000032, "src/app/CommandSender.cpp");
  *(a1 + 367) = 0;
  sub_2394C59E8(a1, 6);
  result = sub_2394C6CC4(a1);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C6CC4(uint64_t a1)
{
  v2 = *(a1 + 371);
  result = *(a1 + 32);
  if (v2 == 1)
  {
    if (result)
    {
      return (*(*result + 40))(result, a1);
    }
  }

  else if (result)
  {
    return (*(*result + 32))(result, a1);
  }

  return result;
}

unint64_t sub_2394C6D2C(int *a1, uint64_t a2, char a3)
{
  v10 = 0;
  v5 = sub_2393DAA4C(a1, &v10);
  if (v5)
  {
    if (v5 == 33)
    {
      if (a3)
      {
        v6 = 0x2D00000000;
        v7 = 47;
      }

      else
      {
        v7 = 0;
        v6 = 0;
        *a2 = 0;
      }
    }

    else
    {
      v6 = v5 & 0xFFFFFFFF00000000;
      v7 = v5;
    }
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v8 = v10;
    *a2 = 1;
    *(a2 + 2) = v8;
  }

  return v6 | v7;
}

uint64_t sub_2394C6DC8(uint64_t a1, void *a2)
{
  v4 = *(a1 + 371);
  result = *(a1 + 32);
  if (v4 == 1)
  {
    if (result)
    {
      return (*(*result + 16))(result, a1, a2);
    }
  }

  else if (result)
  {
    return (*(*result + 16))(result, a1, *a2, a2[1], a2[2]);
  }

  return result;
}

uint64_t sub_2394C6E40(uint64_t a1, _WORD *a2)
{
  if (*(a1 + 366))
  {
    v2 = 0x1F400000000;
    v3 = 3;
  }

  else
  {
    v4 = *a2;
    if (*a2)
    {
      if (*(a1 + 352))
      {
        *(a1 + 364) = v4;
        *(a1 + 370) = *a2 > 1u;
      }

      else if (v4 != 1)
      {
        v2 = 0x1FE00000000;
        v3 = 108;
        return v3 | v2;
      }

      v2 = 0;
      v3 = 0;
    }

    else
    {
      v2 = 0x1F500000000;
      v3 = 47;
    }
  }

  return v3 | v2;
}

unint64_t sub_2394C6EC8(uint64_t a1, unsigned __int16 *a2, _BYTE *a3)
{
  v6 = sub_2394C5640(a1);
  if (!v6)
  {
    if (*(a1 + 366) == 2 && *(a1 + 370) == 1)
    {
      v8 = *(a1 + 371);
    }

    else
    {
      v8 = 0;
      if (!*(a1 + 366))
      {
        goto LABEL_10;
      }
    }

    if ((v8 & 1) == 0)
    {
      v7 = 0x20C00000000;
LABEL_9:
      LODWORD(v6) = 3;
      return v7 | v6;
    }

LABEL_10:
    if (*(a1 + 362) >= *(a1 + 364))
    {
      v7 = 0x20E00000000;
      LODWORD(v6) = 187;
      return v7 | v6;
    }

    if (*(a1 + 370) == 1)
    {
      if (!*(a1 + 352))
      {
        v7 = 0x21200000000;
        goto LABEL_9;
      }

      if (*a3 != 1)
      {
        v7 = 0x21300000000;
        goto LABEL_24;
      }

      v9 = sub_238EAB248(a3);
      if ((*(**(a1 + 352) + 32))(*(a1 + 352), *v9))
      {
        v7 = 0x21500000000;
LABEL_24:
        LODWORD(v6) = 47;
        return v7 | v6;
      }
    }

    v11 = sub_2393DB564((a1 + 80));
    v6 = *(a1 + 80);
    if (v6)
    {
      v12 = *(a1 + 88);
    }

    else
    {
      v13 = sub_2393DB93C(v11);
      v6 = *v11;
      if (*v11)
      {
        v14 = v11[1];
      }

      else
      {
        v6 = sub_2393DBB7C(v13, a2);
        if (!v6)
        {
          if (a3[4] != 1 || (v6 = sub_2393C8CE0(v11[2], 1uLL, 21, (a1 + 204)), !v6))
          {
            sub_2394C59E8(a1, 1);
            LODWORD(v6) = 0;
            v7 = 0;
            return v7 | v6;
          }
        }
      }
    }
  }

  v7 = v6 & 0xFFFFFFFF00000000;
  return v7 | v6;
}

unint64_t sub_2394C7088(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 370) == 1)
  {
    if (!*(a1 + 352))
    {
      v5 = 0x22D00000000;
      v7 = 3;
      return v7 | v5;
    }

    if (a2[4] != 1)
    {
      v5 = 0x22E00000000;
      goto LABEL_9;
    }

    v4 = sub_238EAB248(a2 + 4);
    if ((*(**(a1 + 352) + 32))(*(a1 + 352), *v4))
    {
      v5 = 0x23000000000;
LABEL_9:
      v7 = 47;
      return v7 | v5;
    }
  }

  v6 = sub_2394C714C(a1, a2);
  v5 = v6 & 0xFFFFFFFF00000000;
  v7 = v6;
  return v7 | v5;
}

unint64_t sub_2394C714C(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 366) == 1)
  {
    if (a2[8] == 1 && (v4 = sub_2393C8DE0(*(a1 + 128), *(a1 + 204)), v4) || a2[4] == 1 && (v5 = sub_238EAB248(a2 + 4), v4 = sub_2393DB974(a1 + 112, *v5), v4) || (v4 = sub_2393DA87C((a1 + 112)), v4))
    {
      v6 = v4 & 0xFFFFFFFF00000000;
    }

    else
    {
      sub_2394C59E8(a1, 2);
      ++*(a1 + 362);
      v8 = *(a1 + 352);
      if (v8 && a2[4] == 1)
      {
        v9 = sub_238EAB248(a2 + 4);
        (*(*v8 + 16))(v8, *v9);
      }

      if (*a2 == 1)
      {
        sub_2394C741C(a1, a2);
      }

      v6 = 0;
      LODWORD(v4) = 0;
    }
  }

  else
  {
    v6 = 0x24B00000000;
    LODWORD(v4) = 3;
  }

  return v4 | v6;
}

unint64_t sub_2394C7280(uint64_t a1, unsigned __int16 *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2394C5640(a1);
  v9 = v8;
  if (!v8)
  {
    sub_2394C74C4(v22, a1);
    v19[0] = *(a4 + 4);
    if (v19[0] == 1)
    {
      v20 = *(a4 + 6);
    }

    v21 = 0;
    v11 = sub_2394C6EC8(a1, a2, v19);
    if (v11)
    {
      goto LABEL_6;
    }

    if (*(a1 + 366) != 1 || (v12 = *(a1 + 128)) == 0)
    {
      v10 = 0x23F00000000;
      LODWORD(v11) = 3;
      goto LABEL_17;
    }

    v11 = (*(*a3 + 24))(a3, v12, 1);
    if (v11)
    {
      goto LABEL_6;
    }

    v14[0] = *a4;
    if (v14[0] == 1)
    {
      v15 = *(a4 + 2);
    }

    v16 = *(a4 + 4);
    if (v16 == 1)
    {
      v17 = *(a4 + 6);
    }

    v18 = 0;
    v11 = sub_2394C7088(a1, v14);
    if (v11)
    {
LABEL_6:
      v10 = v11 & 0xFFFFFFFF00000000;
    }

    else
    {
      LODWORD(v11) = 0;
      v10 = 0;
      v23 = 0;
    }

LABEL_17:
    sub_2394C7550(v22);
    v9 = v11;
    return v10 | v9;
  }

  v10 = v8 & 0xFFFFFFFF00000000;
  return v10 | v9;
}

uint64_t sub_2394C73F4(uint64_t a1)
{
  if (*(a1 + 366) == 1)
  {
    return *(a1 + 128);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_2394C741C(uint64_t a1, unsigned __int8 *a2)
{
  v5 = *(a1 + 200);
  result = (a1 + 200);
  v6 = *a2;
  if (v5)
  {
    if (!*a2)
    {
      return result;
    }

    v7 = sub_238EAB248(result);
    result = sub_238E0A934(a2);
    v8 = *result;
    if (v8 >= *v7)
    {
      LOWORD(v8) = *v7;
    }

    *(a1 + 200) = 1;
  }

  else
  {
    *result = v6;
    if (!v6)
    {
      return result;
    }

    LOWORD(v8) = *(a2 + 1);
  }

  *(a1 + 202) = v8;
  return result;
}

const char *sub_2394C749C(uint64_t a1)
{
  v1 = *(a1 + 366);
  if (v1 > 6)
  {
    return "N/A";
  }

  else
  {
    return off_278A830D0[v1];
  }
}

uint64_t *sub_2394C74C4(uint64_t *a1, uint64_t a2)
{
  *a1 = a2;
  sub_2393C7B90((a1 + 1));
  *(a1 + 73) = 0;
  v3 = *a1;
  if (*(*a1 + 369) == 1 && (*(v3 + 366) | 2) == 2 && !*(v3 + 80) && !*(v3 + 48))
  {
    v4 = *(v3 + 64);
    v5 = *v4;
    v6 = v4[1];
    v7 = v4[2];
    *(a1 + 7) = v4[3];
    *(a1 + 5) = v7;
    *(a1 + 3) = v6;
    *(a1 + 1) = v5;
    *(a1 + 72) = *(v3 + 366);
    *(a1 + 73) = 1;
  }

  return a1;
}

uint64_t *sub_2394C7550(uint64_t *a1)
{
  if (*(a1 + 73) == 1 && *(*a1 + 366) == 1)
  {
    v2 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_238DAE000, v2, OS_LOG_TYPE_INFO, "Rolling back response", v9, 2u);
    }

    if (sub_2393D5398(3u))
    {
      sub_2393D5320(0xDu, 3);
    }

    sub_2393D06DC((*a1 + 80));
    v3 = *a1;
    v4 = *(*a1 + 64);
    v5 = *(a1 + 1);
    v6 = *(a1 + 3);
    v7 = *(a1 + 7);
    v4[2] = *(a1 + 5);
    v4[3] = v7;
    *v4 = v5;
    v4[1] = v6;
    sub_2393D06DC((v3 + 48));
    sub_2394C59E8(*a1, *(a1 + 72));
    *(a1 + 73) = 0;
  }

  return a1;
}

uint64_t sub_2394C763C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

unint64_t sub_2394C7688(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  if ((*(*a1 + 72))(a1))
  {
    if (a2)
    {
      (*(*a1 + 48))(buf, a1);
      v6 = sub_238DE36B8(buf);
      v14[0] = *a3;
      if (v14[0] == 1)
      {
        v15 = *(a3 + 4);
      }

      v7 = sub_2394C5B48(a2, v6, v14);
      v8 = v7;
      v9 = v7 & 0xFFFFFFFF00000000;
      if (buf[0] == 1)
      {
        (*(**&v17[4] + 32))(*&v17[4]);
      }

      v10 = v8;
    }

    else
    {
      v9 = 0x2C00000000;
      v10 = 47;
    }
  }

  else
  {
    v11 = sub_2393D9044(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *v17 = sub_2393C9138();
      *&v17[8] = 2080;
      *&v17[10] = "src/app/DeviceProxy.cpp";
      v18 = 1024;
      v19 = 43;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_ERROR, "%s at %s:%d", buf, 0x1Cu);
    }

    if (sub_2393D5398(1u))
    {
      sub_2393C9138();
      sub_2393D5320(0, 1);
    }

    v9 = 0x2B00000000;
    v10 = 3;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9 | v10;
}

uint64_t sub_2394C78AC(uint64_t a1, void *a2)
{
  v9[0] = 0;
  (*(*a1 + 48))(&v7);
  sub_2393DECA4(v9, &v7);
  if (v7 == 1)
  {
    (*(*v8 + 32))(v8);
  }

  if (v9[0] == 1)
  {
    v3 = sub_238EA9094(v9);
    *a2 = sub_239495304(*v3) + 216;
    a2[1] = 16;
    if (v9[0])
    {
      (*(*v10 + 32))(v10);
    }

    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = 0x3500000000;
    v4 = 3;
  }

  return v4 | v5;
}

uint64_t sub_2394C79D0(uint64_t a1)
{
  *a1 = &unk_284BBD5A8;
  *(a1 + 8) = &unk_284BBD670;
  *(a1 + 16) = &unk_284BBD6C0;
  *(a1 + 24) = &unk_284BBD6E8;
  *(a1 + 32) = &unk_284BBD710;
  *(a1 + 40) = &unk_284BBD748;
  *(a1 + 48) = &unk_284BBD780;
  *(a1 + 56) = 0;
  *(a1 + 64) = &unk_284BBD7C0;
  *(a1 + 72) = &unk_284BBD7F8;
  *(a1 + 80) = &unk_284BBD830;
  *(a1 + 120) = 0u;
  *(a1 + 129) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a1 + 112;
  *(a1 + 128) = a1 + 112;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 176) = a1 + 168;
  *(a1 + 184) = a1 + 168;
  for (i = 208; i != 1296; i += 272)
  {
    sub_2394CCDC4(a1 + i);
  }

  sub_2394D3368(a1 + 1296, a1);
  *(a1 + 1457) = 0u;
  *(a1 + 1432) = 0u;
  *(a1 + 1448) = 0u;
  *(a1 + 1416) = 0u;
  *(a1 + 1456) = a1 + 1440;
  *(a1 + 1448) = a1 + 1440;
  *(a1 + 1496) = 0u;
  *(a1 + 1512) = 0u;
  *(a1 + 1480) = 0u;
  *(a1 + 1528) = 0;
  *(a1 + 1512) = a1 + 1496;
  *(a1 + 1504) = a1 + 1496;
  *(a1 + 1568) = 0u;
  *(a1 + 1552) = 0u;
  *(a1 + 1536) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = a1 + 1552;
  *(a1 + 1560) = a1 + 1552;
  *(a1 + 1640) = 0;
  *(a1 + 1608) = 0u;
  *(a1 + 1624) = 0u;
  *(a1 + 1592) = 0u;
  *(a1 + 1624) = a1 + 1608;
  *(a1 + 1616) = a1 + 1608;
  *(a1 + 1668) = 0;
  *(a1 + 1672) = 0;
  *(a1 + 1664) = 0;
  *(a1 + 1648) = 0u;
  *(a1 + 1705) = 0u;
  *(a1 + 1696) = 0u;
  *(a1 + 1680) = 0u;
  return a1;
}

void *sub_2394C7C20()
{
  if ((byte_2814F7800 & 1) == 0)
  {
    byte_2814F7800 = 1;
    sub_2394C79D0(&unk_2814F7140);
  }

  return &unk_2814F7140;
}

unint64_t sub_2394C7C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (***a7)())
{
  if (!a3)
  {
    v10 = 0xC300000000;
LABEL_10:
    LODWORD(v9) = 47;
    return v10 | v9;
  }

  if (!a2)
  {
    v10 = 0xC400000000;
    goto LABEL_10;
  }

  if (!a4)
  {
    v10 = 0xC500000000;
    goto LABEL_10;
  }

  *(a1 + 1720) = 1;
  *(a1 + 88) = a2;
  *(a1 + 1680) = a3;
  *(a1 + 1688) = a5;
  *(a1 + 1696) = a6;
  *(a1 + 1416) = a4;
  v9 = sub_2394AAB28(a3, a1 + 48);
  if (v9 || (v9 = sub_2394720A8(*(a1 + 88), 0x10000, a1), v9))
  {
    v10 = v9 & 0xFFFFFFFF00000000;
  }

  else
  {
    if (!a7)
    {
      a7 = sub_2393B64C0();
    }

    sub_2394D33D4(a1 + 1296, a7);
    sub_2393DD5BC();
    LODWORD(v9) = 0;
    v10 = 0;
    *(a1 + 1720) = 2;
  }

  return v10 | v9;
}

uint64_t sub_2394C7D48(uint64_t result)
{
  if (*(result + 1720))
  {
    v1 = result;
    v2 = *(*(*(result + 88) + 88) + 24);
    (*(*v2 + 72))(v2, sub_2394C7F1C, v1);
    v3 = sub_2394DEB00();
    sub_2394DEB0C(v3);
    sub_2393D6A10((v1 + 112), v1 + 96, sub_2394CD354);
    v8[0] = v1;
    sub_2393D6A10((v1 + 168), v8, sub_2394CD370);
    sub_2393D6A10((v1 + 168), v1 + 152, sub_2394CD394);
    sub_2393D6A10((v1 + 1608), v1 + 1592, sub_2394CD3B0);
    sub_23947632C("src/app/InteractionModelEngine.cpp", 423);
    v9[0] = 0;
    LOBYTE(v8[0]) = 0;
    sub_2394C857C(v1, v9, v8);
    v4 = *(v1 + 1648);
    if (v4)
    {
      do
      {
        v5 = *(v4 + 192);
        *(v4 + 192) = 0;
        *(v4 + 200) = 0;
        v4 = v5;
      }

      while (v5);
    }

    *(v1 + 1648) = 0;
    v6 = (v1 + 473);
    v7 = 1088;
    do
    {
      if (*v6)
      {
        sub_2393BBC74(v6 - 265);
      }

      v6 += 272;
      v7 -= 272;
    }

    while (v7);
    sub_2394D340C(v1 + 1296);
    sub_2393D6A10((v1 + 1440), v1 + 1424, sub_2394CD3CC);
    sub_2393D6A10((v1 + 1496), v1 + 1480, sub_2394CD3E8);
    sub_2393D6A10((v1 + 1552), v1 + 1536, sub_2394CD404);
    result = sub_2394721BC(*(v1 + 88), 0x10000);
    *(v1 + 1688) = 0;
    *(v1 + 1720) = 0;
  }

  return result;
}

void sub_2394C7F1C(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    *(a2 + 1672) = 0;
    *v18 = 0u;
    *v19 = 0u;
    v3 = (*(**(a2 + 1696) + 16))(*(a2 + 1696));
    v4 = 0;
    while (1)
    {
      if (!(*(*v3 + 24))(v3, &v16))
      {
LABEL_26:
        if ((v4 & 1) == 0)
        {
          *(a2 + 1668) = 0;
        }

        goto LABEL_28;
      }

      while (1)
      {
        *buf = &v16;
        if (sub_2393D6A10((a2 + 1608), buf, sub_2394CE140) != 1)
        {
          break;
        }

        v5 = sub_2393D9044(0x23u);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_impl(&dword_238DAE000, v5, OS_LOG_TYPE_DEFAULT, "Skip resuming live subscriptionId %u", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0x23u, 2);
        }

        if (((*(*v3 + 24))(v3, &v16) & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      v6 = sub_2393D52C4(0x90uLL);
      if (!v6)
      {
        break;
      }

      v7 = v6;
      sub_2394DB6A8(v6);
      v4 = 1;
      if (sub_2394DBA78(v8, *(a2 + 1688), &v16))
      {
        v9 = sub_2393D9044(0x23u);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = v17;
          _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Failed to ResumeSubscription 0x%x", buf, 8u);
        }

        if (sub_2393D5398(2u))
        {
          sub_2393D5320(0x23u, 2);
        }

        v10 = v7[15];
        if (v10)
        {
          v7[15] = 0;
          v10(v7 + 13);
        }

        v11 = v7[10];
        if (v11)
        {
          v7[10] = 0;
          v11(v7 + 8);
        }

        v12 = v7[6];
        if (v12)
        {
          j__free(v12);
          v7[6] = 0;
        }

        v13 = v7[4];
        if (v13)
        {
          j__free(v13);
          v7[4] = 0;
        }

        j__free(v7);
        goto LABEL_28;
      }
    }

    v15 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v15, OS_LOG_TYPE_DEFAULT, "Failed to create SubscriptionResumptionSessionEstablisher", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x23u, 2);
    }

LABEL_28:
    (*(*v3 + 32))(v3);
    if (v19[0])
    {
      j__free(v19[0]);
      v19[0] = 0;
    }

    if (v18[0])
    {
      j__free(v18[0]);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void *sub_2394C8284(void *a1)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 423);
  v4[0] = 0;
  v3[0] = 0;
  return sub_2394C857C(a1, v4, v3);
}

uint64_t sub_2394C82DC(uint64_t a1, char a2)
{
  v3 = 0;
  v4[0] = a2;
  v5 = &v3;
  sub_2393D6A10((a1 + 1608), v4, sub_2394CD420);
  return v3;
}

uint64_t sub_2394C8328(uint64_t a1, char a2, char a3)
{
  v4 = 0;
  v5[0] = a2;
  v5[1] = a3;
  v6 = &v4;
  sub_2393D6A10((a1 + 1608), v5, sub_2394CD448);
  return v4;
}

uint64_t sub_2394C8378(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 1592) <= a2)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v6 = 0;
  v7 = a2;
  v5 = 0;
  v8 = &v6;
  v9 = &v5;
  sub_2393D6A10((a1 + 1608), &v7, sub_2394CD4B4);
  return v5;
}

_BYTE *sub_2394C83E0(uint64_t a1, int a2)
{
  v2 = 0;
  v3 = (a1 + 473);
  v4 = 1088;
  while (!*v3)
  {
LABEL_5:
    v3 += 272;
    v4 -= 272;
    if (!v4)
    {
      return 0;
    }
  }

  if (v2 != a2)
  {
    ++v2;
    goto LABEL_5;
  }

  return v3 - 265;
}

uint64_t sub_2394C841C(uint64_t result)
{
  v1 = result;
  LODWORD(result) = 0;
  for (i = 473; i != 1561; i += 272)
  {
    if (*(v1 + i))
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }
  }

  return result;
}

uint64_t sub_2394C8444(uint64_t a1, uint64_t a2, int a3)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 393);
  v6 = *(a1 + 1648);
  if (v6)
  {
    v7 = 16;
    while (1)
    {
      v8 = v6;
      v6 = *(v6 + 192);
      if (*(v8 + 80) == 1 && *(v8 + 60) == a3 && *(v8 + 72) == *(a2 + 8) && *(v8 + 64) == *a2)
      {
        break;
      }

      if (!v6)
      {
        v9 = 0x19700000000;
        return v7 | v9;
      }
    }

    sub_2394D7E80(v8, 0, 0, 1);
    v9 = 0;
    v7 = 0;
  }

  else
  {
    v9 = 0x19700000000;
    v7 = 16;
  }

  return v7 | v9;
}

void *sub_2394C8510(void *a1, char a2, uint64_t a3)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 412);
  v9[0] = 1;
  v9[1] = a2;
  v7[0] = 1;
  v8 = a3;
  return sub_2394C857C(a1, v9, v7);
}

void *sub_2394C857C(void *result, _BYTE *a2, _BYTE *a3)
{
  v3 = result[206];
  while (v3)
  {
    v6 = v3;
    v3 = *(v3 + 192);
    if (*(v6 + 80) == 1)
    {
      if (*a2 == 1)
      {
        result = sub_238DE36D8(a2);
        v7 = *result != *(v6 + 72);
      }

      else
      {
        v7 = 0;
      }

      if (*a3 == 1)
      {
        result = sub_238DE36B8(a3);
        v8 = *result != *(v6 + 64);
      }

      else
      {
        v8 = 0;
      }

      if (!v7 && !v8)
      {
        result = sub_2394D7E80(v6, 0, 0, 1);
      }
    }
  }

  return result;
}

void *sub_2394C8644(void *a1, char a2)
{
  sub_23947632C("src/app/InteractionModelEngine.cpp", 417);
  v6[0] = 1;
  v6[1] = a2;
  v5[0] = 0;
  return sub_2394C857C(a1, v6, v5);
}

uint64_t sub_2394C86D8(uint64_t a1, char a2, uint64_t a3)
{
  v4 = 0;
  v5[0] = a2;
  v6 = a3;
  v7 = &v4;
  sub_2393D6A10((a1 + 1608), v5, sub_2394CD51C);
  return v4;
}

uint64_t sub_2394C8724(uint64_t a1, char a2, uint64_t a3)
{
  v4 = 0;
  v5[0] = a2;
  v6 = a3;
  v7 = &v4;
  sub_2393D6A10((a1 + 1544), v5, sub_2394CD51C);
  return v4;
}

uint64_t sub_2394C8770(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(**(a1 + 1696) + 16))(*(a1 + 1696));
  if (!v5)
  {
    return 1;
  }

  v6 = v5;
  *v12 = 0u;
  *v13 = 0u;
  do
  {
    v7 = (*(*v6 + 24))(v6, &v10);
    if (!v7)
    {
      break;
    }
  }

  while (v11 != a2 || v10 != a3);
  (*(*v6 + 32))(v6);
  if (v13[0])
  {
    j__free(v13[0]);
    v13[0] = 0;
  }

  if (v12[0])
  {
    j__free(v12[0]);
  }

  return v7;
}

uint64_t sub_2394C887C(uint64_t a1, char a2)
{
  v3 = 0;
  v4[0] = a2;
  v5 = &v3;
  sub_2393D6A10((a1 + 1608), v4, sub_2394CD62C);
  return v3;
}

uint64_t sub_2394C88C8(uint64_t a1, char a2)
{
  v3 = 0;
  v4[0] = a2;
  v5 = &v3;
  sub_2393D6A10((a1 + 1544), v4, sub_2394CD62C);
  return v3;
}

void sub_2394C891C(uint64_t a1, void (***a2)(void))
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

void sub_2394C89D4()
{
  v0 = sub_2393D9044(0x1Bu);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v2 = "src/app/InteractionModelEngine.cpp";
    v3 = 1024;
    v4 = 549;
    v5 = 2080;
    v6 = "false";
    _os_log_impl(&dword_238DAE000, v0, OS_LOG_TYPE_ERROR, "VerifyOrDie failure at %s:%d: %s", buf, 0x1Cu);
  }

  if (sub_2393D5398(1u))
  {
    sub_2393D5320(0x1Bu, 1);
  }

  abort();
}

uint64_t sub_2394C8AA4(uint64_t a1, void (***a2)(void))
{
  if (*(a1 + 1328) == a2)
  {
    v3 = *(a1 + 1320) - 1;
  }

  else
  {
    v3 = 0;
  }

  *(a1 + 1320) = v3;
  sub_2394C891C(a1 + 1592, a2);

  return sub_2394C8B00(a1);
}

uint64_t sub_2394C8B00(uint64_t result)
{
  v11 = *MEMORY[0x277D85DE8];
  if ((*(result + 1672) & 1) == 0)
  {
    v1 = result;
    result = sub_2394C8C68(result);
    if (result)
    {
      *(v1 + 1672) = 1;
      v2 = *(v1 + 1668);
      if (v2 <= 0xA)
      {
        v3 = 300000 * sub_2393D64AC(v2) + 300000;
      }

      else
      {
        v3 = 21600000;
      }

      v4 = *(*(*(v1 + 88) + 88) + 24);
      (*(*v4 + 40))(v4, v3, sub_2394C7F1C, v1);
      v5 = *(v1 + 1668) + 1;
      *(v1 + 1668) = v5;
      v6 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v10 = v5;
        _os_log_impl(&dword_238DAE000, v6, OS_LOG_TYPE_DEFAULT, "Schedule subscription resumption when failing to establish session, Retries: %u", buf, 8u);
      }

      result = sub_2393D5398(2u);
      if (result)
      {
        v8 = *(v1 + 1668);
        result = sub_2393D5320(0x23u, 2);
      }
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394C8C68(uint64_t a1)
{
  v2 = *(a1 + 1696);
  if (!v2)
  {
    return 0;
  }

  *v8 = 0u;
  *v7 = 0u;
  v3 = (*(*v2 + 16))(v2);
  do
  {
    v4 = (*(*v3 + 24))(v3, v6);
    if (!v4)
    {
      break;
    }

    v9 = v6;
  }

  while (sub_2393D6A10((a1 + 1608), &v9, sub_2394CE158) == 1);
  (*(*v3 + 32))(v3);
  if (v8[0])
  {
    j__free(v8[0]);
    v8[0] = 0;
  }

  if (v7[0])
  {
    j__free(v7[0]);
  }

  return v4;
}

uint64_t sub_2394C8D84(uint64_t a1)
{
  v1 = *(a1 + 1668);
  if (v1 <= 0xA)
  {
    return 300 * sub_2393D64AC(v1) + 300;
  }

  else
  {
    return 21600;
  }
}

uint64_t sub_2394C8DC0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v11 = a1;
  *buf = a1;
  v8 = sub_2394C8E8C((a1 + 96), buf, &v11);
  if (v8)
  {
    sub_2393B5B28(v8, a2, a4, a5);
    return 0;
  }

  else
  {
    v10 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_238DAE000, v10, OS_LOG_TYPE_DEFAULT, "no resource for Invoke interaction", buf, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x23u, 2);
    }

    return 156;
  }
}

void *sub_2394C8E8C(unint64_t *a1, void *a2, void *a3)
{
  v6 = sub_2393D52C4(0x280uLL);
  v7 = v6;
  if (v6)
  {
    if (*a2)
    {
      v8 = *a2 + 24;
    }

    else
    {
      v8 = 0;
    }

    if (*a3)
    {
      v9 = *a3 + 32;
    }

    else
    {
      v9 = 0;
    }

    sub_2394CD6DC(v6, v8, v9);
    v10 = sub_2393D52C4(0x18uLL);
    if (v10)
    {
      *v10 = v7;
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

  return v7;
}

unint64_t sub_2394C8F40(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5)
{
  sub_2393C5AAC(v30);
  sub_2393DD1C8(a3, v30);
  *a4 = 0;
  *a5 = 0;
  result = sub_2393C6FD0(v30, 256);
  if (result)
  {
LABEL_2:
    if (result == 33)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_2393DD178(v29);
      v27 = -1;
      v26 = -1;
      v28 = 0;
      result = sub_2393DD044(v29, v30);
      if (result)
      {
        break;
      }

      result = sub_2393DAC60(v29, &v26);
      if (result)
      {
        break;
      }

      if (v27 == 0xFFFF || v26 == -1 || HIDWORD(v26) == -1)
      {
        v22 = &v26;
        v23 = -1;
        v25 = -1;
        v24 = 0;
        sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
        sub_2394E08B4(&v16, *(a1 + 1704), &v22);
        v13 = 0;
        v15 = 0;
        v14 = 0;
        v12[0] = 0;
        v12[8] = 0;
        while (sub_2394E0EF8(&v16, &v13, v12))
        {
          if (sub_2394C915C(&v13, a2, v12))
          {
            *a4 = 1;
            break;
          }
        }

        sub_2393D6E84(&v21);
        sub_2393D6E84(&v20);
        sub_2393D6E84(&v19);
      }

      else
      {
        v16 = v27;
        v18 = v26;
        v17 = 0;
        v22 = sub_2394C91EC(a1, &v16);
        LOBYTE(v23) = v11;
        if (sub_2394C915C(&v16, a2, &v22))
        {
          *a4 = 1;
        }
      }

      ++*a5;
      result = sub_2393C6FD0(v30, 256);
      if (result)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

BOOL sub_2394C915C(__int16 *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 8) != 1)
  {
    return 0;
  }

  v15 = v3;
  v16 = v4;
  v5 = *(a3 + 4);
  if ((v5 & 0x1F00) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 2);
  v10 = *(a1 + 1);
  v11 = *a1;
  v12 = 1;
  v13 = v7;
  v14 = 1;
  v8 = sub_23949D748();
  return sub_23949CFB0(v8, a2, &v10, (v5 >> 8) & 0x1F) == 0;
}

unint64_t sub_2394C91EC(uint64_t a1, unsigned __int16 *a2)
{
  v4 = *(a1 + 1704);
  v5 = -1;
  v6 = -1;
  v8 = 0;
  v9 = 0;
  v7 = 0;
  v2 = sub_2394C417C(&v4, a2);
  sub_2393D6E84(&v9);
  return v2;
}

unint64_t sub_2394C925C(uint64_t a1, uint64_t a2, uint64_t a3, BOOL *a4, void *a5)
{
  sub_2393C5AAC(v21);
  sub_2393DD1C8(a3, v21);
  *a4 = 0;
  *a5 = 0;
  result = sub_2393C6FD0(v21, 256);
  if (result)
  {
LABEL_2:
    if (result == 33)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_2393DD178(v20);
      result = sub_2393DD044(v20, v21);
      if (result)
      {
        break;
      }

      v17 = -1;
      v18 = -1;
      v19 = 0;
      result = sub_2393DC52C(v20, &v17);
      if (result)
      {
        break;
      }

      ++*a5;
      if (!*a4)
      {
        v11 = *(a1 + 1704);
        if (v11)
        {
          if (v18 == 0xFFFF)
          {
            sub_2394C4324(*(a1 + 1704), &v22);
            if (v23)
            {
              v13 = v22;
              v14 = 6 * v23 - 6;
              do
              {
                v15 = *v13;
                v13 += 3;
                v12 = sub_2394CCE6C(v11, v15, &v17, a2);
                if (v12)
                {
                  break;
                }

                v16 = v14;
                v14 -= 6;
              }

              while (v16);
            }

            else
            {
              v12 = 0;
            }

            sub_2393D6E84(&v24);
          }

          else
          {
            v12 = sub_2394CCE6C(*(a1 + 1704), v18, &v17, a2);
          }
        }

        else
        {
          v12 = 0;
        }

        *a4 = v12;
      }

      result = sub_2393C6FD0(v21, 256);
      if (result)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

uint64_t sub_2394C93E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v57 = a2;
  v56 = a5;
  v9 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = "Read";
    if (a5 == 1)
    {
      v10 = "Subscribe";
    }

    *buf = 136315138;
    v71 = v10;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Received %s request", buf, 0xCu);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x23u, 3);
  }

  if (a5 != 1)
  {
    sub_2393C5AAC(buf);
    v72 = 0;
    sub_2393D9BEC(*a4);
    *v54 = *a4;
    sub_238DD2F90(buf, v54);
    if (*v54)
    {
      sub_2393D96C8(*v54);
    }

    sub_2393DD178(v54);
    if (sub_2393DD0A8(v54, buf))
    {
      goto LABEL_18;
    }

    v52 = 0;
    v53 = 0;
    sub_2393DD178(&v47);
    v15 = sub_2393DD1DC(v54, &v47);
    if (v15 != 33)
    {
      if (v15)
      {
        goto LABEL_18;
      }

      sub_2393C5AAC(v63);
      sub_2393DD1C8(&v47, v63);
      if (sub_2393C78C8(v63, &v53, 0))
      {
        goto LABEL_18;
      }
    }

    sub_2393DD178(v63);
    v16 = sub_2393DCCFC(v54, v63);
    if (v16 != 33 && (v16 || (sub_2393C5AAC(v58), sub_2393DD1C8(v63, v58), sub_2393C78C8(v58, &v52, 0))))
    {
LABEL_18:
      v13 = 0;
      LOBYTE(v12) = 0x80;
    }

    else
    {
      sub_238EA6DC0(a2, v58);
      v12 = sub_2394CA234(a1, *(*v58 + 24), v53, v52);
      (*(**v58 + 32))(*v58);
      v13 = v12 == 0;
      if (!v12)
      {
        LOBYTE(v12) = 0x80;
      }
    }

    if (v72)
    {
      sub_2393D96C8(v72);
    }

    if (v13)
    {
      goto LABEL_27;
    }

    goto LABEL_46;
  }

  sub_2393C5AAC(buf);
  v72 = 0;
  v55 = 1;
  sub_238EA6DC0(a2, v54);
  v11 = *(*v54 + 24);
  (*(**v54 + 32))(*v54);
  if (v11)
  {
    sub_2393D9BEC(*a4);
    *v54 = *a4;
    sub_238DD2F90(buf, v54);
    if (*v54)
    {
      sub_2393D96C8(*v54);
    }

    sub_2393DD178(v54);
    if (sub_2393DD0A8(v54, buf) || sub_2393DA994(v54, &v55))
    {
      goto LABEL_13;
    }

    if ((v55 & 1) == 0)
    {
      v47 = a2;
      sub_2393D6A10((a1 + 1608), &v47, sub_2394CD798);
      v20 = *(a1 + 1696);
      if (v20)
      {
        *v50 = 0u;
        *v51 = 0u;
        v21 = (*(*v20 + 16))(v20);
        if ((*(*v21 + 24))(v21, &v47))
        {
          do
          {
            v22 = v47;
            sub_238EA6DC0(a2, v63);
            if (v22 == *(sub_239495304(*v63) + 72))
            {
              v23 = v48;
              sub_238EA6DC0(a2, v58);
              v24 = v23 == *(*v58 + 24);
              (*(**v58 + 32))(*v58, v25, v26, v27);
            }

            else
            {
              v24 = 0;
            }

            (*(**v63 + 32))(*v63);
            if (v24)
            {
              if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
              {
                *v63 = 67109888;
                *&v63[4] = HIDWORD(v47);
                v64 = 1024;
                v65 = v47;
                v66 = 1024;
                v67 = v48;
                v68 = 1024;
                v69 = v49;
                _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "Deleting previous non-active subscription from NodeId: %08X%08X, FabricIndex: %u, SubscriptionId: 0x%x", v63, 0x1Au);
              }

              if (sub_2393D5398(2u))
              {
                sub_2393D5320(0x23u, 2);
              }

              (*(**(a1 + 1696) + 32))(*(a1 + 1696), v47, v48, v49);
            }
          }

          while (((*(*v21 + 24))(v21, &v47) & 1) != 0);
        }

        (*(*v21 + 32))(v21);
        if ((sub_2394C8C68(a1) & 1) == 0)
        {
          v28 = *(*(*(a1 + 88) + 88) + 24);
          (*(*v28 + 72))(v28, sub_2394C7F1C, a1);
          *(a1 + 1672) = 0;
          *(a1 + 1668) = 0;
        }

        if (v51[0])
        {
          j__free(v51[0]);
          v51[0] = 0;
        }

        if (v50[0])
        {
          j__free(v50[0]);
        }
      }
    }

    v52 = 0;
    v53 = 0;
    sub_2393DD178(&v47);
    v46 = 0;
    v29 = sub_2393DD938(v54, &v47);
    if (v29 != 33)
    {
      if (v29)
      {
        goto LABEL_13;
      }

      sub_238EA6DC0(a2, v58);
      v30 = sub_239495304(*v58);
      (*(*v30 + 64))(v63);
      (*(**v58 + 32))(*v58);
      if (sub_2394C8F40(a1, v63, &v47, &v46 + 1, &v53))
      {
        goto LABEL_13;
      }
    }

    sub_2393DD178(v63);
    v31 = sub_2393DD230(v54, v63);
    if (v31 == 33)
    {
      v33 = 1;
    }

    else
    {
      if (v31)
      {
        goto LABEL_13;
      }

      sub_238EA6DC0(a2, &v45);
      v32 = sub_239495304(v45);
      (*(*v32 + 64))(v58);
      (*(*v45 + 32))(v45);
      if (sub_2394C925C(a1, v58, v63, &v46, &v52))
      {
        goto LABEL_13;
      }

      v33 = v52 == 0;
    }

    if (v53 || !v33)
    {
      if (v46 & 0x100) != 0 || (v46)
      {
        sub_238EA6DC0(a2, v58);
        sub_2394CA004(a1, *(*v58 + 24));
        (*(**v58 + 32))(*v58);
        LOBYTE(v11) = 1;
        goto LABEL_14;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_238EA6DC0(a2, &v45);
        v39 = v45[24];
        sub_238EA6DC0(a2, &v44);
        v40 = *(sub_239495304(v44) + 76);
        sub_238EA6DC0(a2, &v43);
        v41 = *(sub_239495304(v43) + 72);
        *v58 = 67109632;
        *&v58[4] = v39;
        v59 = 1024;
        v60 = v40;
        v61 = 1024;
        v62 = v41;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Subscription from [%u:%08X%08X] has no access at all. Rejecting request.", v58, 0x14u);
        (*(*v43 + 32))(v43);
        (*(*v44 + 32))(v44);
        (*(*v45 + 32))(v45);
      }

      if (!sub_2393D5398(1u))
      {
LABEL_13:
        LOBYTE(v11) = 0;
LABEL_14:
        LOBYTE(v12) = 0x80;
        goto LABEL_24;
      }
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_238EA6DC0(a2, &v45);
        v34 = v45[24];
        sub_238EA6DC0(a2, &v44);
        v35 = *(sub_239495304(v44) + 76);
        sub_238EA6DC0(a2, &v43);
        v36 = *(sub_239495304(v43) + 72);
        *v58 = 67109632;
        *&v58[4] = v34;
        v59 = 1024;
        v60 = v35;
        v61 = 1024;
        v62 = v36;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_ERROR, "Subscription from [%u:%08X%08X] has no attribute or event paths. Rejecting request.", v58, 0x14u);
        (*(*v43 + 32))(v43);
        (*(*v44 + 32))(v44);
        (*(*v45 + 32))(v45);
      }

      if (!sub_2393D5398(1u))
      {
        goto LABEL_13;
      }
    }

    sub_238EA6DC0(a2, v58);
    v37 = *(*v58 + 24);
    sub_238EA6DC0(a2, &v45);
    v38 = *(sub_239495304(v45) + 76);
    sub_238EA6DC0(a2, &v44);
    v42 = *(sub_239495304(v44) + 72);
    sub_2393D5320(0x23u, 1);
    (*(*v44 + 32))(v44);
    (*(*v45 + 32))(v45);
    (*(**v58 + 32))(*v58);
    goto LABEL_13;
  }

  LOBYTE(v12) = 126;
LABEL_24:
  if (v72)
  {
    sub_2393D96C8(v72);
  }

  if (v11)
  {
LABEL_27:
    v14 = sub_2394CA4FC((a1 + 1592), a1, &v57, &v56, (a1 + 1416));
    if (v14)
    {
      sub_2393B9028(v14, a4);
      LOBYTE(v12) = 0;
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        if (v56 == 1)
        {
          v17 = "Subscribe";
        }

        else
        {
          v17 = "Read";
        }

        *buf = 136315138;
        v71 = v17;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "no resource for %s interaction", buf, 0xCu);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0x23u, 2);
      }

      LOBYTE(v12) = -119;
    }
  }

LABEL_46:
  v18 = *MEMORY[0x277D85DE8];
  return v12;
}

uint64_t sub_2394CA004(uint64_t a1, char a2)
{
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v13 = &v19;
  v14 = &v18;
  v15 = &v17;
  sub_2393D6A10((a1 + 1608), &v13, sub_2394CD024);
  if (v17 == -1)
  {
    v4 = *(a1 + 1680);
    sub_238DCCCDC(v4, &v13);
    v5 = v15;
    v6 = v16;
    if (v15 != v16)
    {
      while (1)
      {
        if (v6 == 16 && v5 == 16 && v13 == v4)
        {
          goto LABEL_23;
        }

        v7 = 0;
LABEL_7:
        v8 = sub_238DC7C7C(&v13);
        if ((v7 & 1) == 0 && v17 == -1)
        {
          break;
        }

        if (v17 == -1)
        {
          v7 = 1;
LABEL_12:
          v9 = v15;
          while (1)
          {
            if (v9 < v16)
            {
              v9 = (v9 + 1);
              v15 = v9;
            }

            if (v9 == v16)
            {
              break;
            }

            v10 = &v13[19 * v9];
            if (*(v10 + 137) && (*v10 - 1) < 0xFFFFFFEFFFFFFFFFLL)
            {
              if (v16 != 16 || v9 != 16 || v13 != v4)
              {
                goto LABEL_7;
              }

              break;
            }
          }
        }

        if (v7)
        {
          v4 = *(a1 + 1680);
          sub_238DCCCDC(v4, &v13);
          v5 = v15;
          v6 = v16;
          if (v15 != v16)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v7 = sub_2394CB0F4(a1, *(v8 + 137), 0);
      v18 = 0;
      v19 = 0;
      v17 = 0;
      v20[0] = &v19;
      v20[1] = &v18;
      v20[2] = &v17;
      sub_2393D6A10((a1 + 1608), v20, sub_2394CD024);
      goto LABEL_12;
    }

LABEL_23:
    if (v17 == -1)
    {
      do
      {
        v11 = sub_2394CB0F4(a1, a2, 1);
        v18 = 0;
        v19 = 0;
        v17 = 0;
        v13 = &v19;
        v14 = &v18;
        v15 = &v17;
        sub_2393D6A10((a1 + 1608), &v13, sub_2394CD024);
      }

      while (v11 && v17 == -1);
      if ((v11 & 1) == 0)
      {
        sub_23953633C();
      }
    }
  }

  return 1;
}

uint64_t sub_2394CA234(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v24 = &v22;
  v25 = &v21;
  v26 = &v20;
  sub_2393D6A10((a1 + 1608), &v24, sub_2394CD0A8);
  if (v20 != -1)
  {
    return 0;
  }

  if (*(*(a1 + 1680) + 2642) == 16 && a2 == 0)
  {
    return 156;
  }

  v18 = 0;
  v19 = 0;
  v17 = 0;
  v24 = &v23;
  v25 = &v19;
  v26 = &v18;
  v27 = &v17;
  sub_2393D6A10((a1 + 1608), &v24, sub_2394CDCFC);
  if ((v19 + a3) > 9)
  {
    return 156;
  }

  result = 156;
  if ((v18 + a4) <= 9 && !v17)
  {
    v10 = sub_2394CB300(a1, 0);
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v24 = &v22;
    v25 = &v21;
    v26 = &v20;
    sub_2393D6A10((a1 + 1608), &v24, sub_2394CD0A8);
    if (v20 == -1)
    {
      while (1)
      {
        v11 = *(a1 + 1680);
        if ((v10 & 1) == 0 || *(v11 + 2642) != 16)
        {
          sub_238DCCCDC(*(a1 + 1680), &v24);
          if (v26 != v27)
          {
            v12 = v27 == 16 && v26 == 16;
            if (!v12 || v24 != v11)
            {
LABEL_23:
              v14 = sub_238DC7C7C(&v24);
              if (v10)
              {
                v10 = 1;
              }

              else
              {
                v10 = sub_2394CB300(a1, *(v14 + 137));
                v21 = 0;
                v22 = 0;
                v20 = 0;
                v28[0] = &v22;
                v28[1] = &v21;
                v28[2] = &v20;
                sub_2393D6A10((a1 + 1608), v28, sub_2394CD0A8);
              }

              if (v20 == -1)
              {
                v15 = v26;
                while (1)
                {
                  if (v15 < v27)
                  {
                    v26 = ++v15;
                  }

                  if (v15 == v27)
                  {
                    break;
                  }

                  v16 = &v24[19 * v15];
                  if (*(v16 + 137) && (*v16 - 1) < 0xFFFFFFEFFFFFFFFFLL)
                  {
                    if (v27 != 16 || v15 != 16 || v24 != v11)
                    {
                      goto LABEL_23;
                    }

                    break;
                  }
                }
              }
            }
          }

          if ((v10 & 1) == 0)
          {
            break;
          }
        }

        v10 = sub_2394CB300(a1, 0);
        v21 = 0;
        v22 = 0;
        v20 = 0;
        v24 = &v22;
        v25 = &v21;
        v26 = &v20;
        sub_2393D6A10((a1 + 1608), &v24, sub_2394CD0A8);
        if (v20 != -1)
        {
          return 0;
        }
      }

      if (v20 == -1)
      {
        sub_2395363AC();
      }
    }

    return 0;
  }

  return result;
}

void *sub_2394CA4FC(unint64_t *a1, uint64_t a2, uint64_t *a3, char *a4, uint64_t *a5)
{
  v10 = sub_2393D52C4(0xD8uLL);
  v11 = v10;
  if (v10)
  {
    sub_2393B86E4(v10, a2 + 40, *a3, *a4, *a5);
    v12 = sub_2393D52C4(0x18uLL);
    if (v12)
    {
      *v12 = v11;
      v12[1] = a1 + 2;
      v12[2] = 0;
      v13 = a1[4];
      v12[2] = v13;
      *(v13 + 8) = v12;
      a1[4] = v12;
      v14 = a1[1];
      v15 = *a1 + 1;
      *a1 = v15;
      if (v15 > v14)
      {
        a1[1] = v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return v11;
}

uint64_t sub_2394CA5B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5)
{
  v9 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_INFO, "Received Write request", buf, 2u);
  }

  if (sub_2393D5398(3u))
  {
    sub_2393D5320(0x23u, 3);
  }

  v10 = (a1 + 473);
  v11 = 1088;
  while (*v10)
  {
    v10 += 272;
    v11 -= 272;
    if (!v11)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_238DAE000, v9, OS_LOG_TYPE_DEFAULT, "no resource for write interaction", v13, 2u);
      }

      if (sub_2393D5398(2u))
      {
        sub_2393D5320(0x23u, 2);
      }

      return 156;
    }
  }

  sub_23947632C("src/app/InteractionModelEngine.cpp", 1944);
  if (sub_2393BBAD0((v10 - 265), *(a1 + 1704), a1 + 80))
  {
    return 156;
  }

  return sub_2393BC430(v10 - 265, a2, a4, a5);
}

uint64_t sub_2394CA710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  v13 = a1;
  v9 = sub_2394CA814((a1 + 152), &v13);
  if (v9)
  {
    *a5 = 0;
    *(a2 + 40) = v9;
    return (*(*v9 + 16))(v9, a2, a3, a4);
  }

  else
  {
    v11 = sub_2393D9044(0x23u);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "no resource for Timed interaction", v12, 2u);
    }

    if (sub_2393D5398(2u))
    {
      sub_2393D5320(0x23u, 2);
    }

    *a5 = -100;
    return 0x3C80000000BLL;
  }
}

_BYTE *sub_2394CA814(unint64_t *a1, void *a2)
{
  v4 = sub_2393D52C4(0x20uLL);
  v5 = v4;
  if (v4)
  {
    v6 = *a2 + 72;
    v7 = *a2 == 0;
    *v4 = &unk_284BBDAB0;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v4[8] = 0;
    *(v4 + 2) = v8;
    v9 = sub_2393D52C4(0x18uLL);
    if (v9)
    {
      *v9 = v5;
      v9[1] = a1 + 2;
      v9[2] = 0;
      v10 = a1[4];
      v9[2] = v10;
      *(v10 + 8) = v9;
      a1[4] = v9;
      v11 = a1[1];
      v12 = *a1 + 1;
      *a1 = v12;
      if (v12 > v11)
      {
        a1[1] = v12;
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_2394CA8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = *MEMORY[0x277D85DE8];
  sub_2393C5AAC(v19);
  v20 = 0;
  sub_2393D9BEC(*a4);
  *v18 = *a4;
  sub_238DD2F90(v19, v18);
  if (*v18)
  {
    sub_2393D96C8(*v18);
  }

  sub_2393DD178(v18);
  if (sub_2393DD0A8(v18, v19) || (v17 = 0, sub_2393DA7E0(v18, &v17)) || sub_2393DD104(v18))
  {
    v7 = 128;
  }

  else
  {
    v10 = *(a1 + 1648);
    if (!v10)
    {
      goto LABEL_24;
    }

    v11 = 0;
    do
    {
      sub_238EA6DC0(a2, &buf);
      v12 = (*(*buf + 48))(buf);
      v14 = v13;
      (*(*buf + 32))(buf);
      if (*(v10 + 72) == v14 && *(v10 + 64) == v12)
      {
        sub_2394D8E90(v10, "unsolicited message");
        (*(**(v10 + 40) + 112))(*(v10 + 40), v10);
        if (*(v10 + 48) == 3 && *(v10 + 60) == v17)
        {
          v15 = v11 ? v11 : v10;
          if (*(v10 + 80) == 1)
          {
            v11 = v15;
          }
        }
      }

      v10 = *(v10 + 192);
    }

    while (v10);
    if (v11)
    {
      sub_2394D9930(v11, a2, a4);
      v7 = 0;
    }

    else
    {
LABEL_24:
      v16 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        HIDWORD(buf) = v17;
        _os_log_impl(&dword_238DAE000, v16, OS_LOG_TYPE_INFO, "Received report with invalid subscriptionId %u", &buf, 8u);
      }

      if (sub_2393D5398(3u))
      {
        sub_2393D5320(0x23u, 3);
      }

      v7 = 125;
    }
  }

  if (v20)
  {
    sub_2393D96C8(v20);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

unint64_t sub_2394CAB80(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v37 = *MEMORY[0x277D85DE8];
  v34 = 1;
  *(a1 + 1712) = a2;
  v8 = sub_2393BC2A0(a2);
  v10 = *(a3 + 2);
  if (v8)
  {
    if (*(a3 + 2) || ((v16 = *a3, v16 != 8) ? (v17 = v16 == 6) : (v17 = 1), !v17 ? (v18 = 0) : (v18 = 1), *(a3 + 3) != 1 || (v18 & 1) == 0))
    {
      v11 = sub_2393D9044(0x23u);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *a3;
        *buf = 67109120;
        v36 = v12;
        _os_log_impl(&dword_238DAE000, v11, OS_LOG_TYPE_DEFAULT, "Msg type %d not supported for group message", buf, 8u);
      }

      if (sub_2393D5398(2u))
      {
        v32 = *a3;
        sub_2393D5320(0x23u, 2);
      }

      goto LABEL_32;
    }
  }

  else if (*(a3 + 2))
  {
    goto LABEL_8;
  }

  v19 = *(a3 + 3);
  v20 = *a3;
  if (v19 == 1 && v20 == 8)
  {
    v26 = sub_2394C8DC0(a1, a2, v9, a4, 0);
    goto LABEL_30;
  }

  if (v19 == 1 && v20 == 2)
  {
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = 0;
LABEL_28:
    v26 = sub_2394C93E8(v22, v23, v9, v24, v25);
    goto LABEL_30;
  }

  if (v19 == 1 && v20 == 6)
  {
    v26 = sub_2394CA5B0(a1, a2, v9, a4, 0);
    goto LABEL_30;
  }

  if (v19 == 1 && v20 == 3)
  {
    v22 = a1;
    v23 = a2;
    v24 = a4;
    v25 = 1;
    goto LABEL_28;
  }

  if (v19 == 1 && v20 == 5)
  {
    v26 = sub_2394CA8D0(a1, a2, v9, a4);
LABEL_30:
    v15 = v26;
    if (!v26)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v19 == 1 && v20 == 10)
  {
    sub_2394CA710(a1, a2, a3, a4, &v34);
    v15 = v34;
    if (!v34)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_8:
  v13 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *a3;
    *buf = 67109120;
    v36 = v14;
    _os_log_impl(&dword_238DAE000, v13, OS_LOG_TYPE_DEFAULT, "Msg type %d not supported", buf, 8u);
  }

  if (sub_2393D5398(2u))
  {
    v33 = *a3;
    sub_2393D5320(0x23u, 2);
  }

  v15 = 128;
LABEL_31:
  if (!sub_2393BC2A0(a2))
  {
    v29 = sub_2394DEE10(v15, a2, 0);
    v27 = v29 & 0xFFFFFFFF00000000;
    v28 = v29;
    goto LABEL_34;
  }

LABEL_32:
  v27 = 0;
  v28 = 0;
LABEL_34:
  *(a1 + 1712) = 0;
  v30 = *MEMORY[0x277D85DE8];
  return v28 | v27;
}

uint64_t sub_2394CAE68(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = sub_2393D9044(0x23u);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v4 = *(a2 + 112);
    if (sub_2394703E0(a2))
    {
      v5 = 105;
    }

    else
    {
      v5 = 114;
    }

    *buf = 67109376;
    v10 = v4;
    v11 = 1024;
    v12 = v5;
    _os_log_impl(&dword_238DAE000, v3, OS_LOG_TYPE_ERROR, "Time out! Failed to receive IM response from Exchange: %u%c", buf, 0xEu);
  }

  result = sub_2393D5398(1u);
  if (result)
  {
    v7 = *(a2 + 112);
    sub_2394703E0(a2);
    result = sub_2393D5320(0x23u, 1);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_2394CAF7C(void *result, uint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  v4 = result[206];
  if (v4)
  {
    v8 = result;
    v9 = a4 & 0xFFFFFFFF00000000;
    v10 = WORD1(a4);
    v11 = (a4 - 1);
    while (1)
    {
      v12 = v4;
      v4 = *(v4 + 192);
      v16 = 0;
      v17 = 0;
      result = sub_2394A87A4(v8[210], *(v12 + 72), &v16);
      if (*(v12 + 64) != a2 || *(v12 + 72) != a3)
      {
        goto LABEL_15;
      }

      if (v9 == 0xFFFFFFFD00000000)
      {
        break;
      }

LABEL_13:
      result = sub_2394A7FC0(v8[210], a3);
      if (*result == a4)
      {
        goto LABEL_14;
      }

LABEL_15:
      if (!v4)
      {
        return result;
      }
    }

    v13 = 0;
    while (1)
    {
      v14 = *(&v16 + v13);
      if (v14)
      {
        if (v11 < v14 && HIWORD(v14) == v10)
        {
          break;
        }
      }

      v13 += 4;
      if (v13 == 12)
      {
        goto LABEL_13;
      }
    }

LABEL_14:
    result = sub_2394D8D08(v12);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_2394CB080(uint64_t a1, uint64_t a2, unsigned __int8 a3, int a4)
{
  result = *(a1 + 1648);
  if (result)
  {
    v7 = a3;
    do
    {
      v8 = *(result + 192);
      if (*(result + 64) == a2 && *(result + 72) == v7)
      {
        sub_2394D8FD0(result, a4);
      }

      result = v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_2394CB0E4(uint64_t result, uint64_t a2)
{
  *(a2 + 192) = *(result + 1648);
  *(result + 1648) = a2;
  return result;
}

uint64_t sub_2394CB0F4(uint64_t a1, char a2, char a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v3 = *(*(a1 + 1680) + 2642);
  v17 = 0;
  v18 = 0;
  v16 = 0;
  if (!v3)
  {
    goto LABEL_12;
  }

  v14 = 0;
  v15 = 0x90 / v3;
  v12 = 0;
  v13 = 0;
  v20[0] = &v19;
  v20[1] = &v18;
  v20[2] = &v17;
  v20[3] = &v16;
  v20[4] = &v14;
  v20[5] = &v15;
  v20[6] = &v13;
  v20[7] = &v12;
  sub_2393D6A10((a1 + 1608), v20, sub_2394CDA20);
  v5 = v14;
  if (!v14)
  {
    goto LABEL_12;
  }

  if ((a3 & 1) != 0 || v18 > v15 || v17 > v15 || v16 > 0x30 / v3)
  {
    v6 = *(v14 + 8);
    v7 = sub_2393D9044(0xDu);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = sub_2393BB864(v5);
      (*(*v8 + 64))(v20);
      *buf = 67109376;
      v22 = LOBYTE(v20[0]);
      v23 = 1024;
      v24 = v6;
      _os_log_impl(&dword_238DAE000, v7, OS_LOG_TYPE_DEFAULT, "Evicting Subscription ID %u:0x%x", buf, 0xEu);
    }

    if (sub_2393D5398(2u))
    {
      v9 = sub_2393BB864(v14);
      (*(*v9 + 64))(v20);
      sub_2393D5320(0xDu, 2);
    }

    sub_2393B8A0C(v14, 0);
    result = 1;
  }

  else
  {
LABEL_12:
    result = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2394CB300(uint64_t a1, char a2)
{
  v10 = a2;
  v8 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v4 = 0;
  v5 = 0;
  v11[0] = &v10;
  v11[1] = &v9;
  v11[2] = &v8;
  v11[3] = &v7;
  v11[4] = &v6;
  v11[5] = &v5;
  v11[6] = &v4;
  sub_2393D6A10((a1 + 1608), v11, sub_2394CDB90);
  result = v6;
  if (v6)
  {
    if (v9 <= 9 && v8 <= 9 && v7 <= 1 && (v10 || *(*(a1 + 1680) + 2642) != 16))
    {
      return 0;
    }

    else
    {
      sub_2393B8A0C(v6, 0);
      return 1;
    }
  }

  return result;
}

uint64_t sub_2394CB3D8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 1648);
  if (v2 == a2)
  {
    v4 = (result + 1648);
  }

  else
  {
    do
    {
      if (!v2)
      {
        sub_239536444();
      }

      v3 = v2;
      v2 = *(v2 + 192);
    }

    while (v2 != a2);
    v4 = (v3 + 192);
  }

  *v4 = *(a2 + 192);
  *(a2 + 192) = 0;
  return result;
}

uint64_t sub_2394CB428(uint64_t a1)
{
  v1 = *(a1 + 1648);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    ++result;
    v1 = *(v1 + 192);
  }

  while (v1);
  return result;
}

BOOL sub_2394CB44C(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 1648);
  do
  {
    v3 = *v2;
    v2 = (*v2 + 192);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

uint64_t sub_2394CB470(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v5 = (a1 + 473);
  v6 = 1088;
  while (1)
  {
    v7 = (v5 - 265);
    v8 = !*v5 || v7 == a2;
    if (!v8 && sub_2394CB4DC(v7, a3))
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